/* 
 * File:   State_Temperature.h
 * Author: A16026
 *
 * Created on March 25, 2015, 6:23 PM
 */

#ifndef STATE_TEMPERATURE_H
#define	STATE_TEMPERATURE_H

#ifdef	__cplusplus
extern "C" {
#endif

#include "Buttons.h"

// Function prototypes

/**
* @FUNCTION     disp_Temperature ()
* @INPUTS       None
* @OUTPUTS      None
* @DESCRIPTION  Displays the temperature value and Exit option
*               on LCD and host PC
*               Writes temperature value to serial EEPROM
*/

void disp_Temperature (void);

/**
* @FUNCTION     Temp_Result()
* @INPUTS       None
* @OUTPUTS      b = Temperature decimal value
* @DESCRIPTION  Converts the ADC result into actual temperature
*               decimal value
*/

int Temp_Result (void);

#ifdef	__cplusplus
}
#endif

#endif	/* STATE_TEMPERATURE_H */