#ifndef LIBCOMP_H
#define	LIBCOMP_H
/* *********************************************************** System Library */
#include <xc.h>
#include <time.h>
#include <stdint.h>
#include <stdbool.h>
/* ************************************************************** MCC Library */
#include "i2c2.h"
#include "clock.h"
#include "uart2.h"
#include "system.h"
#include "usb/usb.h"
#include "watchdog.h"
#include "exceptions.h"
#include "pin_manager.h"
#include "memory/flash.h"
#include "interrupt_manager.h"
/* ************************************************************ SAMPI Library */
#include "Buttons/Buttons.h"
#include "Buttons/ButtonApi.h"
#include "Common/LibDef.h"
#include "Common/RingBuffer.h"
#include "Common/UserFunctions.h"
#include "Indicator/Indicator.h"
#include "FileIO/files_lite.h"
#include "FileIO/fileio_lite.h"
#include "Kit/kit.h"
#include "Kit/kit_usb_device.h"
#include "Kit/kit_usb_device_msd.h"
#include "Kit/kit_usb_device_cdc.h"
#include "Programmer/HexParsing.h"
#include "Programmer/Icsp.h"
#include "Programmer/ICSP_FileIO.h"
#include "Programmer/ICSP_PIC16F188XX.h"
#include "Programmer/ICSP_Target_Device.h"
#include "System/TaskManager.h"
#include "System/TickCounter.h"
#include "System/TickTimer.h"
#include "System/Wdt.h"
#include "USB/usb_device_msd.h"
#include "USB/usb_device_cdc.h"
/* ************************************************************** Application */
#include "SRAM_Emulator.h"

// Clock sources
#define SYS_CLK                         24000000UL
#define PB_CLK                          12000000UL
#define CORETIMER_CLK                   12000000UL
// Global interrupt
#define Disable_Global_Interrupt()      __builtin_disable_interrupts()
#define Enable_Global_Interrupt()       __builtin_enable_interrupts()
// Peripheral interrupt
#define Disable_Peripheral_Interrupt()  // Not implemented in PIC32
#define Enable_Peripheral_Interrupt()   // Not implemented in PIC32
// Core timer interrupt
#define Disable_Coretimer_Interrupt()   (IEC0CLR=_IEC0_CTIE_MASK)
#define Enable_Coretimer_Interrupt()    (IEC0SET=_IEC0_CTIE_MASK)
#define Clear_Coretimer_Interrupt()     (IFS0CLR=_IFS0_CTIF_MASK)
// INFO.txt file
#define APP_BUFFER_LOG_LEN              128
extern uint8_t App_Log_Buffer[APP_BUFFER_LOG_LEN];
// ICSP FileIO
extern bool MediaReady;
// States of status LED

typedef enum {
    SLED_IDLE,
    SLED_ACTIVE,
    SLED_RESET,
    SLED_FAIL,
    SLED_ONESHOT
} sled_t;

public void DummyInterruptHandler(void);
public void LibComp_Initialize(void);
public uint8_t Hardware_Info(uint8_t *pD);
public void Change_I2C_To_ICSP(void);
public void Change_ICSP_To_I2C(void);
public void StatusLED_SetState(sled_t State);
public bool ProgButton_GetState(void);

#endif