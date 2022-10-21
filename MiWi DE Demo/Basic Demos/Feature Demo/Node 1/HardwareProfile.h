/********************************************************************
* FileName:		HardwareProfile.h
* Dependencies:    
* Processor:	PIC18, PIC24, PIC32, dsPIC30, dsPIC33
*               tested with 18F4620, dsPIC33FJ256GP710	
* Complier:     Microchip C18 v3.04 or higher
*				Microchip C30 v2.03 or higher	
*               Microchip C32 v1.02 or higher	
* Company:		Microchip Technology, Inc.
*
* Copyright and Disclaimer Notice
*
* Copyright � 2007-2010 Microchip Technology Inc.  All rights reserved.
*
* Microchip licenses to you the right to use, modify, copy and distribute 
* Software only when embedded on a Microchip microcontroller or digital 
* signal controller and used with a Microchip radio frequency transceiver, 
* which are integrated into your product or third party product (pursuant 
* to the terms in the accompanying license agreement).   
*
* You should refer to the license agreement accompanying this Software for 
* additional information regarding your rights and obligations.
*
* SOFTWARE AND DOCUMENTATION ARE PROVIDED �AS IS� WITHOUT WARRANTY OF ANY 
* KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY 
* WARRANTY OF MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A 
* PARTICULAR PURPOSE. IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE 
* LIABLE OR OBLIGATED UNDER CONTRACT, NEGLIGENCE, STRICT LIABILITY, 
* CONTRIBUTION, BREACH OF WARRANTY, OR OTHER LEGAL EQUITABLE THEORY ANY 
* DIRECT OR INDIRECT DAMAGES OR EXPENSES INCLUDING BUT NOT LIMITED TO 
* ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR CONSEQUENTIAL DAMAGES, 
* LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF SUBSTITUTE GOODS, 
* TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES (INCLUDING BUT 
* NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
*
*********************************************************************
* File Description:
*
*  This file defines functions used for demo board hardware
*
* Change History:
*  Rev   Date         Author    Description
*  1.0   2/15/2009    yfy       Initial revision
*  2.0   4/15/2009    yfy       MiMAC and MiApp revision
********************************************************************/

#ifndef _HARDWARE_PROFILE_H
    #define _HARDWARE_PROFILE_H
    
    #include "GenericTypeDefs.h"
    #include "Compiler.h"
    #include "ConfigApp.h"
    #ifdef __PIC32MX__
        #define RCON_SLEEP_MASK (0x8)
        #define RCON_IDLE_MASK  (0x4)
        #define Sleep()         PowerSaveSleep()   
        void Enable_PB_1_2_Interrupts(void);
    #endif
    

    /*********************************************************************/
    // Choose one of the demo board that support the demo out of the box
    /*********************************************************************/
//    #define PICDEMZ
//    #define PIC18_EXPLORER
    //#define EXPLORER16
//    #define EIGHT_BIT_WIRELESS_BOARD

    // there are three ways to use NVM to store data: External EPROM, Data EEPROM and 
    // programming space, with following definitions:
    //  #define USE_EXTERNAL_EEPROM
    //  #define USE_DATA_EEPROM
    //  #define USE_PROGRAMMING_SPACE  
    // Each demo board has defined the method of using NVM, as
    // required by Network Freezer feature.
    
    #if defined(EIGHT_BIT_WIRELESS_BOARD)
        #define CLOCK_FREQ          8000000
        #define USE_EXTERNAL_EEPROM
        
        // Define EEPROM_SHARE_SPI if external EEPROM shares the same 
        // SPI with transceiver
        #define EEPROM_SHARE_SPI
        
        // 8-bit wireless demo board can use the sensor port to
        // connect to either a LCD or a RS232 serial port
        #define SENSOR_PORT_LCD
        #define SENSOR_PORT_UART
        
        #if defined(MRF49XA)
            #define RFIF            INTCON3bits.INT3IF
            #define RFIE            INTCON3bits.INT3IE
            #define PHY_CS          LATCbits.LATC2
            #define PHY_CS_TRIS     TRISCbits.TRISC2
            #define RF_INT_PIN      PORTBbits.RB3
            #define RF_INT_TRIS     TRISBbits.TRISB3
            #define nFSEL           LATEbits.LATE1
            #define nFSEL_TRIS      TRISEbits.TRISE1
            #define FINT            PORTDbits.RD3
            #define FINT_TRIS       TRISDbits.TRISD3
			#define RF_EEnCS_TRIS	TRISEbits.TRISE2
			#define RF_EEnCS		LATEbits.LATE2
        #elif defined(MRF24J40)
            #define RFIF            INTCON3bits.INT1IF
            #define RFIE            INTCON3bits.INT1IE
            #define PHY_CS          LATBbits.LATB3
            #define PHY_CS_TRIS     TRISBbits.TRISB3
            #define RF_INT_PIN      PORTBbits.RB1
            #define RF_INT_TRIS     TRISBbits.TRISB1
            #define PHY_WAKE        LATDbits.LATD3
            #define PHY_WAKE_TRIS   TRISDbits.TRISD3
			#define RF_EEnCS_TRIS	TRISCbits.TRISC2
			#define RF_EEnCS		LATCbits.LATC2
		#elif defined(MRF89XA)
			#define IRQ1_INT_PIN	PORTBbits.RB3
			#define IRQ1_INT_TRIS	TRISBbits.TRISB3
			#define PHY_IRQ1        INTCON3bits.INT3IF
			#define PHY_IRQ1_En     INTCON3bits.INT3IE
			#define Config_nCS      LATEbits.LATE1
		    #define Config_nCS_TRIS TRISEbits.TRISE1
			#define Data_nCS        LATCbits.LATC2
			#define Data_nCS_TRIS   TRISCbits.TRISC2
			#define IRQ0_INT_PIN    PORTDbits.RD3
			#define IRQ0_INT_TRIS   TRISDbits.TRISD3
			#define RF_EEnCS_TRIS	TRISEbits.TRISE0
			#define RF_EEnCS		LATEbits.LATE0
			#define PHY_RESETn      LATDbits.LATB7
			#define PHY_RESETn_TRIS TRISDbits.TRISD7
			//If using both IRQ0 and IRQ1 then uncomment the following lines
			//Also define the PHY_IRQ0 connections
			//#define PHY_IRQ0		
			//#define PHY_IRQ0_En		
			//#define USE_IRQ0_AS_INTERRUPT in ConfigMRF89XA.h
        #endif
        
        #define SPI_SDI             PORTBbits.RB5               
        #define SDI_TRIS            TRISBbits.TRISB5
        #define SPI_SDO             LATCbits.LATC7               
        #define SDO_TRIS            TRISCbits.TRISC7
        #define SPI_SCK             LATBbits.LATB4               
        #define SCK_TRIS            TRISBbits.TRISB4
        
		#if defined(MRF24J40) || defined(MRF49XA)
        	#define PHY_RESETn          LATDbits.LATD7
        	#define PHY_RESETn_TRIS     TRISDbits.TRISD7
        #endif

        #define PUSH_BUTTON_1       PORTBbits.RB0
        #define BUTTON_1_TRIS       TRISBbits.TRISB0
        #define PUSH_BUTTON_2       PORTBbits.RB2
        #define BUTTON_2_TRIS       TRISBbits.TRISB2
        
        
        #define LED_1               LATAbits.LATA2
        #define LED_1_TRIS          TRISAbits.TRISA2
        #define LED_2               LATAbits.LATA3
        #define LED_2_TRIS          TRISAbits.TRISA3
    
        #define EE_nCS_TRIS         TRISDbits.TRISD5
        #define EE_nCS              LATDbits.LATD5
        #define TMRL                TMR0L   
               
        #if defined(SENSOR_PORT_LCD) && defined(SENSOR_PORT_UART)
            //#error  "The Sensor Port can only be used to connect to LCD OR UART board.
        #endif
    
    #endif
    
    #if defined(PIC18_EXPLORER) 
        #define CLOCK_FREQ          10000000
        #define USE_EXTERNAL_EEPROM
        
        // Define EEPROM_SHARE_SPI if external EEPROM shares the same 
        // SPI with transceiver
        #define EEPROM_SHARE_SPI
        
        // Transceiver Configuration
        #if defined(MRF49XA)
            #define RFIF            INTCON3bits.INT3IF
            #define RFIE            INTCON3bits.INT3IE
            #define PHY_CS          LATCbits.LATC2
            #define PHY_CS_TRIS     TRISCbits.TRISC2
            #define RF_INT_PIN      PORTBbits.RB3
            #define RF_INT_TRIS     TRISBbits.TRISB3
            #define nFSEL           LATEbits.LATE3             
            #define nFSEL_TRIS      TRISEbits.TRISE3
            #define FINT		    PORTBbits.RB4               
            #define FINT_TRIS       TRISBbits.TRISB4
        #elif defined(MRF24J40)
            #define RFIF            INTCON3bits.INT1IF
            #define RFIE            INTCON3bits.INT1IE
            #define PHY_CS          LATBbits.LATB3
            #define PHY_CS_TRIS     TRISBbits.TRISB3
            #define RF_INT_PIN      PORTBbits.RB1
            #define RF_INT_TRIS     TRISBbits.TRISB1

            #define PHY_WAKE        LATBbits.LATB4
            #define PHY_WAKE_TRIS   TRISBbits.TRISB4
		#elif defined(MRF89XA)
			
			#define IRQ1_INT_PIN    PORTBbits.RB3
			#define IRQ1_INT_TRIS	TRISBbits.TRISB3
			#define PHY_IRQ1        INTCON3bits.INT3IF
			#define PHY_IRQ1_En     INTCON3bits.INT3IE
			#define IRQ0_INT_TRIS	TRISBbits.TRISB4
			#define IRQ0_INT_PIN    PORTBbits.RB4	
			#define Config_nCS      LATEbits.LATE3
		    #define Config_nCS_TRIS TRISEbits.TRISE3
			#define Data_nCS        LATCbits.LATC2
			#define Data_nCS_TRIS   TRISCbits.TRISC2
			//If using both IRQ0 and IRQ1 then uncomment the following lines
			//Also define the PHY_IRQ0 connections
			//#define PHY_IRQ0		
			//#define PHY_IRQ0_En		
			//#define USE_IRQ0_AS_INTERRUPT in ConfigMRF89XA.h
        #endif
    
        #define SPI_SDI             PORTCbits.RC4               
        #define SDI_TRIS            TRISCbits.TRISC4
        #define SPI_SDO             LATCbits.LATC5               
        #define SDO_TRIS            TRISCbits.TRISC5
        #define SPI_SCK             LATCbits.LATC3               
        #define SCK_TRIS            TRISCbits.TRISC3

        #define PHY_RESETn          LATBbits.LATB5
        #define PHY_RESETn_TRIS     TRISBbits.TRISB5
        
        #define PUSH_BUTTON_1       PORTBbits.RB0
        #define BUTTON_1_TRIS       TRISBbits.TRISB0
        #define PUSH_BUTTON_2       PORTAbits.RA5
        #define BUTTON_2_TRIS       TRISAbits.TRISA5
        
        
        #define LED_1               LATDbits.LATD7
        #define LED_1_TRIS          TRISDbits.TRISD7
        #define LED_2               LATDbits.LATD6
        #define LED_2_TRIS          TRISDbits.TRISD6
    

        #define EE_nCS_TRIS         TRISAbits.TRISA3
        #define EE_nCS              LATAbits.LATA3
        #define TMRL                TMR0L
        
    #endif
    
    
    
    #if defined(PICDEMZ)
        #define CLOCK_FREQ          16000000
        #define USE_DATA_EEPROM
        
        // Transceiver Configuration
        #define RFIF                INTCONbits.INT0IF
        #define RFIE                INTCONbits.INT0IE
        #define PHY_CS              LATCbits.LATC0
        #define PHY_CS_TRIS         TRISCbits.TRISC0
        #define PHY_RESETn          LATCbits.LATC2
        #define PHY_RESETn_TRIS     TRISCbits.TRISC2
        #define PHY_WAKE            LATCbits.LATC1
        #define PHY_WAKE_TRIS       TRISCbits.TRISC1
        
        #define PUSH_BUTTON_1       PORTBbits.RB5
        #define PUSH_BUTTON_2       PORTBbits.RB4
        #define LED_1               LATAbits.LATA0
        #define LED_2               LATAbits.LATA1
        
        #define BUTTON_1_TRIS       TRISBbits.TRISB5
        #define BUTTON_2_TRIS       TRISBbits.TRISB4
        #define LED_1_TRIS          TRISAbits.TRISA0
        #define LED_2_TRIS          TRISAbits.TRISA1
        
        #define RF_INT_PIN          PORTBbits.RB0
        #define RF_INT_TRIS         TRISBbits.TRISB0
        
        #define SPI_SDI             PORTCbits.RC4               
        #define SDI_TRIS            TRISCbits.TRISC4
        #define SPI_SDO             LATCbits.LATC5               
        #define SDO_TRIS            TRISCbits.TRISC5
        #define SPI_SCK             LATCbits.LATC3               
        #define SCK_TRIS            TRISCbits.TRISC3
        
        #define TMRL                TMR0L
    #endif
    
    #if defined(PIC32_WIRELESS_EVAL_BOARD)
        #define CLOCK_FREQ      40000000ul    //for PIC32mx695F512L
//        #define CLOCK_FREQ      80000000ul

        // PIC32MX processor
        #define GetSystemClock()		(CLOCK_FREQ)      // Hz
        #define GetInstructionClock()	(GetSystemClock()/1)
        #define GetPeripheralClock()	(GetInstructionClock()/1)	// Set your divider according to your Peripheral Bus Frequency configuration fuse setting
        
        // Hardware mappings
        //----------------------------
        // LED and Button I/O pins
        //----------------------------
        #define LED_0                LATEbits.LATE5
        #define LED_0_TRIS           TRISEbits.TRISE5
        #define LED_1                LATEbits.LATE6
        #define LED_1_TRIS           TRISEbits.TRISE6
        #define LED_2                LATEbits.LATE7
        #define LED_2_TRIS           TRISEbits.TRISE7

        #define LEDS_OFF()          {LED0_OFF(); LED1_OFF(); LED2_OFF();}
        #define LEDS_ON()           {LED0_ON(); LED1_ON(); LED2_ON();}

        #define LED0_OFF()          {LATECLR = BIT_5;}
        #define LED0_ON()           {LATESET = BIT_5;}
        #define LED0_INV()          LATEINV = BIT_5;
        #define LED1_OFF()          {LATECLR = BIT_6;}
        #define LED1_ON()           {LATESET = BIT_6;}
        #define LED1_INV()          LATEINV = BIT_6;
        #define LED2_OFF()          {LATECLR = BIT_7;}
        #define LED2_ON()           {LATESET = BIT_7;}
        #define LED2_INV()          LATEINV = BIT_7;

        #define BUTTON_0_TRIS        (TRISDbits.TRISD6)	// Ref SW0
        #define	PUSH_BUTTON_0          (PORTDbits.RD6)
        #define BUTTON_1_TRIS        (TRISDbits.TRISD5)	// Ref SW1
        #define	PUSH_BUTTON_1          (PORTDbits.RD5)
        #define BUTTON_2_TRIS        (TRISDbits.TRISD4)	// Ref SW2
        #define	PUSH_BUTTON_2          (PORTDbits.RD4)

        #define SW0                 PUSH_BUTTON_1
        #define SW1                 PUSH_BUTTON_0
        #define SW2                 PUSH_BUTTON_2

        // LCD Pin Definitions
        #define LCD_CS_TRIS         TRISEbits.TRISE0
        #define LCD_CS              LATEbits.LATE0
        #define LCD_RS_TRIS         TRISEbits.TRISE1
        #define LCD_RS              LATEbits.LATE1
        #define LCD_RESET_TRIS      TRISEbits.TRISE2
        #define LCD_RESET           LATEbits.LATE2
        #define LCD_BKLT_TRIS       TRISEbits.TRISE3
        #define LCD_BKLT            LATEbits.LATE3

        #define LCD_SPI_BRG         (SPI3BRG)
        #define LCD_SPICON1         (SPI3CON)
        #define LCD_SPICON1bits     (SPI3CONbits)
        #define LCD_MAX_SPI_FREQ    (100000ul)	// Hz

        // 25LC256 I/O pins
        #define EEPROM_ADDRESS_APPCONFIG    128 //0-127 reserved for data miwi config. network wifi config starts at 128 to 511. Address at 512 used for miwi room info
        #define EEPROM_CS_TRIS		(TRISBbits.TRISB14)
        #define EEPROM_CS_IO		(LATBbits.LATB14)
        #define EEPROM_SCK_TRIS		(TRISDbits.TRISD10)
        #define EEPROM_SDI_TRIS		(TRISCbits.TRISC4)
        #define EEPROM_SDO_TRIS		(TRISDbits.TRISD0)
        #define EEPROM_SPI_IF		(IFS0bits.SPI1RXIF)
        #define EEPROM_SSPBUF		(SPI1BUF)
        #define EEPROM_SPICON1		(SPI1CON)
        #define EEPROM_SPICON1bits	(SPI1CONbits)
        #define EEPROM_SPIBRG		(SPI1BRG)
        #define EEPROM_SPISTAT		(SPI1STAT)
        #define EEPROM_SPISTATbits	(SPI1STATbits)

        //Analog POTENTIOMETER
        #define ANALOG_POT_TRIS      (TRISBbits.TRISB11)
        #define ANALOG_POT_IO        (LATBbits.LATB11)

        //Temp Sensor
        #define ANALOG_TEMP_TRIS    (TRISBbits.TRISB10)
        #define ANALOG_TEMP_IO      (LATBbits.LATB10)

        //SPI Flash
        #define SPIFLASH_CS_TRIS       (TRISDbits.TRISD14)
        #define SPIFLASH_CS_IO         (LATDbits.LATD14)
        #define SPIFLASH_SCK_TRIS      (TRISDbits.TRISD15)
        #define SPIFLASH_SDI_TRIS      (TRISFbits.TRISF2)
        #define SPIFLASH_SDO_TRIS      (TRISFbits.TRISF8)
        #define SPIFLASH_SPI_IF        (IFS0bits.SPI3RXIF)
        #define SPIFLASH_SSPBUF        (SPI3BUF)
        #define SPIFLASH_SPICON1       (SPI3CON)
        #define SPIFLASH_SPICON1bits   (SPI3CONbits)
        #define SPIFLASH_SPIBRG        (SPI3BRG)
        #define SPIFLASH_SPISTAT       (SPI3STAT)
        #define SPIFLASH_SPISTATbits   (SPI3STATbits)
        #define FLASH_MAX_SPI_FREQ        (10000000ul)	// Hz
        // MRF24WG0M in SPI2
        #define WF_CS_TRIS		(TRISGbits.TRISG9)
        #define WF_CS_IO		(LATGbits.LATG9)
        #define WF_SDI_TRIS		(TRISGbits.TRISG7)
        #define WF_SCK_TRIS		(TRISGbits.TRISG6)
        #define WF_SDO_TRIS		(TRISGbits.TRISG8)
        #define WF_RESET_TRIS		(TRISAbits.TRISA4)
        #define WF_RESET_IO		(LATAbits.LATA4)

        #define WF_INT_TRIS	        (TRISEbits.TRISE8)  // INT0
        #define WF_INT_IO		(PORTEbits.RE8)

        #define WF_HIBERNATE_TRIS	(TRISAbits.TRISA5)
        #define	WF_HIBERNATE_IO		(PORTAbits.RA5)

        #define WF_INT_EDGE		(INTCONbits.INT1EP)
        #define WF_INT_IE		(IEC0bits.INT1IE)
        #define WF_INT_IF		(IFS0bits.INT1IF)
        #define WF_INT_IE_CLEAR         IEC0CLR
        #define WF_INT_IF_CLEAR         IFS0CLR
        #define WF_INT_IE_SET           IEC0SET
        #define WF_INT_IF_SET           IFS0SET
        #define WF_INT_BIT              0x00000080
        #define WF_INT_IPCSET           IPC1SET
        #define WF_INT_IPCCLR           IPC1CLR
        #define WF_INT_IPC_MASK         0xFF000000
        #define WF_INT_IPC_VALUE        0x0C000000

        #define WF_SSPBUF		(SPI2BUF)
        #define WF_SPISTAT		(SPI2STAT)
        #define WF_SPISTATbits		(SPI2STATbits)


        #define WF_SPICON1		(SPI2CON)
        #define WF_SPICON1bits		(SPI2CONbits)
        #define WF_SPI_IE_CLEAR         IEC1CLR
        #define WF_SPI_IF_CLEAR         IFS1CLR
        #define WF_SPI_INT_BITS         0x000000e0
        #define WF_SPI_BRG		(SPI2BRG)
        #define WF_MAX_SPI_FREQ         (10000000ul)	// Hz
        //----------------------------
        // MIWI I/O Pins
        //----------------------------
        // There are three ways to use NVM to store data: External EPROM, Data EEPROM and
        // programming space, with following definitions:
          #define USE_EXTERNAL_EEPROM
        //  #define USE_DATA_EEPROM
        //  #define USE_PROGRAMMING_SPACE
        // Each demo board has defined the method of using NVM, as
        // required by Network Freezer feature.
        #if !defined(MRF89XA)
            #define RFIF            IFS0bits.INT2IF
            #define RFIE            IEC0bits.INT2IE
        #endif

        #if defined(MRF89XA)
            #define IRQ1_INT_PIN      PORTEbits.RE9
            #define IRQ1_INT_TRIS     TRISEbits.TRISE9
            #define IRQ0_INT_PIN      PORTAbits.RA14
            #define IRQ0_INT_TRIS     TRISAbits.TRISA14
        #else
            #define RF_INT_PIN      PORTEbits.RE9
            #define RF_INT_TRIS     TRISEbits.TRISE9
        #endif

        // Transceiver Configuration
        #if (defined(MRF24J40) || defined(MRF49XA))
            #define PHY_CS              LATDbits.LATD9
            #define PHY_CS_TRIS         TRISDbits.TRISD9
            #define PHY_RESETn          LATDbits.LATD11
            #define PHY_RESETn_TRIS     TRISDbits.TRISD11
        #endif
        //SPI1 to miwi transceiver
        #define SPI_SDI             PORTCbits.RC4
        #define SDI_TRIS            TRISCbits.TRISC4
        #define SPI_SDO             LATDbits.LATD0
        #define SDO_TRIS            TRISDbits.TRISD0
        #define SPI_SCK             LATDbits.LATD10
        #define SCK_TRIS            TRISDbits.TRISD10

        #if defined(MRF49XA)
            #define nFSEL           LATBbits.LATB1
            #define nFSEL_TRIS      TRISBbits.TRISB1
            #define FINT		    PORTEbits.RE9
            #define FINT_TRIS       TRISEbits.TRISE9
        #elif defined(MRF24J40)
            #define PHY_WAKE        LATBbits.LATB9
            #define PHY_WAKE_TRIS   TRISBbits.TRISB9
        #elif defined(MRF89XA)
            #define PHY_IRQ1        IFS0bits.INT3IF
            #define PHY_IRQ1_En     IEC0bits.INT3IE
            #define PHY_IRQ0		IFS0bits.INT2IF
            #define PHY_IRQ0_En		IEC0bits.INT2IE
            #define PHY_IRQ1_TRIS   TRISAbits.TRISA14
            #define Config_nCS      LATBbits.LATB1
            #define Config_nCS_TRIS TRISBbits.TRISB1
            #define Data_nCS        LATBbits.LATB2
            #define Data_nCS_TRIS   TRISBbits.TRISB2
            #define PHY_RESETn      LATGbits.LATG2
            #define PHY_RESETn_TRIS TRISGbits.TRISG2
        #endif
        // Define SUPPORT_TWO_SPI if external EEPROM use the second SPI
        // port alone, not sharing SPI port with the transceiver
        #define SUPPORT_TWO_SPI
        #define EEPROM_SHARE_SPI

        // External EEPROM SPI chip select pin definition
        #define EE_nCS_TRIS         TRISBbits.TRISB14
        #define EE_nCS              LATBbits.LATB14

        #define TMRL                TMR2

        //----------------------------
        // UART I/O pins
        //----------------------------
        #define BAUD_RATE       (19200)		// bps
        // Select which UART the STACK_USE_UART and STACK_USE_UART2TCP_BRIDGE 
        // options will use.  You can change these to U1BRG, U1MODE, etc. if you 
        // want to use the UART1 module instead of UART2.
        #define UBRG					U2BRG
        #define UMODE					U2MODE
        #define USTA					U2STA
        #define BusyUART()				BusyUART2()
        #define CloseUART()				CloseUART2()
        #define ConfigIntUART(a)		ConfigIntUART2(a)
        #define DataRdyUART()			DataRdyUART2()
        #define OpenUART(a,b,c)			OpenUART2(a,b,c)
        #define ReadUART()				ReadUART2()
        #define WriteUART(a)			WriteUART2(a)
        #define getsUART(a,b,c)			getsUART2(a,b,c)

        #define putsUART(a)			    putsUART2(a)
        #define getcUART()				getcUART2()
        #define putcUART(a)				do{while(BusyUART()); WriteUART(a); while(BusyUART()); }while(0)
        #define putrsUART(a)			putsUART(a)	

        #define UARTTX_TRIS			(TRISFbits.TRISF5)
        #define UARTTX_IO			(PORTFbits.RF5)
        #define UARTRX_TRIS			(TRISFbits.TRISF4)
        #define UARTRX_IO			(PORTFbits.RF4)
        
        

    #endif
    #if defined(EXPLORER16) 
    
        #if defined(__PIC32MX__)
          
            #if !defined(MRF89XA)
            	#define RFIF            IFS0bits.INT1IF
            	#define RFIE            IEC0bits.INT1IE
            #endif
            #define CLOCK_FREQ      64000000
//            #define CLOCK_FREQ      80000000
            #define GetPeripheralClock()	(GetInstructionClock()/1)	// Set your divider according to your Peripheral Bus Frequency configuration fuse setting
        
        #else
            #if !defined(MRF89XA)
                #define RFIF            IFS1bits.INT1IF
                #define RFIE            IEC1bits.INT1IE
            #endif
            #define CLOCK_FREQ      8000000
        #endif
    
        #if defined(__PIC24F__) || defined(__PIC24FK__) || defined(__PIC32MX__)   
            #if defined(MRF89XA)
                #define IRQ1_INT_PIN      PORTEbits.RE9   
                #define IRQ1_INT_TRIS     TRISEbits.TRISE9
                #define IRQ0_INT_PIN      PORTEbits.RE8  
                #define IRQ0_INT_TRIS     TRISEbits.TRISE8
                                                                    //On Explorer 16 with PICtail plus connections we can use both IRQ0 and IRQ1 as interrupt lines
																	//instead of using IRQ0 as port pin and IRQ1 as interrupt pin to the PIC
																	//Enable USE_IRQ0_AS_INTERRUPT in ConfigMRF89XA.h
                
            #else
                #define RF_INT_PIN      PORTEbits.RE8   
                #define RF_INT_TRIS     TRISEbits.TRISE8
            #endif
            
        #elif defined(__dsPIC33F__) || defined(__PIC24H__)
            #define RF_INT_PIN      PORTAbits.RA12
            #define RF_INT_TRIS     TRISAbits.TRISA12
        #endif
        
        #define USE_EXTERNAL_EEPROM
        
        // Transceiver Configuration
		#if (defined(MRF24J40) || defined(MRF49XA))
        #define PHY_CS              LATBbits.LATB2
        #define PHY_CS_TRIS         TRISBbits.TRISB2
        #define PHY_RESETn          LATGbits.LATG2
        #define PHY_RESETn_TRIS     TRISGbits.TRISG2
        #endif

        #define SPI_SDI             PORTFbits.RF7
        #define SDI_TRIS            TRISFbits.TRISF7
        #define SPI_SDO             LATFbits.LATF8 
        #define SDO_TRIS            TRISFbits.TRISF8
        #define SPI_SCK             LATFbits.LATF6 
        #define SCK_TRIS            TRISFbits.TRISF6
        
        #if defined(MRF49XA)
            #define nFSEL           LATBbits.LATB1              
            #define nFSEL_TRIS      TRISBbits.TRISB1
            #define FINT		    PORTEbits.RE9 
            #define FINT_TRIS       TRISEbits.TRISE9
        #elif defined(MRF24J40)
            #define PHY_WAKE        LATGbits.LATG3
            #define PHY_WAKE_TRIS   TRISGbits.TRISG3
		#elif defined(MRF89XA)
				
			#if defined(__PIC32MX__)
				#define PHY_IRQ1        IFS0bits.INT2IF
				#define PHY_IRQ1_En     IEC0bits.INT2IE
				#define PHY_IRQ0		IFS0bits.INT1IF
				#define PHY_IRQ0_En		IEC0bits.INT1IE
			#else
				#define PHY_IRQ1        IFS1bits.INT2IF
				#define PHY_IRQ1_En     IEC1bits.INT2IE
				#define PHY_IRQ0		IFS1bits.INT1IF
				#define PHY_IRQ0_En		IEC1bits.INT1IE
			#endif
			#define PHY_IRQ1_TRIS   TRISEbits.TRISE9
			#define Config_nCS      LATBbits.LATB1
		    #define Config_nCS_TRIS TRISBbits.TRISB1
			#define Data_nCS        LATBbits.LATB2
			#define Data_nCS_TRIS   TRISBbits.TRISB2
			#define PHY_RESETn      LATGbits.LATG2
			#define PHY_RESETn_TRIS TRISGbits.TRISG2
									                                
																	//instead of using IRQ0 as port pin and IRQ1 as interrupt pin to the PIC
        #endif
        
        #define PUSH_BUTTON_1       PORTDbits.RD6
        #define PUSH_BUTTON_2       PORTDbits.RD7
        #define LED_1               LATAbits.LATA7
        #define LED_2               LATAbits.LATA6
        #define LED_3               LATAbits.LATA5
        #define LED_7               LATAbits.LATA1
        #define LED_8               LATAbits.LATA0
        
        #define BUTTON_1_TRIS       TRISDbits.TRISD6
        #define BUTTON_2_TRIS       TRISDbits.TRISD7
        #define LED_1_TRIS          TRISAbits.TRISA7
        #define LED_2_TRIS          TRISAbits.TRISA6
        #define LED_3_TRIS          TRISAbits.TRISA5
        #define LED_7_TRIS          TRISAbits.TRISA1
        #define LED_8_TRIS          TRISAbits.TRISA0
        
        // Define SUPPORT_TWO_SPI if external EEPROM use the second SPI
        // port alone, not sharing SPI port with the transceiver
        #define SUPPORT_TWO_SPI
        
        // External EEPROM SPI chip select pin definition
        #define EE_nCS_TRIS         TRISDbits.TRISD12
        #define EE_nCS              LATDbits.LATD12
        
        #define TMRL                TMR2
        
    #endif
    


    
    #if defined(PICDEMZ)
        #define CLOCK_FREQ          16000000
        #define USE_DATA_EEPROM
        
        // Transceiver Configuration
        #define RFIF                INTCONbits.INT0IF
        #define RFIE                INTCONbits.INT0IE
        #define PHY_CS              LATCbits.LATC0
        #define PHY_CS_TRIS         TRISCbits.TRISC0
        #define PHY_RESETn          LATCbits.LATC2
        #define PHY_RESETn_TRIS     TRISCbits.TRISC2
        #define PHY_WAKE            LATCbits.LATC1
        #define PHY_WAKE_TRIS       TRISCbits.TRISC1
        
        #define PUSH_BUTTON_1       PORTBbits.RB5
        #define PUSH_BUTTON_2       PORTBbits.RB4
        #define LED_1               LATAbits.LATA0
        #define LED_2               LATAbits.LATA1
        
        #define BUTTON_1_TRIS       TRISBbits.TRISB5
        #define BUTTON_2_TRIS       TRISBbits.TRISB4
        #define LED_1_TRIS          TRISAbits.TRISA0
        #define LED_2_TRIS          TRISAbits.TRISA1
        
        #define RF_INT_PIN          PORTBbits.RB0
        #define RF_INT_TRIS         TRISBbits.TRISB0
        
        #define SPI_SDI             PORTCbits.RC4               
        #define SDI_TRIS            TRISCbits.TRISC4
        #define SPI_SDO             LATCbits.LATC5               
        #define SDO_TRIS            TRISCbits.TRISC5
        #define SPI_SCK             LATCbits.LATC3               
        #define SCK_TRIS            TRISCbits.TRISC3
        
        #define TMRL                TMR0L
    #endif        

    // Following definitions are used for LCD display on the demo board
    #if defined(EXPLORER16)
    
    	#define LCD_DATA0_TRIS		(TRISEbits.TRISE0)		// Multiplexed with LED6
    	#define LCD_DATA0_IO		(LATEbits.LATE0)
    	#define LCD_DATA1_TRIS		(TRISEbits.TRISE1)
    	#define LCD_DATA1_IO		(LATEbits.LATE1)
    	#define LCD_DATA2_TRIS		(TRISEbits.TRISE2)
    	#define LCD_DATA2_IO		(LATEbits.LATE2)
    	#define LCD_DATA3_TRIS		(TRISEbits.TRISE3)		// Multiplexed with LED3
    	#define LCD_DATA3_IO		(LATEbits.LATE3)
    	#define LCD_DATA4_TRIS		(TRISEbits.TRISE4)		// Multiplexed with LED2
    	#define LCD_DATA4_IO		(LATEbits.LATE4)
    	#define LCD_DATA5_TRIS		(TRISEbits.TRISE5)
    	#define LCD_DATA5_IO		(LATEbits.LATE5)
    	#define LCD_DATA6_TRIS		(TRISEbits.TRISE6)
    	#define LCD_DATA6_IO		(LATEbits.LATE6)
    	#define LCD_DATA7_TRIS		(TRISEbits.TRISE7)
    	#define LCD_DATA7_IO		(LATEbits.LATE7)
    	#define LCD_RD_WR_TRIS		(TRISDbits.TRISD5)
    	#define LCD_RD_WR_IO		(LATDbits.LATD5)
    	#define LCD_RS_TRIS			(TRISBbits.TRISB15)
    	#define LCD_RS_IO			(LATBbits.LATB15)
    	#define LCD_E_TRIS			(TRISDbits.TRISD4)
    	#define LCD_E_IO			(LATDbits.LATD4)
    
    #elif defined(PIC18_EXPLORER)
    
        #define LCD_CS_TRIS         (TRISAbits.TRISA2)
        #define LCD_CS              (LATAbits.LATA2)
        #define LCD_RESET_TRIS      (TRISFbits.TRISF6)
        #define LCD_RESET           (LATFbits.LATF6)
    
    #elif defined(MIWI_DEMO_KIT)
        #include "bsp_wireless_eval_board/BSP_MiWiDemoBd.h"
    #elif defined(WIRELESS_EVAL_BOARD)
        #include "bsp_wireless_eval_board/BSP_PC32MX_WirelessEvalBoard.h"
    #elif defined(EIGHT_BIT_WIRELESS_BOARD)
    
        #define SUPPORT_TWO_SPI
        
        #define SPInCS_TRIS         TRISCbits.TRISC6
        #define SPInCS_LAT	        LATCbits.LATC6
    	#define	SPISSPSTAT	        SSP2STAT
    	#define SPISSPCON	        SSP2CON1
    	#define SPISSPBUF	        SSP2BUF
    	#define SPIWCOL		        SSP2CON1bits.WCOL
    	#define SPISSPIE	        PIE3bits.SSP2IE
    	#define SPISSPIF	        PIR3bits.SSP2IF
    	
    #endif
    

    // Following definition is for delay functionality
    #if defined(__18CXX)
        #define GetInstructionClock()	(CLOCK_FREQ/4)
    #elif defined(__C30__) 
        #define GetInstructionClock()	(CLOCK_FREQ/2)
    #elif defined(__PIC32MX__)
        #if !defined(PIC32_WIRELESS_EVAL_BOARD) && !defined(WIRELESS_EVAL_BOARD)  
            #define GetInstructionClock()	(CLOCK_FREQ)
        #endif
    #endif

    BYTE ButtonPressed(void);
    void BoardInit(void);

    void LCDDisplay(char *, BYTE, BOOL);
    void LCDTRXCount(BYTE, BYTE);

    void PrepareWakeup(void);
    void AfterWakeup(void);
    
#endif

