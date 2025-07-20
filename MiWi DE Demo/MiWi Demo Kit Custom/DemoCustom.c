/****************************************************************************
* File:        DemoCustom.c
* Description: Modular, refactored MiWi demo app (Menu, Range, Temp, Node Info)
* Target:      PIC18F46J50 + MRF24J40 + LCD + MiWi Pro Stack
* Author:      Refactored by han
****************************************************************************/

#include "ConfigApp.h"
#include "HardwareProfile.h"
#include "WirelessProtocols/MCHP_API.h"
#include "LCD_ST7032.h"
#include "TimeDelay.h"
#include "RangeDemo.h"
#include "TempDemo.h"
#include "SelfTestMode.h"
#include "WirelessProtocols/SymbolTime.h"
#include "MAC_EEProm.h"
#include "definitions.h"
#include "NVM.h"

extern BYTE         currentChannel;
extern BYTE         role;
extern BOOL         security;
extern WORD_VAL     myPANID;
extern WORD_VAL     myShortAddress;

BOOL DelayMsAsyn(MIWI_TICK* tick1, unsigned long delayMs);

/*** Feature Definitions ***/
#define DEMO_VERSION        "v1.3"
#define APP_CHANNEL_MIN     11
#define APP_CHANNEL_MAX     26

#define MiWi_CHANNEL        0x04000000                          //Channel 26 bitmap

#define EXIT_DEMO           1
//#define RANGE_DEMO          2
#define TEMP_DEMO           3
#define IDENTIFY_MODE       4
#define EXIT_IDENTIFY_MODE  5

#define NODE_INFO_INTERVAL              5
#define HEARTBEAT_INTERVAL              5  // seconds
#define HEARTBEAT_UNICAST_TIMEOUT_SEC   12  // seconds

/*** State Definitions ***/
typedef enum {
	APP_STATE_INIT,
	APP_STATE_CHANNEL_SELECT,
	APP_STATE_NETWORK_SETUP,
	APP_STATE_WAIT_FOR_CONNECTION,
	APP_STATE_MENU,
//	APP_STATE_RANGE_DEMO,
	APP_STATE_TEMP_DEMO,
	APP_STATE_NODE_INFO,
	APP_STATE_EXIT
} APP_STATE;

/*** Menu Definitions ***/
typedef enum {
//	MENU_RANGE_DEMO,
	MENU_TEMP_DEMO,
	MENU_NODE_INFO,
	MENU_COUNT
} MENU_OPTION;

/*** Global Variables (reuse existing as much as possible) ***/
static BYTE myChannel = APP_CHANNEL_MIN;

static BOOL NetFreezerEnable = FALSE;
extern BYTE myLongAddress[];     // Provided by stack/board
extern BOOL SelfTestModeEnabled; // Used for startup test

// Demo menu item names - as fixed size char arrays to avoid const warnings
static char menuText[MENU_COUNT][34] = {
//		"SW1: Range Demo SW2: Other Apps  ",
		"SW1: Temp Demo  SW2: Other Apps  ",
		"SW1: Node Info  SW2: Other Apps  "
};

/*** Function Prototypes ***/
static void App_ShowSplash(unsigned int delay);
static void App_ChannelSelect(void);
static BOOL App_SetChannel(BYTE channel);
static BOOL App_NetworkSetup(void);
static void App_WaitForConnection(void);
static void App_ShowNodeInfo(void);
static void ShowMenuText(MENU_OPTION menuIndex);
void FactoryResetEEPROM(void);

BYTE ConnectionEntry = 0;
BYTE Rejoin = 0;
static MIWI_TICK heartbeatFirstFailTick = {0};//{ .Val = 0 };
static BOOL heartbeatTimeoutActive = FALSE;

/*** Main Application Entry ***/
void main(void)
{
    uint32_t timestamp;
    BOOL lastView = 0xFF;
    BOOL showTimeView = FALSE;
    MIWI_TICK t_cycle = 0;
    BYTE sec;
    BYTE lastSec = 0xFF;
    rtccTimeDate time;
    
    static BOOL menuActive = FALSE;
    static MENU_OPTION menuIndex = MENU_TEMP_DEMO;  // persists across main loop
    static MENU_OPTION selectedMenu = MENU_TEMP_DEMO;
    static MIWI_TICK lastHeartbeatTick = 0;
    static BOOL networkJoined = FALSE;
	APP_STATE state = APP_STATE_INIT;
    BYTE result, i;
    MIWI_TICK now, t1_rtcc;
    static MIWI_TICK t_rtcc = 0; 
    BOOL res;
	BOOL useStoredNetwork = FALSE;
    
    BYTE pktType;
    

	// Board and LCD initialization
	BoardInit();
	LCDInit();
	InitSymbolTimer();
	LED0 = 0;
	LED1 = 0;
	LED2 = 0;
    
    Read_MAC_Address();

    useStoredNetwork = FALSE;
    
    // FACTORY RESET DETECTION
    if (SW1_PORT == 0u) { // SW1 is pressed (held) at power up
        LCDErase();
        LCDDisplay((char *)"Resetting EEPROM...", 0, 250);
        FactoryResetEEPROM();

        // Wait for SW1 to be released (debounce)
        while (SW1_PORT == 0u);

        LCDDisplay((char *)"Restarting...", 0, 250);
        DelayMs(500);
#if defined(__18CXX)
        Reset(); // PIC18 family
#else
        // For PIC24, PIC32, etc: use software reset
        __asm__ volatile ("reset");
#endif
        while (1); // Should not reach here, just in case
    }

	while (state != APP_STATE_EXIT)
	{

        if(networkJoined)
        {
            Nop();
            if(MiApp_MessageAvailable())
            {   
                Nop();
                MiApp_DiscardMessage();
                pktType = rxMessage.Payload[0];
                
                // Expecting: [0]=CMD, [1]=PANID_LSB, [2]=PANID_MSB, [3]=CHANNEL,
                //            [4]=SHORT_LSB, [5]=SHORT_MSB, [6]=ROLE, [7]=SECURITY
                if (pktType == CONFIG_PKT)
                {
                    processConfigPKT();
                    
                }
                else if (pktType == REQCONFIG_PKT)
                {
                    sendReplyConfigPKT();
                    LCDDisplay((char *)"Sent ConfigReply!", 0, 0);
                    
                }
                else if (pktType == RTCCTIME_PKT)
                {
                    // Extract timestamp (bytes 1-4)
                    timestamp = 
                        ((uint32_t)rxMessage.Payload[1] << 24) |
                        ((uint32_t)rxMessage.Payload[2] << 16) |
                        ((uint32_t)rxMessage.Payload[3] << 8)  |
                        ((uint32_t)rxMessage.Payload[4]);

                    // Call a function to set the RTCC
                    RTCC_SetFromMiWiTimestamp(timestamp);
                    LCDDisplay((char *)"RTCC updated!", 0, 0);
                   

                }
                else if (pktType == PING_PKT)
                {
                    // Send PONG reply to sender
                    sendPONGPKT();
                    LCDDisplay((char *)"Ping? Pong!", 0, 0);                    
                    
                }
                lastHeartbeatTick = MiWi_TickGet();
                while(!DelayMsAsyn(&lastHeartbeatTick, 500))
                {
                    MiWiPROTasks();
                }
                Nop();
            }

            Nop();

        }

		switch (state)
		{
			case APP_STATE_INIT:
				App_ShowSplash(500);
                networkJoined = FALSE;    
				// Attempt to restore from EEPROM (network freezer)
				MiApp_ProtocolInit(TRUE);

				// Check for valid stored network
				useStoredNetwork = 0;
                for (i = 0; i < CONNECTION_SIZE; i++) {
                    if (
                            ConnectionTable[i].PANID.Val != 0 && 
                            ConnectionTable[i].PANID.Val != 0xFFFF &&
                            ConnectionTable[i].PANID.Val != 0xFF00 &&
                            ConnectionTable[i].AltAddress.Val != 0xFFFF &&
                            ConnectionTable[i].status.Val != 0x0
                            )
                    {
                        useStoredNetwork = 1;
                        break;
                    }
                }

				if(useStoredNetwork) {
					LCDDisplay((char *)"Network Restored!", 0, 250);
                    state = APP_STATE_MENU;
                    
				} else {
                    
					LCDDisplay((char *)"No Saved Network", 0, 250);
					// Start fresh, cold start
					MiApp_ProtocolInit(FALSE);
					state = APP_STATE_CHANNEL_SELECT;
				}
				break;

			case APP_STATE_CHANNEL_SELECT:
				App_ChannelSelect();
				state = APP_STATE_NETWORK_SETUP;
				break;

			case APP_STATE_NETWORK_SETUP:
				networkJoined = FALSE;
				if (App_NetworkSetup())
				{
					state = APP_STATE_WAIT_FOR_CONNECTION;
				}
				else
					state = APP_STATE_CHANNEL_SELECT;
				break;

			case APP_STATE_WAIT_FOR_CONNECTION:
				App_WaitForConnection();
				state = APP_STATE_MENU;
                
				break;

			case APP_STATE_MENU:
                networkJoined = TRUE;
                if(DelayMsAsyn(&t_cycle, 3000))   // Every 3 seconds, swap view
                {
                    showTimeView = !showTimeView;
                    t_cycle = MiWi_TickGet();
                    lastView = 0xFF;  // force redraw on next swap
                }
                   
                if(showTimeView)
                {
                    // Update RTCC/time LCD only once per second
                    if(DelayMsAsyn(&t_rtcc, 1000) || lastView != 1) {
                        RTCC_ReadTimeDate(&time);
                        sec = BCDtoDEC(time.f.sec);

                        lastView = 1;
                        lastSec = sec;
                        LCDErase();
                        sprintf((char*)LCDText, (const far rom char *)"Time: %02u:%02u:%02u",
                            BCDtoDEC(time.f.hour),
                            BCDtoDEC(time.f.min),
                            BCDtoDEC(time.f.sec)
                        );
                        sprintf((char*)&LCDText[16], (const far rom char *)"%02u-%02u-%04u",
                            BCDtoDEC(time.f.mday),
                            BCDtoDEC(time.f.mon),
                            BCDtoDEC(time.f.year) + 2000
                        );
                        LCDUpdate();
                    }
                }
                else
                {
                    if(lastView != 0) {
                        lastView = 0;
                        ShowMenuText(menuIndex);
                    }
                }
                result = ButtonPressed();
                if (result == SW1) {
                    selectedMenu = menuIndex;
                    menuActive = FALSE;
                    switch (selectedMenu)
                    {
//                        case MENU_RANGE_DEMO: state = APP_STATE_RANGE_DEMO; break;
                        case MENU_TEMP_DEMO:  state = APP_STATE_TEMP_DEMO; break;
                        case MENU_NODE_INFO:  state = APP_STATE_NODE_INFO; break;
                        default:              state = APP_STATE_EXIT; break;
                    }
                } else if (result == SW2) {
                    menuIndex = (menuIndex + 1) % MENU_COUNT;
                    ShowMenuText(menuIndex);
                }
                break;


//			case APP_STATE_RANGE_DEMO:
//			{
//				BYTE i, validCount = 0;
//				for (i = 0; i < CONNECTION_SIZE; i++) {
//					if (ConnectionTable[i].status.bits.isValid) {
//						validCount++;
//					}
//				}
//				if (validCount > 1) {
//					LCDDisplay((char *)"Select Peer Node for Range Test", 0, FALSE);
//					DelayMs(1000);
//				}
//				RangeDemo();
////				state = APP_STATE_MENU;
//                if(Rejoin == 0)
//                    state = APP_STATE_MENU;
//                else
//                    state = APP_STATE_CHANNEL_SELECT;
//				break;
//			}

			case APP_STATE_TEMP_DEMO:
				TempDemo();
				state = APP_STATE_MENU;
				break;

			case APP_STATE_NODE_INFO:
				App_ShowNodeInfo();
				state = APP_STATE_MENU;
				break;

			default:
                networkJoined = FALSE; // if exiting or removing connection
				state = APP_STATE_EXIT;
                MiApp_RemoveConnection(0);
                LCDDisplay((char *)"Remove Connection...", 0, 250);
				break;
		}
	}
}

/***************************************************************************
*                       MODULAR APP FUNCTIONS
***************************************************************************/

// 1. Splash screen and self test (optional)
static void App_ShowSplash(unsigned int delay)
{
    LCDBacklightON();
    LCDErase();
    sprintf(LCDText, (const far rom char *)"    Microchip   ");
    sprintf(&(LCDText[16]), (const far rom char *)" MiWi Demo Board");
    LCDUpdate();
    DelayMs(delay);

    LCDBacklightOFF();
    // Optional: Self-test at startup (hold button)
#if defined(WIRELESS_EVAL_BOARD)
    if (BUTTON0_IO == 0u) {
        while (BUTTON0_IO == 0);
        SelfTestMode();
    }
#endif
}

// 2. User selects channel (SW1 to select, SW2 to cycle)
static void App_ChannelSelect(void)
{
	BYTE sw;
	BYTE select_channel = myChannel;

	// Initial LCD display
	LCDErase();
	sprintf((char *)LCDText, (const far rom char *)"SW1:<Sel Ch:%02d>", select_channel);
	sprintf((char *)&(LCDText[16]), (const far rom char *)"SW2: Chnge Chnl");
	LCDUpdate();

	while (1)
	{
		sw = ButtonPressed();

		if (sw == SW1) {
			myChannel = select_channel;
			break;
		}
		else if (sw == SW2) {
			select_channel++;
			if (select_channel > APP_CHANNEL_MAX)
				select_channel = APP_CHANNEL_MIN;
			// Update LCD ONLY when changed!
			LCDErase();
			sprintf((char *)LCDText, (const far rom char *)"SW1:<Sel Ch:%02d>", select_channel);
			sprintf((char *)&(LCDText[16]), (const far rom char *)"SW2: Chnge Chnl");
			LCDUpdate();
		}
		DelayMs(80); // debounce, optional
	}

	App_SetChannel(myChannel);
}


static BOOL App_SetChannel(BYTE channel)
{
    if (!MiApp_SetChannel(channel)) {
        // Use LCDText directly instead of LCDDisplay to avoid const/pointer mismatch
        LCDErase();
        sprintf((char *)LCDText, (const far rom char *)"ERROR: Unable to");
        sprintf((char *)&(LCDText[16]), (const far rom char *)"Set Channel..");
        LCDUpdate();
        DelayMs(2000);
        return FALSE;
    }
    return TRUE;
}

// 3. Network setup: create or join
static BOOL App_NetworkSetup(void)
{              
    BYTE sw, selBtn;
    BOOL networkJoined = FALSE;
    DWORD scanChannelBitmap;
    BYTE buf1[17], buf2[17];

create_or_join: 
    LCDErase();
    sprintf((char *)LCDText, (const far rom char *)"SW1: Create Ntwk");
    sprintf((char *)&(LCDText[16]), (const far rom char *)"SW2: Join Ntwk  ");
    LCDUpdate();
    DelayMs(500);

    while (!networkJoined)
    {

        sw = ButtonPressed();

        if (sw == SW1) // Create network
        {
            LCDErase();
            sprintf((char *)LCDText, (const far rom char *)"Creating Network");
            LCDUpdate();
            MiApp_ProtocolInit(FALSE);
            MiApp_StartConnection(START_CONN_DIRECT, 0, 0);
            LCDErase();
            sprintf((char *)LCDText, (const far rom char *)"Created Network ");
            sprintf((char *)&(LCDText[16]), (const far rom char *)"Successfully    ");
            LCDUpdate();
            DelayMs(500);
            
            LCDErase();
            sprintf((char *)LCDText, (const far rom char *)"PANID:%02x%02x Ch:%02d", myPANID.v[1], myPANID.v[0], myChannel);
            sprintf((char *)&(LCDText[16]), (const far rom char *)"Address: %02x%02x", myShortAddress.v[1], myShortAddress.v[0]);
            LCDUpdate();
            
            // Wait for client connection
            while (!ConnectionTable[0].status.bits.isValid) {
                if (MiApp_MessageAvailable())
                    MiApp_DiscardMessage();
            }
            networkJoined = TRUE;
        }
        else if (sw == SW2) // Join network
        {
	        BYTE scanresult = 0, j, k;
	        BOOL joined = FALSE;

	        LCDDisplay((char *)"  Scanning for    Networks....", 0, 250);
	        LCDDisplay((char *)"Please Select   Network to Join ", 0, 250);

	        MiApp_ProtocolInit(FALSE);

	        // Calculate channel bitmap for current myChannel (matches Demo.c)
	        scanChannelBitmap = 0;
	        if(myChannel < 8)
		        scanChannelBitmap = (0x00000001 << myChannel);
	        else if(myChannel < 16)
		        scanChannelBitmap = (0x00000100 << (myChannel-8));
	        else if(myChannel < 24)
		        scanChannelBitmap = (0x00010000 << (myChannel-16));
	        else
		        scanChannelBitmap = (0x01000000 << (myChannel-24));

//	        scanresult = MiApp_SearchConnection(10, scanChannelBitmap);
	        scanresult = MiApp_SearchConnection(11, scanChannelBitmap);

	        if(scanresult > 0)
	        {
		        for(j = 0; j < scanresult; j++)
		        {
			        // Skip duplicate PANIDs (Demo.c logic)
			        BOOL skip_print = FALSE;
			        if(j > 0)
			        {
				        skip_print = FALSE;
				        for(k = 0; k < j; k++)
				        {
					        if((ActiveScanResults[j].PANID.v[1] == ActiveScanResults[k].PANID.v[1]) &&
					           (ActiveScanResults[j].PANID.v[0] == ActiveScanResults[k].PANID.v[0]))
					        {
						        skip_print = TRUE;
						        break;
					        }
				        }
				        if(skip_print == TRUE)
				        {
					        if(j == (scanresult-1))
						        j = -1;
					        continue;
				        }
			        }

			        // Show PANID and give user options (SW1: Join, SW2: Next)
			        LCDErase();
			        sprintf((char *)LCDText, (const far rom char *)"SW1:<PANID:%02x%02x>",
			                ActiveScanResults[j].PANID.v[1],
			                ActiveScanResults[j].PANID.v[0]);
			        sprintf((char *)&(LCDText[16]), (const far rom char *)"SW2: Additional");
			        LCDUpdate();

			        while(1)
			        {
				        BYTE switch_val = ButtonPressed();

				        if(switch_val == SW1)
				        {
					        // Check if PANID has multiple coordinators
					        BYTE CoordCount = 0, nodeIndex = 0, count = 0, Status;
					        for(k = 0; k < scanresult; k++)
					        {
						        if((ActiveScanResults[j].PANID.v[1] == ActiveScanResults[k].PANID.v[1]) &&
						           (ActiveScanResults[j].PANID.v[0] == ActiveScanResults[k].PANID.v[0]))
						        {
							        CoordCount++;
						        }
					        }

					        if(CoordCount > 1)
					        {
						        // Submenu for address selection
						        for(k = 0; k < scanresult; k++)
						        {
							        if((ActiveScanResults[j].PANID.v[1] == ActiveScanResults[k].PANID.v[1]) &&
							           (ActiveScanResults[j].PANID.v[0] == ActiveScanResults[k].PANID.v[0]))
							        {
								        count++;
								        LCDErase();
								        sprintf((char *)LCDText, (const far rom char *)"SW1:<Addr:%02x%02x>",
								                ActiveScanResults[k].Address[1], ActiveScanResults[k].Address[0]);
								        sprintf((char *)&(LCDText[16]), (const far rom char *)"SW2: Additional");
								        LCDUpdate();
								        nodeIndex = k;

								        while(1)
								        {
									        BYTE addrBtn = ButtonPressed();
									        if(addrBtn == SW1)
									        {
										        //Establish connection with nodeIndex
										        j = nodeIndex;
										        k = scanresult-1;
										        break;
									        }
									        else if(addrBtn == SW2)
									        {
										        if((k == (scanresult - 1)) || (count == CoordCount))
										        {
											        k = -1;
											        count = 0;
										        }
										        break;
									        }
								        }
							        }
						        }
					        }

					        // Attempt to join
					        Status = MiApp_EstablishConnection(j, CONN_MODE_DIRECT);
					        if(Status == 0xFF)
					        {
						        LCDDisplay((char *)"Join Failed!!!", 0, 250);
						        goto create_or_join; // Return to main menu
					        }
					        else
					        {
						        LCDDisplay((char *)"Joined  Network Successfully..", 0, 0);
						        joined = TRUE;
					        }
					        // After join, broadcast EXIT_IDENTIFY_MODE
//					        MiApp_FlushTx();
//					        MiApp_WriteData(EXIT_IDENTIFY_MODE);
//					        MiApp_WriteData(myPANID.v[1]);
//					        MiApp_WriteData(myPANID.v[0]);
//					        MiApp_BroadcastPacket(FALSE);
					        break;
				        }
				        else if(switch_val == SW2)
				        {
					        if((scanresult-j-1) == 0)
						        j = -1;
					        break;
				        }
			        }
			        if(joined == TRUE)
				        break;
		        }
		        if(joined)
			        return TRUE;
	        }
	        else
	        {
		        LCDDisplay((char *)"No Network FoundSW2: Re-Scan", 0, 100);
		        // Wait for user to press SW2 to rescan
		        while (ButtonPressed() != SW2);
		        goto create_or_join; // Jump back to top
	        }
        }


    }

    return networkJoined;
}

BOOL DelayMsAsyn(MIWI_TICK* tick1, unsigned long delayMs)
{
    MIWI_TICK now = MiWi_TickGet();
//    if(MiWi_TickGetDiff(now, tick1) > (MS_TO_TICKS(delayMs)))
    if(MiWi_TickGetDiff(now, tick1) > (ONE_SECOND * delayMs/1000))
    {
        *tick1 = MiWi_TickGet();
        return TRUE;
    }

    return FALSE;
}
// 4. Wait for client/peer connection if needed (optional for PAN coordinator)
static void App_WaitForConnection(void)
{
//    uint8_t sec;
//    uint8_t lastSec = 0xFF;
//    uint32_t timestamp;
//    rtccTimeDate time;
    
    MIWI_TICK t1 = MiWi_TickGet();  
    // For PAN coordinator, usually no action needed here
//    DelayMs(500);
    while(1)
    {
        if(DelayMsAsyn(&t1, 4000)){
            Nop();
            break;
        }
        MiWiPROTasks();
        
    }
}
static void ShowMenuText(MENU_OPTION menuIndex)
{
	char line1[17] = {0};
	char line2[17] = {0};
	// Copy first 16 chars for line 1, next 16 for line 2
	sprintf(line1, (const far rom char *)"%.16s", menuText[menuIndex]);
	sprintf(line2, (const far rom char *)"%.16s", menuText[menuIndex] + 16);

	LCDErase();
	sprintf((char *)LCDText, (const far rom char *)"%s", line1);
	sprintf((char *)&LCDText[16], (const far rom char *)"%s", line2);
	LCDUpdate();
}


// 6. Node Info / Identify Mode handler
static void App_ShowNodeInfo(void)
{
    LCDErase();
    sprintf((char *)LCDText, (const far rom char *)"PANID:%02x%02x Ch:%02d", myPANID.v[1], myPANID.v[0], myChannel);
    sprintf((char *)&(LCDText[16]), (const far rom char *)"Address: %02x%02x", myShortAddress.v[1], myShortAddress.v[0]);
    LCDUpdate();
	// Wait for SW1 or SW2 to exit (user control, not timer)
	while(ButtonPressed() == 0);
}

#include "NVM.h"
#define FACTORY_RESET_PATTERN       0xFF // Usually 0xFF for blank EEPROM; check your chip datasheet!
#define FACTORY_RESET_BLOCK         NVM_PAGE_SIZE   // Write in 64-byte blocks for speed

void FactoryResetEEPROM(void)
{
    BYTE blank[FACTORY_RESET_BLOCK];
    WORD addr = 0;
    WORD bytesLeft = 0xFA; // Only erase up to 0xF9 (skip MAC area)
    memset(blank, 0xFF, sizeof(blank));
    while (bytesLeft > 0) {
        WORD chunk = (bytesLeft > FACTORY_RESET_BLOCK) ? FACTORY_RESET_BLOCK : bytesLeft;
        NVMWrite(blank, addr, chunk);
        addr += chunk;
        bytesLeft -= chunk;
    }
    // Optionally, print "MAC preserved" to LCD for reassurance.
}
