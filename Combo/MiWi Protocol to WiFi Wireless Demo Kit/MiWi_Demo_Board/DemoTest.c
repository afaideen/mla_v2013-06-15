/****************************************************************************
* FileName:		Demo.c
* Dependencies: none   
* Processor:	PIC18F46J50	
* Complier:     Microchip C18 v3.04 or higher
* Company:		Microchip Technology, Inc.
*
* Copyright and Disclaimer Notice for P2P Software:
*
* Copyright © 2007-2010 Microchip Technology Inc.  All rights reserved.
*
* Microchip licenses to you the right to use, modify, copy and distribute 
* Software only when embedded on a Microchip microcontroller or digital 
* signal controller and used with a Microchip radio frequency transceiver, 
* which are integrated into your product or third party product (pursuant 
* to the terms in the accompanying license agreement).   
*
* You should refer to the license agreement accompanying this Software for 
* additional information regarding your rights and obligations.
*
* SOFTWARE AND DOCUMENTATION ARE PROVIDED ï¿½AS ISï¿½ WITHOUT WARRANTY OF ANY 
* KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY 
* WARRANTY OF MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A 
* PARTICULAR PURPOSE. IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE 
* LIABLE OR OBLIGATED UNDER CONTRACT, NEGLIGENCE, STRICT LIABILITY, 
* CONTRIBUTION, BREACH OF WARRANTY, OR OTHER LEGAL EQUITABLE THEORY ANY 
* DIRECT OR INDIRECT DAMAGES OR EXPENSES INCLUDING BUT NOT LIMITED TO 
* ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR CONSEQUENTIAL DAMAGES, 
* LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF SUBSTITUTE GOODS, 
* TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES (INCLUDING BUT 
* NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
*
****************************************************************************
* File Description:
*
*  This is the simple example that demonstrate the simple programming
*  interface of MiWi Development Environment (DE). As you may see in
*  the demo code, besides application specific code, all wireless
*  communicate code is less than 30 lines. This simple example must be 
*  used with node 2 of simple example.
*  In this simple example, following features have been demonstrated:
*   - Hand Shake
*       A hand-shaking process has been demonstrated by establishing
*       connection with a peer device.
*   - Receiving Message
*       This example demonstrate how to check received message and 
*       available information for the received data. Finally, this
*       example also show how to process the message
*   - Transmitting Message
*       This example demonstrate how to transmit message by broadcast
*       or unicast
*   - Security
*       This example demonstrate how to require the protocol stack
*       to encrypt the outgoing message. It also shows how the 
*       protocol stack automatically decrypt the incoming message
*       and provide the security status to the application layer.
*
* Change History:
*  Rev   Date         Author    Description
*  1.0   2/02/2011    ccs       Initial revision
*  1.1   7/08/2011    mynenis   Added multi channel support
*  1.2   7/12/2011    mynenis   Range Demo Retry Fix
********************************************************************/

/************************ HEADERS ****************************************/
#include <stdio.h>

#include "ConfigApp.h"
#include "HardwareProfile.h"
#include "WirelessProtocols/MSPI.h"
#include "WirelessProtocols/MCHP_API.h"
#include "LCD_ST7032.h"
#include "TimeDelay.h"
#include "RangeDemo.h"
#include "TempDemo.h"
#include "WirelessProtocols/SymbolTime.h"
#include "MAC_EEProm.h"
#include "Transceivers/MCHP_MAC.h"
//#include "WirelessProtocols/NVM.h"
#include "LocalFiles/NVM.h"
#include "LCDBlocking.h"

extern BYTE ConfigureControl(void);
extern void Factory_Reset(void);
extern BYTE commissioning_running(void);
extern BOOL MiWiHelper_SendData(BYTE conn_index, BYTE *data);
extern void DemoOutput_HandleMessage(void);
extern void DemoOutput_UpdateTxRx(BYTE TxNum, BYTE RxNum);
extern void DemoOutput_UnicastFail(void);
extern void DemoOutput_Instruction(void);
extern float ReadTempSensorBoard(void);
extern void ftoa(float f, unsigned char *buff, BYTE size);
//extern BYTE JoinAvailableChannel(BYTE channel);
extern BYTE JoinAvailableChannel(DWORD channel, WORD short_addr);
extern BYTE ButtonPressed_(void);

void ProcessDataReceived(void);
void CheckConfiguration(void);
void Check_SW1(void);
void ScanButton(void);
void ProcessSensor(void);

// Demo Version
#define MAJOR_REV       1
#define MINOR_REV       2	
#define DEBUG_LEVEL     0

/*************************************************************************/
// The variable myChannel defines the channel that the device
// is operate on. This variable will be only effective if energy scan
// (ENABLE_ED_SCAN) is not turned on. Once the energy scan is turned
// on, the operating channel will be one of the channels available with
// least amount of energy (or noise).
/*************************************************************************/

// Possible channel numbers are from 0 to 31
BYTE myChannel = 11;


#define TRACKER_SIZE        15
#define REBROADCAST_COUNT   2
#define TRACKER_EXPIRATION  ((ONE_SECOND)*2)
struct
{
    BOOL isValid;
    BYTE sourceAddr[MY_ADDRESS_LENGTH];
    BYTE seqNum;
    MIWI_TICK expireTick;
    BYTE counter;
} BroadcastTracker[TRACKER_SIZE];   


			
BOOL NetFreezerEnable = FALSE;
BYTE connectionAddress[3];

extern BYTE myLongAddress[];
extern BYTE defaultHops;    
extern BYTE role;
extern BYTE ConnMode;
extern BYTE knownCoordinators;
extern BYTE RoutingTable[8];
extern CONNECTION_ENTRY    ConnectionTable[CONNECTION_SIZE]; 

/*************************************************************************/
// AdditionalNodeID variable array defines the additional 
// information to identify a device on a PAN. This array
// will be transmitted when initiate the connection between 
// the two devices. This  variable array will be stored in 
// the Connection Entry structure of the partner device. The 
// size of this array is ADDITIONAL_NODE_ID_SIZE, defined in 
// ConfigApp.h.
// In this demo, this variable array is set to be empty.
/*************************************************************************/
#if ADDITIONAL_NODE_ID_SIZE > 0
    BYTE AdditionalNodeID[ADDITIONAL_NODE_ID_SIZE] = {0x00};
#endif
    
    /*************************************************************************/
// the following two variable arrays are the data to be transmitted
// in this demo. They are bit map of English word "MiWi" and "DE"
// respectively.
/*************************************************************************/
extern ROM const BYTE MiWi[6][21];  
extern ROM const BYTE DE[6][11]; 

void MainDisplay(void)
{
    BYTE i;
    
        LCDText[0] = 'C';
	LCDText[1] = 'H';
	LCDText[2] = ':';
	LCDText[3] = currentChannel/10+'0';
	LCDText[4] = currentChannel%10+'0';
	LCDText[5] = ' ';
	LCDText[6] = 'P';
	LCDText[7] = 'A';
	LCDText[8] = 'N';
	LCDText[9] = 'I';
	LCDText[10] = 'D';
	LCDText[11] = ':';
	if( (myPANID.v[1]>>4) > 9 )
	{
    	LCDText[12] = (myPANID.v[1]>>4)-10+'A';
    }   	
    else
    {
        LCDText[12] = (myPANID.v[1]>>4)+'0';
    }    
	if( (myPANID.v[1]&0x0F) > 9 )
	{
    	LCDText[13] = (myPANID.v[1]&0x0F)-10+'A';
    }   	
    else
    {
        LCDText[13] = (myPANID.v[1]&0x0F)+'0';
    }  
    if( (myPANID.v[0]>>4) > 9 )
	{
    	LCDText[14] = (myPANID.v[0]>>4)-10+'A';
    }   	
    else
    {
        LCDText[14] = (myPANID.v[0]>>4)+'0';
    }    
	if( (myPANID.v[0]&0x0F) > 9 )
	{
    	LCDText[15] = (myPANID.v[0]&0x0F)-10+'A';
    }   	
    else
    {
        LCDText[15] = (myPANID.v[0]&0x0F)+'0';
    }  
    
    for(i = 0; i < 8; i++)
    {
        BYTE tmp = myLongAddress[7-i];
        if( (tmp>>4) > 9 )
        { 
            LCDText[16+i*2] = (tmp>>4)-10+'A';
        }
        else
        {
            LCDText[16+i*2] = (tmp>>4)+'0';
        }
        tmp &= 0x0F;
        if( tmp > 9 )
        {
            LCDText[16+i*2+1] = tmp-10+'A';
        }    
        else
        {
            LCDText[16+i*2+1] = tmp+'0';
        }
    }

    
    LCDUpdate();
}    

typedef struct __attribute__((__packed__)){
    BYTE    name[16];
    float   value;
    
}SENSOR;


typedef struct __attribute__((__packed__)){
    BYTE        role;
    SENSOR      sensor[2];
    BYTE        channel;
   
    BYTE        myLongAddress[MY_ADDRESS_LENGTH];
    WORD_VAL    myShortAddress;
    WORD_VAL    myPANID;
    BYTE        myParent;
    
}APPDATA ;

#pragma udata udata1
APPDATA appData;
   
#pragma udata mydata
BYTE mydata[TX_BUFFER_SIZE];

BYTE TxNum = 0;
BYTE RxNum = 0;
/*********************************************************************
* Function:         void main(void)
*
* PreCondition:     none
*
* Input:		    none
*
* Output:		    none
*
* Side Effects:	    none
*
* Overview:		    This is the main function that runs the simple 
*                   example demo. The purpose of this example is to
*                   demonstrate the simple application programming
*                   interface for the MiWi(TM) Development 
*                   Environment. By virtually total of less than 30 
*                   lines of code, we can develop a complete 
*                   application using MiApp interface. The 
*                   application will first try to establish a P2P 
*                   link with another device and then process the 
*                   received information as well as transmit its own 
*                   information.
*                   MiWi(TM) DE also support a set of rich 
*                   features. Example code FeatureExample will
*                   demonstrate how to implement the rich features 
*                   through MiApp programming interfaces.
*
* Note:			    
**********************************************************************/
BYTE FlashCount = 0;
void main(void)
{   
    BYTE i,j;
    MIWI_TICK startTick, currentTick, t1;        
    WORD tmp = 0xFFFF;    
    BYTE sensor_name_tpr[] = "temperature";

    /*******************************************************************/
    // Initialize Hardware
    /*******************************************************************/
	BoardInit();

    /*******************************************************************/
    // Initialize the LCD
    /*******************************************************************/
    LCDInit();
    
    for(j=0; j < CONNECTION_SIZE; j++)
    {
        for( i = 0; i < MY_ADDRESS_LENGTH; i++)
            ConnectionTable[j].Address[i]   = 0xff;
        ConnectionTable[j].AltAddress.Val   = 0xffff;
        ConnectionTable[j].PANID.Val        = 0xffff;
        for( i = 0; i < ADDITIONAL_NODE_ID_SIZE; i++)
            ConnectionTable[j].PeerInfo[i]      = 0xff;
        ConnectionTable[j].status.Val           = 0x00;
        
    }
    
//    MiApp_ProtocolInit(TRUE);//original
    MiApp_ProtocolInit(FALSE);
    
    LED0 = 0;
    LED1 = 0;
    LED2 = 0;
    
    MainDisplay();
    CheckConfiguration();
    
    
    /*******************************************************************/
    //  Set the connection mode. The possible connection modes are:
    //      ENABLE_ALL_CONN:    Enable all kinds of connection
    //      ENABLE_PREV_CONN:   Only allow connection already exists in 
    //                          connection table
    //      ENABLE_ACTIVE_SCAN_RSP:  Allow response to Active scan
    //      DISABLE_ALL_CONN:   Disable all connections. 
    /*******************************************************************/
#if defined(PROTOCOL_P2P)
    MiApp_ConnectionMode(ENABLE_ACTIVE_SCAN_RSP);//original works with P2P
#else
    //For MIWI need to enable both below!
//    MiApp_ConnectionMode(ENABLE_ACTIVE_SCAN_RSP);  //for MIWI
//    MiApp_ConnectionMode(ENABLE_ALL_CONN);  //for MIWI
//    MiApp_ConnectionMode(ENABLE_PREV_CONN);  //for MIWI
    currentChannel = 25;
    i = JoinAvailableChannel(currentChannel, 0x0000);
//    i = JoinAvailableChannel(currentChannel, 0x0100);
//    i = JoinAvailableChannel(0xffffffff, 0x0100);
//    i = JoinAvailableChannel(0xffffffff, 0x0000);//it will scan ch 11-26 looking for PAN Coordinator at address 0x0000
#endif
    
    DelayMs(1000);
    DemoOutput_Instruction();
    strcpy(appData.sensor[0].name, sensor_name_tpr);
        
    appData.myParent = myParent;
    appData.myPANID = myPANID;
    appData.role = role;
    appData.myShortAddress = myShortAddress;
    appData.myLongAddress[0] = myLongAddress[0];
    appData.myLongAddress[1] = myLongAddress[1];
    appData.myLongAddress[2] = myLongAddress[2];
    appData.myLongAddress[3] = myLongAddress[3];
    appData.myLongAddress[4] = myLongAddress[4];
    appData.myLongAddress[5] = myLongAddress[5];
    appData.myLongAddress[6] = myLongAddress[6];
    appData.myLongAddress[7] = myLongAddress[7];    
 
    while(1)
    {
        ClrWdt();
        if( MiWi_TickGetDiff(MiWi_TickGet(), t1) > 0.5 * ONE_SECOND )
        {
            t1 = MiWi_TickGet();
            LED0 ^= 1;
        }
        
        Check_SW1();   
        ProcessSensor();
        
        
        if( MiApp_MessageAvailable() )
        {
            /*******************************************************************/
            // If a packet has been received, handle the information available 
            // in rxMessage.
            /*******************************************************************/
            DemoOutput_HandleMessage();
            DemoOutput_UpdateTxRx(TxNum, ++RxNum);
            
            // Toggle LED2 to indicate receiving a packet.
            LED_2 ^= 1;
            MiApp_DiscardMessage();
//            ProcessDataReceived();
            
        }
        else
        {
            ScanButton();
            
        }
        
    }
    
}

void ProcessSensor(void)
{
    BYTE buff[8];
    appData.sensor[0].value = ReadTempSensorBoard();
        
    ftoa(appData.sensor[0].value,&buff[0], sizeof(buff));
    memset(mydata, 0, sizeof(mydata));
    sprintf(mydata,"short_addr=0x%04x,addr=%c%c%c%c%c%c%c%c,t1=%s,\r\n", 
            myShortAddress.Val,
            myLongAddress[7],
            myLongAddress[6],
            myLongAddress[5],
            myLongAddress[4],
            myLongAddress[3],
            myLongAddress[2],
            myLongAddress[1],
            myLongAddress[0],
            buff);
}

void ScanButton(void)
{
    BYTE i;
    BYTE TxSynCount = 0;
    BYTE TxSynCount2 = 0;
    WORD mydest_parent_addr = 0x0000;
    /*******************************************************************/
    // If no packet received, now we can check if we want to send out
    // any information.
    // Function ButtonPressed will return if any of the two buttons
    // has been pushed.
    /*******************************************************************/
    BYTE PressedButton = ButtonPressed_();
    switch( PressedButton )
    {
        case 1:                 
            /*******************************************************************/ 
            // Button 1 pressed. We need to send out the bitmap of word "MiWi".
            // First call MiApp_FlushTx to reset the Transmit buffer. Then fill 
            // the buffer one byte by one byte by calling function 
            // MiApp_WriteData
            /*******************************************************************/

            MiApp_FlushTx();
            for(i = 0; i < 21; i++)
            {
                MiApp_WriteData(MiWi[(TxSynCount%6)][i]);
            }
            TxSynCount++;


            /*******************************************************************/
            // Function MiApp_BroadcastPacket is used to broadcast a message
            //    The only parameter is the boolean to indicate if we need to
            //       secure the frame
            /*******************************************************************/
            MiApp_BroadcastPacket(FALSE);

            DemoOutput_UpdateTxRx(++TxNum, RxNum);

            break;

        case 2:
            /*******************************************************************/                
            // Button 2 pressed. We need to send out the bitmap of word "DE" 
            // encrypted.
            // First call function MiApp_FlushTx to reset the Transmit buffer. 
            //  Then fill the buffer one byte by one byte by calling function 
            //  MiApp_WriteData
            /*******************************************************************/
            MiApp_FlushTx();   


            for(i = 0; i < sizeof(mydata); i++)
            {
                MiApp_WriteData(mydata[i]);
            }
            TxSynCount2++;

            /*******************************************************************/
            // Function MiApp_UnicastConnection is one of the functions to 
            //  unicast a message.
            //    The first parameter is the index of Connection Entry for 
            //       the peer device. In this demo, since there are only two
            //       devices involved, the peer device must be stored in the 
            //       first Connection Entry
            //    The second parameter is the boolean to indicate if we need to
            //       secure the frame. If encryption is applied, the security
            //       level and security key are defined in ConfigApp.h
            //
            // Another way to unicast a message is by calling function
            //  MiApp_UnicastAddress. Instead of supplying the index of the 
            //  Connection Entry of the peer device, this function requires the 
            //  input parameter of destination address.
            /*******************************************************************/
//                    if( MiApp_UnicastConnection(0, TRUE) == FALSE )
//            if( MiApp_UnicastConnection(myParent, TRUE) == FALSE )
            
            if( MiApp_UnicastAddress(&mydest_parent_addr, FALSE, TRUE) == FALSE ) //For hopping
//            if( MiApp_UnicastAddress(&mydest_longaddr, TRUE, TRUE) == FALSE ) //For hopping
            {
                DemoOutput_UnicastFail();
            }
            else
            {
                TxNum++;
            }                   
            DemoOutput_UpdateTxRx(TxNum, RxNum);
            break;

        default:
            break;
    } 
}

void ProcessDataReceived(void)
{
    //check if msg comes from children or parent
    if( rxMessage.SourceAddress[1] != 0x00 && appData.role == ROLE_COORDINATOR )
    {
        //Forward data from children to parent
        memset(mydata, 0, sizeof(mydata));
        memcpy(mydata, (void *)rxMessage.Payload, rxMessage.PayloadSize);
        if(appData.myParent != 0xff)//not 0xff
        {
            //meaning has parent
            //forward data to parent 
            if(  MiWiHelper_SendData(myParent, mydata) == FALSE )
            {
                DemoOutput_UnicastFail();
            }
            else
            {
#if (DEBUG_LEVEL > 0)
                sprintf(msg,"Forward secured Unicast Packet with RSSI %02X from %02X%02X: %s", 
                        rxMessage.PacketRSSI,rxMessage.SourceAddress[1],rxMessage.SourceAddress[0],mydata);
                Printf(msg);
#endif
                TxNum++;
            }                   
            DemoOutput_UpdateTxRx(TxNum, RxNum);


        }

    }
    
}

void CheckConfiguration(void)
{
    static MIWI_TICK t1;
    BYTE configured;
    
    if(!SW1_PORT)
    {
        LCDErase();
        sprintf((char *) &LCDText[0], (char*) "Configuration");
        sprintf((char *) &(LCDText[16]), (char*) "Running...");
        LCDUpdate();
        while(!SW1_PORT);
        DelayMs(100);
        while(1)
        {
            if( MiWi_TickGetDiff(MiWi_TickGet(), t1) > 0.2 * ONE_SECOND )
            {
                t1 = MiWi_TickGet();
                LED0 ^= 1;
            }
            
            if(SW0_PORT == 0)
            {
                LCDErase();
                sprintf((char *) &LCDText[0], (char*) "Factory reset");
                LCDUpdate();
                while(SW1_PORT == 0);
                DelayMs(1000);
                Factory_Reset();
                DelayMs(1000);
                Reset();
            }  

            configured = commissioning_running();
            if(configured){
                LCDBacklightON();
                DelayMs(3000);
                Reset();
            }
        }

    }
}

void Check_SW1(void)
{
    static MIWI_TICK t_sw1;
    if(!SW1_PORT)
    {
        if( MiWi_TickGetDiff(MiWi_TickGet(), t_sw1) > 1.0 * ONE_SECOND )
        {
            t_sw1 = MiWi_TickGet();
            LCDErase();                
            sprintf((char *)&(LCDText), (far rom char*)"PANID:%02x%02x Ch:%02d",myPANID.v[1],myPANID.v[0],currentChannel);
            sprintf((char *)&(LCDText[16]), (far rom char*)"Address: %02x%02x", myShortAddress.v[1], myShortAddress.v[0]);
            LCDUpdate();

            DelayMs(10000);

        }


    }
    else
        t_sw1 = MiWi_TickGet();
}
