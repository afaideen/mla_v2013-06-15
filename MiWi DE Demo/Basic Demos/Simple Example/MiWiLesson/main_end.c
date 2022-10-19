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
#include "MiWiHelper.h"
#include "DemoOutput.h"
#include "HardwareProfile.h"

BYTE SendBeam(BYTE *addr);

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
#define     SIZE_PAYLOAD    50

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
    BYTE i = 0xFF, n, activeScanIndex_Coordinator;
    BYTE TxSynCount = 0;
    BYTE TxSynCount2 = 0;
    BYTE TxNum = 0;
    BYTE RxNum = 0;
    MIWI_TICK t1, t2, t3, t4, t5;
    BYTE status_conn = 0xff, TxPersistFailures = 0, retry_resync = 0;
    BYTE tempText[30] = {0};
    WORD_VAL addr;//send to parent
    WORD *ptrAddr;  
    BYTE SourceAddress[2], Payload[SIZE_PAYLOAD];
    CHAR *ret;
    
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

//    myChannel = AutoSearchActiveConnection(0b0000000011111111);
//    myChannel = AutoSearchActiveConnection(ALL_CHANNEL);
    
    n = MiApp_SearchConnection(10, 0b0000000000001000 << 11);
//    n = MiApp_SearchConnection(10, 0xFFFF << 11);
    if(n == 1){
        myChannel = ActiveScanResults[n-1].Channel;
        activeScanIndex_Coordinator = n;
    }
    else{
        for(i = 0; i < n; i++){
            //Looking for coordinator only
            if(ActiveScanResults[i].Capability.bits.Role == ROLE_COORDINATOR){
                myChannel = ActiveScanResults[i].Channel;
                activeScanIndex_Coordinator = i;
                break;
            }
        }
    }
    while(MiApp_SetChannel(myChannel) == FALSE);
    while( (i = MiApp_EstablishConnection(activeScanIndex_Coordinator, CONN_MODE_DIRECT)) == 0xFF );

//    if(JoinAvailableChannel(myChannel)==0xFF){
////            //Create connection
////            CreateNewConnectionAtChannel(myChannel);
//        Printf("\r\nJoining failed...");
//    }

    
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
    
    t1 = MiWi_TickGet();
    t2 = MiWi_TickGet();
    t3 = MiWi_TickGet();
    t4 = MiWi_TickGet();
    t5 = MiWi_TickGet();
    addr.Val = ConnectionTable[0].AltAddress.Val;// setting by default hook to parent
    while(1)
    {
        ClrWdt();
        
        if( MiWi_TickGetDiff(MiWi_TickGet(), t3) > 1 * ONE_SECOND )
        {
            t3 = MiWi_TickGet();
            LED_1 ^= 1;
            
        }
#if defined(__PIC32MX__)
        if( MiWi_TickGetDiff(MiWi_TickGet(), t2) > 3.0 * ONE_SECOND )
        {
            t2 = MiWi_TickGet();            
                        
            ptrAddr = &addr;
            status_conn = SendBeam(ptrAddr);
            if(status_conn == 1){
                TxNum++;
                DemoOutput_UpdateTxRx(TxNum, RxNum);
                LED_3 = 1;

                t4 = MiWi_TickGet();
                retry_resync = 0;
            }else{
                LED_3 = 0;

                TxPersistFailures++;
                DemoOutput_ConnectionLost(TxPersistFailures);
            }

            
        }
#endif
        
        if(retry_resync >= 2)
        {
            Reset();//or SoftReset()
        }
  
        //Note PAN COORDINATOR won't call function below!
        if(!status_conn)
        {
            
            if( MiWi_TickGetDiff(MiWi_TickGet(), t4) > 5 * ONE_SECOND )
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
                if(MiApp_ResyncConnection(0, 0b0000000000001000))//scan ch 14 only
                {
                    DemoOutput_EndResync();
                    status_conn = 1;
                    TxPersistFailures = 0;
                    TxNum = 0;
                    retry_resync = 0;
                }
                else
                {
                    status_conn = 0;
                }
              
                retry_resync++;
               
                
                t4 = MiWi_TickGet();
                
            }
        }
        else
                t4 = MiWi_TickGet();
        

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
            
            
            memcpy(SourceAddress, rxMessage.SourceAddress, 2);
            memset(Payload, 0, SIZE_PAYLOAD);
            memcpy(Payload, rxMessage.Payload, rxMessage.PayloadSize);
            
           
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
                    
                case 3:
                    /*******************************************************************/
                    // Function MiApp_TransceiverPowerState is used to set the power 
                    // state of RF transceiver. There are three possible states:
                    //   - POWER_STATE_SLEEP        Put transceiver into sleep
                    //   - POWER_STATE_WAKEUP       Wake up the transceiver only
                    //   - POWER_STATE_WAKEUP_DR    Wake up and send Data Request 
                    //                              command
                    /*******************************************************************/
                    if( MiApp_TransceiverPowerState(POWER_STATE_WAKEUP_DR) > SUCCESS )
                    {
                        TxPersistFailures++;
                        DemoOutput_ConnectionLost(TxPersistFailures);
                    }
                    else
                    {
                        Printf("\r\nData Request...OK\r\n");
//                        DemoOutput_HandleMessage();
                        if( TxPersistFailures > 0 )
                        {
                            DemoOutput_UpdateTxRx(TxNum, RxNum);
                        }
                        TxPersistFailures = 0;
                    }
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

BYTE SendBeam(BYTE *addr)
{
    BOOL s = FALSE;
    BYTE i, v[2], tempText[30] = {0};
    BYTE HELLO[] = "How are you?\r\n";
    MiApp_FlushTx();   
    for(i = 0; i < sizeof(HELLO); i++)
    {
        MiApp_WriteData(HELLO[i]);
    }
    if( *addr == 0xFFFF ){
        s = MiApp_BroadcastPacket(TRUE);
    }
    else{
        s = MiApp_UnicastAddress(addr, FALSE, TRUE);
//        s =  MiApp_UnicastConnection(0, TRUE);//0 means send to parent === PAN COORDINATOR
    }
    v[0] = addr[0];
    v[1] = addr[1];
    if( s == FALSE )
    {
        sprintf((char *)tempText, (const char*)"\r\nSend beam to 0X%02x%02x...FAILED\r\n", v[1],v[0]);
        Printf(tempText);
//        DemoOutput_UnicastFail();
        return 0;
    }
    sprintf((char *)tempText, (const char*)"\r\nSend beam to 0X%02x%02x...OK\r\n", v[1],v[0]);
    Printf(tempText);
    return 1;
    
}


