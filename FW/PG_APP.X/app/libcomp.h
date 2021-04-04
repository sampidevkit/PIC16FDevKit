#ifndef LIBCOMP_H
#define	LIBCOMP_H
/* *********************************************************** System Library */
#include <xc.h>
#include <time.h>
#include <stdint.h>
#include <stdbool.h>
/* ************************************************************** MCC Library */
#include "i2c1.h"
#include "clock.h"
#include "uart2.h"
#include "system.h"
#include "usb/usb.h"
#include "watchdog.h"
#include "exceptions.h"
#include "pin_manager.h"
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
#include "Ext_GPIO.h"
#include "I2C_Slaver.h"
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

#define APP_BUFFER_LOG_LEN              64
extern uint8_t App_Log_Buffer[APP_BUFFER_LOG_LEN];

public void DummyInterruptHandler(void);
public void LibComp_Initialize(void);

#endif