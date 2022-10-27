
#include "GenericTypeDefs.h"
#include "MiWiHelper.h"
#include "WirelessProtocols/MCHP_API.h"

#if defined(MIWI_HELPER)

BOOL MiWiHelper_SendData(BYTE conn_index, BYTE *data)
{
    BYTE i;
    MiApp_FlushTx();
    for(i = 0; i < strlen(data); i++)
    {
        MiApp_WriteData(data[i]);
    }
    if( MiApp_UnicastConnection(conn_index, TRUE) == FALSE )
    {
        return FALSE;
    }
    else{
        return TRUE;
    }
}

//BOOL CreateNewConnectionWithLeastNoise(DWORD scan_chnl, BYTE channel)
BOOL CreateNewConnectionWithLeastNoise(DWORD scan_chnl)
{  
    DWORD scan_chnl_;
    BOOL connstat = FALSE;
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
    
    while(!connstat){
        Printf("\r\nCreate connection...");
        //    MiApp_StartConnection(START_CONN_CS_SCN , 10, 0);//not yet available
        connstat = MiApp_StartConnection(START_CONN_ENERGY_SCN , 10, scan_chnl_);//create connection with least noise energy

    }
    return connstat;
}
BOOL CreateNewConnectionAtChannel(BYTE channel)
{
    BOOL connstat;
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
    DemoOutput_Channel(channel, 0);
    Printf("\r\nCreate connection...");
    
    
    connstat = MiApp_StartConnection(START_CONN_DIRECT, 10, 0xFFFFFFFF);//create connection at selected channel/myChannel
//    BOOL connstat = MiApp_StartConnection(START_CONN_DIRECT, 0, 0);//also okay!
    return connstat;
}

#ifdef ENABLE_ACTIVE_SCAN
BYTE AutoSearchActiveConnection(DWORD scan_chnl)
{
    BYTE j, OperatingChannel = 0xFF;
    DWORD scan_chnl_;
    Printf("Autosearching...");
//    LCDDisplay((char *)"Search Ch %d", channel, TRUE);
    LCDDisplay((char *)"Searching...", 0, FALSE);
    while(1)
    {
        /*********************************************************************/
        // Function MiApp_SearchConnection will return the number of existing 
        // connections in all channels. It will help to decide which channel 
        // to operate on and which connection to add
        // The return value is the number of connections. The connection data
        //     are stored in global variable ActiveScanResults. Maximum active
        //     scan result is defined as ACTIVE_SCAN_RESULT_SIZE
        // The first parameter is the scan duration, which has the same 
        //     definition in Energy Scan. 10 is roughly 1 second. 9 is a half 
        //     second and 11 is 2 seconds. Maximum scan duration is 14, or 
        //     roughly 16 seconds.
        // The second parameter is the channel map. Bit 0 of the double
        //     word parameter represents channel 0. For the 2.4GHz frequency
        //     band, all possible channels are channel 11 to channel 26.
        //     As the result, the bit map is 0x07FFF800. Stack will filter
        //     out all invalid channels, so the application only needs to pay
        //     attention to the channels that are not preferred.
        /*********************************************************************/
//        scan_chnl = 0b0000000011111000 << 11;
        scan_chnl_ = scan_chnl << 11;
        j = MiApp_SearchConnection(10, scan_chnl_);
//        j = MiApp_SearchConnection(10, 0xFFFFFFFF);
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
        DemoOutput_Rescan();
    }
    return OperatingChannel;
}

#endif

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
        #if defined(ENABLE_ACTIVE_SCAN)
            DemoOutput_Channel(ActiveScanResults[i].Channel, 1);//Connected peer
        #else
            DemoOutput_Channel(channel, 1);//Connected peer
        #endif  
    }
    else
        DemoOutput_Channel(channel, 0);//Connecting peer
    
    
    return i;
}

#endif  //MIWI_HELPER
