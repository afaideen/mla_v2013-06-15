/* 
 * File:   Buttons.h
 * Author: A16026
 *
 * Created on March 25, 2015, 8:10 PM
 */

#ifndef BUTTONS_H
#define	BUTTONS_H

#ifdef	__cplusplus
extern "C" {
#endif

#include "mcc_generated_files/mcc.h"
#include "BBSPI_LCD.h"
#include "BBSPI_EEPROM.h"
    
// Configuration bits

#ifdef _18F8722
#pragma config  OSC = HSPLL
#pragma config 	FCMEN = OFF
#pragma config 	IESO = OFF
#pragma config 	PWRT = OFF
#pragma config 	BOREN = OFF
#pragma config 	WDT = OFF
#pragma config 	MCLRE = ON
#pragma config 	LVP = OFF
#pragma config 	XINST = OFF
#endif

#ifdef _18F87J11
#pragma config	FOSC = HSPLL
#pragma	config  STVREN = OFF
#pragma config  XINST = OFF
#pragma config  WDTEN = OFF
#pragma config  CP0 = OFF
#pragma config  FCMEN = OFF
#pragma config  IESO = OFF
#pragma	config  MODE = MM
#endif

// Definitions for select and scroll buttons
#define scroll_dir  TRISAbits.TRISA5
#define scroll      PORTAbits.RA5
#define select_dir  TRISBbits.TRISB0
#define select      PORTBbits.RB0
#define pressed     0

// Function prototypes

/**
* @FUNCTION     Intro ()
* @INPUTS       None
* @OUTPUTS      None
* @DESCRIPTION  Displays the Introductory Text on LCD and host PC
*/

void Intro (void);

/**
* @FUNCTION     Voltmeter ()
* @INPUTS       None
* @OUTPUTS      None
* @DESCRIPTION  Displays the Voltmeter text and Now/Next options
*               on LCD and host PC
*/

void Voltmeter (void);

/**
* @FUNCTION     Temperature ()
* @INPUTS       None
* @OUTPUTS      None
* @DESCRIPTION  Displays the Temperature text and Now/Next options
*               on LCD and host PC
*/

void Temperature (void);

/**
* @FUNCTION     Clock ()
* @INPUTS       None
* @OUTPUTS      None
* @DESCRIPTION  Displays the Clock text and Now/Next options
*               on LCD and host PC
*/

void Clock (void);

/**
 * @FUNCTION     SWdelay ()
 * @INPUTS       None
 * @OUTPUTS      None
 * @DESCRIPTION  Delay after pressing the RB0 and RB5 switch buttons
*/

void SWdelay (void);

// Enumerations
enum {St_Intro, St_Voltmeter, St_Temperature, St_Clock,} State_Machine;

unsigned char State = St_Intro;

#ifdef	__cplusplus
}
#endif

#endif	/* BUTTONS_H */

