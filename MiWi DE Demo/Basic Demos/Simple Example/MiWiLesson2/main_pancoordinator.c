/* 
 * File:   main_pancoordinator.c
 * Author: han
 *
 * Created on 10 February 2022, 10:18
 */

/************************ HEADERS ****************************************/
#include "ConfigApp.h"
//#include "WirelessProtocols/MCHP_API.h"
//#include "WirelessProtocols/Console.h"
#include "MiWiHelper.h"
#include "DemoOutput.h"
#include "HardwareProfile.h"

//BOOL CreateNewConnectionWithLeastNoise(DWORD scan_chnl);
//BOOL CreateNewConnectionAtChannel(BYTE channel);
//BYTE JoinAvailableChannel(BYTE channel);
BYTE SendBeam(BYTE *addr);
BYTE SendAppACK(BYTE *addr, const BYTE *ptr, BYTE len);

/************************** VARIABLES ************************************/
#define LIGHT   0x01
#define SWITCH  0x02

//#pragma config FWDTEN = ON, WDTPS = PS8192

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
        
//        if(!status_conn){
        if(1){
             if( MiWi_TickGetDiff(MiWi_TickGet(), t2) > 20.0 * ONE_SECOND )
             {
                t2 = MiWi_TickGet();
//                WORD addr = 0x0081;//RFD/EndDevice address always has 0x0081 for ShortAddress
                WORD addr = 0xFFFF;//send broadcast
                BYTE *ptrAddr = &addr;            
            
                if(SendBeam(ptrAddr))
                {
                    status_conn = 1;
                    TxNum++;
                    DemoOutput_UpdateTxRx(TxNum, RxNum);
                }else{
                    status_conn = 0;
                }
             }
            
        }
//        else
//            t2 = MiWi_TickGet();
        
        
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
            
//            ret = strstr(Payload, "hello");
            ret = 1;
            Nop();
#ifdef NWK_ROLE_PAN_COORDINATOR
            if(  ret != 0 && (*rxMessage.SourceAddress & 0x80)!=0x80  ){
                //send unicast to coordinator only
                //take note coordinator can only broadcast to RFD!
//                t2 = MiWi_TickGet();
                status_conn = 1;
                SendAppACK(rxMessage.SourceAddress, "gud\r\n\0", 6);
               
                TxNum++;
                DemoOutput_UpdateTxRx(TxNum, RxNum);
                
                status_conn = 0;

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

BYTE SendAppACK(BYTE *addr, const BYTE *ptr, BYTE len)
{
    BYTE v[2], i, tempText[30] = {0};
    MiApp_FlushTx();   
    for(i = 0; i < len; i++)
    {
        MiApp_WriteData(*ptr++);
    }
    v[0] = addr[0];
    v[1] = addr[1];
//    if( MiApp_UnicastConnection(0, TRUE) == FALSE )//0 means send to parent === PAN COORDINATOR
    if( MiApp_UnicastAddress(addr, FALSE, TRUE) == FALSE )
    {
//        Printf("Send ACK...FAILED\r\n");
        sprintf((char *)tempText, (const char*)"\r\nSend ACK to 0X%02x%02x...FAILED\r\n", v[1],v[0]);
        Printf(tempText);
//        DemoOutput_UnicastFail();
        return 0;
    }
//    Printf("Send ACK...OK\r\n");
    sprintf((char *)tempText, (const char*)"\r\nSend ACK to 0X%02x%02x...OK\r\n", v[1],v[0]);
    Printf(tempText);
    return 1;
    
}
//BYTE SendBeam(void)
BYTE SendBeam(BYTE *addr)
{
    BOOL s = FALSE;
    BYTE i, v[2];
    BYTE HELLO[] = "hello there\r\n";
    BYTE tempText[30] = {0};
    MiApp_FlushTx();   
    for(i = 0; i < sizeof(HELLO); i++)
    {
        MiApp_WriteData(HELLO[i]);
    }
    if( *addr == 0xFF ){
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
        sprintf((char *)tempText, (const char*)"\r\nSend BEAM to 0X%02x%02x...FAILED\r\n", v[1],v[0]);
        Printf(tempText);
//        DemoOutput_UnicastFail();
        return 0;
    }
    sprintf((char *)tempText, (const char*)"\r\nSend BEAM to 0X%02x%02x...OK\r\n", v[1],v[0]);
    Printf(tempText);
    return 1;
    
}

