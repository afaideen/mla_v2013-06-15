/* 
 * File:   definitions.h
 * Author: han
 *
 * Created on March 16, 2025, 12:16 PM
 */

#ifndef DEFINITIONS_H
#define	DEFINITIONS_H

//#include "common.h"
#include "Compiler.h"
#include "../../Microchip/Include/GenericTypeDefs.h"
//#include "TimeDelay.h"
#include "SymbolTime.h"

typedef unsigned char           uint8_t;
typedef unsigned short int      uint16_t;
typedef signed short int        int16_t;

// union/structure for read/write of time and date from/to the RTCC device
typedef union
{ 
    struct
    {
        unsigned char    year;       // BCD codification for year, 00-99
        unsigned char    rsvd;       // reserved for future use
        unsigned char    mday;       // BCD codification for day of the month, 01-31
        unsigned char    mon;        // BCD codification for month, 01-12
        unsigned char    hour;       // BCD codification for hours, 00-24
        unsigned char    wday;       // BCD codification for day of the week, 00-06   
        unsigned char    sec;        // BCD codification for seconds, 00-59 
        unsigned char    min;        // BCD codification for minutes, 00-59
    }f;                     // field access
    unsigned char        b[8];       // BYTE access
    unsigned int         w[4];       // 16 bits access
    unsigned long         l[2];       // 32 bits access
}rtccTimeDate;

//#if !defined(__18CXX) && !defined(__XC8)
//    typedef struct __attribute__((__packed__)) miwiConfigStruct
//    {
//        WORD_VAL    PANID;                 // MiWi Network PAN ID
//        BYTE        Channel;               // Operating channel (e.g., 11-26 for 2.4GHz)
//        BYTE        ConnMode;              // Connection Mode (e.g., P2P, Star, Mesh)
//
//        union {
//            WORD_VAL ShortAddress;         // Short Address (16-bit) if assigned
//            BYTE     LongAddress[8];       // Long Address (64-bit) for unique device ID
//        } Address;
//
//        BYTE        ConnectionTable[CONNECTION_SIZE];  // Connection Table
//        BYTE        Parent;                 // Parent address for End Devices
//
//    #if defined(NWK_ROLE_COORDINATOR)
//        BYTE        RoutingTable[NUM_COORDINATOR/8];                     // Routing Table
//        BYTE        NeighborRoutingTable[NUM_COORDINATOR][NUM_COORDINATOR/8]; // Neighbor Routing Table
//        BYTE        FamilyTree[NUM_COORDINATOR];                        // Family Tree
//        BYTE        Role;                                               // Coordinator role flag
//    #endif
//
//        BYTE        IsNetworkMember;         // 1 = Member of Network, 0 = Not Joined
//
//        BYTE        Reserved[8];             // Reserved for future use
//
//    } MIWI_CONFIG;
//#endif

uint8_t BCDtoDEC(uint8_t bcdValue);
void RTCC_Init(void);
void RTCC_SetFromMiWiTimestamp(uint32_t timestamp);
void RTCC_ReadTimeDate(rtccTimeDate *time);
void RTCC_SetFromMiWiTimestamp(uint32_t timestamp);
uint32_t RTCC_GetTimestamp(void);
BOOL SW_Pressed( volatile unsigned char *port, BYTE bitPos, MIWI_TICK *t_sw, int duration);

#define EXIT_PKT        1
#define RANGE_PKT       2
#define TEMP_PKT        3
#define ACK_PKT         4
#define REJOIN_PKT      5
#define RTCCTIME_PKT    6
#define PING_PKT        7
#define PONG_PKT        8

#endif	/* DEFINITIONS_H */

