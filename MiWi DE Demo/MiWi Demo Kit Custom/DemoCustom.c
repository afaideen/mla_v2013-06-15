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

/*** Feature Definitions ***/
#define DEMO_VERSION        "v1.3"
#define APP_CHANNEL_MIN     11
#define APP_CHANNEL_MAX     26

#define MiWi_CHANNEL        0x04000000                          //Channel 26 bitmap

#define EXIT_DEMO           1
#define RANGE_DEMO          2
#define TEMP_DEMO           3
#define IDENTIFY_MODE       4
#define EXIT_IDENTIFY_MODE  5

#define NODE_INFO_INTERVAL  5

/*** State Definitions ***/
typedef enum {
    APP_STATE_INIT,
    APP_STATE_CHANNEL_SELECT,
    APP_STATE_NETWORK_SETUP,
    APP_STATE_WAIT_FOR_CONNECTION,
    APP_STATE_MENU,
    APP_STATE_RANGE_DEMO,
    APP_STATE_TEMP_DEMO,
    APP_STATE_NODE_INFO,
    APP_STATE_EXIT
} APP_STATE;

/*** Menu Definitions ***/
typedef enum {
    MENU_RANGE_DEMO,
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
    "SW1: Range Demo SW2: Other Apps  ",
    "SW1: Temp Demo  SW2: Other Apps  ",
    "SW1: Node Info  SW2: Other Apps  "
};

/*** Function Prototypes ***/
static void App_ShowSplash(void);
static void App_ChannelSelect(void);
static BOOL App_SetChannel(BYTE channel);
static BOOL App_NetworkSetup(void);
static void App_WaitForConnection(void);
static MENU_OPTION App_ShowMenu(void);
static void App_ShowNodeInfo(void);

BYTE ConnectionEntry = 0;

/*** Main Application Entry ***/
void main(void)
{
    APP_STATE state = APP_STATE_INIT;
    MENU_OPTION selectedMenu = MENU_RANGE_DEMO;

    // Board and LCD initialization
    BoardInit();
    LCDInit();
    InitSymbolTimer();
    LED0 = 0;
    LED1 = 0;
    LED2 = 0;

    while (state != APP_STATE_EXIT)
    {
        switch (state)
        {
            case APP_STATE_INIT:
                App_ShowSplash();
                /*******************************************************************/
                // Initialize the MiWi Protocol Stack. The only input parameter indicates
                // if previous network configuration should be restored.
                /*******************************************************************/		
                MiApp_ProtocolInit(FALSE);
                state = APP_STATE_CHANNEL_SELECT;
                break;

            case APP_STATE_CHANNEL_SELECT:
                App_ChannelSelect();
                state = APP_STATE_NETWORK_SETUP;
                break;

            case APP_STATE_NETWORK_SETUP:
                if (App_NetworkSetup())
                    state = APP_STATE_WAIT_FOR_CONNECTION;
                else
                    state = APP_STATE_CHANNEL_SELECT; // Retry on fail
                break;

            case APP_STATE_WAIT_FOR_CONNECTION:
                App_WaitForConnection();
                state = APP_STATE_MENU;
                break;

            case APP_STATE_MENU:
                selectedMenu = App_ShowMenu();
                switch (selectedMenu)
                {
                    case MENU_RANGE_DEMO: state = APP_STATE_RANGE_DEMO; break;
                    case MENU_TEMP_DEMO:  state = APP_STATE_TEMP_DEMO; break;
                    case MENU_NODE_INFO:  state = APP_STATE_NODE_INFO; break;
                    default:              state = APP_STATE_EXIT; break;
                }
                break;

            case APP_STATE_RANGE_DEMO:
                RangeDemo();
                state = APP_STATE_MENU;
                break;

            case APP_STATE_TEMP_DEMO:
                TempDemo();
                state = APP_STATE_MENU;
                break;

            case APP_STATE_NODE_INFO:
                App_ShowNodeInfo();
                state = APP_STATE_MENU;
                break;

            default:
                state = APP_STATE_EXIT;
                break;
        }
    }
}

/***************************************************************************
*                       MODULAR APP FUNCTIONS
***************************************************************************/

// 1. Splash screen and self test (optional)
static void App_ShowSplash(void)
{
    LCDBacklightON();
    LCDErase();
    sprintf((char *)LCDText, "    Microchip   ");
    sprintf((char *)&(LCDText[16]), " MiWi Demo Board");
    LCDUpdate();
    DelayMs(2000);

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
    BYTE select_channel;
    BOOL update_channel = FALSE;

    LCDErase();
    sprintf((char *)LCDText, "SW1:<Sel Ch:%02d>", myChannel);
    sprintf((char *)&(LCDText[16]), "SW2: Chnge Chnl");
    LCDUpdate();
    DelayMs(1000);

    // Wait until user presses SW1 to accept or SW2 to modify
    while (1)
    {
        sw = ButtonPressed();

        if (sw == SW1)
        {
            // Use the default channel
            break;
        }
        else if (sw == SW2)
        {
            // Start cycling through channels
#if defined (MRF24J40)
            select_channel = 11;
#else
            select_channel = 27;
#endif
            update_channel = TRUE;

            while (update_channel)
            {
                // Display currently selected channel
                LCDErase();
                sprintf((char *)LCDText, "SW1:<Sel Ch:%02d>", select_channel);
                sprintf((char *)&(LCDText[16]), "SW2: Chnge Chnl");
                LCDUpdate();

                // Block until SW1 or SW2 is pressed
                while (1)
                {
                    sw = ButtonPressed();
                    if (sw == SW1)
                    {
                        myChannel = select_channel;
                        update_channel = FALSE;
                        break;
                    }
                    else if (sw == SW2)
                    {
                        select_channel++;
#if defined(MRF24J40)
                        if (select_channel == 27)
                            select_channel = 11;
#elif defined(MRF89XA)
                        if (select_channel == 32)
                            select_channel = 0;
#else
                        #error "MiWi Demo is not supported for this transceiver"
#endif
                        break;  // redraw screen with new channel value
                    }
                }
            }
            break;
        }
    }

    // Now set the channel and check result
    if (!App_SetChannel(myChannel))
    {
        // Error already displayed inside App_SetChannel
        return;
    }
}



static BOOL App_SetChannel(BYTE channel)
{
    if (!MiApp_SetChannel(channel)) {
        // Use LCDText directly instead of LCDDisplay to avoid const/pointer mismatch
        LCDErase();
        sprintf((char *)LCDText, "ERROR: Unable to");
        sprintf((char *)&(LCDText[16]), "Set Channel..");
        LCDUpdate();
        DelayMs(2000);
        return FALSE;
    }
    return TRUE;
}

// 3. Network setup: create or join
static BOOL App_NetworkSetup(void)
{
    BYTE sw;
    BOOL networkJoined = FALSE;
    
    LCDErase();
    sprintf((char *)LCDText, "SW1: Create Ntwk");
    sprintf((char *)&(LCDText[16]), "SW2: Join Ntwk  ");
    LCDUpdate();
    DelayMs(1000);

    while (!networkJoined)
    {
        

        sw = ButtonPressed();

        if (sw == SW1) // Create network
        {
            LCDErase();
            sprintf((char *)LCDText, "Creating Network");
            LCDUpdate();
            MiApp_ProtocolInit(FALSE);
            MiApp_StartConnection(START_CONN_DIRECT, 0, 0);
            LCDErase();
            sprintf((char *)LCDText, "Created Network ");
            sprintf((char *)&(LCDText[16]), "Successfully    ");
            LCDUpdate();
            DelayMs(1000);

            LCDErase();
            sprintf((char *)LCDText, "PANID:%02x%02x Ch:%02d", myPANID.v[1], myPANID.v[0], myChannel);
            sprintf((char *)&(LCDText[16]), "Address: %02x%02x", myShortAddress.v[1], myShortAddress.v[0]);
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
            LCDErase();
            sprintf((char *)LCDText, "  Scanning for   ");
            sprintf((char *)&(LCDText[16]), "   Networks....  ");
            LCDUpdate();
            DelayMs(1000);
            LCDErase();
            sprintf((char *)LCDText, "Please Select    ");
            sprintf((char *)&(LCDText[16]), "Network to Join  ");
            LCDUpdate();
            DelayMs(1000);
            MiApp_ProtocolInit(FALSE);

            // Scan and join logic here (reuse Demo.c logic)
            // ... For brevity, use similar display logic for selection
            // Assume scanresult and joining is handled, update networkJoined on success

            // If failed, show:
            // LCDErase();
            // sprintf((char *)LCDText, "No Network Found");
            // sprintf((char *)&(LCDText[16]), "SW2: Re-Scan    ");
            // LCDUpdate();
            // DelayMs(1000);
        }
    }

    return networkJoined;
}

// 4. Wait for client/peer connection if needed (optional for PAN coordinator)
static void App_WaitForConnection(void)
{
    // For PAN coordinator, usually no action needed here
    DelayMs(500);
}

// 5. Show main menu and handle selection
static MENU_OPTION App_ShowMenu(void)
{
    MENU_OPTION menuIndex = MENU_RANGE_DEMO;
    BYTE result = 0;

    while (1) {
        LCDDisplay(menuText[menuIndex], 0, FALSE);
        result = ButtonPressed();

        if (result == SW1)
            return menuIndex;
        else if (result == SW2) {
            menuIndex = (menuIndex + 1) % MENU_COUNT;
        }
        // Also process incoming MiWi packets for remote demo triggers if needed
        if (MiApp_MessageAvailable()) {
            BYTE pktCMD = rxMessage.Payload[0];
            if (pktCMD == RANGE_DEMO) return MENU_RANGE_DEMO;
            if (pktCMD == TEMP_DEMO) return MENU_TEMP_DEMO;
            if (pktCMD == IDENTIFY_MODE) return MENU_NODE_INFO;
            MiApp_DiscardMessage();
        }
    }
}

// 6. Node Info / Identify Mode handler
static void App_ShowNodeInfo(void)
{
    LCDErase();
    sprintf((char *)LCDText, "PANID:%02x%02x Ch:%02d", myPANID.v[1], myPANID.v[0], myChannel);
    sprintf((char *)&(LCDText[16]), "Address: %02x%02x", myShortAddress.v[1], myShortAddress.v[0]);
    LCDUpdate();
    DelayMs(2000);
}
