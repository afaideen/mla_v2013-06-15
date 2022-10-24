#include "Buttons.h"

/*******************************************************************
* FUNCTION:     SWdelay ()
* INPUTS:       None
* OUTPUTS:      None
* DESCRIPTION:  Delay after pressing the RB0 and RB5 switch buttons
********************************************************************/

void SWdelay (void)
{
    while(scroll == pressed)
        __delay_ms(1);
    while (select == pressed)
        __delay_ms(1);
}