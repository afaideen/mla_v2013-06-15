/********************************************************************
/********************************************************************
* FileName:		TempDemo.c
* Dependencies:    
* Processor:	PIC18	
* Complier:     Microchip C18 v3.04 or higher
* Company:		Microchip Technology, Inc.
*
* Copyright and Disclaimer Notice
*
* Copyright � 2007-2010 Microchip Technology Inc.  All rights reserved.
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
* SOFTWARE AND DOCUMENTATION ARE PROVIDED �AS IS� WITHOUT WARRANTY OF ANY 
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
*********************************************************************
* File Description:
*
*  This file runs the Temperature Demo
*
* Change History:
*  Rev   Date         Author    Description
*  1.0   2/02/2011    ccs       Initial revision
********************************************************************/

#include "TempDemo.h"
#include "Compiler.h"
#include "GenericTypeDefs.h"
#include "definitions.h"
#include "NVM.h"

//#define TEMP_SECOND_INTERVAL        5
#define DISPLAY_CYCLE_INTERVAL      1
#define EXIT_DEMO_TIMEOUT           1
#define NUM_TEMP_SAMPLES            4

unsigned short tempAverage = 0;
BYTE tempRemote = 255;
BYTE NodeIndex = 1;
BYTE CurrentNodeIndex = 0;


extern BOOL NetFreezerEnable;
extern BYTE         currentChannel;
extern BYTE         role;
extern BOOL         security;
extern WORD_VAL     myPANID;
extern WORD_VAL     myShortAddress;

struct TempPacket
{
	BYTE NodeAddress[2];
	float TempValue;
    float BattValue;
    BYTE    Rssi;
}; 
struct TempPacket NodeTemp[5];

BOOL Run_Demo;
//unsigned char msg[] = "MiWi Rocks!";
/*********************************************************************
* Function:         void TempDemo(void)
*
* PreCondition:     none
*
* Input:		    none
*
* Output:		    none
*
* Side Effects:	    none
*
* Overview:		    Following routine reads the on board Tempature Sensor and Broadcasts
*                   it to the Network and Dispays other Nodes connected to it's Temp Value. 
*
* Note:			    
**********************************************************************/
void TempDemo(void)
{
    uint32_t timestamp;
    BYTE val;
    
    WORD VBGResult;
    float temp, batt;
    int tempToSend;
    MIWI_TICK tick1, tick2, tick3;
    MIWI_TICK sw1_timer, sw2_timer;
    BYTE switch_val, i;
    short tempRaw; 
    
    BYTE viewIndex = 0;
    int len1, len2;
    char strength[8];
//    char buf1[17], buf2[17];
    int16_t temp_, batt_;
    BYTE Pkt_Loss_Cnt = 0;
    BYTE index;
    
	/*******************************************************************/
    // Dispaly Temp Demo Splach Screen
    /*******************************************************************/	
    LCDBacklightON();
    LCDDisplay((char *)"   Microchip       Temp Demo  ", 0, 0);
    LCDBacklightOFF();
    Run_Demo = TRUE;    
    /*******************************************************************/
    // Initialize Temp Data Packet
    // NodeTemp[0] = Self
    /*******************************************************************/
	NodeTemp[0].NodeAddress[0] = myShortAddress.v[0];
	NodeTemp[0].NodeAddress[1] = myShortAddress.v[1];
    for(i = 0; i < 10; i++){
        NodeTemp[i].TempValue = -100.0f; // -100 is 'no data'
        NodeTemp[i].BattValue = 100.0f; // -100 is 'no data'
        
    }

    temp = ReadTemperature();  // Read ADC temperature
    batt = ReadBatt();  // Read ADC battery
    
    NodeTemp[0].TempValue = temp;
    NodeTemp[0].BattValue = batt;
	/*******************************************************************/
    // Read Start tickcount
    /*******************************************************************/	
	tick1 = MiWi_TickGet();
    tick3 = tick1;
    
    while(Run_Demo)
    {
        /*******************************************************************/
        // Read current tickcount
        /*******************************************************************/
		tick2 = MiWi_TickGet();		
            
		/*******************************************************************/
		// Rotate through Displaying All Node Temp's
		/*******************************************************************/
        if ((MiWi_TickGetDiff(tick2,tick3) > (ONE_SECOND * DISPLAY_CYCLE_INTERVAL)))
        {
//            if((ConnectionTable[CurrentNodeIndex].status.bits.isValid))
//            {
//                CurrentNodeIndex++;
//            }
//            else
//            {
                CurrentNodeIndex = 0;
//            }

            PrintTempLCD();

            tick3 = MiWi_TickGet();
        }     
		
		/*******************************************************************/
		// Read the Temp every TEMP_SECOND_INTERVAL
		/*******************************************************************/
//        switch_val = ButtonPressed();
//		if ((MiWi_TickGetDiff(tick2,tick1) > (ONE_SECOND * TEMP_SECOND_INTERVAL)))
//        if (switch_val == SW2)
        if (SW_Pressed(&PORTB, 2, &sw1_timer, 350))
		{
			
            /*******************************************************************/
            // Take specified number of Temp Readings
            /*******************************************************************/
            #if defined(__18CXX) && !defined(HI_TECH_C)	
//            temp = ReadTempSensor(VBGResult);
                temp = ReadTemperature();  // Read ADC temperature
                batt = ReadBatt();  // Read ADC battery
                
            #else //For PIC32MX Wireless Eval Board, read temperature AN10 
                temp = ReadTempSensor_WirelessEvalBoard();
            #endif
            Nop();

                // Update NodeTemp Structure
    //			NodeTemp[0].TempValue = (BYTE)tempAverage;
                NodeTemp[0].TempValue = temp;
                NodeTemp[0].BattValue = batt;
					
//            SendData(0, (int16_t)(temp * 10), (uint16_t)(batt * 100));

            temp_ = temp * 10;
            batt_ = batt * 100;
            timestamp = RTCC_GetTimestamp();  // Get timestamp for flight time
            MiApp_FlushTx();
            MiApp_WriteData(TEMP_PKT);      
            MiApp_WriteData((BYTE)(timestamp >> 24) & 0xFF);
            MiApp_WriteData((BYTE)(timestamp >> 16) & 0xFF);
            MiApp_WriteData((BYTE)(timestamp >> 8) & 0xFF);
            MiApp_WriteData((BYTE)timestamp & 0xFF);
            MiApp_WriteData((BYTE)(temp_ >> 8) & 0xFF);
            MiApp_WriteData((BYTE)temp_ & 0xFF);
            MiApp_WriteData((BYTE)(batt_ >> 8) & 0xFF);
            MiApp_WriteData((BYTE)batt_ & 0xFF);
            MiApp_WriteData(myShortAddress.v[1]);
            MiApp_WriteData(myShortAddress.v[0]);
            if( MiApp_UnicastConnection(0, security) == FALSE )
                Pkt_Loss_Cnt++;
            else
            {
                LED1 ^= 1;
                Pkt_Loss_Cnt = 0;
            }
		}
//        else if (switch_val == SW1)
        else if (SW_Pressed(&PORTB, 1, &sw1_timer, 350))
        {
            /*******************************************************************/
            // Check if User wants to Exit Demo
            /*******************************************************************/
             /*******************************************************************/
        	// Send Exit Demo Request Packet and exit Temp Demo
        	/*******************************************************************/ 
            MiApp_FlushTx();    
            MiApp_WriteData(EXIT_PKT);   
            val = MiApp_UnicastConnection(0, FALSE);
            if(val == 1) {
                LED1 ^= 1; // Toggle LED1 if unicast was successful
            }
            LCDBacklightON();
            LCDDisplay((char *)"   Exiting....     Temp Demo  ", 0, 300);
            LCDBacklightOFF();
            
            /*******************************************************************/
            // Wait for ACK Packet or Timeout
            /*******************************************************************/
            tick1 = MiWi_TickGet();
            while(Run_Demo)
            {
                if(MiApp_MessageAvailable())
                {
                    if(rxMessage.Payload[0] == ACK_PKT)          
                        Run_Demo = FALSE;
                        
                    MiApp_DiscardMessage();
                }
                if ((MiWi_TickGetDiff(tick2,tick1) > (ONE_SECOND * EXIT_DEMO_TIMEOUT)))
                    Run_Demo = FALSE;
                    
                tick2 = MiWi_TickGet();
            } 
            return;
        }

        /*******************************************************************/
        // Check for Incomming Recieve Packet.
        /*******************************************************************/
        // Function MiApp_MessageAvailable returns a boolean to indicate if 
        // a packet has been received by the transceiver. If a packet has 
        // been received, all information will be stored in the rxFrame, 
        // structure of RECEIVED_MESSAGE.
        /*******************************************************************/
        if(MiApp_MessageAvailable())
        {    
            
            /*******************************************************************/	
            // Check if Message from known Connection
            /*******************************************************************/    
            index = 0xFF;
            for(i = 0; i < CONNECTION_SIZE; i++)
			{
				if((ConnectionTable[i].status.bits.isValid) && 
                        (ConnectionTable[i].AltAddress.v[0] == rxMessage.SourceAddress[0]) && 
                        (ConnectionTable[i].AltAddress.v[1] == rxMessage.SourceAddress[1])
                )
				{
                    index = i;
                    CheckPKT(index);
                    break;
                }
            }
			
            MiApp_DiscardMessage();
            tick3 = MiWi_TickGet();
        }
    }   
}
void CheckPKT(BYTE i)
{
    BYTE rssi = 0;
    BOOL val;
    uint32_t timestamp;
    /*******************************************************************/	
    // Check if Exit Demo Packet
    /*******************************************************************/   
    if (rxMessage.Payload[0] == CONFIG_PKT)
    {
        processConfigPKT();
        security = 0;
        nvmGetMyPANID(myPANID.v);
        nvmGetCurrentChannel(&currentChannel);
        nvmGetMyShortAddress(myShortAddress.v); // if different, make new variable
        nvmGetRole(&role);
        nvmGetSecurity(&security);
        LCDDisplay((char *)"Set config", 0, 500);
        Reset();
    }
    else if (rxMessage.Payload[0] == REQCONFIG_PKT)
    {
        sendReplyConfigPKT();
        LCDDisplay((char *)"Read config", 0, 0);

    }
    else if (rxMessage.Payload[0] == PING_PKT)
    {
        // Send PONG reply to sender
        sendPONGPKT();

        LCDDisplay((char *)"Ping? Pong!", 0, FALSE);


    }
    else if(rxMessage.Payload[0] == EXIT_PKT)
    {
        MiApp_FlushTx();
        MiApp_WriteData(ACK_PKT);
        val = MiApp_UnicastConnection(0, security);
        if(val == 1) {
            LED1 ^= 1; // Toggle LED1 if unicast was successful
        }
        Run_Demo = FALSE;
        LCDBacklightON();
        LCDDisplay((char *)"   Exiting....     Temp Demo  ", 0, FALSE);
        LCDBacklightOFF();
    }
    else if (rxMessage.Payload[0] == RTCCTIME_PKT && rxMessage.PayloadSize >= 5)
    {
        // Extract timestamp (bytes 1-4)
        timestamp = 
            ((uint32_t)rxMessage.Payload[1] << 24) |
            ((uint32_t)rxMessage.Payload[2] << 16) |
            ((uint32_t)rxMessage.Payload[3] << 8)  |
            ((uint32_t)rxMessage.Payload[4]);

        // Call a function to set the RTCC
        RTCC_SetFromMiWiTimestamp(timestamp);
        LCDDisplay((char *)"RTCC updated!", 0, FALSE);
    }
    else if(rxMessage.Payload[0] == RANGE_PKT)
    {
        // Get RSSI value from Recieved Packet
        rssi = rxMessage.PacketRSSI;
        #if defined(MRF89XA)
            rssi = rssi<<1;
        #endif
        NodeTemp[0].Rssi = rssi;

        // ---- Show RSSI Strength, RangeDemo style ----
        {     
            LCDErase();
#if defined(MRF24J40)
            if(rssi > 120) 
                sprintf((char *)&(LCDText[0]), (far rom char*)"Strength: High");
            else if(rssi > 60) 
                sprintf((char *)&(LCDText[0]), (far rom char*)"Strength: Medium");
            else 
                sprintf((char *)&(LCDText[0]), (far rom char*)"Strength: Low");
#else
            if(rssi > 100) strcpy(strength, "High");
            else if(rssi > 60) strcpy(strength, "Medium");
            else strcpy(strength, "Low");
#endif         
            sprintf((char *)&(LCDText[16]), (far rom char*)"Rcv RSSI: %3d", rssi);
            LCDUpdate();


        }
    }
}
#if defined(__PIC32MX__)
//Read AN10
BYTE ReadTempSensor_WirelessEvalBoard(void)
{
    float analog_val, temperature, b_fraction;
    unsigned int a, val;
    analog_val = ADC1BUFA/(1023.0)*3.3 - 0.03;
    
    temperature = analog_val - 0.5;
    temperature = temperature / 0.01;
    a = (int)(temperature);
    b_fraction = temperature - a;
    val = b_fraction > 0.5 ? a + 1 : a;
    return (BYTE)val;
}
#endif

//typedef struct {
//    uint8_t deviceID;      // Unique Device ID (1 byte)
//    uint32_t timestamp;    // Flight timestamp (4 bytes)
//    int16_t temperature;   // Temperature (scaled by 10 for 0.1�C resolution)
//    int16_t battery;        // Battery (scaled by 10 for 0.01�C resolution)
//} MIWIPacket;

// ===========================
// ** Send Data to PAN Coordinator **
// ===========================
//BOOL SendData(BYTE target, int16_t tempCelsius, uint16_t battVoltage) {
//    MIWIPacket packet;
////    rtccTimeDate time;
//  
//    packet.deviceID = TEMP_PKT; //DEVICE_ID;  // Assign unique device ID
////    packet.timestamp = RTCC_GetTimestamp();  // Get timestamp for flight time
//
//    packet.temperature = tempCelsius;  // Already in 0.1�C resolution
//    packet.battery = battVoltage;  // Store battery voltage (0.01V resolution)
//
//    MiApp_FlushTx();  // Clear transmission buffer
//
//    // Write structured data into the TX buffer
//    MiApp_WriteData(packet.deviceID);
////    MiApp_WriteData((packet.timestamp >> 24) & 0xFF);
////    MiApp_WriteData((packet.timestamp >> 16) & 0xFF);
////    MiApp_WriteData((packet.timestamp >> 8) & 0xFF);
////    MiApp_WriteData(packet.timestamp & 0xFF);
//    
//    // Temperature (2 bytes, 0.1�C resolution)
//    MiApp_WriteData((packet.temperature >> 8) & 0xFF);
//    MiApp_WriteData(packet.temperature & 0xFF);
//
//    // Battery Voltage (2 bytes, 0.01V resolution)
//    MiApp_WriteData((packet.battery >> 8) & 0xFF);
//    MiApp_WriteData(packet.battery & 0xFF);
//
//    // Send data as **unicast packet**
////    if (MiApp_UnicastAddress(0, FALSE, TRUE)) {
//    if (MiApp_UnicastConnection(target, security)) {
////    if (MiApp_BroadcastPacket(TRUE)) {
//        Nop();
//        LED1 ^= 1;
//        return TRUE;
//    } else {
//        Nop();
//        return FALSE;
//    }
//}

#if defined(__18CXX) && !defined(HI_TECH_C)	
/*********************************************************************
* Function:         BYTE ReadTempSensor(WORD VBGResult)
*
* PreCondition:     Proper reference voltage value has been determined.
*
* Input:		    WORD VBGResult - Reference voltage for temp calculation.
*
* Output:		    BYTE temp
*
* Side Effects:	    none
*
* Overview:		    Following routine reads the on board Tempature Sensor and
*                   calculates the temp value. 
*
* Note:			    
**********************************************************************/
float ReadTempSensor(WORD VBGResult)
{
    WORD tempValue;
    float temp;
    float tempAverage = 0;
    BYTE i = 0;

    ADCON0 = 0x04;
    ADCON1 = 0xBD;
    PIR1bits.ADIF = 0;
    PIE1bits.ADIE = 0;

    for(i = 0; i < NUM_TEMP_SAMPLES; i++)
    {
        ADCON0bits.ADON = 1;
        Delay10us(10);
        ADCON0bits.GO = 1;	    	
        while(ADCON0bits.DONE);

        tempValue = ADRES;
        temp = (1200.0/VBGResult);
        temp = (temp * tempValue);				
        temp = (temp - 500.0)/10.0;

        tempAverage += temp;
        ADCON0bits.ADON = 0;
        Delay10us(1);
    }
    tempAverage = tempAverage / NUM_TEMP_SAMPLES;
    return tempAverage;
}
    				
/*********************************************************************
* Function:         WORD Read_VBGVoltage(void)
*
* PreCondition:     none
*
* Input:		    none
*
* Output:		    ADRES
*
* Side Effects:	    none
*
* Overview:		    Reads the band gap voltage and compares with reference voltage
*					to arrive at the current voltage level
*
* Note:			    
**********************************************************************/
WORD Read_VBGVoltage(void)
{
    ADCON0 = 0x3D;				// Configures the channel as VBG
    ADCON1 = 0xBD;				// Program the acquisition time
    ANCON1bits.VBGEN = 1;		// Enable Band gap reference voltage
    
    Delay10us(1000);			//Wait for the Band Gap Settling time
    
    PIR1bits.ADIF = 0;
    PIE1bits.ADIE = 0;			//Disable ADC interrupts
    							//This routine uses the polling based mechanism
    ADCON0bits.GO = 1;		    //Start A/D conversion    
    while(ADCON0bits.DONE);
    
    ADCON0bits.ADON = 0;	    // Turn ADC OFF
    ANCON1bits.VBGEN = 0;	    // Disable Bandgap
    
    return ADRES;
}
#endif

/*********************************************************************
* Function:         void PrintTempLCD(void)
*
* PreCondition:     none
*
* Input:		    none
*
* Output:		    none
*
* Side Effects:	    none
*
* Overview:		    Converts the Node Temp reading to Feirenhiet and
*					display's it on the LCD.
*
* Note:			    
**********************************************************************/
void PrintTempLCD(void)
{
    int i, len1, len2;
    int intpart, decpart, intpartF, decpartF, intbatt, decbatt;
    float tempC = NodeTemp[CurrentNodeIndex].TempValue;
    float tempF = tempC * 9.0 / 5.0 + 32.0;
    float batt = NodeTemp[CurrentNodeIndex].BattValue;

    // Clear the buffer
    LCDErase();

    // ---- Line 1: Addr TempC/TempF (e.g. "00FF 25.3C/77.5F") ----
    intpart = (int)tempC;
    decpart = (int)((tempC - intpart) * 10.0 + 0.5);
    if(decpart < 0) decpart = -decpart;
    intpartF = (int)tempF;
    decpartF = (int)((tempF - intpartF) * 10.0 + 0.5);
    if(decpartF < 0) decpartF = -decpartF;

    sprintf((char *)&LCDText[0], (const far rom char *)"%02X%02X %2d.%1dC/%2d.%1dF",
        NodeTemp[CurrentNodeIndex].NodeAddress[1],
        NodeTemp[CurrentNodeIndex].NodeAddress[0],
        intpart, decpart, intpartF, decpartF);

    // Pad line 1 to 16 chars
    len1 = strlen((char *)&LCDText[0]);
    for(i = len1; i < 16; i++)
        LCDText[i] = ' ';

    // ---- Line 2: Battery voltage (e.g. "Batt:3.76V") ----
    intbatt = (int)batt;
    decbatt = (int)((batt - intbatt) * 100.0 + 0.5);
    if(decbatt < 0) decbatt = -decbatt;
    sprintf((char *)&LCDText[16], (const far rom char *)"Batt:%d.%02dV", intbatt, decbatt);

    // Pad line 2 to 16 chars
    len2 = strlen((char *)&LCDText[16]);
    for(i = 16 + len2; i < 32; i++)
        LCDText[i] = ' ';

    // Null-terminate for safety
    LCDText[32] = 0;

    LCDUpdate();
}
int FindConnectionIndexByShortAddr(uint8_t* addr)
{
    int i;
    for(i = 0; i < CONNECTION_SIZE; i++)
    {
        if(ConnectionTable[i].status.bits.isValid)
        {
            // Usually compare short address (2 bytes)
            if(ConnectionTable[i].AltAddress.v[0] == addr[0] &&
               ConnectionTable[i].AltAddress.v[1] == addr[1])
            {
                return i; // Found
            }
        }
    }
    return -1; // Not found
}
BOOL sendReplyConfigPKT(void)
{
    uint8_t addr_bytes[2];
    BOOL ret;
    BYTE connIndex;
    
    MiApp_FlushTx();
    MiApp_WriteData(REPLYCONFIG_PKT);
    MiApp_WriteData(myPANID.v[0]);  //0xCD
    MiApp_WriteData(myPANID.v[1]);  //0xAB
    MiApp_WriteData(currentChannel);
    MiApp_WriteData(security);
    MiApp_WriteData(role);
    MiApp_WriteData(myShortAddress.v[1]);
    MiApp_WriteData(myShortAddress.v[0]);
    addr_bytes[0] = rxMessage.SourceAddress[0]; // LSB
    addr_bytes[1] = rxMessage.SourceAddress[1]; // MSB
    connIndex = FindConnectionIndexByShortAddr(addr_bytes);
    // Send back to PAN using source address from rxMessage
    ret = MiApp_UnicastConnection(connIndex, FALSE);
    Nop();
    return ret;
}

BOOL sendPONGPKT(void)
{
    BOOL ret;
    BYTE connIndex;
    MiApp_FlushTx();
    MiApp_WriteData(PONG_PKT);
    MiApp_WriteData(myShortAddress.v[1]);
    MiApp_WriteData(myShortAddress.v[0]);
    connIndex = FindConnectionIndexByShortAddr(rxMessage.SourceAddress);
    ret = MiApp_UnicastConnection(connIndex, FALSE);
    return ret;
   
}
void processConfigPKT(void)
{
    // [1],[2] = address (can ignore or check if addressed to self)
    myPANID.Val         = ((WORD)rxMessage.Payload[3]) | (((WORD)rxMessage.Payload[4]) << 8);
    currentChannel      = rxMessage.Payload[5];
    role                = rxMessage.Payload[6];
    security            = rxMessage.Payload[7];

    // Store to EEPROM/NVM
    nvmPutMyPANID(myPANID.v);
    nvmPutCurrentChannel(&currentChannel);
    nvmPutMyShortAddress(myShortAddress.v);
    // If you have a custom NVM location for role/security, store them here:
     nvmPutRole(&role);
     nvmPutSecurity(&security);
     Nop();

}



