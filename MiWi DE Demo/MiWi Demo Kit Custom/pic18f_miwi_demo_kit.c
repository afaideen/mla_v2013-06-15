/* 
 * File:   pic18f_miwi_demo_kit.h
 * Author: han
 *
 * Created on February 26, 2025, 7:30 AM
 */

#ifndef PIC18F_MIWI_DEMO_KIT_C
#define	PIC18F_MIWI_DEMO_KIT_C

#include "pic18f_miwi_demo_kit.h"
#include "definitions.h"
#include "WirelessProtocols/SymbolTime.h"

extern void RTCC_Init(void);
extern void config_osc(void);

void InitBoard(void);
BOOL SW_Pressed( volatile unsigned char *port, uint8_t bitPos, MIWI_TICK *t_sw, int16_t duration);
void ADC_Init(void);
uint16_t ADC_Read(uint8_t channel);
float ReadTemperature(void);
float ReadBatt(void);
unsigned int Read_VBGVoltage(void);
float ReadTempSensor(unsigned int VBGResult);



void InitBoard(void)
{
    config_osc();
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
    RTCC_Init();
    
	// Lock System
    EECON2 = 0x55;
    EECON2 = 0xAA;
    PPSCONbits.IOLOCK = 1;

    /*******************************************************************/
    // AN0 & AN1 Analog Pins others Digital Pins
    /*******************************************************************/
    ANCON0 = 0xFC;
    ANCON1 = 0x1F;
    
    LED0 = 0;
    LED1 = 0;
    LED2 = 0;
    LED0_TRIS = 0;
    LED1_TRIS = 0;
    LED2_TRIS = 0;  
    INTCON2bits.RBPU = 0;   // Enable PORTB Pull-ups for Switches
    SW1_TRIS = 1;
    SW2_TRIS = 1;
    // Disable analog mode (choose based on your PIC18)
    ANCON1bits.PCFG8 = 1;  // Set RB1 as digital (for PIC18F46J50)
    ANCON1bits.PCFG9 = 1;  // Set RB2 as digital

    /*******************************************************************/
    // Configure the Temp Sensor and VBat port
    /*******************************************************************/	
    TRISAbits.TRISA1 = 1;   //TEMPERATURE
    TRISAbits.TRISA0 = 1;   //BATT
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
//    RTCC_Init();
    /*******************************************************************/
    // Enable System Interupts. DISABLE THIS IF NOT USED ELSE IT MAY CREATE INSTABILITY.
    /*******************************************************************/
//    RCONbits.IPEN = 1;          // Enable interrupt priorities
//    INTCONbits.GIEL = 1;        // Enable Low-Priority Interrupts
    INTCONbits.GIEH = 1;        // Enable High-Priority Interrupts
//    INTCONbits.PEIE = 1;   // ? Enable peripheral interrupts
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
uint16_t ADC_Read(uint8_t channel) {
    uint16_t result;
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
// ** Read Bandgap Voltage **
// ================================
unsigned int Read_VBGVoltage(void) {
    ADCON0 = 0x3D;  // Select Bandgap Channel
    ADCON1 = 0xBD;  // Configure ADC Timing
    ANCON1bits.VBGEN = 1;  // Enable Bandgap Reference

    Delay10us(1000);  // Bandgap Settling Time

    PIR1bits.ADIF = 0;
    PIE1bits.ADIE = 0;  // Disable ADC Interrupts

    ADCON0bits.GO = 1;  // Start ADC Conversion
    while (ADCON0bits.DONE);  // Wait for Conversion to Finish

    ADCON0bits.ADON = 0;  // Turn OFF ADC
    ANCON1bits.VBGEN = 0;  // Disable Bandgap

//    return (ADRESH << 8) | ADRESL;  // Return ADC Result
    return ADRES;
}
// ================================
// ** Read Temperature Sensor with Averaging **
// ================================
#define NUM_TEMP_SAMPLES            4
// ================================
// ** Read Temperature Sensor with Floating Point (0.1�C Precision) **
// ================================
float ReadTempSensor(unsigned int VBGResult) {
    unsigned int tempValue;
    float temp;
    unsigned char i = 0;
    float tempAverage = 0;
    float tempArray[NUM_TEMP_SAMPLES];  // Use `float` for averaging

    // Configure the ADC register settings

    ADCON0 = 0x04;
    ADCON1 = 0xBD;
    
    PIR1bits.ADIF = 0;
    PIE1bits.ADIE = 0;
    do {
        ADCON0bits.ADON = 1;
        Delay10us(10);  // Acquisition time
        ADCON0bits.GO = 1;  // Start conversion

        while (ADCON0bits.DONE);  // Wait for conversion to complete

        temp = (1200.0 / VBGResult);  // Adjust using Bandgap Voltage
//        tempValue = (ADRESH << 8) | ADRESL;  // Read ADC result
        tempValue = ADRES;  // Read ADC result

        temp = (temp * tempValue);
        temp = (temp - 500.0) / 10.0;  // Convert to �C

        tempArray[i] = temp;  // Store floating-point sample

        ADCON0bits.ADON = 0;  // Turn ADC OFF
        Delay10us(1);  // Small delay
        i++;
    } while (i < NUM_TEMP_SAMPLES);

    // Compute Average Temperature in Floating Point
    for (i = 0; i < NUM_TEMP_SAMPLES; i++) {
        tempAverage += tempArray[i];
    }
    tempAverage /= NUM_TEMP_SAMPLES;

    return tempAverage;  // Return final temperature as float
}
// ================================
// ** Convert ADC Value to Temperature **
// ================================
#define NUM_SAMPLES 10  // Number of ADC samples for averaging

float ReadTemperature(void) {
    uint16_t adcValue = 0;
    float voltage, temperature;
    uint8_t i;

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

float ReadBatt(void) {
    uint16_t adcValue = 0;
    float voltage;
    uint8_t i;

    // Take multiple ADC readings and average them
    for (i = 0; i < NUM_SAMPLES; i++) {
        adcValue += ADC_Read(0);  // Read from AN1 (RA1)
        Delay10us(10);  // Small delay between samples to allow stability
    }

    adcValue /= NUM_SAMPLES;  // Compute average

    // Convert ADC value to voltage
    voltage = adcValue * (3.3 / 1023.0);

    return voltage;  // Return final averaged batt value
}

//MIWI_TICK t_sw = {0};
BOOL SW_Pressed( volatile unsigned char *port, uint8_t bitPos, MIWI_TICK *t_sw, int16_t duration)
{
    MIWI_TICK current_time = MiWi_TickGet();  // Get current time once
    MIWI_TICK current_time1 = *t_sw;
    DWORD tickDiff = MiWi_TickGetDiff(current_time, current_time1);
    if(tickDiff < 0){
        current_time1 = MiWi_TickGet();
        tickDiff = MiWi_TickGetDiff(current_time, current_time1);
    }

    if (!((*port >> bitPos) & 1))  // ? Check if the button is pressed (active-low)
    {
        if (tickDiff > (ONE_SECOND * (unsigned int)(duration / 1000)))  // Convert ms to tick units
        {
            if (!((*port >> bitPos) & 1))  // ? Confirm button is still pressed
            {
                current_time1 = MiWi_TickGet();  // ? Update timestamp correctly
                return TRUE;
            }
            else
            {
                current_time1 = MiWi_TickGet();  // ? Reset timestamp
            }
        }
    }
    else
    {
        current_time1 = MiWi_TickGet();  // ? Reset timestamp when button is released
    }
    return FALSE;
}


#define DEBOUNCE_TIME       0x00001FFF
#define SWITCH_NOT_PRESSED  0
#define SWITCH0_PRESSED     1
#define SWITCH1_PRESSED     2

BOOL switch0Pressed;
MIWI_TICK switch0PressTime;
BOOL switch1Pressed;
MIWI_TICK switch1PressTime;


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

#endif	/* PIC18F_MIWI_DEMO_KIT_C */

