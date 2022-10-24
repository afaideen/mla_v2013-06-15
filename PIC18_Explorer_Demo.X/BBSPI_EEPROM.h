/* 
 * File:   BBSPI_EEPROM.h
 * Author: A16026
 *
 * Created on April 13, 2015, 2:44 PM
 */

#ifndef BBSPI_EEPROM_H
#define	BBSPI_EEPROM_H

#ifdef	__cplusplus
extern "C" {
#endif

#include "mcc_generated_files/mcc.h"

#define EEPROM_CS_TRIS      TRISAbits.RA3       // EEPROM Chip Select
#define EEPROM_CS           LATAbits.LATA3      // EEPROM Chip Select
#define EEPROM_SPI_IF       PIR1bits.SSPIF      // SPI interrupt flag
#define EEPROM_READ_EN      0x03                // read data from memory
#define EEPROM_WREN         0x06                // set the write enable latch
#define EEPROM_WRITE_EN     0x02                // write data to memory array
#define EEPROM_RDSR         0x05                // read STATUS register
#define EEPR

// Function prototypes
/**
* @FUNCTION     InitEEPROM()
* @INPUTS       None
* @OUTPUTS      None
* @DESCRIPTION  Initializes the Serial EEPROM
*/

void InitEEPROM (void);

/**
* @FUNCTION     WriteEEPROM()
* @INPUTS       adr_hi = address high byte;
*               adr_lo = address low byte;
*               temp = temperature value
* @OUTPUTS      None
* @DESCRIPTION  Write bytes to the Serial EEPROM
*/

void WriteEEPROM (unsigned char adr_hi,unsigned char adr_lo,unsigned char temp);

#ifdef	__cplusplus
}
#endif

#endif	/* BBSPI_EEPROM_H */