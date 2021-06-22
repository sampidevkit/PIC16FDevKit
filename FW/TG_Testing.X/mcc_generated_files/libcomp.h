#ifndef LIBCOMP_H
#define	LIBCOMP_H
/* *********************************************************** System Library */
#include <xc.h>
#include <time.h>
#include <stdint.h>
#include <stdbool.h>
/* ************************************************************** MCC Library */
#include "mcc.h"
#include "examples/i2c1_master_example.h"
/* ************************************************************ SAMPI Library */
#include "common/LibDef.h"
#include "common/UserFunctions.h"
#include "rtcc/RV3028C7.h"
#include "memory/SST25xx.h"
#include "memory/samm7x.h"
#include "system/TickTimer.h"
/* ************************************************************** Application */

// Clock sources
#define SYS_CLK                         32000000UL
#define PB_CLK                          8000000UL
#define CORETIMER_CLK                   8000000UL
// Global interrupt
#define Disable_Global_Interrupt()      INTERRUPT_GlobalInterruptDisable()
#define Enable_Global_Interrupt()       INTERRUPT_GlobalInterruptEnable()
// Peripheral interrupt
#define Disable_Peripheral_Interrupt()  INTERRUPT_PeripheralInterruptDisable()
#define Enable_Peripheral_Interrupt()   INTERRUPT_PeripheralInterruptEnable()
// Core timer interrupt
#define Disable_Coretimer_Interrupt()   
#define Enable_Coretimer_Interrupt()    
#define Clear_Coretimer_Interrupt()     
#define ClrWdt()                        CLRWDT()

public void DummyInterruptHandler(void);
public void LibComp_Initialize(void);
bool I2C_Master_Write(uint8_t SlvAddr, uint8_t *pData, uint8_t Len);
bool I2C_Master_Read(uint8_t SlvAddr, uint8_t *pData, uint8_t Len);
void __debug(uint16_t line);

#endif