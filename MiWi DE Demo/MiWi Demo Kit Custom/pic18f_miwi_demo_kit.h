/* 
 * File:   pic18f_miwi_demo_kit.h
 * Author: han
 *
 * Created on February 26, 2025, 7:30 AM
 */

#ifndef PIC18F_MIWI_DEMO_KIT_H
#define	PIC18F_MIWI_DEMO_KIT_H


#define GetSystemClock()            16000000      // Hz
#define CLOCK_FREQ                  GetSystemClock()      // Hz
#define _XTAL_FREQ                  CLOCK_FREQ      // Hz
#define GetInstructionClock()       (GetSystemClock()/4)
#define GetPeripheralClock()        GetInstructionClock()
#define FCY                         GetInstructionClock()

#define LED0                LATCbits.LATC2
#define LED0_TRIS           TRISCbits.TRISC2
#define LED1                LATAbits.LATA6
#define LED1_TRIS           TRISAbits.TRISA6
#define LED2				LATAbits.LATA7
#define LED2_TRIS			TRISAbits.TRISA7

// Switch and LED Pin Definitions
#define SW1_PORT            PORTBbits.RB1
#define SW1_TRIS            TRISBbits.TRISB1
#define SW2_PORT            PORTBbits.RB2
#define SW2_TRIS            TRISBbits.TRISB2

#define SW1_PRESSED         (&PORTB), 1
#define SW2_PRESSED         (&PORTB), 2

#define SUPPORT_TWO_SPI
// MRF24J40 Pin Definitions
#define MRF24J40
#define RFIF                INTCONbits.INT0IF
#define RFIE                INTCONbits.INT0IE
#define PHY_CS              LATAbits.LATA5      //MRF_nCS
#define PHY_CS_TRIS         TRISAbits.TRISA5
#define RF_INT_PIN          PORTBbits.RB0       //MRF_INT
#define RF_INT_TRIS         TRISBbits.TRISB0
#define PHY_WAKE            LATDbits.LATD1      //MRF_WAKE
#define PHY_WAKE_TRIS       TRISDbits.TRISD1
#define PHY_RESETn          LATDbits.LATD0      //MRF_nRESET
#define PHY_RESETn_TRIS     TRISDbits.TRISD0

// EEProm Pin Definitions
#define RF_EEnCS		    LATDbits.LATD5
#define RF_EEnCS_TRIS	    TRISDbits.TRISD5

// SPI1 Pin Definitions
#define SPI_SDI             PORTBbits.RB5               
#define SDI_TRIS            TRISBbits.TRISB5
#define SPI_SDO             LATCbits.LATC7               
#define SDO_TRIS            TRISCbits.TRISC7
#define SPI_SCK             LATBbits.LATB4               
#define SCK_TRIS            TRISBbits.TRISB4

// SPI2 Pin Definitions
#define SPI_SDI2            PORTDbits.RD6               
#define SDI2_TRIS           TRISDbits.TRISD6
#define SPI_SDO2            LATDbits.LATD2               
#define SDO2_TRIS           TRISDbits.TRISD2
#define SPI_SCK2            LATDbits.LATD4               
#define SCK2_TRIS           TRISDbits.TRISD4

#define SPI2SSPIF           PIR3bits.SSP2IF
#define SPI2WCOL            SSP2CON1bits.WCOL
#define SPI2SSPBUF          SSP2BUF

// External EEPROM Pin Definitions
//#define EE_nCS_TRIS         TRISDbits.TRISD5
#define MAC_nCS             LATDbits.LATD5
#define TMRL                TMR0L

//External SST Serial Flash Definitions
#define EE_nCS              LATEbits.LATE2
#define EE_nCS_TRIS         TRISEbits.TRISE2

// LCD Pin Definitions
#define LCD_CS_TRIS         TRISDbits.TRISD7
#define LCD_CS              LATDbits.LATD7
#define LCD_RS_TRIS         TRISDbits.TRISD3
#define LCD_RS              LATDbits.LATD3
#define LCD_RESET_TRIS      TRISEbits.TRISE0
#define LCD_RESET           LATEbits.LATE0
#define LCD_BKLT_TRIS       TRISEbits.TRISE1
#define LCD_BKLT            LATEbits.LATE1

//UART definition UART
//        #define UART_RX_DIR
//        #define UART_TX_DIR
//        #define UART_RX
//        #define UART_TX


  

#endif	/* PIC18F_MIWI_DEMO_KIT_H */

