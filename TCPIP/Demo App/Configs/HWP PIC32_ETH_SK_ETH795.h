 /*********************************************************************
 *
 *	Hardware specific definitions for:
 *    - PIC32 Ethernet Starter Kit
 *    - PIC32MX795F512L
 *    - Internal 10/100 Ethernet MAC with National DP83848 10/100 PHY
 *
 *********************************************************************
 * FileName:        HardwareProfile.h
 * Dependencies:    Compiler.h
 * Processor:       PIC32
 * Compiler:        Microchip C32 v1.11 or higher
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement
 *
 * Copyright (C) 2002-2010 Microchip Technology Inc.  All rights
 * reserved.
 *
 * Microchip licenses to you the right to use, modify, copy, and
 * distribute:
 * (i)  the Software when embedded on a Microchip microcontroller or
 *      digital signal controller product ("Device") which is
 *      integrated into Licensee's product; or
 * (ii) ONLY the Software driver source files ENC28J60.c, ENC28J60.h,
 *		ENCX24J600.c and ENCX24J600.h ported to a non-Microchip device
 *		used in conjunction with a Microchip ethernet controller for
 *		the sole purpose of interfacing with the ethernet controller.
 *
 * You should refer to the license agreement accompanying this
 * Software for additional information regarding your rights and
 * obligations.
 *
 * THE SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT
 * WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT
 * LIMITATION, ANY WARRANTY OF MERCHANTABILITY, FITNESS FOR A
 * PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT SHALL
 * MICROCHIP BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR
 * CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF
 * PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
 * BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE
 * THEREOF), ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER
 * SIMILAR COSTS, WHETHER ASSERTED ON THE BASIS OF CONTRACT, TORT
 * (INCLUDING NEGLIGENCE), BREACH OF WARRANTY, OR OTHERWISE.
 *
 *
 * Author               Date		Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Howard Schlunder		09/16/2010	Regenerated for specific boards
 ********************************************************************/
#ifndef HARDWARE_PROFILE_H
#define HARDWARE_PROFILE_H

#include "Compiler.h"
//#include "../../Microchip/Include/Compiler.h"

// Define a macro describing this hardware set up (used in other files)
#define PIC32_ENET_SK_DM320004

// Set configuration fuses (but only in MainDemo.c where THIS_IS_STACK_APPLICATION is defined)
#if defined(THIS_IS_STACK_APPLICATION)
	#pragma config FPLLODIV = DIV_1, FPLLMUL = MUL_20, FPLLIDIV = DIV_2, FWDTEN = OFF, FPBDIV = DIV_1, POSCMOD = XT, FNOSC = PRIPLL, CP = OFF
	#pragma config FMIIEN = OFF, FETHIO = OFF	// external PHY in RMII/alternate configuration
//	#pragma config FMIIEN = OFF, FETHIO = ON	// warning!!! No packet transmission and reception

#endif


// Clock frequency values
// These directly influence timed events using the Tick module.  They also are used for UART and SPI baud rate generation.
#define GetSystemClock()		(80000000ul)			// Hz
#define GetInstructionClock()	(GetSystemClock()/1)	// Normally GetSystemClock()/4 for PIC18, GetSystemClock()/2 for PIC24/dsPIC, and GetSystemClock()/1 for PIC32.  Might need changing if using Doze modes.
#define GetPeripheralClock()	(GetSystemClock()/1)	// Normally GetSystemClock()/4 for PIC18, GetSystemClock()/2 for PIC24/dsPIC, and GetSystemClock()/1 for PIC32.  Divisor may be different if using a PIC32 since it's configurable.


// Hardware I/O pin mappings

// LEDs
#define LED0_TRIS			(TRISDbits.TRISD0)	// Ref LED1
#define LED0_IO				(LATDbits.LATD0)
#define LED1_TRIS			(TRISDbits.TRISD1)	// Ref LED2
#define LED1_IO				(LATDbits.LATD1)
#define LED2_TRIS			(TRISDbits.TRISD2)	// Ref LED3
#define LED2_IO				(LATDbits.LATD2)
#define LED3_TRIS			(LED2_TRIS)			// No such LED
#define LED3_IO				(LATDbits.LATD6)
#define LED4_TRIS			(LED2_TRIS)			// No such LED
#define LED4_IO				(LATDbits.LATD6)
#define LED5_TRIS			(LED2_TRIS)			// No such LED
#define LED5_IO				(LATDbits.LATD6)
#define LED6_TRIS			(LED2_TRIS)			// No such LED
#define LED6_IO				(LATDbits.LATD6)
#define LED7_TRIS			(LED2_TRIS)			// No such LED
#define LED7_IO				(LATDbits.LATD6)
#define LED_GET()			((unsigned char)LATD & 0x07)
#define LED_PUT(a)			do{LATD = (LATD & 0xFFF8) | ((a)&0x07);}while(0)

// Momentary push buttons
#define BUTTON0_TRIS		(TRISDbits.TRISD6)	// Ref SW1
#define BUTTON0_IO			(PORTDbits.RD6)
#define BUTTON1_TRIS		(TRISDbits.TRISD7)	// Ref SW2
#define BUTTON1_IO			(PORTDbits.RD7)
#define BUTTON2_TRIS		(TRISDbits.TRISD13)	// Ref SW3
#define BUTTON2_IO			(PORTDbits.RD13)
#define BUTTON3_TRIS		(TRISDbits.TRISD13)	// No BUTTON3 on this board
#define BUTTON3_IO			(1)

// UART configuration (not too important since we don't have a UART 
// connector attached normally, but needed to compile if the STACK_USE_UART 
// or STACK_USE_UART2TCP_BRIDGE features are enabled.
#define UARTTX_TRIS			(TRISFbits.TRISF3)
#define UARTRX_TRIS			(TRISFbits.TRISF2)

// External National PHY configuration
#define	PHY_RMII				// external PHY runs in RMII mode
#define	PHY_CONFIG_ALTERNATE	// alternate configuration used
#define	PHY_ADDRESS			0x1	// the address of the National DP83848 PHY

// Note, it is not possible to use a MRF24WB0M Wi-Fi PICtail Plus 
// card with this starter kit.  The required interrupt signal, among 
// possibly other I/O pins aren't available on the Starter Kit board.


//// Serial Flash/SRAM/UART PICtail Plus attached to SPI2 (middle pin group)
//// This daughter card is not in production, but if you custom attach an SPI 
//// RAM or SPI Flash chip to your board, then use these definitions as a 
//// starting point.
//#define SPIRAM_CS_TRIS			(TRISGbits.TRISG9)
//#define SPIRAM_CS_IO			(LATGbits.LATG9)
//#define SPIRAM_SCK_TRIS			(TRISGbits.TRISG6)
//#define SPIRAM_SDI_TRIS			(TRISGbits.TRISG7)
//#define SPIRAM_SDO_TRIS			(TRISGbits.TRISG8)
//#define SPIRAM_SPI_IF			(IFS1bits.SPI2RXIF)
//#define SPIRAM_SSPBUF			(SPI2BUF)
//#define SPIRAM_SPICON1			(SPI2CON)
//#define SPIRAM_SPICON1bits		(SPI2CONbits)
//#define SPIRAM_SPIBRG			(SPI2BRG)

//#define SPIFLASH_CS_TRIS		(TRISBbits.TRISB8)
#define SPIFLASH_CS_IO			(LATBbits.LATB8)
#define SPIFLASH_SCK_TRIS		(TRISGbits.TRISG6)
#define SPIFLASH_SDI_TRIS		(TRISGbits.TRISG7)
#define SPIFLASH_SDI_IO			(PORTGbits.RG7)
#define SPIFLASH_SDO_TRIS		(TRISGbits.TRISG8)
#define SPIFLASH_SPI_IF			(IFS1bits.SPI2RXIF)
#define SPIFLASH_SSPBUF			(SPI2BUF)
#define SPIFLASH_SPICON1		(SPI2CON)
#define SPIFLASH_SPICON1bits	(SPI2CONbits)
#define SPIFLASH_SPISTATbits	(SPI2STATbits)
#define SPIFLASH_SPIBRG			(SPI2BRG)

// Select which UART the STACK_USE_UART and STACK_USE_UART2TCP_BRIDGE 
// options will use.  You can change these to U1BRG, U1MODE, etc. if you 
// want to use the UART1 module instead of UART2.
#define UBRG				U2BRG
#define UMODE				U2MODE
#define USTA				U2STA
#define BusyUART()			BusyUART2()
#define CloseUART()			CloseUART2()
#define ConfigIntUART(a)	ConfigIntUART2(a)
#define DataRdyUART()		DataRdyUART2()
#define OpenUART(a,b,c)		OpenUART2(a,b,c)
#define ReadUART()			ReadUART2()
#define WriteUART(a)		WriteUART2(a)
#define getsUART(a,b,c)		getsUART2(a,b,c)
#define putsUART(a)			putsUART2(a)
#define getcUART()			getcUART2()
#define putcUART(a)			do{while(BusyUART()); WriteUART(a); while(BusyUART()); }while(0)
#define putrsUART(a)		putrsUART2(a)
#endif // #ifndef HARDWARE_PROFILE_H
