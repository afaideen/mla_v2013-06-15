#line 1 "mcc_generated_files/tmr0.c"
#line 1 "mcc_generated_files/tmr0.c"

#line 22 "mcc_generated_files/tmr0.c"
 


#line 45 "mcc_generated_files/tmr0.c"
 


#line 49 "mcc_generated_files/tmr0.c"
 


#line 1 "mcc_generated_files/tmr0.h"

#line 22 "mcc_generated_files/tmr0.h"
 


#line 45 "mcc_generated_files/tmr0.h"
 


#line 49 "mcc_generated_files/tmr0.h"


#line 52 "mcc_generated_files/tmr0.h"
 




#line 62 "mcc_generated_files/tmr0.h"




#line 67 "mcc_generated_files/tmr0.h"
 

#line 70 "mcc_generated_files/tmr0.h"


#line 73 "mcc_generated_files/tmr0.h"
 


#line 105 "mcc_generated_files/tmr0.h"
 
void TMR0_Initialize(void);


#line 134 "mcc_generated_files/tmr0.h"
 
void TMR0_StartTimer(void);


#line 166 "mcc_generated_files/tmr0.h"
 
void TMR0_StopTimer(void);



#line 202 "mcc_generated_files/tmr0.h"
 
uint16_t TMR0_ReadTimer(void);


#line 241 "mcc_generated_files/tmr0.h"
 
void TMR0_WriteTimer(uint16_t timerVal);


#line 277 "mcc_generated_files/tmr0.h"
 
void TMR0_Reload(void);


#line 295 "mcc_generated_files/tmr0.h"
 
void TMR0_ISR(void);


#line 313 "mcc_generated_files/tmr0.h"
 
void TMR0_CallBack(void);


#line 331 "mcc_generated_files/tmr0.h"
 
 void TMR0_SetInterruptHandler(void (* InterruptHandler)(void));


#line 349 "mcc_generated_files/tmr0.h"
 
extern void (*TMR0_InterruptHandler)(void);


#line 367 "mcc_generated_files/tmr0.h"
 
void TMR0_DefaultInterruptHandler(void);

#line 375 "mcc_generated_files/tmr0.h"

#line 377 "mcc_generated_files/tmr0.h"

#line 379 "mcc_generated_files/tmr0.h"
 #line 52 "mcc_generated_files/tmr0.c"



#line 56 "mcc_generated_files/tmr0.c"
 

void (*TMR0_InterruptHandler)(void);

volatile uint16_t timer0ReloadVal;


#line 64 "mcc_generated_files/tmr0.c"
 


void TMR0_Initialize(void)
{
    

    
    T0CONbits.T08BIT = 0;

    
    TMR0H = 0xF0;

    
    TMR0L = 0x5F;

	
    
    timer0ReloadVal = (uint16_t)((TMR0H << 8) | TMR0L);

    
    INTCONbits.TMR0IF = 0;

    
    INTCONbits.TMR0IE = 1;

    
    TMR0_SetInterruptHandler(TMR0_DefaultInterruptHandler);

    
    T0CON = 0x90;
}

void TMR0_StartTimer(void)
{
    
    T0CONbits.TMR0ON = 1;
}

void TMR0_StopTimer(void)
{
    
    T0CONbits.TMR0ON = 0;
}

uint16_t TMR0_ReadTimer(void)
{
    uint16_t readVal;
    uint8_t readValLow;
    uint8_t readValHigh;

    readValLow  = TMR0L;
    readValHigh = TMR0H;
    readVal  = ((uint16_t)readValHigh << 8) + readValLow;

    return readVal;
}

void TMR0_WriteTimer(uint16_t timerVal)
{
    
    TMR0H = timerVal >> 8;
    TMR0L = (uint8_t) timerVal;
}

void TMR0_Reload(void)
{
    
    TMR0H = timer0ReloadVal >> 8;
    TMR0L = (uint8_t) timer0ReloadVal;
}

void TMR0_ISR(void)
{

    
    INTCONbits.TMR0IF = 0;

    
    
    TMR0H = timer0ReloadVal >> 8;
    TMR0L = (uint8_t) timer0ReloadVal;

    
    
    TMR0_CallBack();

    
}

void TMR0_CallBack(void)
{
    

    if(TMR0_InterruptHandler)
    {
        TMR0_InterruptHandler();
    }
}

void TMR0_SetInterruptHandler(void (* InterruptHandler)(void)){
    TMR0_InterruptHandler = InterruptHandler;
}

void TMR0_DefaultInterruptHandler(void){
    
    
}


#line 175 "mcc_generated_files/tmr0.c"
 