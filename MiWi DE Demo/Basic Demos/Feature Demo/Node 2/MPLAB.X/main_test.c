
/************************ HEADERS **********************************/
#include "WirelessProtocols/MCHP_API.h"
#include "WirelessProtocols/Console.h"
#include "DemoOutput.h"

/************************ VARIABLES ********************************/
#define LIGHT   0x01
#define SWITCH  0x02

#if ADDITIONAL_NODE_ID_SIZE > 0
    BYTE AdditionalNodeID[ADDITIONAL_NODE_ID_SIZE] = {SWITCH};
#endif
    /*******************************************************************/
// The variable myChannel defines the channel that the P2P connection
// is operate on. This variable will be only effective if energy scan
// (ENABLE_ED_SCAN) is not turned on. Once the energy scan is turned
// on, the operating channel will be one of the channels available 
// with least amount of energy (or noise).
/*******************************************************************/
BYTE myChannel = 25;
int main(void){
    BYTE i, j;
    BYTE OperatingChannel = 0xFF;
    BYTE TxSynCount = 0;
    BYTE TxSynCount2 = 0;
    BYTE TxPersistFailures = 0;
    BOOL ReadyToSleep = FALSE;
    BYTE TxNum = 0;
    BYTE RxNum = 0;
    BYTE PressedButton = 0;
    
    /*******************************************************************/
    // Initialize the system
    /*******************************************************************/
    BoardInit();    
//    ConsoleInit();  
//    DemoOutput_Greeting();
    
    MiApp_ProtocolInit(FALSE);   
    while(1){
        j = MiApp_SearchConnection(10, 0xFFFFFFFF);
        OperatingChannel = DemoOutput_ActiveScanResults(j);
        if( OperatingChannel != 0xFF )
        {
            /*******************************************************************/
            // Function MiApp_SetChannel assign the operation channel(frequency)
            // for the transceiver. Channels 0 - 31 has been defined for the 
            // wireless protocols, but not all channels are valid for all 
            // transceivers, depending on their hardware design, operating
            // frequency band, data rate and other RF parameters. Check the
            // definition of FULL_CHANNEL_MAP for details.
            /*******************************************************************/
            MiApp_SetChannel(OperatingChannel);
            break;
        }
   //     DemoOutput_Rescan();
    }
    /*********************************************************************/
    // Function MiApp_ConnectionMode sets the connection mode for the 
    // protocol stack. Possible connection modes are:
    //  - ENABLE_ALL_CONN       accept all connection request
    //  - ENABLE_PREV_CONN      accept only known device to connect
    //  - ENABL_ACTIVE_SCAN_RSP do not accept connection request, but allow
    //                          response to active scan
    //  - DISABLE_ALL_CONN      disable all connection request, including
    //                          active scan request
    /*********************************************************************/
    MiApp_ConnectionMode(ENABLE_ALL_CONN);
    /*******************************************************************/
    // Function MiApp_EstablishConnection establish connections between
    // two devices. It has two input parameters:
    // The first parameter is the index of the target device in the 
    //     active scan table. It requires a MiApp_SearchConnection call
    //     before hand. If seraching connection is not performed in 
    //     advance, user can apply 0xFF to the first parameter to 
    //     indicate that it is OK to establish connection with any 
    //     device.
    // The second parameter is the connection mode, either directly or
    //     indirectly. Direct connection is a connection in the radio
    //     range. All protocol stack support this connection mode. 
    //     Indirect connection is the connection out of radio range. 
    //     An indirect connection has to rely on other device to route 
    //     the messages between two connected devices. Indirect 
    //     connection is also called "Socket" connection in MiWi 
    //     Protocol. Since MiWi P2P protocol only handles connection 
    //     of one hop, indirect connection is not supported in MiWi 
    //     P2P protocol, but supported in other networking protocols.
    // Function MiApp_EstablishConnection returns the index of the 
    //     connected device in the connection table. If no connection 
    //     is established after predefined retry times 
    //     CONNECTION_RETRY_TIMES, it will return 0xFF. If multiple 
    //     connections have been established, it will return the one 
    //     of the indexes of the connected device.
    /*******************************************************************/
    i = MiApp_EstablishConnection(0, CONN_MODE_DIRECT);
//    DemoOutput_Connected();
    DumpConnection(0xFF);
    
//    DemoOutput_Instruction();
    while(1){
        /*******************************************************************/
        // Function MiApp_MessageAvailable will return a boolean to indicate 
        // if a message for application layer has been received by the 
        // transceiver. If a message has been received, all information will 
        // be stored in rxMessage, structure of RECEIVED_MESSAGE.
        /*******************************************************************/
        if( MiApp_MessageAvailable() )
        {
            
            /*******************************************************************/
            // Function MiApp_DiscardMessage is used to release the current 
            // received message. After calling this function, the stack can 
            // start to process the next received message.
            /*******************************************************************/ 
            MiApp_DiscardMessage();
            // Toggle LED2 to indicate receiving a packet.
            LED_2 ^= 1;
            //DemoOutput_UpdateTxRx(TxNum, ++RxNum);
        
        }
        else{
            /***********************************************************************/
            // TxPersistFailures is the local variable to track the transmission 
            // failure because no acknowledgement frame is received. Typically,
            // this is the indication of either very strong noise, or the PAN
            // has hopped to another channel. 
            /***********************************************************************/
            if( TxPersistFailures > 3 )
            {
                DemoOutput_StartResync();

                /*******************************************************************/
                // Function MiApp_TransceiverPowerState is used to set the power state
                // of RF transceiver. There are three possible states:
                //   - POWER_STATE_SLEEP        Put transceiver into sleep
                //   - POWER_STATE_WAKEUP       Wake up the transceiver only
                //   - POWER_STATE_WAKEUP_DR    Wake up and send Data Request command
                /*******************************************************************/
                MiApp_TransceiverPowerState(POWER_STATE_WAKEUP);
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
                MiApp_ResyncConnection(0, 0xFFFFFFFF);    
                TxPersistFailures = 0;
                ReadyToSleep = FALSE;
                
                DemoOutput_EndResync();
                
            }
            else
            {
                ReadyToSleep = TRUE;
            }   
            /*******************************************************************/
            // If Data Request command and data transmision has been handled,
            // as the RFD device, it is time to consider put both the radio and 
            // MCU into sleep mode to conserve power.
            /*******************************************************************/
            if( ReadyToSleep )
            {
                ReadyToSleep = FALSE;
                
                /*******************************************************************/
                // Function MiApp_TransceiverPowerState is used to set the power 
                // state of RF transceiver. There are three possible states:
                //   - POWER_STATE_SLEEP        Put transceiver into sleep
                //   - POWER_STATE_WAKEUP       Wake up the transceiver only
                //   - POWER_STATE_WAKEUP_DR    Wake up and send Data Request 
                //                              command
                /*******************************************************************/
                MiApp_TransceiverPowerState(POWER_STATE_SLEEP);
                                    
                /*******************************************************************/
                // Prepare the condition to wake up the MCU. The MCU can either be
                // waken up by the timeout of watch dog timer (Time Synchronization 
                // off), timeout of counter with external 32KHz crystal (Time 
                // Synchronization on), or by the pin change notification interrupt 
                // by pushing the button. MCU handling of sleep preparing for 
                // different demo boards can be found in HardwareProfile.c
                /*******************************************************************/
                PrepareWakeup();
                
                // Put MCU into sleep mode
                Sleep();
                /*******************************************************************/
                // Handling the wakeup procedure. The steps differ for different
                // demo boards and families of MCUs. Details can be found in 
                // HardwareProfile.c
                /*******************************************************************/
                AfterWakeup();
                
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
                    if( TxPersistFailures > 0 )
                    {
//                        DemoOutput_UpdateTxRx(TxNum, RxNum);
                    }
                    TxPersistFailures = 0;
                }  
                MiApp_FlushTx();                   
                for(i = 0; i < 11; i++)
                {
                    MiApp_WriteData(DE[(TxSynCount2%6)][i]);
                }
                TxSynCount2++;
                /*******************************************************************/
                // Function MiApp_UnicastConnection is one of the functions to 
                // unicast a message.
                //    The first parameter is the index of connection table for 
                //       the peer device. In this demo, since there are only two
                //       devices involved, the peer device must be stored in the 
                //       first Connection Entry in the connection table.
                //    The second parameter is the boolean to indicate if we need 
                //       to secure the frame. If encryption is applied, the 
                //       security level and security key are defined in the 
                //       configuration file for the transceiver
                //
                // Another way to unicast a message is by calling function
                // MiApp_UnicastAddress. Instead of supplying the index of the 
                // connection table of the peer device, this function requires the 
                // input parameter of destination address directly.
                /*******************************************************************/
                if( MiApp_UnicastConnection(0, TRUE) == FALSE )
                {
                    DemoOutput_UnicastFail();
                }
                else
                {
                    TxNum++;
                }
            
            }            
            
        }
        
    }
    
}