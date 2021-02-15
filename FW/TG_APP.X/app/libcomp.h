#ifndef LIBCOMP_H
#define	LIBCOMP_H
/* *********************************************************** System Library */
#include <xc.h>
#include <time.h>
#include <stdint.h>
#include <stdbool.h>
/* ************************************************************** MCC Library */
#include "mcc.h"
#include "device_config.h"
#include "eusart.h"
#include "tmr0.h"
#include "pin_manager.h"
#include "interrupt_manager.h"
/* ************************************************************ SAMPI Library */
#include "common/LibDef.h"
#include "system/TickTimer.h"
/* ************************************************************** Application */
#define ClrWdt()                        CLRWDT()
// Global interrupt
#define Disable_Global_Interrupt()      INTERRUPT_GlobalInterruptDisable()
#define Enable_Global_Interrupt()       INTERRUPT_GlobalInterruptEnable()
// Peripheral interrupt
#define Disable_Peripheral_Interrupt()  INTERRUPT_PeripheralInterruptDisable()
#define Enable_Peripheral_Interrupt()   INTERRUPT_PeripheralInterruptEnable()
// Core timer interrupt
#define Disable_Coretimer_Interrupt()   (T0CON0bits.T0EN=0)
#define Enable_Coretimer_Interrupt()    (T0CON0bits.T0EN=1)
#define Clear_Coretimer_Interrupt()     (PIR0bits.TMR0IF=0)

public void DummyInterruptHandler(void);
public void LibComp_Initialize(void);

#endif