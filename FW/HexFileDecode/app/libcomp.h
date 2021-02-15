#ifndef LIBCOMP_H
#define	LIBCOMP_H
/* *********************************************************** System Library */
#include <time.h>
#include <stdint.h>
#include <stdbool.h>
/* ************************************************************** MCC Library */

/* ************************************************************ SAMPI Library */
#include "Common/LibDef.h"
#include "Common/UserFunctions.h"
#include "Programmer/HexParsing.h"
#include "Programmer/Icsp.h"
#include "Programmer/ICSP_PIC16F188XX.h"
#include "Programmer/ICSP_Target_Device.h"
#include "System/TickTimer.h"
/* ************************************************************** Application */
#define ClrWdt()
// Global interrupt
#define Disable_Global_Interrupt()      
#define Enable_Global_Interrupt()       
// Peripheral interrupt
#define Disable_Peripheral_Interrupt()  
#define Enable_Peripheral_Interrupt()   
// Core timer interrupt
#define Disable_Coretimer_Interrupt()   
#define Enable_Coretimer_Interrupt()    
#define Clear_Coretimer_Interrupt()     

#define APP_BUFFER_LOG_LEN              64
extern uint8_t App_Log_Buffer[APP_BUFFER_LOG_LEN];

public void LogTask(void);
public int8_t NVM_Write(uint32_t Addr, const uint8_t *pData, uint8_t Len);
public void DummyInterruptHandler(void);
public void LibComp_Initialize(void);

#endif