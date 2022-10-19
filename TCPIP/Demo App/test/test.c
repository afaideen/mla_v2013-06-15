

/*
 * Author: AIZUL FAIDEEN BIN HAMIM
 * DATE: 7 JULY 2022
 * CODE: INTERVIEW QUIZ PULSE EIGHT
 * */
#include <xc.h>


// Clock frequency values
// These directly influence timed events using the Tick module.  They also are used for UART and SPI baud rate generation.
#define GetSystemClock()		(80000000ul)			// Hz//MCU use 80 Mhz clock!
#define GetInstructionClock()	(GetSystemClock()/1)	// Normally GetSystemClock()/4 for PIC18, GetSystemClock()/2 for PIC24/dsPIC, and GetSystemClock()/1 for PIC32.  Might need changing if using Doze modes.
#define GetPeripheralClock()	(GetSystemClock()/1)	// Normally GetSystemClock()/4 for PIC18, GetSystemClock()/2 for PIC24/dsPIC, and GetSystemClock()/1 for PIC32.  Divisor may be different if using a PIC32 since it's configurable.


#define UARTTX_TRIS			(TRISFbits.TRISF5)
#define UARTTX_IO			(PORTFbits.RF5)
#define UARTRX_TRIS			(TRISFbits.TRISF4)
#define UARTRX_IO			(PORTFbits.RF4)

#define TICK_SECOND				((QWORD)TICKS_PER_SECOND)

#define LED0_IO				(LATAbits.LATA0)

#define LCD_DATA_TRIS		(*((volatile unsigned char*)&TRISE))
#define LCD_DATA_IO			(*((volatile unsigned char*)&LATE))
#define LCD_RD_WR_TRIS		(TRISDbits.TRISD5)
#define LCD_RD_WR_IO		(LATDbits.LATD5)
#define LCD_RS_TRIS			(TRISBbits.TRISB15)
#define LCD_RS_IO			(LATBbits.LATB15)
#define LCD_E_TRIS			(TRISDbits.TRISD4)
#define LCD_E_IO			(LATDbits.LATD4)
#define putrsUART2(x)       putsUART2(x)
#define putrsUART(a)		putrsUART2(a)

/*
 Description: LCD will display eg. "TCPStack v5.42"
 LCD 8-bit has interfacing with PORTE in this example.
 To show LCD functionalities only, timer1 is actually unnecessary in this code.
 However I demonstrated simple example how timer1 can be initialised and used for other usage for example
 UART, LED blink etc with cooperative tasking.
 */

int main void()
{
    
    
    LCDInit();
    DelayMs(100);
    strcpypgm2ram((char*)LCDText, "TCPStack " TCPIP_STACK_VERSION "  "
        "                "); 
    LCDUpdate();
    // Initialize stack-related hardware components that may be 
    // required by the UART configuration routines
    TickInit();
    InitUART();
    DWORD t = TickGet();
    while(1)
    {
        //Cooperative multi tasking here!
        // Blink LED0 (right most one) every 0.5 second.
        if(TickGet() - t >= TICK_SECOND/2ul)
        {
            t = TickGet();
            LED0_IO ^= 1;
            putrsUART("\r\n\r\nHi,PORTA0 is toggled!\r\n\r\n");
        }
    }
    
}

void initUART(void)
{
    UARTTX_TRIS = 0;
    UARTRX_TRIS = 1;
    UMODE = 0x8000;            // Set UARTEN.  Note: this must be done before setting UTXEN
    USTA = 0x00001400;        // RXEN set, TXEN set
    #define CLOSEST_UBRG_VALUE ((GetPeripheralClock()+8ul*BAUD_RATE)/16/BAUD_RATE-1)
    #define BAUD_ACTUAL (GetPeripheralClock()/16/(CLOSEST_UBRG_VALUE+1))

    #define BAUD_ERROR ((BAUD_ACTUAL > BAUD_RATE) ? BAUD_ACTUAL-BAUD_RATE : BAUD_RATE-BAUD_ACTUAL)
    #define BAUD_ERROR_PRECENT    ((BAUD_ERROR*100+BAUD_RATE/2)/BAUD_RATE)
    #if (BAUD_ERROR_PRECENT > 3)
        #warning UART frequency error is worse than 3%
    #elif (BAUD_ERROR_PRECENT > 2)
        #warning UART frequency error is worse than 2%
    #endif

    UBRG = CLOSEST_UBRG_VALUE;
}

void TickInit(void)
{

	// Use Timer 1 for 16-bit and 32-bit processors
	// 1:256 prescale
	T1CONbits.TCKPS = 3;
	// Base
	PR1 = 0xFFFF;
	// Clear counter
	TMR1 = 0;

	// Enable timer interrupt
	
    IPC1bits.T1IP = 2;	// Interrupt priority 2 (low)
    IFS0CLR = _IFS0_T1IF_MASK;
    IEC0SET = _IEC0_T1IE_MASK;

	// Start timer
	T1CONbits.TON = 1;

}

DWORD TickGet(void)
{
    DWORD dw;
    
	GetTickCopy();
	((BYTE*)&dw)[0] = vTickReading[0];	// Note: This copy must be done one 
	((BYTE*)&dw)[1] = vTickReading[1];	// byte at a time to prevent misaligned 
	((BYTE*)&dw)[2] = vTickReading[2];	// memory reads, which will reset the PIC.
	((BYTE*)&dw)[3] = vTickReading[3];
	return dw;
}

BYTE LCDText[20*2+1];

void LCDInit(void)
{
	BYTE i;

	memset(LCDText, ' ', sizeof(LCDText)-1);
	LCDText[sizeof(LCDText)-1] = 0;

	// Setup the I/O pins
	LCD_E_IO = 0;
	LCD_RD_WR_IO = 0;


	
	LCD_DATA_TRIS = 0x00;
	
	LCD_RD_WR_TRIS = 0;
	LCD_RS_TRIS = 0;
	LCD_E_TRIS = 0;


	// Wait the required time for the LCD to reset
	DelayMs(40);

	// Set the default function
	// Go to 8-bit mode first to reset the instruction state machine
	// This is done in a loop 3 times to absolutely ensure that we get 
	// to 8-bit mode in case if the device was previously booted into 
	// 4-bit mode and our PIC got reset in the middle of the LCD 
	// receiving half (4-bits) of an 8-bit instruction
	LCD_RS_IO = 0;
	
	LCD_DATA_IO = 0x03;
	
	Nop();					// Wait Data setup time (min 40ns)
	Nop();
	for(i = 0; i < 3u; i++)
	{
		LCD_E_IO = 1;
		Delay10us(1);			// Wait E Pulse width time (min 230ns)
		LCD_E_IO = 0;
		DelayMs(2);
	}
	

	// Use 8-bit mode with two lines
	LCDWrite(0, 0x38);

	Delay10us(5);
	
	// Set the entry mode
	LCDWrite(0, 0x06);	// Increment after each write, do not shift
	Delay10us(5);

	// Set the display control
	LCDWrite(0, 0x0C);		// Turn display on, no cusor, no cursor blink
	Delay10us(5);

	// Clear the display
	LCDWrite(0, 0x01);	
	DelayMs(2);
	
}

static void LCDWrite(BYTE RS, BYTE Data)
{
	
    LCD_DATA_TRIS = 0x00;
	
	LCD_RS_TRIS = 0;
	LCD_RD_WR_TRIS = 0;
	LCD_RD_WR_IO = 0;
	LCD_RS_IO = RS;

	
	LCD_DATA_IO = Data;

	Nop();					// Wait Data setup time (min 40ns)
	Nop();
	LCD_E_IO = 1;
	Nop();					// Wait E Pulse width time (min 230ns)
	Nop();
	Nop();
	Nop();
	Nop();
	Nop();
	Nop();
	Nop();
	Nop();
	LCD_E_IO = 0;

}

void LCDUpdate(void)
{
	BYTE i, j;

	// Go home
	LCDWrite(0, 0x02);
	DelayMs(2);

	// Output first line
	for(i = 0; i < 16u; i++)
	{
		// Erase the rest of the line if a null char is 
		// encountered (good for printing strings directly)
		if(LCDText[i] == 0u)
		{
			for(j=i; j < 16u; j++)
			{
				LCDText[j] = ' ';
			}
		}
		LCDWrite(1, LCDText[i]);
		Delay10us(5);
	}
	
	// Set the address to the second line
	LCDWrite(0, 0xC0);
	Delay10us(5);

	// Output second line
	for(i = 16; i < 32u; i++)
	{
		// Erase the rest of the line if a null char is 
		// encountered (good for printing strings directly)
		if(LCDText[i] == 0u)
		{
			for(j=i; j < 32u; j++)
			{
				LCDText[j] = ' ';
			}
		}
		LCDWrite(1, LCDText[i]);
		Delay10us(5);
	}
}

void DelayMs(WORD ms)
{
    unsigned char i;
    while(ms--)
    {
        i=4;
        while(i--)
        {
            Delay10us(25);
        }
    }
}

void Delay10us(DWORD dwCount)
{
	volatile DWORD _dcnt;

	_dcnt = dwCount*((DWORD)(0.00001/(1.0/GetInstructionClock())/10));
	while(_dcnt--)
	{
		#if defined(__C32__)
			Nop();
			Nop();
			Nop();
		#endif
	}
}