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
#include "WirelessProtocols/NVM.h"
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
extern BYTE JoinAvailableChannel(BYTE channel);
extern BYTE ButtonPressed_(void);

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
    BYTE j;
    MIWI_TICK startTick, currentTick, t1;
    MIWI_TICK t_sw1;
    
    WORD tmp = 0xFFFF;
    BYTE configured = 0;
    BYTE mydata[30];
    BYTE buff[8];
    BYTE sensor_name_tpr[] = "temperature";
    BYTE i = 0xFF;
    BYTE TxSynCount = 0;
    BYTE TxSynCount2 = 0;
    BYTE TxNum = 0;
    BYTE RxNum = 0;
    

    /*******************************************************************/
    // Initialize Hardware
    /*******************************************************************/
	BoardInit();

    /*******************************************************************/
    // Initialize the LCD
    /*******************************************************************/
    LCDInit();
 	
    
    MiApp_ProtocolInit(TRUE);//original
    
    
////////    add modification    ////////////
//    MiApp_ProtocolInit(FALSE);
//    myPANID.Val = MY_PAN_ID;
//    MiMAC_SetAltAddress((BYTE *)&tmp, (BYTE *)&myPANID.Val);    
//    MiApp_SetChannel(11);
    
//    nvmGetMyPANID(myPANID.v);
//    MiMAC_SetAltAddress((BYTE *)&tmp, (BYTE *)&myPANID.Val);  
//    nvmGetCurrentChannel(&currentChannel);
//    MiApp_SetChannel(currentChannel);
//    
//////////////////////////////////////////
    
    LED0 = 0;
    LED1 = 0;
    LED2 = 0;
   
//   //original
    
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
    MiApp_ConnectionMode(ENABLE_ALL_CONN);  //for MIWI
    JoinAvailableChannel(currentChannel);
//    i = MiApp_EstablishConnection(0xFF, CONN_MODE_DIRECT);
//    if (i != 0xFF) {
//        Nop(); // Connected Peer on Channel
//    } else {
        //Create network
//        MiApp_StartConnection(START_CONN_DIRECT, 10, 0);    //for MIWI
//    }
#endif
    
    MainDisplay();
    
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

            configured = commissioning_running();
            if(configured){
                LCDBacklightON();
                DelayMs(3000);
                Reset();
            }
        }

    }
    
    while(1)
    {
        ClrWdt();
        if( MiWi_TickGetDiff(MiWi_TickGet(), t1) > 0.5 * ONE_SECOND )
        {
            t1 = MiWi_TickGet();
            LED0 ^= 1;
        }
        

        strcpy(appData.sensor[0].name, sensor_name_tpr);
        DemoOutput_Instruction();
        appData.myParent = myParent;
        appData.myPANID = myPANID;
        appData.myShortAddress = myShortAddress;
        appData.myLongAddress[0] = myLongAddress[0];
        appData.myLongAddress[1] = myLongAddress[1];
        appData.myLongAddress[2] = myLongAddress[2];
        appData.myLongAddress[3] = myLongAddress[3];
        appData.myLongAddress[4] = myLongAddress[4];
        appData.myLongAddress[5] = myLongAddress[5];
        appData.myLongAddress[6] = myLongAddress[6];
        appData.myLongAddress[7] = myLongAddress[7];    
    
        
        if(!SW1_PORT)
        {
            if( MiWi_TickGetDiff(MiWi_TickGet(), t_sw1) > 1.0 * ONE_SECOND )
            {
                t_sw1 = MiWi_TickGet();
                LCDErase();                
                sprintf((char *)&(LCDText), (far rom char*)"PANID:%02x%02x Ch:%02d",myPANID.v[1],myPANID.v[0],myChannel);
                sprintf((char *)&(LCDText[16]), (far rom char*)"Address: %02x%02x", myShortAddress.v[1], myShortAddress.v[0]);
                LCDUpdate();
                
                DelayMs(10000);
                
            }
            
            
        }
        else
            t_sw1 = MiWi_TickGet();
            
        
        appData.sensor[0].value = ReadTempSensorBoard();
        
        ftoa(appData.sensor[0].value,&buff[0], sizeof(buff));
        memset(mydata, 0, sizeof(mydata));
        sprintf(mydata,"addr=%c%c%c%c%c%c%c%c,t1=%s,\r\n", 
                myLongAddress[7],
                myLongAddress[6],
                myLongAddress[5],
                myLongAddress[4],
                myLongAddress[3],
                myLongAddress[2],
                myLongAddress[1],
                myLongAddress[0],
                buff);
        
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
                    if(  MiWiHelper_SendData(0, mydata) == FALSE )
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
        else
        {
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
                    if( MiApp_UnicastConnection(0, TRUE) == FALSE )
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
        
    }
    
}
