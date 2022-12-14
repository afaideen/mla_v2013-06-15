/*********************************************************************
 *
 *   Microchip USB HID Bootloader v1.01 for PIC18F87J50 Family Devices
 *
 *********************************************************************
 * FileName:        main.c
 * Dependencies:    See INCLUDES section below
 * Processor:       PIC18
 * Compiler:        C18 3.45+
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement
 *
 * The software supplied herewith by Microchip Technology Incorporated
 * (the "Company") for its PIC(R) Microcontroller is intended and
 * supplied to you, the Company's customer, for use solely and
 * exclusively on Microchip PICmicro Microcontroller products. The
 * software is owned by the Company and/or its supplier, and is
 * protected under applicable copyright laws. All rights are reserved.
 * Any use in violation of the foregoing restrictions may subject the
 * user to criminal sanctions under applicable laws, as well as to
 * civil liability for the breach of the terms and conditions of this
 * license.
 *
 * THIS SOFTWARE IS PROVIDED IN AN "AS IS"? CONDITION. NO WARRANTIES,
 * WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED
 * TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 * PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE COMPANY SHALL NOT,
 * IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR
 * CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
 * File Version  Date		Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * 1.0			 04/09/2008	Started from MCHPFSUSB v1.3 HID Mouse
 *							demo project.  Main modifications include
 *							changes to HID report descriptor, and
 *							replacement of the "user_mouse.c" file
 *							with the contents contained in the
 *							Boot87J50Family.c file.
 * 1.01			01/23/2009	Minor modifications.  Added firmware only
 *							entry point (goto 0x001C)
 * 1.02			07/06/2009  Slight change to report descriptor.
 * 2.9j         06/10/2013  Improved software entry point into bootloader
 *                          at 0x001C.  Some other enhancements.
 *                          Changed LED blink pattern to use only 1 LED and
 *                          consume less code space.  Added #define option to
 *                          disable LED blinking and I/O pushbutton entry
 *                          altogether.  See usbcfg.h settings.
 ********************************************************************/

/*********************************************************************
IMPORTANT NOTE: This code is currently configured to work with the
PIC18F87J50 FS USB Plug-In Module board.  It can be readily adapted to
work with other members of the PIC18F87J50 Family of USB microcontrollers 
as well (PIC18F87J50/86J55/86J50/85J50/65J50/66J50/66J55/67J50).

However, the default device that is currently selected in the project
may not be the device you are interested.  To change the device:

Replace the linker script with an appropriate version, and
click "Configure --> Select Device" and select the proper
microcontroller.  Also double check to verify that the io_cfg.h and
usbcfg.h are properly configured to match your desired application
platform.

Verify that the configuration bits are set correctly for the intended
target application, and fix any build errors that result from either
the #error directives, or due to I/O pin count mismatch issues (such
as when using a lower pin count device, but without making sufficient changes
to the io_cfg.h file)

This project needs to be built with the C18 compiler optimizations
enabled, and using the Default storage class "Static" or the total
code size will be too large to fit within the program memory
range 0x000-0xFFF.  The default linker script included
in the project has this range reserved for the use by the bootloader,
but marks the rest of program memory as "PROTECTED".  If you try to
build this project with the compiler optimizations turned off, or
you try to modify some of this code, but add too much code to fit
within the 0x000-0xFFF region, a linker error like that below may occur:

Error - section '.code' can not fit the section. Section '.code' length=0x00000020
To fix this error, either optimize the program to fit within 0x000-0xFFF
(such as by turning on all compiler optimizations, and making sure the
"default storage class" is set to "Static"), or modify the linker
and vector remapping (as well as the application projects) to allow this
bootloader to use more program memory.



----------------------Bootloader Entry------------------------------------------
Entry into this bootloader firmware can be done by either of two possible
ways:

1.  I/O pin check at power up/after any reset.  and/or:
2.  Software entry via absolute jump to address 0x001C.

The I/O pin check method is the most rugged, since it does not require the 
application firmware image to be intact (at all) to get into the bootloader
mode.  However, software entry is also possible and may be more convenient
in applications that do not have user exposed pushbuttons available.

When the "application" image is executing, it may optionally jump into
bootloader mode, by executing a _asm goto 0x001C _endasm instruction.  
Before doing so however, the firwmare should configure the current
clock settings to be compatible with USB module operation, in they
are not already.  Once the goto 0x001C has been executed the USB device 
will detach from the USB bus (if it was previously attached), and will 
re-enumerate as a HID class device with a new VID/PID (adjustable via 
usb_dsc.c settings), which can communicate with the associated
USB host software that loads and programs the new .hex file.


--------------------------------------------------------------------------------
Anytime that an application implements flash self erase/write capability, 
special care should be taken to make sure that the microcontroller is operated 
within all datasheet ratings, especially those associated with voltage versus 
frequency.

Operating the device at too high of a frequency (for a given voltage, ex: by
operating at 48MHz at 2.1V, while the device datasheet indicates some higher
value such as 2.35V+ is requred) can cause unexpected code operation.  This
could potentially allow inadvertent execution of bootloader or other self
erase/write routines, causing corruption of the flash memory of the application.

To avoid this, all applications that implement self erase/write capability 
should make sure to prevent execution during overclocked/undervolted conditions.

For this reason, enabling and using the microcontroller hardware Brown-out-Reset 
feature is particularly recommended for applications using a bootloader.  If 
BOR is not used, or the trip threshold is too low for the intended application 
frequency, it is suggested to add extra code in the application to detect low 
voltage conditions, and to intentionally clock switch to a lower frequency 
(or put the device to sleep) during the low voltage condition.  Hardware
modules such as the ADC, comparators, or the HLVD (high/low voltage detect)
can often be used for this purpose.


--------------------------------------------------------------------------------
This bootloader supports reprogramming of the microcontroller configuration bits,
however, it is strongly recommended never to do so, unless absolutely necessary.
Reprogramming the config bits is potentially risky, since it requires that the
new configuration bits be 100% compatible with USB operation (ex: oscillator
settings, etc.).  If a .hex file with incorrect config bits is programmed
into this device, it can render the bootloader inoperable.  Additionally,
unexpected power failure or device detachment during the reprogramming of the
config bits could result in unknown values getting stored in the config bits,
which could "brick" the application.

Normally, the application firmware project and this bootloader project should
be configured to use/set the exact same configuration bit values.  Only one set
of configuration bits actually exists in the microcontroller, and these values
must be shared between the bootloader and application firmware.

If the bootloader will not be used to program the configuration
words page, the application firmware's linker script should mark
the entire page as PROTECTED to prevent the linker from inadvertently
placing code on the same erase page as the configuration bits.
*********************************************************************/


/** I N C L U D E S **********************************************************/
#include <p18cxxx.h>
#include "typedefs.h"                   
#include "usb.h"                         
#include "io_cfg.h"                     
#include "Boot87J50Family.h"

/** C O N F I G U R A T I O N ************************************************/
// Note: For a complete list of the available config pragmas and their values, 
// see the compiler documentation, and/or click "Help --> Topics..." and then 
// select "PIC18 Config Settings" in the Language Tools section.

#if defined(PIC18F87J50_FS_USB_PIM)			// Configuration bits for PIC18F87J50 FS USB Plug-In Module board
        #pragma config XINST    = OFF		// Extended instruction set
        #pragma config STVREN   = ON		// Stack overflow reset
        #pragma config PLLDIV   = 3			// (12 MHz crystal used on this board)
        #pragma config WDTEN    = OFF		// Watch Dog Timer (WDT)
        #pragma config CP0      = OFF		// Code protect
        #pragma config CPUDIV   = OSC1		// OSC1 = divide by 1 mode
        #pragma config IESO     = OFF		// Internal External (clock) Switchover
        #pragma config FCMEN    = OFF		// Fail Safe Clock Monitor
        #pragma config FOSC     = HSPLL		// Firmware must also set OSCTUNE<PLLEN> to start PLL!
        #pragma config WDTPS    = 32768
        #pragma config MSSPMSK  = MSK5
        #pragma config CCP2MX   = DEFAULT
	#if defined(__18F87J50)||defined(__18F86J55)|| \
    	defined(__18F86J50)||defined(__18F85J50)
		      #pragma config WAIT     = OFF		// 
		      #pragma config BW       = 16		// Only available on the
		      #pragma config MODE     = MM		// 80 pin devices in the 
		      #pragma config EASHFT   = OFF		// family.
		      #pragma config PMPMX    = DEFAULT //
		      #pragma config ECCPMX   = DEFAULT //
	#endif

//If using the YOUR_BOARD hardware platform (see usbcfg.h), uncomment below and add pragmas
//#elif defined(YOUR_BOARD)
		//Add the configuration pragmas here for your hardware platform
		//#pragma config ... 		= ...

#else
	#error Not a supported board.  If using a different microcontroller family, see one of other workspaces.  Otherwise, make sure the proper board is selected in usbcfg.h, and if so, set configuration bits in __FILE__, line __LINE__
#endif

/** V A R I A B L E S ********************************************************/
//NOTE: You must not use initalized variables in this bootloader project.  This
//firmware project does not rely on the standard C initializer, which is 
//responsible for setting up initialized variables in RAM.  Therefore, all
//variables will be non-initialized/random at start up.
#pragma udata
unsigned int uint_delay_counter;


/** P R I V A T E  P R O T O T Y P E S ***************************************/
void UninitializedMain(void);
void BootMain(void);
static void InitializeSystem(void);
//void USBTasks(void);
#define USBTasks()  {USBCheckBusStatus(); USBDriverService();}
void ClearWatchdog(void);
void DisableUSBandExecuteLongDelay(void);
void LowVoltageCheck(void);

#ifdef ENABLE_USB_LED_BLINK_STATUS
    void BlinkUSBStatus(void);
#else
    #define BlinkUSBStatus()
#endif



//Constants
#define REMAPPED_APPLICATION_RESET_VECTOR       0x1000
#define REMAPPED_APPLICATION_HIGH_ISR_VECTOR    0x1008
#define REMAPPED_APPLICATION_LOW_ISR_VECTOR     0x1018
#define BOOTLOADER_ABSOLUTE_ENTRY_ADDRESS       0x001C  //Execute a "_asm goto 0x001C _endasm" instruction, if you want to enter the bootloader mode from the application via software


//Never comment this out.  If you do, you won't be able to recover if the user
//unplugs the USB cable (or power is lost) during an erase/program sequence, 
//unless you rely on the I/O pin check entry method.  The only reason ever to
//comment this out, is if you are trying to use this bootloader firmware with
//an old bootloader PC application that does not have knowledge of the v1.01
//and newer command set (with QUERY_EXTENDED_INFO and SIGN_FLASH commands).
//However, a better solution in such a case, is to upgrade to use a newer PC
//application to do the bootloading.
#define ENABLE_FLASH_SIGNATURE_VERIFICATION     


/****** Program memory vectors, constants, and application remapping*********************/
//Be careful if modifying the below code.  The below code is absolute address sensitive.
#pragma code _entry_scn=0x000000		//Reset vector is at 0x00.  Device begins executing code from 0x00 after a reset or POR event
void _entry (void)
{
    _asm goto UninitializedMain _endasm
}

//The hardware high priority interrupt vector.  This bootloader firmware does
//not use interrupts at all.  If an interrupt occurs, it is due to application
//mode operation.  Therefore, if an interrupt occurs, we should just jump to 
//the remapped address (that resides inside hte application image firmware space).
#pragma code high_vector=0x08
void interrupt_at_high_vector(void)
{
    _asm goto REMAPPED_APPLICATION_HIGH_ISR_VECTOR _endasm
}

//The hardware high priority interrupt vector
#pragma code low_vector=0x18
void interrupt_at_low_vector(void)
{
    //Do not change the code in this function.  Doing so will shift the
    //addresses of things around, which will prevent proper operation.
    _asm goto REMAPPED_APPLICATION_LOW_ISR_VECTOR _endasm    //This goto is located at 0x0018.  This "goto" instruction takes 4 bytes of prog memory.
    _asm goto BootMain _endasm  //This goto is located at address 0x001C.  This is the absolute 
                                //entry vector value for jumping from the app into the bootloader 
                                //mode via software.  This goto is normally unreachable, 
                                //unless the application firmware executes an 
                                //intentional _asm goto 0x001C _endasm ("#asm goto 0x001C #endasm" if using XC8 compiler).
}




/** D E C L A R A T I O N S **************************************************/
#pragma code
/******************************************************************************
 * Function:        void UninitializedMain(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This is the first code that executes during boot up of
 *                  the microcontroller.  This code checks to see if execution
 *                  should stay in the "bootloader" mode, or if it should jump
 *                  into the "application" (non-bootloder) execution mode.
 *                  No other unrelated code should be added to this function.
 *
 * Note:            THIS FUNCTION EXECUTES PRIOR TO INITIALIZATION OF THE C
 *                  STACK.  NO C INITIALIZATION OF STATIC VARIABLES OR RESOURCES
 *                  WILL OCCUR, PRIOR TO EXECUTING THIS FUNCTION.  THEREFORE, 
 *                  THE CODE IN THIS FUNCTION MUST NOT CALL OTHER FUNCTIONS OR
 *                  PERFORM ANY OPERATIONS THAT WILL REQUIRE C INITIALIZED
 *                  BEHAVIOR.
 *****************************************************************************/
void UninitializedMain(void)
{   
    //Assuming the I/O pin check entry method is enabled, check the I/O pin value
    //to see if we should stay in bootloader mode, or jump to normal applicaiton 
    //execution mode.
	#ifdef ENABLE_IO_PIN_CHECK_BOOTLOADER_ENTRY
        //Need to make sure the I/O pin is configured for digital mode so we
        //can sense the digital level on the input pin.
        mInitSwitch2();
        
        //Check Bootload Mode Entry Condition from the I/O pin (ex: place a  
        //pushbutton and pull up resistor on the pin)
    	if(sw2 == 1)	
    	{
        	//If we get to here, the user is not pressing the pushbutton.  We
        	//should default to jumping into application run mode in this case.
        	//Restore default "reset" value of registers we may have modified temporarily.
        	mDeInitSwitch2();
    
            //Before going to application image however, make sure the image
            //is properly signed and is intact.
    		goto DoFlashSignatureCheck;
    	}
    	else
    	{
        	//User is pressing the pushbutton.  We should stay in bootloader mode
            _asm goto BootMain _endasm            	
        }   	
	#endif //#ifdef ENABLE_IO_PIN_CHECK_BOOTLOADER_ENTRY    

DoFlashSignatureCheck:    
    //Check if the application region flash signature is valid
    #ifdef ENABLE_FLASH_SIGNATURE_VERIFICATION
        if(*(rom unsigned int*)APP_SIGNATURE_ADDRESS == APP_SIGNATURE_VALUE)
        {
            //The flash signature was valid, implying the previous 
            //erase/program/verify operation was a success.
    
            //Go ahead and jump out of bootloader mode into the application run mode
    		_asm goto REMAPPED_APPLICATION_RESET_VECTOR _endasm	
        }    
        //else the application image is missing or corrupt.  In this case, we
        //need to stay in the bootloader mode, so the user has the ability to 
        //try (again) to re-program a valid application image into the device.
    
    	//We should stay in bootloader mode
        _asm goto BootMain _endasm
    #else
    
        //Ideally we shouldn't get here.  It is not recommended for the user to 
        //disable both the I/O pin check and flash signature checking 
        //simultaneously.  Doing so would make the application non-recoverable
        //in the event of a failed bootload attempt (ex: due to power loss).
        _asm goto REMAPPED_APPLICATION_RESET_VECTOR _endasm	

    #endif
}//end UninitializedMain



/******************************************************************************
 * Function:        void UninitializedMain(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This is the main function for this bootloader mode firmware.
 *                  if execution gets to this function, it is assumed that we
 *                  want to stay in bootloader mode for now.
 *
 * Note:            If adding code to this function, make sure to add it only
 *                  after the C initializer like code at the top of this function.
 *****************************************************************************/
void BootMain(void)
{
	//NOTE: The c018.o file is not included in the linker script for this project.
	//The C initialization code in the c018.c (comes with C18 compiler in the src directory)
	//file is instead modified and included here manually.  This is done so as to provide
	//a more convenient entry method into the bootloader firmware.  Ordinarily the _entry_scn
	//program code section starts at 0x00 and is created by the code of c018.o.  However,
	//the linker will not work if there is more than one section of code trying to occupy 0x00.
	//Therefore, must not use the c018.o code, must instead manually include the useful code
	//here instead.

    //Make sure interrupts are disabled for this code (could still be on,
    //if the application firmware jumped into the bootloader via software methods)
    INTCON = 0x00;  

    // Initialize the C stack pointer, and other compiler managed items as normally done in the c018.c file.
	_asm
    lfsr 1, _stack
    lfsr 2, _stack
    clrf TBLPTRU, 0 
	_endasm

    //Clear the stack pointer, in case the user application jumped into 
    //bootloader mode with excessive junk on the call stack
    STKPTR = 0x00;  

	// End of the important parts of the C initializer.  This bootloader firmware does not use
	// any C initialized user variables (idata memory sections).  Therefore, the above is all
	// the initialization that is required.


    //Check if the USB module is already enabled.  If so, disable it and wait 
    //~100ms+ (>1 second recommended if CDC application firmware on XP), to 
    //ensure that the host has a chance to see and process the USB device detach 
    //event.
    if(UCONbits.USBEN == 1)
    {
        //USB module was already on.  This is likely because the user applicaiton
        //firmware jumped into this bootloader firmware using the absolute
        //software entry method, without first turning off the USB module
        DisableUSBandExecuteLongDelay(); 
    }    


    //Call other initialization code and (re)enable the USB module
    InitializeSystem();		//Some USB, I/O pins, and other initialization
    
    //Execute main loop
    while(1)
    {
		ClrWdt();
		
		//Need to call USBTasks() periodically.  This function takes care of 
		//processing non-USB application related USB packets (ex: "Chapter 9" 
		//packets associated with USB enumeration)
		USBTasks();             	    

		BlinkUSBStatus();   //When enabled, blinks LEDs on the board, based on USB bus state
		
		LowVoltageCheck();  //Regularly monitor voltage to make sure it is sufficient
		                    //for safe operation at full frequency and for erase/write
		                    //operations.		
		
		//Checks for and processes application related USB packets (assuming the
		//USB bus is in the CONFIGURED_STATE, which is the only state where
		//the host is allowed to send application related USB packets to the device.
	    if((usb_device_state == CONFIGURED_STATE) && (UCONbits.SUSPND != 1))
	    {
 	       ProcessIO();   // This is where all the actual bootloader related data transfer/self programming takes place
 	    }				  // see ProcessIO() function in the BootPIC[xxxx].c file.
    }//end while    
}    


/******************************************************************************
 * Function:        static void InitializeSystem(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        InitializeSystem is a centralize initialization routine.
 *                  All required USB initialization routines are called from
 *                  here.
 *
 *                  User application initialization routine should also be
 *                  called from here.                  
 *
 * Note:            None
 *****************************************************************************/
static void InitializeSystem(void)
{
	OSCCON = 0x60;	//Clock switch to primary clock source.  May not have been running
					//from this if the bootloader is called from the application firmware.

	//On the PIC18F87J50 Family of USB microcontrollers, the PLL will not power up and be enabled
	//by default, even if a PLL enabled oscillator configuration is selected (such as HS+PLL).
	//This allows the device to power up at a lower initial operating frequency, which can be
	//advantageous when powered from a source which is not gauranteed to be adequate for 48MHz
	//operation.  On these devices, user firmware needs to manually set the OSCTUNE<PLLEN> bit to
	//power up the PLL.

	#if defined(__18F87J50)||defined(__18F86J55)|| \
    	defined(__18F86J50)||defined(__18F85J50)|| \
    	defined(__18F67J50)||defined(__18F66J55)|| \
    	defined(__18F66J50)||defined(__18F65J50)

        OSCTUNEbits.PLLEN = 1;  //Enable the PLL and wait 2+ms until the PLL locks before enabling USB module
    	uint_delay_counter = 600;
	    while(uint_delay_counter--);
        //Device switches over automatically to PLL output after PLL is locked and ready.

    #else
        #error Double Click this message.  Please make sure the InitializeSystem() function correctly configures your hardware platform.  
		//Also make sure the correct board is selected in usbcfg.h.  If 
		//everything is correct, comment out the above "#error ..." line
		//to suppress the error message.
    #endif


//	The USB specifications require that USB peripheral devices must never source
//	current onto the Vbus pin.  Additionally, USB peripherals should not source
//	current on D+ or D- when the host/hub is not actively powering the Vbus line.
//	When designing a self powered (as opposed to bus powered) USB peripheral
//	device, the firmware should make sure not to turn on the USB module and D+
//	or D- pull up resistor unless Vbus is actively powered.  Therefore, the
//	firmware needs some means to detect when Vbus is being powered by the host.
//	A 5V tolerant I/O pin can be connected to Vbus (through a resistor), and
// 	can be used to detect when Vbus is high (host actively powering), or low
//	(host is shut down or otherwise not supplying power).  The USB firmware
// 	can then periodically poll this I/O pin to know when it is okay to turn on
//	the USB module/D+/D- pull up resistor.  When designing a purely bus powered
//	peripheral device, it is not possible to source current on D+ or D- when the
//	host is not actively providing power on Vbus. Therefore, implementing this
//	bus sense feature is optional.  This firmware can be made to use this bus
//	sense feature by making sure "USE_USB_BUS_SENSE_IO" has been defined in the
//	usbcfg.h file.    
    #if defined(USE_USB_BUS_SENSE_IO)
    tris_usb_bus_sense = INPUT_PIN; // See io_cfg.h
    #endif

//	If the host PC sends a GetStatus (device) request, the firmware must respond
//	and let the host know if the USB peripheral device is currently bus powered
//	or self powered.  See chapter 9 in the official USB specifications for details
//	regarding this request.  If the peripheral device is capable of being both
//	self and bus powered, it should not return a hard coded value for this request.
//	Instead, firmware should check if it is currently self or bus powered, and
//	respond accordingly.  If the hardware has been configured like demonstrated
//	on the PICDEM FS USB Demo Board, an I/O pin can be polled to determine the
//	currently selected power source.  On the PICDEM FS USB Demo Board, "RA2" 
//	is used for	this purpose.  If using this feature, make sure "USE_SELF_POWER_SENSE_IO"
//	has been defined in usbcfg.h, and that an appropriate I/O pin has been mapped
//	to it in io_cfg.h.    
    #if defined(USE_SELF_POWER_SENSE_IO)
    tris_self_power = INPUT_PIN;
    #endif
    
    mInitializeUSBDriver();         // See usbdrv.h
    
    UserInit();                     // See BootPIC[xxxx].c.  Initializes the bootloader firmware state machine variables.

    mInitAllLEDs();			//Init them off.

	//Initialize I/O pins for "lowest" power.  When in USB suspend mode, total +5V VBUS current consumption 
	//should reduce to <2.5mA in order to meet USB compliance specifications.

	//Ordinarily, to initialize I/O pins for lowest power, any unused I/O pins would be configured
	//as outputs and driven either high or low.  However, if this code is left unmodified, but is used in a real
	//application, I/O pins as outputs could cause contention with externally connected signals.  Therefore
	//this code does not actually drive unused I/Os as outputs, but uses "softer" methods, like making
	//analog capable pins as analog (to disable the digital input buffer, which wastes power when left floating)

	//This code should be replaced with code more specific to the intended target application I/O pin usage.
	//The below code by itself will not achieve the lowest possible power consumption.

	WDTCONbits.ADSHR = 1;	//ANCON registers in shared address space region
	ANCON0 = 0x00;			//All analog, to disable the digital input buffers
	ANCON1 = 0x00;			//All analog, digital input buffers off
	WDTCONbits.ADSHR = 0;
	//Also to minimize sleep current consumption (sleep used in this bootloader
	//firmware during USB Suspend conditions), use REGSLP feature
	WDTCONbits.REGSLP = 1;


}//end InitializeSystem


//LVDSTAT feature only available when internal VREG is enabled.  Should
//change below code if you are using the device with the core regulator disabled.
void LowVoltageCheck(void)
{
	//Verify voltage is sufficient for safe bootloader operations.  If the
	//voltage is too low, put microcontroller to sleep to avoid potential
	//overclocking, which could cause unintended code execution (which would
	//be unsafe in a bootloader).
	if(WDTCONbits.LVDSTAT == 0)
	{
		while(1)
		{
    		//Operate at low frequency, disable potential wake up sources  
    		//and sleep indefinitely.
    		OSCCON = 0x03;  //31kHz Internal oscillator
    		PIE1 = 0x00;
    		PIE2 = 0x00;
    		PIE3 = 0x00;
    		Sleep();
        }  		
    }  		
}
    


/******************************************************************************
 * Function:        void BlinkUSBStatus(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        BlinkUSBStatus turns on and off LEDs corresponding to
 *                  the USB device state.
 *
 * Note:            mLED macros can be found in io_cfg.h
 *                  usb_device_state is declared in usbmmap.c and is modified
 *                  in usbdrv.c, usbctrltrf.c, and usb9.c
 *****************************************************************************/
#ifdef ENABLE_USB_LED_BLINK_STATUS
void BlinkUSBStatus(void)
{
    static unsigned int led_count = 0;

    led_count--;
    if(led_count == 0)
    {
        led_count = 19968U;  //Chosen instead of 20000, so that LSB is = 0x00 (more efficient to initialize)
        if(usb_device_state < CONFIGURED_STATE)
        {
            mLED_1_On();
        } 
        else
        {
            mLED_1_Toggle();
        }    
    }    
}//end BlinkUSBStatus
#endif //#ifdef ENABLE_USB_LED_BLINK_STATUS




//Placeholder code at address 0x1000 (the start of the non-bootloader firmware space)
//This gets overwritten when a real hex file gets programmed by the bootloader.
//If however no hex file has been programmed (yet), might as well stay in the 
//bootloader firmware, even if the pushbutton or software entry attempt has not 
//been made yet, since the device is still blank.
#pragma code user_app_vector = REMAPPED_APPLICATION_RESET_VECTOR	
void userApp(void)
{
	_asm goto BOOTLOADER_ABSOLUTE_ENTRY_ADDRESS _endasm 	//Goes into the BootMain() section which force bootloader mode operation
}
/** EOF main.c ***************************************************************/
