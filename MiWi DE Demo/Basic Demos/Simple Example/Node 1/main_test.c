
/************************ HEADERS ****************************************/
#include "ConfigApp.h"
#include "WirelessProtocols/MCHP_API.h"
#include "WirelessProtocols/Console.h"
#include "DemoOutput.h"
#include "HardwareProfile.h"
#include "TimeDelay.h"
#include <string.h>

BOOL CreateNewConnectionWithLeastNoise(DWORD scan_chnl);
BOOL CreateNewConnectionAtChannel(BYTE channel);
float ReadTempSensorBoard(void);
void ftoa(float f, unsigned char *buff, BYTE size);
BOOL MiWiHelper_SendData(BYTE conn_index, BYTE *data);

extern BYTE myLongAddress[MY_ADDRESS_LENGTH];

#if (DEBUG_LEVEL > 0)
    static BYTE msg[100] = {0};
#endif
/************************** VARIABLES ************************************/
#define LIGHT   0x01
#define SWITCH  0x02
#define POTEY   0x03

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
//BYTE myChannel = 14;
//BYTE myChannel = 15;//GOOD
//BYTE myChannel = 19;//GOOD
//BYTE myChannel = 17;//GOOD
//BYTE myChannel = 23;//GOOD
BYTE myChannel = 26;//GOOD
//BYTE myChannel = 25;//GOOD
//BYTE myChannel = 22;
//BYTE myChannel = 21;//GOOD

#define     ALL_CHANNEL     0xFFFF

BYTE tempAddr[8] = {0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA};
extern DWORD_VAL OutgoingFrameCounter; 

typedef struct{
    BYTE    name[16];
    float   value;
    
}SENSOR;


typedef struct{
    BYTE        role;
    SENSOR      sensor[2];
    BYTE        channel;
   
    BYTE        myLongAddress[MY_ADDRESS_LENGTH];
    WORD_VAL    myShortAddress;
    WORD_VAL    myPANID;
    BYTE        myParent;
    
}APPDATA ;

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
    MIWI_TICK t1;
    BYTE mydata[30];
    BYTE buff[8];
    BYTE sensor_name_tpr[] = "temperature";

    
    /*******************************************************************/
    // Initialize the system
    /*******************************************************************/
    BoardInit();
//#ifndef WIRELESS_EVAL_BOARD    
//    ConsoleInit(); 
//#endif
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

    // Set default channel
    if( MiApp_SetChannel(myChannel) == FALSE )
    {
        DemoOutput_ChannelError(myChannel);
        #if defined(__18CXX)
            return;
        #else
            return 0;
        #endif
    }
    
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
//    DemoOutput_Channel(myChannel, 0);

    if(myLongAddress[0] == 1){
        CreateNewConnectionAtChannel(myChannel);
        appData.role = ROLE_PAN_COORDINATOR;
//    CreateNewConnectionWithLeastNoise(0b0000000011111111);
//    CreateNewConnectionWithLeastNoise(0b0000000011111111);
//    CreateNewConnectionWithLeastNoise(ALL_CHANNEL);
    }
    else{
        if(myLongAddress[0] == 2)
            appData.role = ROLE_COORDINATOR;
        else
            appData.role = ROLE_FFD_END_DEVICE;
    //Uncomment for original below
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
        i = MiApp_EstablishConnection(0xFF, CONN_MODE_DIRECT);

        /*******************************************************************/
        // Display current opertion on LCD of demo board, if applicable
        /*******************************************************************/
        if( i != 0xFF )
        {
            DemoOutput_Channel(myChannel, 1);
        }
        else
        {
            /*******************************************************************/
            // If no network can be found and join, we need to start a new 
            // network by calling function MiApp_StartConnection
            //
            // The first parameter is the mode of start connection. There are 
            // two valid connection modes:
            //   - START_CONN_DIRECT        start the connection on current 
            //                              channel
            //   - START_CONN_ENERGY_SCN    perform an energy scan first, 
            //                              before starting the connection on 
            //                              the channel with least noise
            //   - START_CONN_CS_SCN        perform a carrier sense scan 
            //                              first, before starting the 
            //                              connection on the channel with 
            //                              least carrier sense noise. Not
            //                              supported for current radios
            //
            // The second parameter is the scan duration, which has the same 
            //     definition in Energy Scan. 10 is roughly 1 second. 9 is a 
            //     half second and 11 is 2 seconds. Maximum scan duration is 
            //     14, or roughly 16 seconds.
            //
            // The third parameter is the channel map. Bit 0 of the 
            //     double word parameter represents channel 0. For the 2.4GHz 
            //     frequency band, all possible channels are channel 11 to 
            //     channel 26. As the result, the bit map is 0x07FFF800. Stack 
            //     will filter out all invalid channels, so the application 
            //     only needs to pay attention to the channels that are not 
            //     preferred.
            /*******************************************************************/
            Printf("\r\nStart connection...");
            MiApp_StartConnection(START_CONN_DIRECT, 10, 0);
            DemoOutput_Channel(myChannel, 0);
            DelayMs(500);
        }
    
    }
    
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
    strcpy(appData.sensor[0].name, sensor_name_tpr);
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
    while(1)
    {
        ClrWdt();
        if( MiWi_TickGetDiff(MiWi_TickGet(), t1) > 0.5 * ONE_SECOND )
        {
            t1 = MiWi_TickGet();
            LED_1 ^= 1;
        }
        
        
        appData.sensor[0].value = ReadTempSensorBoard();
        
        ftoa(appData.sensor[0].value,&buff[0], sizeof(buff));
        memset(mydata, 0, sizeof(mydata));
        sprintf(mydata,"addr=%02x%02x%02x%02x,t1=%s,\r\n", myLongAddress[0],myLongAddress[1],myLongAddress[2],myLongAddress[3],buff);
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
            
            //check if msg comes from children or parent
            if( rxMessage.SourceAddress[1] != 0x00 && appData.role == ROLE_COORDINATOR )
            {
                //Forward data from children to parent
                memset(mydata, 0, sizeof(mydata));
                memcpy(mydata, rxMessage.Payload, rxMessage.PayloadSize);
                
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

