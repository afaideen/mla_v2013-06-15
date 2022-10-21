/*****************************************************************************
 *
 *              BSP_8BitWirelessBd.c -- Hardware Profile
 *
 *****************************************************************************
 * FileName:        BSP_MiWiCardDemoBd.c
 * Dependencies:
 * Processor:       PIC18
 * Compiler:        C18 02.20.00 or higher
 * Linker:          MPLINK 03.40.00 or higher
 * Company:         Microchip Technology Incorporated
 *
 * Software License Agreement
 *
 * Copyright � 2007-2011 Microchip Technology Inc.  All rights reserved.
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
 *****************************************************************************
 * File Description:
 *
 *   This file provides configuration and basic hardware functionality 
 *   based on chosen hardware demo boards.
 *
* Change History:
*  Rev   Date         Author    Description
*  1.0   2/02/2011    ccs       Initial revision
********************************************************************/
#include "SystemProfile.h"
#include "Compiler.h"
#include "WirelessProtocols/Console.h"
#include "WirelessProtocols/SymbolTime.h"
#include "LCD_ST7032.h"
#include "HardwareProfile.h"

#if defined(WIRELESS_EVAL_BOARD)
void init_atod(void);
void ConfigureLCD_SPI(void);

//Config Bit Settings for speed 40Mhz 
//#pragma config FNOSC = FRCPLL, FPLLIDIV = DIV_2, FPLLMUL = MUL_20, FPLLODIV = DIV_2, FPBDIV = DIV_1, FWDTEN = OFF, POSCMOD = OFF, FSOSCEN = OFF, CP = OFF

//running at 64Mhz
// #define CLOCK_FREQ      64000000ul
#pragma config FPLLMUL = MUL_16, FPLLIDIV = DIV_2, FPLLODIV = DIV_1, FWDTEN = OFF
#pragma config POSCMOD = XT, FNOSC = PRIPLL, FPBDIV = DIV_4, WDTPS = PS8192

#define DEBOUNCE_TIME       0x00001FFF
#define SWITCH_NOT_PRESSED  0
#define SWITCH0_PRESSED     1
#define SWITCH1_PRESSED     2

BOOL switch0Pressed;
MIWI_TICK switch0PressTime;
BOOL switch1Pressed;
MIWI_TICK switch1PressTime;


/*************************************************************************/
// The variable myChannel defines the channel that the device
// is operate on. This variable will be only effective if energy scan
// (ENABLE_ED_SCAN) is not turned on. Once the energy scan is turned
// on, the operating channel will be one of the channels available with
// least amount of energy (or noise).
/*************************************************************************/

//// MiWi Possible channel numbers are from 11 to 26 for MRF24J40
//BYTE myChannel = 11;
//
//#define MiWi_CHANNEL        MiWi_CHANNEL_11
//
//#define MiWi_CHANNEL_26     0x04000000
//#define MiWi_CHANNEL_23     0x00800000
//#define MiWi_CHANNEL_21     0x00200000
//#define MiWi_CHANNEL_19     0x00080000
//#define MiWi_CHANNEL_15     0x00008000
//#define MiWi_CHANNEL_13     0x00002000
//#define MiWi_CHANNEL_11     0x00000800

#define PIC32MX_SPI1_SDO_SCK_MASK_VALUE      (0x00000140)
#define PIC32MX_SPI1_SDI_MASK_VALUE          (0x00000080)
//#define PIC32MX_INT2_MASK_VALUE              (0x00000010)
//#define PIC32MX_INT1_MASK_VALUE              (0x00000008)
#define PIC32MX_INT1_MASK_VALUE              (0x00000100)
/* MAX SPI CLOCK FREQ SUPPORTED FOR MIWI TRANSCIEVER */
#define MAX_SPI_CLK_FREQ_FOR_P2P             (10000000) //For MRF24J40 10MHz, for MRF89XA 1MHz
/****************************************************************************
  Function:
    static void InitializeBoard(void)

  Description:
    This routine initializes the hardware.  It is a generic initialization
    routine for many of the Microchip development boards, using definitions
    in HardwareProfile.h to determine specific initialization.

  Precondition:
    None

  Parameters:
    None - None

  Returns:
    None

  Remarks:
    None
 ***************************************************************************/
void BoardInit(void) {
    // WiFi Module hardware Initialization handled by Library

    // Enable multi-vectored interrupts
    INTEnableSystemMultiVectoredInt();

    // Enable optimal performance
    SYSTEMConfigPerformance(GetSystemClock());
//    mOSCSetPBDIV(OSC_PB_DIV_1); // Use 1:1 CPU Core:Peripheral clocks
    mOSCSetPBDIV(OSC_PB_DIV_4); // Use 1:4 CPU Core:Peripheral clocks

    // Disable JTAG port so we get our I/O pins back, but first
    // wait 50ms so if you want to reprogram the part with
    // JTAG, you'll still have a tiny window before JTAG goes away.
    // The PIC32 Starter Kit debuggers use JTAG and therefore must not
    // disable JTAG.
    DelayMs(50);
    DDPCONbits.JTAGEN = 0;

    // LEDs
    LEDS_OFF();
    mPORTESetPinsDigitalOut(BIT_5 | BIT_6 | BIT_7);

    // Switches
    mPORTDSetPinsDigitalIn(BIT_4 | BIT_5 | BIT_6);
    ConfigCNPullups(CN13_PULLUP_ENABLE | CN14_PULLUP_ENABLE | CN15_PULLUP_ENABLE);

    // LCD
    mPORTESetPinsDigitalOut(BIT_0 | BIT_1 | BIT_2 | BIT_3);
    //Configure LCD SPI pins
    mPORTFSetPinsDigitalOut(BIT_8);
    mPORTDSetPinsDigitalOut(BIT_15);

    //SPI Flash
    mPORTDSetPinsDigitalOut(BIT_14);


    //UART
    mPORTFSetPinsDigitalOut(BIT_5);
    mPORTFSetPinsDigitalIn(BIT_4);

    //MiWi
#if defined(MRF24J40) || defined(MRF49XA)
    PHY_CS = 1;
    mPORTDSetPinsDigitalOut(BIT_9);

    PHY_RESETn = 1;
    mPORTDSetPinsDigitalOut(BIT_11);
#endif

#if defined(MRF49XA)
    nFSEL_TRIS = 0;
    FINT_TRIS = 1;

    nFSEL = 1;
#elif defined(MRF24J40)
    PHY_WAKE = 1;
    mPORTBSetPinsDigitalOut(BIT_9);
#else
    Data_nCS_TRIS = 0;
    Config_nCS_TRIS = 0;
    Data_nCS = 1;
    Config_nCS = 1;
    IRQ1_INT_TRIS = 1;
    IRQ0_INT_TRIS = 1;

#endif

    /* Set the Port Directions of SDO, SDI, Clock & Slave Select Signal */
    /* Set SCK port pin to output */
    mPORTDSetPinsDigitalOut(BIT_10);
    /* Set SDO port pin to output */
    mPORTDSetPinsDigitalOut(BIT_0);
    /* Set SDI port pin to input */
    mPORTCSetPinsDigitalIn(BIT_4);
    /* Set INT1, INT2 port pins to input */
    mPORTESetPinsDigitalIn(BIT_8 | BIT_9);

    /* Clear SPI1CON register */
    SPI1CONCLR = 0xFFFFFFFF;

#ifdef HARDWARE_SPI
    unsigned int pbFreq;

    /* Enable SPI1, Set to Master Mode & Set CKE bit : Serial output data changes on transition
      from active clock state to Idle clock state */
    SPI1CON = 0x00008120;
    /* Peripheral Bus Frequency = System Clock / PB Divider */
    pbFreq = (DWORD) CLOCK_FREQ / (1 << mOSCGetPBDIV());

    /* PB Frequency can be maximum 40 MHz */
    if (pbFreq > (2 * MAX_SPI_CLK_FREQ_FOR_P2P)) {
        {
            unsigned int SPI_Clk_Freq;

            unsigned char SPI_Brg1 = 1;

            //For the SPI1
            /* Continue the loop till you find SPI Baud Rate Register Value */
            while (1) {
                /* SPI Clock Calculation as per PIC32 Manual */
                SPI_Clk_Freq = pbFreq / (2 * (SPI_Brg1 + 1));

                if (SPI_Clk_Freq <= MAX_SPI_CLK_FREQ_FOR_P2P) {
                    break;
                }

                SPI_Brg1++;
            }



            mSpiChnSetBrg(1, SPI_Brg1);

        }
    } else {
        /* Set SPI1 Baud Rate */
        mSpiChnSetBrg(1, 0);

    }

#endif

    /* Set the Interrupt Priority */
    mINT2SetIntPriority(4);

#if defined(MRF89XA)
    mINT1SetIntPriority(4);
#endif

    /* Set Interrupt Subpriority Bits for INT2 */
    mINT2SetIntSubPriority(2);

#if defined(MRF89XA)
    mINT2SetIntSubPriority(1);
#endif

    /* Set INT2 to falling edge */
    mINT2SetEdgeMode(0);

#if defined(MRF89XA)
    mINT1SetEdgeMode(1);
    mINT2SetEdgeMode(1);
#endif

    /* Enable INT2 */
    mINT2IntEnable(1);

#if defined(MRF89XA)
    mINT2IntEnable(1);
#endif

    /* Enable Multi Vectored Interrupts */
    //    INTEnableSystemMultiVectoredInt();

#if defined(MRF89XA)
    PHY_IRQ1 = 0;
    PHY_IRQ0 = 0;
    PHY_RESETn_TRIS = 1;
#else
    RFIF = 0;
    if (RF_INT_PIN == 0) {
        RFIF = 1;
    }
#endif

//    // Initialize the EEPROM
//    XEEInit();
    /*******************************************************************/    
    // Configure EEProm Pins
    /*******************************************************************/
    RF_EEnCS = 1;
    RF_EEnCS_TRIS = 0;
    
    //SPI Flash
    EE_nCS = 1;
    EE_nCS_TRIS = 0;

    // UART Initialization
#if defined(STACK_USE_UART)
    UARTTX_TRIS = 0;
    UARTRX_TRIS = 1;
    UMODE = 0x8000; // Set UARTEN.  Note: this must be done before setting UTXEN
    USTA = 0x00001400; // RXEN set, TXEN set
#define CLOSEST_UBRG_VALUE ((GetPeripheralClock()+8ul*BAUD_RATE)/16/BAUD_RATE-1)
#define BAUD_ACTUAL (GetPeripheralClock()/16/(CLOSEST_UBRG_VALUE+1))

#define BAUD_ERROR ((BAUD_ACTUAL > BAUD_RATE) ? BAUD_ACTUAL-BAUD_RATE : BAUD_RATE-BAUD_ACTUAL)
#define BAUD_ERROR_PRECENT	((BAUD_ERROR*100+BAUD_RATE/2)/BAUD_RATE)
#if (BAUD_ERROR_PRECENT > 3)
#warning UART frequency error is worse than 3%
#elif (BAUD_ERROR_PRECENT > 2)
#warning UART frequency error is worse than 2%
#endif

    UBRG = CLOSEST_UBRG_VALUE;
#endif
#ifdef ENABLE_CONSOLE
    ConsoleInit();
#endif
    init_atod();
    
    /*******************************************************************/
    // Initialize the LCD
    /*******************************************************************/

    ConfigureLCD_SPI();
    LCDInit();

}

void ConfigureLCD_SPI() {
    LCD_SPI_BRG = (GetPeripheralClock() - 1ul) / 2ul / LCD_MAX_SPI_FREQ;
    LCD_SPICON1 = 0x00000260; // sample at end, data change idle to active, clock idle high, master
    LCD_SPICON1bits.ON = 1;
}

void ConfigureFlash_SPI() {
    SPIFLASH_SPIBRG = (GetPeripheralClock() - 1ul) / 2ul / FLASH_MAX_SPI_FREQ;
    SPIFLASH_SPICON1 = 0x00008120; // sample in the middle, data change idle to active,  master
    SPIFLASH_SPICON1bits.ON = 1;
}

void init_atod(void)
{
//	TRISBbits.TRISB4 = 1;
//	TRISBbits.TRISB5 = 1;
//	AD1PCFGbits.PCFG0 = 0;
//	AD1PCFGbits.PCFG1 = 0;
//	AD1PCFGbits.PCFG2 = 0;
//	AD1PCFGbits.PCFG3 = 0;
//	AD1PCFGbits.PCFG4 = 0;
//	AD1PCFGbits.PCFG5 = 0;
//	
//	AD1PCFGbits.PCFG8 = 0;
//	AD1PCFGbits.PCFG9 = 0;
    AD1PCFGbits.PCFG10 = 0; //AN10 : temperature
	AD1PCFGbits.PCFG11 = 0; //AN11 : potentiometer
//	AD1PCFGbits.PCFG14 = 0;
//	AD1PCFGbits.PCFG15 = 0;
	// ADC
	AD1CHS = 0;	
//	AD1CON1 = 0x84E4;			// Turn on, auto sample start, auto-convert, 12 bit mode (on parts with a 12bit A/D)
    AD1CON1bits.ON = 1;
    AD1CON1bits.SIDL = 0;
    AD1CON1bits.FORM = 0b100;
    AD1CON1bits.SSRC = 0b111;
    AD1CON1bits.CLRASAM = 0;
    AD1CON1bits.ASAM = 1;
    AD1CON1bits.SAMP = 0;
    AD1CON1bits.DONE = 0;
    
//	AD1CON2 = 0x0404;			// AVdd, AVss, int every 2 conversions, MUXA only, scan
	AD1CON2bits.VCFG = 0b000;
	AD1CON2bits.OFFCAL = 0;
	AD1CON2bits.CSCNA = 1;
	AD1CON2bits.BUFS = 0;
//	AD1CON2bits.SMPI = 0xff;
	AD1CON2bits.SMPI = 0b1111;
	AD1CON2bits.BUFM = 0;
	AD1CON2bits.ALTS = 0;
    
//	AD1CON3 = 0x1003;			// 16 Tad auto-sample, Tad = 3*Tcy
    AD1CON3bits.ADRC = 0;
    AD1CON3bits.SAMC = 0b10000;
    AD1CON3bits.ADCS = 0b00000011;
    
    
//	AD1CSSL = 0xffff;
	AD1CSSL = 0x0;
	AD1CSSLbits.CSSL10 = 1;
	AD1CSSLbits.CSSL11 = 1;
}


/*********************************************************************
 * Function:        BYTE ButtonPressed(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          Byte to indicate which button has been pressed. 
 *                  Return 0 if no button pressed.
 *
 * Side Effects:    
 *
 * Overview:        This function check if any button has been pressed
 *
 * Note:            
 ********************************************************************/
BYTE ButtonPressed(void)
{
    BYTE result = SWITCH_NOT_PRESSED;
    MIWI_TICK tickDifference, t;


    if (SW1_PORT == 0)
    {
        switch0PressTime = MiWi_TickGet();
        if(SW1_PORT == 0)
        {
            while(SW1_PORT == 0);
             //get the current time
            t = MiWi_TickGet();

             //if the button has been pressed long enough
            tickDifference.Val = MiWi_TickGetDiff(t,switch0PressTime);
            if(tickDifference.Val > DEBOUNCE_TIME)
                result = SWITCH0_PRESSED;
        }    
        else
            result = SWITCH_NOT_PRESSED;
    }
    
    if (SW2_PORT == 0)
    {
        switch1PressTime = MiWi_TickGet();
        if(SW2_PORT == 0)
        {
            while(SW2_PORT == 0);
             //get the current time
            t = MiWi_TickGet();

             //if the button has been pressed long enough
            tickDifference.Val = MiWi_TickGetDiff(t,switch1PressTime);
            if(tickDifference.Val > DEBOUNCE_TIME)
                result = SWITCH1_PRESSED;
        }    
        else
            result = SWITCH_NOT_PRESSED;
    }
    
    return result;
}
  

void UserInterruptHandler(void)
{
/*    if( PIR3bits.SSP2IF )
    {
        PIR3bits.SSP2IF = 0;
        DelayMs(5);
    }  */ 
}

/*********************************************************************
 * Function:        void LCDTRXCount(BYTE txCount, BYTE rxCount)
 *
 * PreCondition:    LCD has been initialized
 *
 * Input:           txCount - the total number of transmitted messages
 *                  rxCount - the total number of received messages
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This function display the total numbers of TX and
 *                  RX messages on the LCD, if applicable.
 *
 * Note:            This routine is only effective if Explorer16 or
 *                  PIC18 Explorer demo boards are used
 ********************************************************************/
void LCDTRXCount(BYTE txCount, BYTE rxCount)
{
    
    LCDErase();
    #if defined(PIC18_EXPLORER) || defined(EIGHT_BIT_WIRELESS_BOARD)
        sprintf((char *)LCDText, (far rom char*)"TX Messages: %3d", txCount);
        sprintf((char *)&(LCDText[16]), (far rom char*)"RX Messages: %3d", rxCount);
    #else
        sprintf((char *)LCDText, (const char*)"TX Messages: %d", txCount);
        sprintf((char *)&(LCDText[16]), (const char*)"RX Messages: %d", rxCount);
    #endif
    LCDUpdate();    
   
}

#endif  //WIRELESS_EVAL_BOARD
