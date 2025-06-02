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
* Change History:
*  Rev   Date         Author    Description
*  1.0   2/02/2011    ccs       Initial revision
*  1.1   7/08/2011    mynenis   Added multi channel support
*  1.2   7/12/2011    mynenis   Range Demo Retry Fix
*  1.3   2/28/2013    mynenis   Fixed the addressing issue in non IEEE 802.15.4 and reduced the
*                               latecy caused by LCD Display
********************************************************************/

/************************ HEADERS ****************************************/
#include "ConfigApp.h"
#include "HardwareProfile.h"
#include "WirelessProtocols/MSPI.h"
#include "WirelessProtocols/MCHP_API.h"
#include "LCD_ST7032.h"
#include "TCPIP Stack/Delay.h" //#include "TimeDelay.h"
#include "RangeDemo.h"
#include "TempDemo.h"
#include "WirelessProtocols/SymbolTime.h"
#include "MAC_EEProm.h"
#include "SelfTestMode.h"
#include <stdio.h>

void SendTemperature(WORD tempCelsius);
float ReadTemperature(void);
// Demo Version
#define MAJOR_REV       1
#define MINOR_REV       3

/*************************************************************************/
// The variable myChannel defines the channel that the device
// is operate on. This variable will be only effective if energy scan
// (ENABLE_ED_SCAN) is not turned on. Once the energy scan is turned
// on, the operating channel will be one of the channels available with
// least amount of energy (or noise).
/*************************************************************************/

// Possible channel numbers are from 0 to 31
//BYTE myChannel = 26;
BYTE myChannel = 11;

#define MiWi_CHANNEL        0x04000000                          //Channel 26 bitmap

#define EXIT_DEMO           1
#define RANGE_DEMO          2
#define TEMP_DEMO           3
#define IDENTIFY_MODE       4
#define EXIT_IDENTIFY_MODE  5

#define NODE_INFO_INTERVAL  5

BYTE ConnectionEntry = 0;
			
BOOL NetFreezerEnable = FALSE;

extern BYTE myLongAddress[];

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
    extern BYTE AdditionalNodeID[ADDITIONAL_NODE_ID_SIZE] = {0x00};
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
void main(void)
{   
    BYTE i, j;    
    MIWI_TICK t_1 = { 0 };
    MIWI_TICK t_2 = { 0 };
    MIWI_TICK t_3 = { 0 };
    float temp;

    /*******************************************************************/
    // Initialize Hardware
    /*******************************************************************/
	BoardInit();
    LED0 = 0;
    LED1 = 0;
    LED2 = 0;
    // Initialize MiWi Pro stack
    MiApp_ProtocolInit(FALSE);
    MiApp_SetChannel(11);  // Set to IEEE 802.15.4 Channel 11
    MiApp_ConnectionMode(ENABLE_ALL_CONN);
    while(MiApp_EstablishConnection(0xFF, CONN_MODE_DIRECT) == 0xFF); 
   
    LED0 = 0;
    LED1 = 0;
    LED2 = 0;
   
    Nop();
    while(1)
    {
        // Check if MiMAC has any pkt's to processes
        if(MiApp_MessageAvailable())
        {
            MiApp_DiscardMessage();
                
        }
        
        t_2 = MiWi_TickGet();
        // Check if 500ms (0.5s) has passed
        if (MiWi_TickGetDiff(t_2, t_1) > (ONE_SECOND * 1)) {
            t_1 = MiWi_TickGet();  // Update last sent time

            // Read temperature and send
            temp = ReadTemperature();  // Read ADC temperature
//            LED2 = 0;
            SendTemperature((WORD)(temp * 10));  // Convert °C to 0.1°C resolution
            LED1 ^= 1;
        }
        

    }

}

#define DEVICE_ID  0x01  // Unique identifier for this node
typedef struct {
    unsigned char deviceID;      // Unique Device ID (1 byte)
    unsigned long timestamp;    // Flight timestamp (4 bytes)
    int temperature;   // Temperature (scaled by 10 for 0.1°C resolution)
} TemperaturePacket;

unsigned long GetSystemTime(void) {
    return (TMR0L | (TMR0H << 8));  // Example: Use Timer0 as time base
}
// ===========================
// ** Send Data to PAN Coordinator **
// ===========================
void SendTemperature(WORD tempCelsius) 
{
    TemperaturePacket packet;
    
    packet.deviceID = DEVICE_ID;  // Assign unique device ID
    packet.timestamp = GetSystemTime();  // Get timestamp for flight time
    packet.temperature = tempCelsius;  // Already in 0.1°C resolution

    MiApp_FlushTx();  // Clear transmission buffer

    // Write structured data into the TX buffer
    MiApp_WriteData(packet.deviceID);
    MiApp_WriteData((packet.timestamp >> 24) & 0xFF);
    MiApp_WriteData((packet.timestamp >> 16) & 0xFF);
    MiApp_WriteData((packet.timestamp >> 8) & 0xFF);
    MiApp_WriteData(packet.timestamp & 0xFF);
    MiApp_WriteData((packet.temperature >> 8) & 0xFF);
    MiApp_WriteData(packet.temperature & 0xFF);

    // Send data as **unicast packet**
    if (MiApp_BroadcastPacket(FALSE)) {
//    if (MiApp_UnicastAddress(0, FALSE, TRUE)) {
//        printf("Temperature Data Sent! Temp: %d.%d°C, Timestamp: %luL\n",
//               packet.temperature / 10, packet.temperature % 10, packet.timestamp);
    } else {
//        printf("Failed to send temperature data\n");
    }
}


