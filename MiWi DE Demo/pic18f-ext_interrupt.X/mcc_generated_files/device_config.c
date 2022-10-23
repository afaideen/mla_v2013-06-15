/**
  @Generated PIC10 / PIC12 / PIC16 / PIC18 MCUs Source File

  @Company:
    Microchip Technology Inc.

  @File Name:
    mcc.c

  @Summary:
    This is the device_config.c file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description:
    This header file provides implementations for driver APIs for all modules selected in the GUI.
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.8
        Device            :  PIC18F46J13
        Driver Version    :  2.00
    The generated drivers are tested against the following:
        Compiler          :  XC8 2.36 and above or later
        MPLAB             :  MPLAB X 6.00
*/

/*
    (c) 2018 Microchip Technology Inc. and its subsidiaries. 
    
    Subject to your compliance with these terms, you may use Microchip software and any 
    derivatives exclusively with Microchip products. It is your responsibility to comply with third party 
    license terms applicable to your use of third party software (including open source software) that 
    may accompany Microchip software.
    
    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER 
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY 
    IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS 
    FOR A PARTICULAR PURPOSE.
    
    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP 
    HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO 
    THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL 
    CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT 
    OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS 
    SOFTWARE.
*/

// Configuration bits: selected in the GUI
#ifdef _18F46J13
// CONFIG1L
#pragma config WDTEN = OFF    // Watchdog Timer->Disabled - Controlled by SWDTEN bit
#pragma config PLLDIV = 2    // 96MHz PLL Prescaler Selection (PLLSEL=0)->Divide by 2 (8 MHz oscillator input)
#pragma config CFGPLLEN = OFF    // PLL Enable Configuration Bit->PLL Disabled
#pragma config STVREN = OFF    // Stack Overflow/Underflow Reset->Disabled
#pragma config XINST = OFF    // Extended Instruction Set->Disabled

// CONFIG1H
#pragma config CP0 = OFF    // Code Protect->Program memory is not code-protected

// CONFIG2L
#pragma config OSC = INTOSCPLL    // Oscillator->INTOSCPLL
#pragma config SOSCSEL = DIG    // T1OSC/SOSC Power Selection Bits->Digital (SCLKI) mode selected
#pragma config CLKOEC = OFF    // EC Clock Out Enable Bit ->CLKO output disabled on the RA6 pin
#pragma config FCMEN = ON    // Fail-Safe Clock Monitor->Enabled
#pragma config IESO = ON    // Internal External Oscillator Switch Over Mode->Enabled

// CONFIG2H
#pragma config WDTPS = 1024    // Watchdog Postscaler->1:1024

// CONFIG3L
#pragma config DSWDTOSC = INTOSCREF    // DSWDT Clock Select->DSWDT uses INTRC
#pragma config RTCOSC = T1OSCREF    // RTCC Clock Select->RTCC uses T1OSC/T1CKI
#pragma config DSBOREN = ON    // Deep Sleep BOR->Enabled
#pragma config DSWDTEN = ON    // Deep Sleep Watchdog Timer->Enabled
#pragma config DSWDTPS = G2    // Deep Sleep Watchdog Postscaler->1:2,147,483,648 (25.7 days)

// CONFIG3H
#pragma config IOL1WAY = ON    // IOLOCK One-Way Set Enable bit->The IOLOCK bit (PPSCON<0>) can be set once
#pragma config ADCSEL = BIT10    // ADC 10 or 12 Bit Select->10 - Bit ADC Enabled
#pragma config PLLSEL = PLL4X    // PLL Selection Bit->Selects 4x PLL
#pragma config MSSP7B_EN = MSK7    // MSSP address masking->7 Bit address masking mode

// CONFIG4L
#pragma config WPFP = PAGE_63    // Write/Erase Protect Page Start/End Location->Write Protect Program Flash Page 63
#pragma config WPCFG = OFF    // Write/Erase Protect Configuration Region ->Configuration Words page not erase/write-protected

// CONFIG4H
#pragma config WPDIS = OFF    // Write Protect Disable bit->WPFP<6:0>/WPEND region ignored
#pragma config WPEND = PAGE_WPFP    // Write/Erase Protect Region Select bit (valid when WPDIS = 0)->Pages WPFP<6:0> through Configuration Words erase/write protected
#elif _18F46J50
//PLLDIV = 2, Config Bit Settings to get 16 MHz: Internal 8 MHz / 2 = 4 * 12 = 48 / 3 = 16
//#pragma config OSC = INTOSCPLL, WDTEN = OFF, XINST = ON, WDTPS = 2048, PLLDIV = 2, CPUDIV = OSC3_PLL3 //~8s watchdog
//#pragma config OSC = INTOSCPLL, WDTEN = OFF, XINST = ON, WDTPS = 512, PLLDIV = 2, CPUDIV = OSC3_PLL3 //~2s watchdog
//#pragma config OSC = INTOSCPLL, WDTEN = OFF, XINST = ON, WDTPS = 1024, PLLDIV = 2, CPUDIV = OSC3_PLL3 //~4s watchdog
//#pragma config OSC = INTOSCPLL, WDTEN = OFF, XINST = OFF, WDTPS = 2048, PLLDIV = 2, CPUDIV = OSC3_PLL3 //~8s watchdog

//PLLDIV = 4,  Config Bit Settings to get 8 MHz: Internal 8 MHz / 4 = 2 * 12 = 24 / 3 = 8
//#pragma config OSC = INTOSCPLL, WDTEN = OFF, XINST = OFF, WDTPS = 2048, PLLDIV = 4, CPUDIV = OSC3_PLL3 //~8s watchdog

// CONFIG1L
#pragma config WDTEN = OFF      // Watchdog Timer (Disabled - Controlled by SWDTEN bit)
#pragma config PLLDIV = 4//2       // PLL Prescaler Selection bits (Divide by 2 (8 MHz oscillator input))
#pragma config STVREN = OFF      // Stack Overflow/Underflow Reset (Enabled)
#pragma config XINST = OFF      // Extended Instruction Set (Disabled)

// CONFIG1H
#pragma config CPUDIV = OSC3_PLL3// CPU System Clock Postscaler (CPU system clock divide by 3)
#pragma config CP0 = OFF        // Code Protect (Program memory is not code-protected)

// CONFIG2L
#pragma config OSC = INTOSCPLL  // Oscillator (INTOSCPLL)
#pragma config T1DIG = ON       // T1OSCEN Enforcement (Secondary Oscillator clock source may be selected)
#pragma config LPT1OSC = OFF    // Low-Power Timer1 Oscillator (High-power operation)
#pragma config FCMEN = ON       // Fail-Safe Clock Monitor (Enabled)
#pragma config IESO = ON        // Internal External Oscillator Switch Over Mode (Enabled)

// CONFIG2H
#pragma config WDTPS = 2048     // Watchdog Postscaler (1:2048)

// CONFIG3L
#pragma config DSWDTOSC = INTOSCREF// DSWDT Clock Select (DSWDT uses INTRC)
#pragma config RTCOSC = T1OSCREF// RTCC Clock Select (RTCC uses T1OSC/T1CKI)
#pragma config DSBOREN = ON     // Deep Sleep BOR (Enabled)
#pragma config DSWDTEN = ON     // Deep Sleep Watchdog Timer (Enabled)
#pragma config DSWDTPS = G2     // Deep Sleep Watchdog Postscaler (1:2,147,483,648 (25.7 days))

// CONFIG3H
#pragma config IOL1WAY = ON     // IOLOCK One-Way Set Enable bit (The IOLOCK bit (PPSCON<0>) can be set once)
#pragma config MSSP7B_EN = MSK7 // MSSP address masking (7 Bit address masking mode)

// CONFIG4L
#pragma config WPFP = PAGE_63   // Write/Erase Protect Page Start/End Location (Write Protect Program Flash Page 63)
#pragma config WPEND = PAGE_WPFP// Write/Erase Protect Region Select (valid when WPDIS = 0) (Page WPFP<5:0> through Configuration Words erase/write protected)
#pragma config WPCFG = OFF      // Write/Erase Protect Configuration Region (Configuration Words page not erase/write-protected)

// CONFIG4H
#pragma config WPDIS = OFF      // Write Protect Disable bit (WPFP<5:0>/WPEND region ignored)

#endif