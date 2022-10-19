/* 
 * File:   MyHelper.h
 * Author: han
 *
 * Created on 05 February 2022, 23:45
 */

#ifndef MYHELPER_H
#define	MYHELPER_H

#include "../GenericTypeDefs.h"
#include "../Compiler.h"
//#include "../include/TCPIP Stack/Tick.h"
#include "Tick.h"

BOOL APP_TIMER_Expired(UINT32 * timer, UINT32 seconds);
BOOL APP_TIMER_Expired_ms(UINT32 * timer, UINT32 mseconds);
BOOL APP_TIMER_Set(UINT32 * timer);




#endif	/* MYHELPER_H */

