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
* Copyright ï¿½ 2007-2010 Microchip Technology Inc.  All rights reserved.
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

#define TEMP_SECOND_INTERVAL        5
#define DISPLAY_CYCLE_INTERVAL      4
#define EXIT_DEMO_TIMEOUT           6
#define NUM_TEMP_SAMPLES            4

#define EXIT_PKT                    1
#define TEMP_PKT                    3
#define ACK_PKT                     4

unsigned short tempAverage = 0;
BYTE tempRemote = 255;
BYTE NodeIndex = 1;
BYTE CurrentNodeIndex = 0;


extern BOOL NetFreezerEnable;
extern BYTE role;

struct TempPacket
{
	BYTE NodeAddress[2];
	float TempValue;
}; 
struct TempPacket NodeTemp[10];



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
    BOOL Run_Demo = TRUE;
    WORD VBGResult;
    float temp;
    int tempToSend;
    MIWI_TICK tick1, tick2, tick3;
    BYTE switch_val, i;
    short tempRaw;
    
    
	/*******************************************************************/
    // Dispaly Temp Demo Splach Screen
    /*******************************************************************/	
    LCDBacklightON();
    LCDDisplay((char *)"   Microchip       Temp Demo  ", 0, TRUE);
    LCDBacklightOFF();
        
    /*******************************************************************/
    // Read Band Gap Voltage(1.2V), Since this is Battery Powered application 
    // for the ADC Temp readings for proper calculation of Temp.
    /*******************************************************************/
#if defined(__18CXX) && !defined(HI_TECH_C)	
	VBGResult = Read_VBGVoltage();		
#endif

    /*******************************************************************/
    // Initialize Temp Data Packet
    // NodeTemp[0] = Self
    /*******************************************************************/
	NodeTemp[0].NodeAddress[0] = myShortAddress.v[0];
	NodeTemp[0].NodeAddress[1] = myShortAddress.v[1];
    for(i = 0; i < 10; i++)
        NodeTemp[i].TempValue = -100.0f; // -100 is 'no data'

    
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
        // Check if User wants to Exit Demo
        /*******************************************************************/
        switch_val = ButtonPressed();		
	    if((switch_val == SW1) || (switch_val == SW2))
        {
            /*******************************************************************/
        	// Send Exit Demo Request Packet and exit Temp Demo
        	/*******************************************************************/ 
            MiApp_FlushTx();    
            MiApp_WriteData(EXIT_PKT);
            MiApp_BroadcastPacket(FALSE);   
            LCDBacklightON();
            LCDDisplay((char *)"   Exiting....     Temp Demo  ", 0, TRUE);
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
        } 
            
		/*******************************************************************/
		// Rotate through Displaying All Node Temp's
		/*******************************************************************/
        if ((MiWi_TickGetDiff(tick2,tick3) > (ONE_SECOND * DISPLAY_CYCLE_INTERVAL)))
		{
    		if((ConnectionTable[CurrentNodeIndex].status.bits.isValid))
    		{
    		    CurrentNodeIndex++;
    		}    
    		else
    		{
    		    CurrentNodeIndex = 0;
    		}    
    		
    		PrintTempLCD();
    		
    		tick3 = MiWi_TickGet();
        }      
		
		/*******************************************************************/
		// Read the Temp every TEMP_SECOND_INTERVAL
		/*******************************************************************/
		if ((MiWi_TickGetDiff(tick2,tick1) > (ONE_SECOND * TEMP_SECOND_INTERVAL)))
		{
			
			/*******************************************************************/
			// Power-up Temperature Sensor
			/*******************************************************************/							
			//LATAbits.LATA0 = 1;
			//DelayMs(2);         // Delay 2 ms after powering up the temperature sensor
            
            /*******************************************************************/
            // Toggle LED1 Every Temp Read Cycle
            /*******************************************************************/
            //LED0 ^= 1;
            
            /*******************************************************************/
            // Take specified number of Temp Readings
            /*******************************************************************/
            #if defined(__18CXX) && !defined(HI_TECH_C)	
            temp = ReadTempSensor(VBGResult);
            #else //For PIC32MX Wireless Eval Board, read temperature AN10 
                temp = ReadTempSensor_WirelessEvalBoard();
            #endif

            /*******************************************************************/
            // Turn Temp Sensor Off
            /*******************************************************************/
			//LATAbits.LATA0 = 0;

            /*******************************************************************/
            // Calculate Average Temp
            /*******************************************************************/			
			tempAverage = 0;
			tempAverage = temp;
            tempToSend = (int)(temp * 10);  // e.g., 24.6°C -> 246
			
            /*******************************************************************/
            // Reset TX Buffer Pointer
            /*******************************************************************/			
            MiApp_FlushTx();
            
            /*******************************************************************/
            // Write this Nodes temperature value and Address to the TX Buffer
            /*******************************************************************/
            MiApp_WriteData(TEMP_PKT);
//           	MiApp_WriteData((BYTE) tempAverage);
            MiApp_WriteData((BYTE)((tempToSend >> 8) & 0xFF));
            MiApp_WriteData((BYTE)(tempToSend & 0xFF));
		   	MiApp_WriteData(myShortAddress.v[0]);
			MiApp_WriteData(myShortAddress.v[1]);

            
         	// Update NodeTemp Structure
//			NodeTemp[0].TempValue = (BYTE)tempAverage;
            NodeTemp[0].TempValue = temp;
					
           /*******************************************************************/
           // Broadcast Node Tempature across Network.
           /*******************************************************************/
           // Function MiApp_BroadcastPacket is used to broadcast a message
           // The only parameter is the boolean to indicate if we need to
           // secure the frame
           /*******************************************************************/
           MiApp_BroadcastPacket(FALSE);

			/*******************************************************************/
            // Read New Start tickcount
            /*******************************************************************/
      		tick1 = MiWi_TickGet();	
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
            BYTE i;
            
			/*******************************************************************/	
           	// Check if Exit Demo Packet
           	/*******************************************************************/   
        	if(rxMessage.Payload[0] == EXIT_PKT)
        	{
            	MiApp_DiscardMessage();
            	MiApp_FlushTx();
    	        MiApp_WriteData(ACK_PKT);
    	        MiApp_UnicastConnection(0, FALSE);
            	Run_Demo = FALSE;
            	LCDBacklightON();
                LCDDisplay((char *)"   Exiting....     Temp Demo  ", 0, TRUE);
                LCDBacklightOFF();
            }
            
 			/*******************************************************************/	
           	// Check if Message from known Connection
           	/*******************************************************************/            
			for(i = 0; i < CONNECTION_SIZE; i++)
			{
				if((ConnectionTable[i].status.bits.isValid) && (ConnectionTable[i].AltAddress.v[0] == rxMessage.Payload[2]) && (ConnectionTable[i].AltAddress.v[1] == rxMessage.Payload[3]))
				{
					if(rxMessage.Payload[0] == TEMP_PKT)
					{
						// Update the Remote Nodes Temp value
//						NodeTemp[i+1].TempValue = rxMessage.Payload[1];
//    					NodeTemp[i+1].NodeAddress[0] = rxMessage.Payload[2];
//    					NodeTemp[i+1].NodeAddress[1] = rxMessage.Payload[3];
                        
                        tempRaw = ((rxMessage.Payload[1] << 8) | rxMessage.Payload[2]);
                        NodeTemp[i+1].TempValue = tempRaw / 10.0;
                        NodeTemp[i+1].NodeAddress[0] = rxMessage.Payload[3];
                        NodeTemp[i+1].NodeAddress[1] = rxMessage.Payload[4];
					}	
				}
			}
			
			MiApp_DiscardMessage();
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
    int clearIdx;
	int temp, len;
	BYTE tempF;
    int intpart,decpart, intpartF, decpartF;
    char tempStr[6];
    float tempF_f;
	
    LCDErase();
    
    if(CurrentNodeIndex == 0)
	{
		sprintf((char *)LCDText, (far rom char*)"   Local Temp   ");
	}
    else
	{
		sprintf((char *)LCDText, (far rom char*)"  Remote Temp  ");
	}
	
    sprintf((char *)&LCDText[16], (far rom char*)"%02x%02x:",NodeTemp[CurrentNodeIndex].NodeAddress[1],NodeTemp[CurrentNodeIndex].NodeAddress[0]);
    
    if(NodeTemp[CurrentNodeIndex].TempValue < -90.0f)
	{
		sprintf((char *)&LCDText[21], (const far rom char *)" -          "); // pad with spaces to erase old data
	}
    else
	{
        
//        sprintf((char *)&LCDText[21], "%2.1f", NodeTemp[CurrentNodeIndex].TempValue);
        intpart = (int)NodeTemp[CurrentNodeIndex].TempValue;
        decpart = (int)((NodeTemp[CurrentNodeIndex].TempValue - intpart) * 10.0 + 0.5);
        if(decpart < 0) 
            decpart = -decpart; // handle negative temps safely
        // Compose to a local string first for debug/clarity
        
        sprintf(tempStr, (const far rom char *)"%2d.%1d", intpart, decpart);
        len = strlen(tempStr);
        sprintf((char *)&LCDText[21], (const far rom char *)"%sC", tempStr);	

		tempF_f = NodeTemp[CurrentNodeIndex].TempValue * 9.0 / 5.0 + 32.0;
        intpartF = (int)tempF_f;
        decpartF = (int)((tempF_f - intpartF) * 10.0 + 0.5);
        if(decpartF < 0) decpartF = -decpartF;

        // Now format with one decimal point
        sprintf((char *)&LCDText[21 + len + 1], (const far rom char *)"/%d.%1dF", intpartF, decpartF);
        // Pad the rest of the line with spaces
        clearIdx = 21 + len + 1 + strlen((char *)&LCDText[21 + len + 1]);
        for(; clearIdx < 32; clearIdx++)
            LCDText[clearIdx] = ' ';
 	}
    
    LCDUpdate();
}
