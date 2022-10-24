/*******************************************************************************
* FileName:        State_Temperature.c
* Dependencies:    See INCLUDES section below
* Processor:       PIC18F8722 and PIC18F87J11 on PICDEM PIC18 Explorer
* Compiler:        XC8
* Version:         1.34
* Company:         Microchip Technology, Inc.
********************************************************************************
*   PICDEM PIC18 Explorer Setup Details
*
*   Temperature Sensor is the MCP9701A Low-Power Linear Active Thermistor
*   Sensor Accuracy is +/- 2C (0C to +70C)
********************************************************************************
*   Temperature Sensor interface on PICDEM PIC18 Explorer board:
*   Vdd = +5                    : MCP9701A Specification for Vdd (3.1V to 5.5V)
*   GND = 0                     : MCP9701A Specification for GND
*
*   PIC microcontroller interface to MCP9701A:
*   RA1/AN1 = Vout              : MCP9701A Vout pin
********************************************************************************/

#include "State_Temperature.h"

/*******************************************************************
* FUNCTION:     Temperature ()
* INPUTS:       None
* OUTPUTS:      None
* DESCRIPTION:  Displays the Temperature text and Now/Next options
*               on LCD and host PC
********************************************************************/

void Temperature (void)
{
    // Display Temperature text and Now/Next options on LCD
    mCURSOR_LINE1;
    LCDPutStr("  Temperature   ");
    mCURSOR_LINE2;
    LCDPutStr("RB0=Now RA5=Next");

    // Send Temperature text and Now/Next options to host PC serial terminal
    printf("  Temperature   \n\r");
    printf("RB0=Now RA5=Next\n\r");

    // Poll the button to be pressed
    while (State == 2)
    {
        if (select == pressed)              // Condition if RB0 is pressed
        {
            SWdelay();
            disp_Temperature ();            // Display Temperature
        }
        if (scroll == pressed)              // Condition if RA5 is pressed
        {
            SWdelay();
            State++;                        // Switch to Clock application
        }
    }
}

/*******************************************************************
* FUNCTION:     disp_Temperature ()
* INPUTS:       None
* OUTPUTS:      None
* DESCRIPTION:  Displays the temperature value and Exit option
*               on LCD and host PC
*               Writes temperature value to serial EEPROM
********************************************************************/

void disp_Temperature (void)
{
    unsigned int a;
    while (State == 2)
    {
        a = Temp_Result ();

        // Display temperature value and Exit option on LCD
        mCURSOR_LINE1;
        LCDPutStr("Temp = = ");
        LCDPutChar(a/100+'0');
        LCDPutChar((a/10)%10+'0');
        LCDPutChar((a /1)% 10+'0');
        LCDPutStr("C   ");
        mCURSOR_LINE2;
        LCDPutStr("   RB0 = Exit   ");

        // Send temperature value and Exit option to host PC serial terminal
        printf("Temp = = %03dC\t",a);
        printf("RB0 = Exit\n\r");

        // Write temperature to serial EEPROM
        InitEEPROM ();
        WriteEEPROM (0x00,0x00,a);

        if (select == pressed)              // Poll the RB0 button
        {
            SWdelay();
            State++;
        }
    }
}

/*******************************************************************
* FUNCTION:     Temp_Result()
* INPUTS:       None
* OUTPUTS:      b = Temperature decimal value
* DESCRIPTION:  Converts the ADC result into actual temperature
*               decimal value
********************************************************************/

int Temp_Result (void)
{
    unsigned int b;

    #ifdef _18F8722
        b = ((ADC_GetConversion(Temp_sensor)*49)-4000)/195;     // Temperature decimal value for 5V devices
    #endif
    #ifdef _18F87J11
        b = ((ADC_GetConversion(Temp_sensor)*33)-4000)/195;     // Temperature decimal value for 3.3V devices
    #endif

    return b;
}