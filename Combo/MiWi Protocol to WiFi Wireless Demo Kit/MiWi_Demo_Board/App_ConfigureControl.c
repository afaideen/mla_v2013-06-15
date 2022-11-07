

#include "HardwareProfile.h"
#include "WirelessProtocols/NVM.h"
#include "ConfigApp.h"
#include "LCD_ST7032.h"

extern void MainDisplay(void);
BYTE ConfigureControl(void);

#define COMMISSION          0x01
#define CONTROL_CODE        0x02

extern BYTE FlashCount;
extern BYTE myLongAddress[];
extern BYTE defaultHops;  


void Factory_Reset(void)
{
    LCDErase();
    sprintf((char *) LCDText, (far rom char*) "Commission Mode?");
    sprintf((char *) &(LCDText[16]), (far rom char*) "SW1:Yes  SW2:No");
    LCDUpdate();

    while (1) {
        if (SW0_PORT == 0) {

            WORD tmp = 0xFFFF;    //original

            while(SW0_PORT == 0);
            myPANID.Val = MY_PAN_ID;
            MiMAC_SetAltAddress((BYTE *)&tmp, (BYTE *)&myPANID.Val);
            nvmPutMyPANID(myPANID.v);
            currentChannel = 11;
            MiApp_SetChannel(currentChannel);
            MainDisplay();
            break;
        } else if (SW1_PORT == 0) {
            while(SW1_PORT == 0);
            MainDisplay();
            break;
        }


    }
}

BYTE ConfigureControl(void)
{
    BYTE complete = 0;
    // handling received message
    if( rxMessage.Payload[3] == 0 || 
        TRUE == isSameAddress( myLongAddress, &(rxMessage.Payload[4])) )
    {
        BYTE PayloadIndex;

        if( rxMessage.Payload[3] == 0 )
        {
            PayloadIndex = 4;
        }
        else
        {
            PayloadIndex = 12;
        }        
        switch( rxMessage.Payload[0] )
        {
            case COMMISSION:
                {
                    switch( rxMessage.Payload[1] )
                    {
                        case 0x01:  // flash light
                            {
                                //identify
                                FlashCount = rxMessage.Payload[PayloadIndex];
                                if(FlashCount == 0)
                                   LED0 = LED1 = LED2 = 0;
                            }
                            break;

                        case 0x02:  // set channel and PANID
                            {
                                //configure channel and PANID
                                WORD tmp = 0xFFFF;

                                FlashCount = 0;
                                LED0 = LED1 = LED2 = 0;

//                                            #if !defined(PROTOCOL_P2P)
//                                            MiApp_ProtocolInit(FALSE);
//                                            #endif

                                currentChannel = rxMessage.Payload[PayloadIndex];
                                MiApp_SetChannel(currentChannel);
                                nvmPutCurrentChannel(&currentChannel);
                                nvmGetCurrentChannel(&currentChannel);

                                myPANID.v[0] = rxMessage.Payload[PayloadIndex+1];
                                myPANID.v[1] = rxMessage.Payload[PayloadIndex+2];
                                MiMAC_SetAltAddress((BYTE *)&tmp, (BYTE *)&myPANID.Val);
//                                            MiMAC_SetAltAddress(myShortAddress.v, myPANID.v);

                                nvmPutMyPANID(myPANID.v);
                                nvmGetMyPANID(myPANID.v);

//                                        #if !defined(PROTOCOL_P2P)
//                                          
//                                            MiApp_ConnectionMode(ENABLE_ALL_CONN);
//                                            MiApp_StartConnection(START_CONN_DIRECT, 0, 0);
//                                        #endif
                                MainDisplay();
                                Nop();

                            }
                            complete = 1;
                            break; 

                        default:
                            break;       
                    }    
                }
                break;    



            case CONTROL_CODE:
                {
                    switch( rxMessage.Payload[1] )
                    {
                        case 0x00:
                            {
                                //Light off
                                BKLIGHT = 0;
                                LED0 = LED1 = LED2 = 0;

                            }
                            break;

                        case 0x01:
                            {
                                //Light on
                                BKLIGHT = 1;
                                LED0 = LED1 = LED2 = 1;

                            }
                            break;

                        case 0xFF:
                            {
                                //Recommission
                                if( (rxMessage.Payload[PayloadIndex] == 'M') &&
                                    (rxMessage.Payload[PayloadIndex+1] == 'i') &&
                                    (rxMessage.Payload[PayloadIndex+2] == 'W') &&
                                    (rxMessage.Payload[PayloadIndex+3] == 'i') )
                                {
                                    WORD tmp = 0xFFFF;

                                    myPANID.Val = MY_PAN_ID;
                                    MiMAC_SetAltAddress((BYTE *)&tmp, (BYTE *)&myPANID.Val);
                                    nvmPutMyPANID(myPANID.v);
                                    currentChannel = 11;
                                    MiApp_SetChannel(currentChannel);
                                    MainDisplay();
                                }    
                            } 
                            break;   

                        default:

                            break;        
                    }    
                }
                break;    

            default:

                break;

        }  
    }
    
    return complete;
}

BYTE commissioning_running(void)
{
    BYTE configured = 0;
    static MIWI_TICK startTick, currentTick, t1;
    
    if(SW0_PORT == 0)
    {
        MainDisplay();
    }   	

    if(SW1_PORT == 0)
    {
        while(SW1_PORT == 0);
        Factory_Reset();

    }   	


    if( MiApp_MessageAvailable() )
    {
        BOOL validPacket = TRUE;
        BYTE index = 0xFF;

        MiApp_DiscardMessage();  
        if( rxMessage.flags.bits.broadcast )
        {
            ;
        }   

        configured = ConfigureControl();
        Nop();

    }  

    currentTick = MiWi_TickGet();
    if( FlashCount > 0 )
    {
        if( MiWi_TickGetDiff(currentTick, startTick) > ONE_SECOND/2 )
        {
            startTick.Val = currentTick.Val;
            LED0 ^= 1;
            LED1 ^= 1;
            LED2 ^= 1;

        }
    }
    
    return configured;
}
