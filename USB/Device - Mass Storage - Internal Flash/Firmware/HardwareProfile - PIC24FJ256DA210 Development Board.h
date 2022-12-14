/********************************************************************
 FileName:     	HardwareProfile - PIC24FJ256DA210 Development Board.h
 Dependencies:  See INCLUDES section
 Processor:     PIC24FJ256GB110
 Hardware:      PIC24FJ256GB110 PIM
 Compiler:      Microchip C30
 Company:       Microchip Technology, Inc.

 Software License Agreement:

 The software supplied herewith by Microchip Technology Incorporated
 (the ?Company?) for its PIC? Microcontroller is intended and
 supplied to you, the Company?s customer, for use solely and
 exclusively on Microchip PIC Microcontroller products. The
 software is owned by the Company and/or its supplier, and is
 protected under applicable copyright laws. All rights are reserved.
 Any use in violation of the foregoing restrictions may subject the
 user to criminal sanctions under applicable laws, as well as to
 civil liability for the breach of the terms and conditions of this
 license.

 THIS SOFTWARE IS PROVIDED IN AN ?AS IS? CONDITION. NO WARRANTIES,
 WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED
 TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE COMPANY SHALL NOT,
 IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR
 CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.

********************************************************************
 File Description:

 Change History:
  Rev   Date         Description
  ?.?   09/15/2008   Initial revision
********************************************************************/

#ifndef HARDWARE_PROFILE_PIC24FJ256DA210_DEV_BOARD_H
#define HARDWARE_PROFILE_PIC24FJ256DA210_DEV_BOARD_H

    /*******************************************************************/
    /******** USB stack hardware selection options *********************/
    /*******************************************************************/
    //This section is the set of definitions required by the MCHPFSUSB
    //  framework.  These definitions tell the firmware what mode it is
    //  running in, and where it can find the results to some information
    //  that the stack needs.
    //These definitions are required by every application developed with
    //  this revision of the MCHPFSUSB framework.  Please review each
    //  option carefully and determine which options are desired/required
    //  for your application.

    //--------------------------------------------------------------------------
    //Uncomment USE_SELF_POWER_SENSE_IO definition if using self/bus power 
    //sensing feature.  Feature is not needed in purely bus powered USB designs.  
    //#define USE_SELF_POWER_SENSE_IO
    #if defined(USE_SELF_POWER_SENSE_IO)
        //If using the USE_SELF_POWER_SENSE_IO feature, select an I/O pin to configure and use for this purpose.
        #define tris_self_power     TRISAbits.TRISA2    //(replace with real pin being used in the application for this purpose)
        #define self_power          PORTAbits.RA2       //(replace with real pin being used in the application for this purpose)
    #else
        #define self_power          0   //When 0, makes USB stack always respond to GET_STATUS requests with "bus powered".  See USBStdGetStatusHandler() in usb_device.c.
    #endif
    //--------------------------------------------------------------------------
    
    
    //--------------------------------------------------------------------------
    //Define USE_USB_BUS_SENSE_IO if using USB VBUS presence sensing feature.  
    //Feature is not needed in purely bus powered USB designs.
    //In self powered or dual powered designs, it is also not always essential, on PIC24/32
    //devices, as existing devices have USB hardware sensing of VBUS.  This software 
    //feature is still useful/necessary however, if the device will consume >100mA 
    //from VBUS when configured, or if it has other software need to know when the 
    //USB cable is not attached to the host (or is attached but host is powered down).
    
    //#define USE_USB_BUS_SENSE_IO
    #if defined(USE_USB_BUS_SENSE_IO)
        #define tris_usb_bus_sense  TRISBbits.TRISB5    //(replace with real pin being used, if other than the internal VBUS comparators)
        #define USB_BUS_SENSE       U1OTGSTATbits.SESVD //Note: If Using U1OTGSTATbits.SESVD, instead of a port pin (ex: PORTBbits.RB5), see
                                                        //USB stack usage documentation.  Special application specific considerations and code
                                                        //are needed when using U1OTGSTATbits.SESVD.
    #else
        //Else we aren't using the USE_USB_BUS_SENSE_IO feature.
        //Assume VBUS is always present.  This is a good/correct assumption in a
        //purely bus powered design, since VBUS has to be present in order for the
        //microcontroller to be powered and executing code in the first place.
        #define USB_BUS_SENSE 1     //Lets firmware assume VBUS is always present
    #endif
    //--------------------------------------------------------------------------
   
   
    //Uncomment this to make the output HEX of this project 
    //   to be able to be bootloaded using the HID bootloader
    //#define PROGRAMMABLE_WITH_USB_HID_BOOTLOADER	

    //If the application is going to be used with the HID bootloader
    //  then this will provide a function for the application to 
    //  enter the bootloader from the application (optional)
    #if defined(PROGRAMMABLE_WITH_USB_HID_BOOTLOADER)
        #define EnterBootloader() __asm__("goto 0x400")
    #endif   

    /*******************************************************************/
    /******** MDD File System selection options ************************/
    /*******************************************************************/
    #define ERASE_BLOCK_SIZE        1024
    #define WRITE_BLOCK_SIZE        128


    /*******************************************************************/
    /*******************************************************************/
    /*******************************************************************/
    /******** Application specific definitions *************************/
    /*******************************************************************/
    /*******************************************************************/
    /*******************************************************************/

    /** Board definition ***********************************************/
    //These defintions will tell the main() function which board is
    //  currently selected.  This will allow the application to add
    //  the correct configuration bits as wells use the correct
    //  initialization functions for the board.  These defitions are only
    //  required in the stack provided demos.  They are not required in
    //  final application design.
    #define DEMO_BOARD PIC24FJ256DA210_DEV_BOARD
    #define PIC24FJ256DA210_DEV_BOARD
    #define CLOCK_FREQ 32000000
    
    /** LED ************************************************************/
    #define mInitAllLEDs()      LATE &= 0xFDFF; TRISE &= 0xFDFF; LATG &= 0xFEFF; TRISG &= 0xFEFF;
    
    #define mLED_1              LATGbits.LATG8
    #define mLED_2              LATEbits.LATE9
    #define mLED_3              LATGbits.LATG8
    #define mLED_4              LATEbits.LATE9

    #define mGetLED_1()         mLED_1
    #define mGetLED_2()         mLED_2
    #define mGetLED_3()         mLED_3
    #define mGetLED_4()         mLED_4     
    
    #define mLED_1_On()         mLED_1 = 1;
    #define mLED_2_On()         mLED_2 = 1;
    #define mLED_3_On()         mLED_3 = 1;
    #define mLED_4_On()         mLED_4 = 1;
    
    #define mLED_1_Off()        mLED_1 = 0;
    #define mLED_2_Off()        mLED_2 = 0;
    #define mLED_3_Off()        mLED_3 = 0;
    #define mLED_4_Off()        mLED_4 = 0;
    
    #define mLED_1_Toggle()     mLED_1 = !mLED_1;
    #define mLED_2_Toggle()     mLED_2 = !mLED_2;
    #define mLED_3_Toggle()     mLED_3 = !mLED_3;
    #define mLED_4_Toggle()     mLED_4 = !mLED_4;
    
    /** SWITCH *********************************************************/
    #define mInitSwitch2()      {TRISBbits.TRISB5=1; ANSBbits.ANSB5 = 0;}
    #define mInitSwitch3()      {TRISBbits.TRISB5=1; ANSBbits.ANSB5 = 0;}
    #define mInitAllSwitches()  mInitSwitch2();mInitSwitch3();
    #define sw2                 PORTBbits.RB5
    #define sw3                 PORTBbits.RB5

    /** POT ************************************************************/
    #define mInitPOT()  {ANSBbits.ANSB5 = 0;    AD1CON2bits.VCFG = 0x0;    AD1CON3bits.ADCS = 0xFF;    AD1CON1bits.SSRC = 0x0;    AD1CON3bits.SAMC = 0b10000;    AD1CON1bits.FORM = 0b00;    AD1CON2bits.SMPI = 0x0;    AD1CON1bits.ADON = 1;}

    /** I/O pin definitions ********************************************/
    #define INPUT_PIN 1
    #define OUTPUT_PIN 0

#endif  //HARDWARE_PROFILE_PIC24FJ256DA210_DEV_BOARD_H
