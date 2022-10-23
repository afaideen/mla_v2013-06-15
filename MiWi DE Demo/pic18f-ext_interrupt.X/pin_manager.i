#line 1 "mcc_generated_files/pin_manager.c"
#line 1 "mcc_generated_files/pin_manager.c"

#line 24 "mcc_generated_files/pin_manager.c"
 


#line 47 "mcc_generated_files/pin_manager.c"
 

#line 1 "mcc_generated_files/pin_manager.h"

#line 22 "mcc_generated_files/pin_manager.h"
 


#line 45 "mcc_generated_files/pin_manager.h"
 


#line 49 "mcc_generated_files/pin_manager.h"


#line 52 "mcc_generated_files/pin_manager.h"
 



#line 57 "mcc_generated_files/pin_manager.h"
#line 58 "mcc_generated_files/pin_manager.h"

#line 60 "mcc_generated_files/pin_manager.h"
#line 61 "mcc_generated_files/pin_manager.h"

#line 63 "mcc_generated_files/pin_manager.h"
#line 64 "mcc_generated_files/pin_manager.h"

#line 66 "mcc_generated_files/pin_manager.h"
#line 67 "mcc_generated_files/pin_manager.h"


#line 70 "mcc_generated_files/pin_manager.h"
#line 71 "mcc_generated_files/pin_manager.h"
#line 72 "mcc_generated_files/pin_manager.h"
#line 73 "mcc_generated_files/pin_manager.h"
#line 74 "mcc_generated_files/pin_manager.h"
#line 75 "mcc_generated_files/pin_manager.h"
#line 76 "mcc_generated_files/pin_manager.h"
#line 77 "mcc_generated_files/pin_manager.h"
#line 78 "mcc_generated_files/pin_manager.h"
#line 79 "mcc_generated_files/pin_manager.h"
#line 80 "mcc_generated_files/pin_manager.h"
#line 81 "mcc_generated_files/pin_manager.h"
#line 82 "mcc_generated_files/pin_manager.h"
#line 83 "mcc_generated_files/pin_manager.h"
#line 84 "mcc_generated_files/pin_manager.h"


#line 87 "mcc_generated_files/pin_manager.h"
#line 88 "mcc_generated_files/pin_manager.h"
#line 89 "mcc_generated_files/pin_manager.h"
#line 90 "mcc_generated_files/pin_manager.h"
#line 91 "mcc_generated_files/pin_manager.h"
#line 92 "mcc_generated_files/pin_manager.h"
#line 93 "mcc_generated_files/pin_manager.h"
#line 94 "mcc_generated_files/pin_manager.h"
#line 95 "mcc_generated_files/pin_manager.h"
#line 96 "mcc_generated_files/pin_manager.h"
#line 97 "mcc_generated_files/pin_manager.h"
#line 98 "mcc_generated_files/pin_manager.h"
#line 99 "mcc_generated_files/pin_manager.h"
#line 100 "mcc_generated_files/pin_manager.h"
#line 101 "mcc_generated_files/pin_manager.h"


#line 111 "mcc_generated_files/pin_manager.h"
 
void PIN_MANAGER_Initialize (void);


#line 123 "mcc_generated_files/pin_manager.h"
 
void PIN_MANAGER_IOC(void);


#line 146 "mcc_generated_files/pin_manager.h"
 
void IOC_SetInterruptHandler(void (* InterruptHandler)(void));


#line 170 "mcc_generated_files/pin_manager.h"
 
extern void (*IOC_InterruptHandler)(void);


#line 194 "mcc_generated_files/pin_manager.h"
 
void IOC_DefaultInterruptHandler(void);



#line 200 "mcc_generated_files/pin_manager.h"

#line 202 "mcc_generated_files/pin_manager.h"
 #line 49 "mcc_generated_files/pin_manager.c"


void (*IOC_InterruptHandler)(void);

void PIN_MANAGER_Initialize(void)
{
    
#line 57 "mcc_generated_files/pin_manager.c"
 
    LATE = 0x00;
    LATD = 0x00;
    LATA = 0x00;
    LATB = 0x00;
    LATC = 0x00;

    
#line 66 "mcc_generated_files/pin_manager.c"
 
    TRISE = 0xC7;
    TRISA = 0xEF;
    TRISB = 0xFF;
    TRISC = 0xFF;
    TRISD = 0xFF;

    
#line 75 "mcc_generated_files/pin_manager.c"
 
    ANCON0 = 0x0F;
    ANCON1 = 0x14;

    
#line 81 "mcc_generated_files/pin_manager.c"
 
    INTCON2bits.nRBPU = 1;
    TRISEbits.RDPU = 1;
    TRISEbits.REPU = 1;

    
#line 88 "mcc_generated_files/pin_manager.c"
 
    ODCON1 = 0x00;
    ODCON2 = 0x00;
    ODCON3 = 0x00;


   
	
    IOC_SetInterruptHandler(IOC_DefaultInterruptHandler);
	
    
    INTCONbits.RBIE = 1; 

}

void PIN_MANAGER_IOC(void)
{	
	
    INTCONbits.RBIF = 0;
	if(IOC_InterruptHandler)
    {
        IOC_InterruptHandler();
    }
}


#line 115 "mcc_generated_files/pin_manager.c"
 
void IOC_SetInterruptHandler(void (* InterruptHandler)(void)){
    IOC_InterruptHandler = InterruptHandler;
}


#line 122 "mcc_generated_files/pin_manager.c"
 
void IOC_DefaultInterruptHandler(void){
    
    
}

#line 129 "mcc_generated_files/pin_manager.c"
 