#include "State_Intro.h"

/*******************************************************************
* FUNCTION:     Intro ()
* INPUTS:       None
* OUTPUTS:      None
* DESCRIPTION:  Displays the Introductory Text on LCD and host PC
********************************************************************/

void Intro (void)
{
    // Initialize LCD
    mOPEN_LCD;
    
    // Display Intro text on LCD
    mCURSOR_LINE1;
    LCDPutStr("Microchip PICDEM");
    mCURSOR_LINE2;
    LCDPutStr(" PIC18 Explorer ");

    // Send Intro Text to host PC serial terminal
    printf("Microchip PICDEM\n\r");
    printf(" PIC18 Explorer \n\r");

    // Delay before switching to the next display
    Intro_delay();

    // Switch to Voltmeter application
    State++;
}

/*******************************************************************
* FUNCTION:     Intro_delay ()
* INPUTS:       None
* OUTPUTS:      None
* DESCRIPTION:  Delays the display of Introductory Text on LCD
********************************************************************/

void Intro_delay (void)
{
    unsigned char i;
    for (i=0;i<100;i++)
    {__delay_ms(50);}
}