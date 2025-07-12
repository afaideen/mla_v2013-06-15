/* 
 * File:   rtcc.c
 * Author: han
 *
 * Created on March 1, 2025, 5:13 PM
 */
#define USE_OR_MASKS
#include "pic18f_miwi_demo_kit.h"
//#include "common.h"
#include "definitions.h"
#include "TimeDelay.h"


rtccTimeDate RTCC_ReadTime(void);
void RTCC_TimestampToDate(uint32_t timestamp, rtccTimeDate *time);
void RTCC_WriteTimeDate(unsigned char year, unsigned char month, unsigned char mday, 
                        unsigned char hour, unsigned char min, unsigned char sec, 
                        unsigned char wday);

rtccTimeDate  RtccTimeDate;

uint8_t BCDtoDEC(uint8_t bcdValue) {
    return ((bcdValue >> 4) * 10) + (bcdValue & 0x0F);
}
// Helper function: Convert Decimal to BCD (Binary-Coded Decimal)
uint8_t DECtoBCD(uint8_t dec) {
    return ((dec / 10) << 4) | (dec % 10);
}

void RTCC_Init(void) {
    unsigned char config1=0x00;
    unsigned char config2=0x00;
    // Step 1: Configure Timer1 for external 32.768 kHz crystal
    T1CONbits.TMR1ON  = 0;         // Timer1 OFF initially
    T1CONbits.RD16    = 0;      // 8-bit R/W mode
    T1CONbits.TMR1CS = 0b10;         // TMR1CS = 10 (External Crystal)

    T1CONbits.T1OSCEN = 1;      // Enable Timer1 oscillator

#if defined(__18CXX) && defined(__18F46J50)
    T1CONbits.T1SYNC  = 1;      // Synchronize external clock input. PIC18f46j50
#elif defined(__XC8) && defined(__18F47J53)

    T1CONbits.nT1SYNC = 1;      // for PIC18f47j53
#endif
    T1CONbits.T1CKPS = 0b00;         // Prescaler = 00 (1:1)


    TMR1H = 0x00;
    TMR1L = 0x00;

    T1CONbits.TMR1ON = 1;       // Turn ON Timer1 oscillator

    // Step 2: Wait ~2ms for Timer1 oscillator stabilization
    DelayMs(2);
//    RtccInitClock();
    RTCCFGbits.RTCOE   = 0;     // Disable RTCC output on RB1 (used as SW1)    
   
    // Step 3: Initialize RTCC module    
    // Set RTCC to 2025-03-01 12:00:00, Saturday (weekday=5)
    RTCC_WriteTimeDate(25, 3, 1, 12, 0, 0, 5);

    // Step 5: Enable RTCC operation
    RTCCFGbits.RTCEN = 1;       // Turn ON RTCC

    // Step 6: Configure RTCC interrupts (disabled by default)
    PIE3bits.RTCCIE  = 0;       // RTCC interrupt OFF initially
//    INTCONbits.PEIE  = 1;       // Peripheral interrupts enabled
//    INTCONbits.GIE   = 1;       // Global interrupts enabled
}

void RTCC_SetFromMiWiTimestamp(uint32_t timestamp)
{
    rtccTimeDate new_time;
    unsigned char year, month, mday, hour, min, sec, wday; 

    RTCC_TimestampToDate(timestamp, &new_time);

    year  = BCDtoDEC(new_time.f.year);
    month = BCDtoDEC(new_time.f.mon);
    mday  = BCDtoDEC(new_time.f.mday);
    hour  = BCDtoDEC(new_time.f.hour);
    min   = BCDtoDEC(new_time.f.min);
    sec   = BCDtoDEC(new_time.f.sec);
    wday  = BCDtoDEC(new_time.f.wday); // or set to 0 if not using weekday

    RTCC_WriteTimeDate(year, month, mday, hour, min, sec, wday);
}

void RTCC_WriteTimeDate(unsigned char year, unsigned char month, unsigned char mday, 
                        unsigned char hour, unsigned char min, unsigned char sec, 
                        unsigned char wday) 
{
    /* Disable Interrupt */
	INTCONbits.PEIE = 0;
    // Enable RTCC writing
    EECON2 = 0x55;
    EECON2 = 0xAA;
    RTCCFGbits.RTCWREN = 1;  

    // Start writing from Year (RTCPTR = 0b11)
    RTCCFGbits.RTCPTR1 = 1;
    RTCCFGbits.RTCPTR0 = 1;

    RTCVALL = DECtoBCD(year);     // Year (e.g., 25 for 2025)
    RTCVALH = 0x00;               // Reserved

    RTCVALL = DECtoBCD(mday);     // Day (1-31)
    RTCVALH = DECtoBCD(month);    // Month (1-12)

    RTCVALL = DECtoBCD(hour);     // Hour (0-23)
    RTCVALH = DECtoBCD(wday);     // Weekday (0-6, typically 0=Sunday, 6=Saturday)

    RTCVALL = DECtoBCD(sec);      // Seconds (0-59)
    RTCVALH = DECtoBCD(min);      // Minutes (0-59)

//    // Disable RTCC writing after setup
//    RTCCFGbits.RTCWREN = 0;  
    INTCONbits.PEIE = 1;
}


void RTCC_ReadTimeDate(rtccTimeDate *time) {
    // Start reading from Year register (RTCPTR=0b11)
    RTCCFGbits.RTCPTR1 = 1;
    RTCCFGbits.RTCPTR0 = 1;

    time->f.year = RTCVALL;   // Year
    time->f.rsvd = RTCVALH;   // Reserved (ignored)

    time->f.mday = RTCVALL;   // Day of month
    time->f.mon  = RTCVALH;   // Month

    time->f.hour = RTCVALL;   // Hour
    time->f.wday = RTCVALH;   // Weekday

    time->f.sec  = RTCVALL;   // Seconds
    time->f.min  = RTCVALH;   // Minutes
}


// Days per month (for non-leap years)
const uint16_t daysInMonth[] = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };

// Check if a year is a leap year
BOOL IsLeapYear(uint16_t year) {
    return ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0));
}

// Convert RTCC date/time to UNIX timestamp (seconds since 2000-01-01)
uint32_t RTCC_GetTimestamp(void) {
    rtccTimeDate time;
    uint32_t timestamp = 0;
//    uint32_t timestamp1 = 0;
    uint16_t year, y;
    uint8_t month, day, hour, minute, second, m;

//	RtccReadTimeDate(&time);
	RTCC_ReadTimeDate(&time);
    


    year   = BCDtoDEC(time.f.year) + 2000;  // Convert BCD to decimal
    month  = BCDtoDEC(time.f.mon);          // Convert BCD to decimal
    day    = BCDtoDEC(time.f.mday);
    hour   = BCDtoDEC(time.f.hour);
    minute = BCDtoDEC(time.f.min);
    second = BCDtoDEC(time.f.sec);

    // Calculate total days since 2000-01-01
    for (y = 2000; y < year; y++) {
        timestamp += (IsLeapYear(y) ? 366 : 365) * 86400UL;  // Days to seconds
    }
    Nop();
    // Add days of the months for the current year
    for (m = 1; m < month; m++) {
        timestamp += daysInMonth[m - 1] * 86400UL;
        if (m == 2 && IsLeapYear(year)) {
            timestamp += 86400;  // Add 1 extra day for leap year
        }
    }

    // Add days, hours, minutes, and seconds
    timestamp += (day - 1) * 86400UL;    // Days to seconds
    timestamp += hour * 3600UL;          // Hours to seconds
    timestamp += minute * 60UL;          // Minutes to seconds
    timestamp += second;               // Add seconds

    return timestamp;
}


// Function to reverse timestamp to date & time (Client-side verification)
void RTCC_TimestampToDate(uint32_t timestamp, rtccTimeDate *time) {
    // NOTE: This function assumes input timestamp is seconds since 1970-01-01 00:00:00 (UNIX epoch)

//    uint16_t year = 2000;
    uint16_t year = 1970;
    uint8_t month = 1;
    uint8_t day = 1;
    uint8_t hour;
    uint8_t minute;
    uint8_t second;

    // Step 1: Extract the Year
    while (timestamp >= ((IsLeapYear(year) ? 366 : 365) * 86400UL)) {
        timestamp -= ((IsLeapYear(year) ? 366 : 365) * 86400UL);
        year++;
    }

    // Validate RTCC Year Range (00-99 for BCD format)
    if (year < 2000 || year > 2099) {
        year = 2000;  // Reset to safe default
    }
    time->f.year = DECtoBCD(year - 2000);  // Convert to BCD (00-99)

    // Step 2: Extract the Month
    while (timestamp >= (daysInMonth[month - 1] * 86400UL)) {
        // Check for leap year adjustment for February
        if (month == 2 && IsLeapYear(year)) {
            if (timestamp >= 86400UL) {
                timestamp -= 86400UL;  // Remove extra day if leap year
            }
        }

        timestamp -= daysInMonth[month - 1] * 86400UL;
        month++;
    }
    time->f.mon = DECtoBCD(month);  // Convert to BCD (01-12)

    // Step 3: Extract the Day
    while (timestamp >= 86400UL) {
        timestamp -= 86400UL;
        day++;
    }
    time->f.mday = DECtoBCD(day);  // Convert to BCD (01-31)

    // Step 4: Extract Hours, Minutes, and Seconds
    hour = timestamp / 3600UL;
    timestamp %= 3600UL;
    minute = timestamp / 60UL;
    second = timestamp % 60UL;

    // Store values in BCD format for RTCC compatibility
    time->f.hour = DECtoBCD(hour);
    time->f.min = DECtoBCD(minute);
    time->f.sec = DECtoBCD(second);
}








