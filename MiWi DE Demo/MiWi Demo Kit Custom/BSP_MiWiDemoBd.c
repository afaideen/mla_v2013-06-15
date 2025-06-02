/*****************************************************************************
 *
 *              BSP_8BitWirelessBd.c -- Hardware Profile
 *
 *****************************************************************************
 * FileName:        BSP_MiWiCardDemoBd.c
 * Dependencies:
 * Processor:       PIC18
 * Compiler:        C18 02.20.00 or higher
 * Linker:          MPLINK 03.40.00 or higher
 * Company:         Microchip Technology Incorporated
 *
 * Software License Agreement
 *
 * Copyright © 2007-2011 Microchip Technology Inc.  All rights reserved.
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
 * SOFTWARE AND DOCUMENTATION ARE PROVIDED “AS IS” WITHOUT WARRANTY OF ANY 
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
 *****************************************************************************
 * File Description:
 *
 *   This file provides configuration and basic hardware functionality 
 *   based on chosen hardware demo boards.
 *
* Change History:
*  Rev   Date         Author    Description
*  1.0   2/02/2011    ccs       Initial revision
********************************************************************/
#include "SystemProfile.h"
#include "Compiler.h"
#include "WirelessProtocols/Console.h"
#include "WirelessProtocols/SymbolTime.h"
#include "LCD_ST7032.h"
#include "HardwareProfile.h"
#include "TCPIP Stack/Delay.h" //#include "TimeDelay.h"

   void ADC_Init(void);  
   unsigned int ADC_Read(unsigned char channel);
   float ReadTemperature(void);

// Config Bit Settings to get 16 MHz: Internal 8 MHz / 2 = 4 * 12 = 48 / 3 = 16
#pragma config OSC = INTOSCPLL, WDTEN = OFF, XINST = ON, WDTPS = 2048, PLLDIV = 2, CPUDIV = OSC3_PLL3


#define DEBOUNCE_TIME       0x00001FFF
#define SWITCH_NOT_PRESSED  0
#define SWITCH0_PRESSED     1
#define SWITCH1_PRESSED     2

BOOL switch0Pressed;
MIWI_TICK switch0PressTime;
BOOL switch1Pressed;
MIWI_TICK switch1PressTime;


/*********************************************************************
 * Function:        void BoardInit( void )
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    Board is initialized for P2P usage
 *
 * Overview:        This function configures the board 
 *
 * Note:            This routine needs to be called before the function 
 *                  to initialize stack or any other function that
 *                  operates on the stack
 ********************************************************************/
     void BoardInit(void)
{
    /*******************************************************************/
    // Primary Internal Oscillator
    /*******************************************************************/
    OSCCON = 0x78;
	OSCTUNEbits.PLLEN = 1;
    WDTCONbits.SWDTEN = 0;

    /*******************************************************************/
    // Configure PPS Related Pins
    /*******************************************************************/
    // Unlock to config PPS
    EECON2 = 0x55;
    EECON2 = 0xAA;
    PPSCONbits.IOLOCK = 0;
    
    RPINR1 = 17;            // Mapping IRQ1 to RC6(RP17) * Used for MRF89XA
    RPINR21 = 23;			// Mapping SDI2 to RD6(RP23)
    RPOR21 = 10;			// Mapping SCK2 to RD4(RP21)
    RPOR19 = 9;			    // Mapping SDO2 to RD2(RP19-------> use RD2/RP19 as output pin SDO2/MOSI2
    
//Can no longer declare as input pin RX/UART2 because pin RD2/RP19 had been declared as SDO2/MOSI2 interfacing LCD, SPIFLASH and EEPROM
//#if defined(MIWI_DEMO_KIT)
//    //Example PIC18F46J50
//    // use UART
//    RPINR16 = 19;   //RP19 pin  UART2 RX RD2
//    RPOR6 = 5;      //RP6 pin assigned to function 5: UART2 TX
//#endif
	// Lock System
    EECON2 = 0x55;
    EECON2 = 0xAA;
    PPSCONbits.IOLOCK = 1;

    /*******************************************************************/
    // AN0 & AN1 Analog Pins others Digital Pins
    /*******************************************************************/
    ANCON0 = 0xFC;
    ANCON1 = 0x1F;
    
    /*******************************************************************/
    // Configure Switch and LED I/O Ports
    /*******************************************************************/
    LED0 = 0;
    LED1 = 0;
    LED2 = 0;
    LED0_TRIS = 0;
    LED1_TRIS = 0;
    LED2_TRIS = 0;
            
    SW1_TRIS = 1;
    SW2_TRIS = 1;      
								
    INTCON2bits.RBPU = 0;   // Enable PORTB Pull-ups for Switches

    /*******************************************************************/
    // Configure the Temp Sensor and VBat port
    /*******************************************************************/	
    TRISAbits.TRISA1 = 1;
    TRISAbits.TRISA0 = 1;
    
    /*******************************************************************/
	// Config RF Radio
	/*******************************************************************/
#if defined(MRF24J40)
    /*******************************************************************/
	// Config MRF24J40 Pins
	/*******************************************************************/
	PHY_CS = 1;
	PHY_RESETn = 1;    
    PHY_WAKE = 1;
    
    PHY_CS_TRIS = 0;
    PHY_RESETn_TRIS = 0;        
    PHY_WAKE_TRIS = 0;
    RF_INT_TRIS = 1;
             
    // Config INT0 Edge = Falling
    INTCON2bits.INTEDG0 = 0;
    
    RFIF = 0;
    RFIE = 1;
    
    /*******************************************************************/
    // Confiure SPI1
    /*******************************************************************/     
    SDI_TRIS = 1;
    SDO_TRIS = 0;
    SCK_TRIS = 0;
    
    SSP1STAT = 0xC0;
    SSP1CON1 = 0x20;
   
#elif defined(MRF89XA)
    /*******************************************************************/
	// Config MRF89XA Pins
	/*******************************************************************/ 
    Data_nCS = 1;
    Config_nCS = 1;
    
    Data_nCS_TRIS = 0; 
    Config_nCS_TRIS = 0;   
    
    IRQ0_INT_TRIS = 1;
    IRQ1_INT_TRIS = 1;
    
    // Config IRQ1 Edge = Rising
    INTCON2bits.INTEDG1 = 1;
    
    // Config IRQ0 Edge = Falling
    INTCON2bits.INTEDG0 = 1;
    
    PHY_IRQ0 = 0;           // MRF89XA
    PHY_IRQ0_En = 1;        // MRF89XA  
    PHY_IRQ1 = 0;           // MRF89XA
    PHY_IRQ1_En = 1;        // MRF89XA    
    /*******************************************************************/
    // Confiure SPI1
    /*******************************************************************/   
    SDI_TRIS = 1;
    SDO_TRIS = 0;
    SCK_TRIS = 0;
    
    SSP1STAT = 0xC0;
    SSP1CON1 = 0x21;

    PHY_RESETn = 0;
    PHY_RESETn_TRIS = 0;

#endif
    
    /*******************************************************************/    
    // Configure EEProm Pins
    /*******************************************************************/
    RF_EEnCS = 1;   //MAC_nCS eeprom
    RF_EEnCS_TRIS = 0;
    EE_nCS = 1;     //SPI Flash
    EE_nCS_TRIS = 0;

    
    /*******************************************************************/
    // Configure LCD Pins
    /*******************************************************************/
    LCD_BKLT = 0;
    LCD_CS = 1;
    LCD_RS = 0;
    LCD_RESET = 0;
    LCD_BKLT_TRIS = 0;
    LCD_CS_TRIS = 0;
    LCD_RS_TRIS = 0;
    LCD_RESET_TRIS = 0;
    
    
    /*******************************************************************/
    // Configure SPI2
    /*******************************************************************/   
    SDI2_TRIS = 1;
    SDO2_TRIS = 0;
    SCK2_TRIS = 0;
    
    SSP2STAT = 0x00;
    SSP2CON1 = 0x31;
    
    PIR3bits.SSP2IF = 0; 

    ADC_Init();  // Initialize ADC
    /*******************************************************************/
    // Enable System Interupts. DISABLE THIS IF NOT USED ELSE IT MAY CREATE INSTABILITY.
    /*******************************************************************/
    RCONbits.IPEN = 1;          // Enable interrupt priorities
//    INTCONbits.GIEL = 1;        // Enable Low-Priority Interrupts
    INTCONbits.GIEH = 1;        // Enable High-Priority Interrupts
    
    

}

     // ================================
// ** Initialize ADC **
// ================================
void ADC_Init(void) {
    // Set RA0 (AN0) & RA1 (AN1) as Analog Inputs
    ANCON0 = 0b11111100;  // AN0 & AN1 = Analog, others Digital
    TRISA |= 0b00000011;  // RA0 & RA1 as Input
    
    ANCON1bits.PCFG8 = 1;
    ANCON1bits.PCFG9 = 1;
    ANCON1bits.PCFG10 = 1;
    ANCON1bits.PCFG11 = 1;
    ANCON1bits.PCFG12 = 1;
    // Disable 1.2V Bandgap Reference (Not needed)
    ANCON1bits.VBGEN = 0;

    // Configure ADC
//    ADCON1 = 0x0E;  // VDD as Vref
    ADCON1bits.ADCAL = 0;  // Normal ADC operation (no calibration)
    ADCON1bits.ACQT = 0b101;  // Set 12 TAD acquisition time
    ADCON1bits.ADCS = 0b110;  // Select Fosc/64 (Good for 16MHz)
    // Set ADC Result Format to Right-Justified
    ADCON1bits.ADFM = 1;
    
    ADCON0 = 0x00;  // Turn off ADC initially
    // Configure External VREF+
    ADCON0bits.VCFG = 0b00;  // VREF+ = VDD, VREF- = VSS (Default)
    ADCON0bits.ADON = 1;  // Enable ADC
}
// ================================
// ** Read ADC Value from ANx **
// ================================
unsigned int ADC_Read(unsigned char channel) {
    unsigned int result;
    ADCON0bits.CHS = channel;  // Select ADC channel
    ADCON0bits.ADON = 1;  // Turn ON ADC

    Delay10us(1);  // Acquisition time (Wait before conversion)
    ADCON0bits.GO = 1;  // Start conversion

    while (ADCON0bits.DONE);  // Wait for conversion to complete

//    result = (ADRESH << 8) | ADRESL;  // Get 10-bit ADC value
    result = ADRES;  // Get 10-bit ADC value
    ADCON0bits.ADON = 0;  // Turn OFF ADC

    return result;
}

// ================================
// ** Convert ADC Value to Temperature **
// ================================
#define NUM_SAMPLES 10  // Number of ADC samples for averaging

float ReadTemperature(void) {
    unsigned int adcValue = 0;
    float voltage, temperature;
    unsigned char i;

    // Take multiple ADC readings and average them
    for (i = 0; i < NUM_SAMPLES; i++) {
        adcValue += ADC_Read(1);  // Read from AN1 (RA1)
        Delay10us(10);  // Small delay between samples to allow stability
    }

    adcValue /= NUM_SAMPLES;  // Compute average

    // Convert ADC value to voltage
    voltage = adcValue * (3.3 / 1023.0);

    // Convert voltage to temperature (MCP9700AT formula)
    temperature = (voltage - 0.5) * 100.0;

    return temperature;  // Return final averaged temperature
}


/*********************************************************************
 * Function:        BYTE ButtonPressed(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          Byte to indicate which button has been pressed. 
 *                  Return 0 if no button pressed.
 *
 * Side Effects:    
 *
 * Overview:        This function check if any button has been pressed
 *
 * Note:            
 ********************************************************************/
BYTE ButtonPressed(void)
{
    BYTE result = SWITCH_NOT_PRESSED;
    MIWI_TICK tickDifference, t;


    if (SW1_PORT == 0)
    {
        switch0PressTime = MiWi_TickGet();
        if(SW1_PORT == 0)
        {
            while(SW1_PORT == 0);
             //get the current time
            t = MiWi_TickGet();

             //if the button has been pressed long enough
            tickDifference.Val = MiWi_TickGetDiff(t,switch0PressTime);
            if(tickDifference.Val > DEBOUNCE_TIME)
                result = SWITCH0_PRESSED;
        }    
        else
            result = SWITCH_NOT_PRESSED;
    }
    
    if (SW2_PORT == 0)
    {
        switch1PressTime = MiWi_TickGet();
        if(SW2_PORT == 0)
        {
            while(SW2_PORT == 0);
             //get the current time
            t = MiWi_TickGet();

             //if the button has been pressed long enough
            tickDifference.Val = MiWi_TickGetDiff(t,switch1PressTime);
            if(tickDifference.Val > DEBOUNCE_TIME)
                result = SWITCH1_PRESSED;
        }    
        else
            result = SWITCH_NOT_PRESSED;
    }
    
    return result;
}


  

void UserInterruptHandler(void)
{
/*    if( PIR3bits.SSP2IF )
    {
        PIR3bits.SSP2IF = 0;
        DelayMs(5);
    }  */ 
}
