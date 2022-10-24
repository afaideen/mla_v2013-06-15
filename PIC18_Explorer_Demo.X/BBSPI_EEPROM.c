/*******************************************************************************
* FileName:        BBSPI_EEPROM.c
* Dependencies:    See INCLUDES section below
* Processor:       PIC18F8722 and PIC18F87J11 on PICDEM PIC18 Explorer
* Compiler:        XC8
* Version:         1.34
* Company:         Microchip Technology, Inc.
********************************************************************************
*   PICDEM PIC18 Explorer Setup Details
*
*   Serial EEPROM on PICDEM PIC18 Explorer is Microchip 25LC256
********************************************************************************
*   SPI (Master) interface to 25LC256 (Slave):
*
*   RA3       = CS              : 25LC256 Chip Select
*   RC5/SD01  = SI              : 25LC256 Serial Data Input
*   RC4/SDI1  = SO              : 25LC256 Serial Data Output
*   RC3/SCK1  = SCK             : 25LC256 Serial Clock Input
*   RF6       = RESET           : 25LC256 Hardware Reset
********************************************************************************/

#include "BBSPI_EEPROM.h"
#include "BBSPI_LCD.h"

/*******************************************************************
* FUNCTION:     InitEEPROM ()
* INPUTS:       None
* OUTPUTS:      None
* DESCRIPTION:  Initializes the Serial EEPROM
********************************************************************/

void InitEEPROM (void)
{
    InitBBSPI();
}

/*******************************************************************
* FUNCTION:     WriteEEPROM ()
* INPUTS:       adr_hi = address high byte
*               adr_lo = address low byte
*               temp = temperature value
* OUTPUTS:      None
* DESCRIPTION:  Write bytes to the Serial EEPROM
********************************************************************/

void WriteEEPROM (unsigned char adr_hi,unsigned char adr_lo,unsigned char temp)
{
    EEPROM_CS = 0;                      // enable access to 25LC256 SPI EEPROM
    SendByteBBSPI(EEPROM_WREN);         // set write enable latch
    EEPROM_CS = 1;                      // enable write operations
    __delay_ms(5);
    EEPROM_CS = 0;                      // enable access to 25LC256 SPI EEPROM
    SendByteBBSPI(EEPROM_WRITE_EN);     // write data to memory array
    SendByteBBSPI(adr_hi);              // register address high byte
    SendByteBBSPI(adr_lo);              // regiter address low byte
    SendByteBBSPI(temp);                // write temperature to selected address
    EEPROM_CS = 1;                      // end write sequence
    __delay_ms(5);                      // internal clock cycle time
}