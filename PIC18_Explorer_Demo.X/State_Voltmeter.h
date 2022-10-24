/* 
 * File:   State_Voltmeter.h
 * Author: A16026
 *
 * Created on March 25, 2015, 4:50 PM
 */

#ifndef STATE_VOLTMETER_H
#define	STATE_VOLTMETER_H

#ifdef	__cplusplus
extern "C" {
#endif

#include "Buttons.h"

// Function prototypes


/**
* @FUNCTION     disp_Volts ()
* @INPUTS       None
* @OUTPUTS      None
* @DESCRIPTION  Displays the voltage value and Exit option
*               on LCD and host PC
*/

void disp_Volts (void);

/**
* @FUNCTION     Volt_Result()
* @INPUTS       None
* @OUTPUTS      b = Voltage value
* @DESCRIPTION  Converts the ADC result into actual temperature
*               decimal value
*/

int Volt_Result (void);

#ifdef	__cplusplus
}
#endif

#endif	/* STATE_VOLTMETER_H */