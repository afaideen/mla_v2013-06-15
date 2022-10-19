/****************************************************************************
* FileName:		main.c
* Dependencies: none   
* Processor:	PIC18, PIC24F, PIC32, dsPIC30, dsPIC33
*               tested with 18F4620, dsPIC33FJ256GP710	
* Complier:     Microchip C18 v3.04 or higher
*				Microchip C30 v2.03 or higher	
*               Microchip C32 v1.02 or higher
* Company:		Microchip Technology, Inc.
*
* Copyright and Disclaimer Notice for MiWi DE Software:
*
* Copyright ï¿½ 2007-2012 Microchip Technology Inc.  All rights reserved.
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
* Detailed demo flow chart and execution instructions can be found in
*   MiWi DE help file located at directory <MLA Install Directory>/
*   Microchip/Help. From the content tab, find the document about
*   Simple Example at <ROOT> -> "Demos" -> "Running Demos" -> 
*   "Basic Demos" -> "Simple Example".
*
* Change History:
*  Rev   Date         Author    Description
*  0.1   1/03/2008    yfy       Initial revision
*  2.0   4/15/2009    yfy       MiMAC and MiApp revision
*  3.1   5/28/2010    yfy       MiWi DE 3.1
*  4.1   1/31/2012    yfy       MiWi DE 4.2, simplified demo interface
**************************************************************************/

/************************ HEADERS ****************************************/
#include "ConfigApp.h"
#include "WirelessProtocols/MCHP_API.h"
#include "WirelessProtocols/Console.h"
#include "DemoOutput.h"
#include "HardwareProfile.h"

BOOL CreateNewConnectionWithLeastNoise(DWORD scan_chnl);
BOOL CreateNewConnectionAtChannel(BYTE channel);
BYTE JoinAvailableChannel(BYTE channel);
BYTE SendBeam(void);

/************************** VARIABLES ************************************/
#define LIGHT   0x01
#define SWITCH  0x02

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
    BYTE AdditionalNodeID[ADDITIONAL_NODE_ID_SIZE] = {LIGHT};
#endif

/*************************************************************************/
// The variable myChannel defines the channel that the device
// is operate on. This variable will be only effective if energy scan
// (ENABLE_ED_SCAN) is not turned on. Once the energy scan is turned
// on, the operating channel will be one of the channels available with
// least amount of energy (or noise).
/*************************************************************************/
//BYTE myChannel = 24;//GOOD
//BYTE myChannel = 11;
//BYTE myChannel = 13;
BYTE myChannel = 14;
//BYTE myChannel = 15;//GOOD
//BYTE myChannel = 19;//GOOD
//BYTE myChannel = 17;//GOOD
//BYTE myChannel = 23;//GOOD
//BYTE myChannel = 26;//GOOD
//BYTE myChannel = 25;//GOOD
//BYTE myChannel = 22;
//BYTE myChannel = 21;//GOOD

#define     ALL_CHANNEL     0xFFFF

BYTE tempAddr[8] = {0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA};
extern DWORD_VAL OutgoingFrameCounter; 

#if defined(__C32__)

    void _general_exception_handler(unsigned cause, unsigned status) {
        Nop();
        Nop();
        printf("\r\nerror");
        DelayMs(1000);
        Nop();
    }
#endif

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
*                   application will first try to establish a
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
#if defined(__18CXX)
void main(void)
#else
int main(void)
#endif
{   
    BYTE i = 0xFF;
    BYTE TxSynCount = 0;
    BYTE TxSynCount2 = 0;
    BYTE TxNum = 0;
    BYTE RxNum = 0;
    
    /*******************************************************************/
    // Initialize the system
    /*******************************************************************/
    BoardInit();      
    ConsoleInit(); 
    DemoOutput_Greeting();
    
    LED_1 = 0;
    LED_2 = 0;

    /*******************************************************************/
    // Initialize Microchip proprietary protocol. Which protocol to use
    // depends on the configuration in ConfigApp.h
    /*******************************************************************/
    /*******************************************************************/
    // Function MiApp_ProtocolInit initialize the protocol stack. The
    // only input parameter indicates if previous network configuration
    // should be restored. In this simple example, we assume that the 
    // network starts from scratch.
    /*******************************************************************/
    MiApp_ProtocolInit(FALSE);
    
    /*******************************************************************/
    // Function MiApp_ConnectionMode defines the connection mode. The
    // possible connection modes are:
    //  ENABLE_ALL_CONN:    Enable all kinds of connection
    //  ENABLE_PREV_CONN:   Only allow connection already exists in 
    //                      connection table
    //  ENABL_ACTIVE_SCAN_RSP:  Allow response to Active scan
    //  DISABLE_ALL_CONN:   Disable all connections. 
    /*******************************************************************/
    MiApp_ConnectionMode(ENABLE_ALL_CONN);

//    CreateNewConnectionAtChannel(myChannel);
//    CreateNewConnectionWithLeastNoise(0b0000000011111111);
//    CreateNewConnectionWithLeastNoise(0b0000000011111100);
//    CreateNewConnectionWithLeastNoise(ALL_CHANNEL);
    
    #if defined(NWK_ROLE_PAN_COORDINATOR)
        //Create connection
        CreateNewConnectionAtChannel(myChannel);
    #else
        if(JoinAvailableChannel(myChannel)==0xFF){
//            //Create connection
//            CreateNewConnectionAtChannel(myChannel);
            Printf("\r\nJoining failed...");
        }
    #endif
    
    /*******************************************************************/
    // Function DumpConnection is used to print out the content of the
    //  Connection Entry on the hyperterminal. It may be useful in 
    //  the debugging phase.
    // The only parameter of this function is the index of the  
    //  Connection Entry. The value of 0xFF means to print out all
    //  valid Connection Entry; otherwise, the Connection Entry
    //  of the input index will be printed out.
    /*******************************************************************/
    DumpConnection(0xFF);

    // Turn on LED 1 to indicate connection established
    LED_1 = 1;
    DemoOutput_Instruction();
    MIWI_TICK t1, t2, t3, t4, t5;
    t1 = MiWi_TickGet();
    t2 = MiWi_TickGet();
    t3 = MiWi_TickGet();
    t4 = MiWi_TickGet();
    t5 = MiWi_TickGet();
    BYTE status_conn = 0xff, TxPersistFailures = 0, retry_resync = 0;
    while(1)
    {
        ClrWdt();
#ifdef PIC32_WIRELESS_EVAL_BOARD
        if(!SW1){
            if( MiWi_TickGetDiff(MiWi_TickGet(), t1) > 1 * ONE_SECOND )
            {
                t1 = MiWi_TickGet();
                Reset();
            }
        }
        else
            t1 = MiWi_TickGet();
#endif
        
        if( MiWi_TickGetDiff(MiWi_TickGet(), t3) > 1 * ONE_SECOND )
        {
            t3 = MiWi_TickGet();
            LED_1 ^= 1;
            
        }
#ifdef COORDINATOR
        if( MiWi_TickGetDiff(MiWi_TickGet(), t2) > 3 * ONE_SECOND )
        {
            t2 = MiWi_TickGet();

            status_conn = SendBeam();
            if(status_conn == 1){
                TxNum++;
                DemoOutput_UpdateTxRx(TxNum, RxNum);
                LED_3 = 1;
                Printf("\r\nSend beam...ok\r\n");
                t4 = MiWi_TickGet();
                retry_resync = 0;
            }else{
                LED_3 = 0;
                Printf("\r\nSend beam...failed\r\n");
                TxPersistFailures++;
                DemoOutput_ConnectionLost(TxPersistFailures);
            }

            
        }
        
        if(retry_resync >= 3)
        {
            Reset();//or SoftReset()
        }
  
        //Note PAN COORDINATOR won't call function below!
        if(!status_conn)
        {
            
            if( MiWi_TickGetDiff(MiWi_TickGet(), t4) > 10 * ONE_SECOND )
            {
                
                DemoOutput_StartResync();
#ifdef NWK_ROLE_END_DEVICE
                /*******************************************************************/
                // Function MiApp_TransceiverPowerState is used to set the power state
                // of RF transceiver. There are three possible states:
                //   - POWER_STATE_SLEEP        Put transceiver into sleep
                //   - POWER_STATE_WAKEUP       Wake up the transceiver only
                //   - POWER_STATE_WAKEUP_DR    Wake up and send Data Request command
                /*******************************************************************/
                MiApp_TransceiverPowerState(POWER_STATE_WAKEUP);
#endif
                /***********************************************************************/
                // Function MiApp_ResyncConnection is used to synchronized connection
                // if one side of communication jumped to another channel, when 
                // frequency agility is performed. Usually, this is done by the 
                // sleeping device, since the sleeping device cannot hear the broadcast 
                // of channel hopping command.
                //
                // The first parameter is the index of connection table for the peer 
                // node, which we would like to resynchronize to.
                // The second parameter is the bit map of channels to be scanned
                /***********************************************************************/
//                MiApp_ResyncConnection(0, 0xFFFFFFFF);    
                if(MiApp_ResyncConnection(0, 0b0000000000001000))
                {
                    DemoOutput_EndResync();
                    status_conn = 1;
                    TxPersistFailures = 0;
                    TxNum = 0;
                    retry_resync = 0;
                }
              
                retry_resync++;
               
                
                t4 = MiWi_TickGet();
                
            }
        }
        else
                t4 = MiWi_TickGet();
        
#endif
        
        /*******************************************************************/
        // Function MiApp_MessageAvailable returns a boolean to indicate if 
        // a packet has been received by the transceiver. If a packet has 
        // been received, all information will be stored in the rxFrame, 
        // structure of RECEIVED_MESSAGE.
        /*******************************************************************/
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
            
            /*******************************************************************/
            // Function MiApp_DiscardMessage is used to release the current 
            //  received packet.
            // After calling this function, the stack can start to process the
            //  next received frame 
            /*******************************************************************/        
            MiApp_DiscardMessage();
            #define SIZE_PAYLOAD    50
            BYTE SourceAddress[2], Payload[SIZE_PAYLOAD];
            CHAR *ret;
            
            memcpy(SourceAddress, rxMessage.SourceAddress, 2);
            memset(Payload, 0, SIZE_PAYLOAD);
            memcpy(Payload, rxMessage.Payload, rxMessage.PayloadSize);
            
            ret = strstr(Payload, "hello");
            Nop();
//            ret = strstr(Payload, "hellow");
//            Nop();
//            ret = strstr(Payload, "hi");
//            Nop();
#ifdef NWK_ROLE_PAN_COORDINATOR
            if(ret != 0){
                status_conn = 1;
            }
#endif
        }
        else
        {
            /*******************************************************************/
            // If no packet received, now we can check if we want to send out
            // any information.
            // Function ButtonPressed will return if any of the two buttons
            // has been pushed.
            /*******************************************************************/
            BYTE PressedButton = ButtonPressed();
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
                    for(i = 0; i < 11; i++)
                    {
                        MiApp_WriteData(DE[(TxSynCount2%6)][i]);
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

BYTE SendBeam(void)
{
    BYTE i;
    BYTE HELLO[] = "hello there\r\n";
    MiApp_FlushTx();   
    for(i = 0; i < sizeof(HELLO); i++)
    {
        MiApp_WriteData(HELLO[i]);
    }
    if( MiApp_UnicastConnection(0, TRUE) == FALSE )//0 means send to parent === PAN COORDINATOR
    {
//        DemoOutput_UnicastFail();
        return 0;
    }
    return 1;
    
}

//BOOL CreateNewConnectionWithLeastNoise(DWORD scan_chnl, BYTE channel)
BOOL CreateNewConnectionWithLeastNoise(DWORD scan_chnl)
{  
    DWORD scan_chnl_;
//    //Pre-condition compulsary to init channel setting
//    // Set default channel
//    if( MiApp_SetChannel(channel) == FALSE )
//    {
//        DemoOutput_ChannelError(channel);
//        #if defined(__18CXX)
//            return;
//        #else
//            return 0;
//        #endif
//    }
    
//    scan_chnl = 0b0000000011111000 << 11;
    scan_chnl_ = scan_chnl << 11;
//  scan_chnl = 0xFFFF << 11; //move the 16-bit 0xFFFF to the left by 11 bits. Scan from channel bit 11 to bit 26. bit0-bit10, bit27-bit31 are considered invalid. 
    BOOL connstat = FALSE;
    while(!connstat){
        Printf("\r\nCreate connection...");
        //    MiApp_StartConnection(START_CONN_CS_SCN , 10, 0);//not yet available
        connstat = MiApp_StartConnection(START_CONN_ENERGY_SCN , 10, scan_chnl_);//create connection with least noise energy

    }
    return connstat;
}
BOOL CreateNewConnectionAtChannel(BYTE channel)
{
    // Set default channel
    if( MiApp_SetChannel(channel) == FALSE )
    {
        DemoOutput_ChannelError(channel);
        #if defined(__18CXX)
            return;
        #else
            return 0;
        #endif
    }
    DemoOutput_Channel(myChannel, 0);
    Printf("\r\nCreate connection...");
    
    
    BOOL connstat = MiApp_StartConnection(START_CONN_DIRECT, 10, 0xFFFFFFFF);//create connection at selected channel/myChannel
//    BOOL connstat = MiApp_StartConnection(START_CONN_DIRECT, 0, 0);//also okay!
    return connstat;
}

BYTE JoinAvailableChannel(BYTE channel)
{
    BYTE i;
    Printf("Joining available channel...");
    
       /*******************************************************************/
    // Function MiApp_EstablishConnection try to establish a new 
    // connection with peer device. 
    // The first parameter is the index to the active scan result, 
    //      which is acquired by discovery process (active scan). If 
    //      the value of the index is 0xFF, try to establish a 
    //      connection with any peer.
    // The second parameter is the mode to establish connection, 
    //      either direct or indirect. Direct mode means connection 
    //      within the radio range; indirect mode means connection 
    //      may or may not in the radio range. 
    /*******************************************************************/

    if( channel >= 11 && channel <= 26)
    {
        // Set default channel
        if( MiApp_SetChannel(channel) == FALSE )
        {
            DemoOutput_ChannelError(channel);
            #if defined(__18CXX)
                return;
            #else
                return 0;
            #endif
        }

//        i = MiApp_EstablishConnection(0xFF, CONN_MODE_DIRECT);
            while( (i = MiApp_EstablishConnection(0xFF, CONN_MODE_DIRECT)) == 0xFF );
    }
    else
        while( (i = MiApp_EstablishConnection(0xFF, CONN_MODE_DIRECT)) == 0xFF );//active scanning all channels available

    
    /*******************************************************************/
    // Display current opertion on LCD of demo board, if applicable
    /*******************************************************************/
    if( i != 0xFF )
    {
        //Join channel successful
        DemoOutput_Channel(ActiveScanResults[i].Channel, 1);//Connected peer
    }
    else
        DemoOutput_Channel(channel, 0);//Connecting peer
    
    
    return i;
}
