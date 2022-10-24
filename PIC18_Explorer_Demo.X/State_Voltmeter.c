/*************************************************************************************************
* FileName:        State_Voltmeter.c
* Dependencies:    See INCLUDES section below
* Processor:       PIC18F8722 and PIC18F87J11 on PICDEM PIC18 Explorer
* Compiler:        XC8
* Version:         1.34
* Company:         Microchip Technology, Inc.
***************************************************************************************************
*   PICDEM PIC18 Explorer Setup Details
*
*   Analog input interface is a 10K Potentiometer
* *****************************************************************************************************
*   Temperature Sensor interface on PICDEM PIC18 Explorer board:
*   End terminals            --> Vdd and GND
*
*   PIC microcontroller interface to MCP9701A:
*   Wiper                    --> RA0/AN0
****************************************************************************************************/

#include "State_Voltmeter.h"

/*******************************************************************
* FUNCTION:     Voltmeter ()
* INPUTS:       None
* OUTPUTS:      None
* DESCRIPTION:  Displays the Voltmeter text and Now/Next options
*               on LCD and host PC
********************************************************************/

void Voltmeter (void)
{
    // Display Voltmeter text and Now/Next options on LCD
    mCURSOR_LINE1;
    LCDPutStr("   Voltmeter    ");
    mCURSOR_LINE2;
    LCDPutStr("RB0=Now RA5=Next");

    // Send Voltmeter text and Now/Next options to host PC serial terminal
    printf("   Voltmeter    \n\r");
    printf("RB0=Now RA5=Next\n\r");

    // Poll the button to be pressed
    while (State == 1)
    {
        if (select == pressed)          // Condition if RB0 is pressed
        {
            SWdelay();
            disp_Volts ();              // Display Volts
        }
        if (scroll == pressed)          // Condition if RA5 is pressed
        {
            SWdelay();
            State++;                    // Switch to Temperature application
        }
    }
}

/*******************************************************************
* FUNCTION:     disp_Volts ()
* INPUTS:       None
* OUTPUTS:      None
* DESCRIPTION:  Displays the voltage value and Exit option
*               on LCD and host PC
********************************************************************/

void disp_Volts (void)
{
    unsigned int a;

    while (State == 1)
    {
        a = Volt_Result ();
        
        // Display Voltage value and Exit option on LCD
        mCURSOR_LINE1;
        LCDPutStr("Volts =         ");
        mCURSOR_LINE2;
        LCDPutChar(a/100+'0');
        LCDPutChar('.');
        LCDPutChar((a/10)%10+'0');
        LCDPutChar((a /1)% 10+'0');
        LCDPutStr("V   RB0=Exit");

        // Send Voltage value and Now/Next options to host PC serial terminal
        printf("%.2fV   RB0=Exit\n\r", (float) a/100);

        // Poll the RB0 button
        if (select == pressed)              // Condition if RB0 is pressed
        {
            SWdelay();
            State++;                        // Switch to Temperature application
        }
    }
}

/*******************************************************************
* FUNCTION:     Volt_Result()
* INPUTS:       None
* OUTPUTS:      b = Voltage value
* DESCRIPTION:  Converts the ADC result into voltage decimal value
********************************************************************/

int Volt_Result (void)
{
    unsigned int b;

    #ifdef _18F8722
        b = (ADC_GetConversion(Pot)*49)/100;    // Voltage value for 5V devices
    #endif
    #ifdef _18F87J11
        b = (ADC_GetConversion(Pot)*32)/100;    // Voltage value for 3.3V devices
    #endif

    return b;
}