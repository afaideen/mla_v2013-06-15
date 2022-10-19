


#include "MyHelper.h"

BOOL APP_TIMER_Expired(UINT32 * timer, UINT32 seconds)
{
    if((TickGet() - *timer) > (seconds * 1000))
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
    return FALSE;
}

BOOL APP_TIMER_Expired_ms(UINT32 * timer, UINT32 mseconds)
{
    if((TickGet() - *timer) > (mseconds)) 
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
    return FALSE;
}

BOOL APP_TIMER_Set(UINT32 * timer)
{
    *timer = TickGet();
    return TRUE;
}

