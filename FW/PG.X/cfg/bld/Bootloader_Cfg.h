#ifndef BOOTLOADER_CFG_H
#define BOOTLOADER_CFG_H

#define BLD_Trigger_GetState()  nPG_BT_GetValue()
#define BLD_Trigger_Init()      do{nPG_BT_SetDigitalInput(); CNPUCbits.CNPUC9=1;}while(0)
#define BLD_Comm_Init()         KIT_USB_Device_Init() // Uncomment in UART BLD mode
#define BLD_SystemReboot()      WDT_Disable()
#define USE_BOOTLOADER_BUILTIN_EXCEPTION
#define BLD_SKIP_TIGGER_TIMEOUT

/* ************************************************************ UART BLD only */
//#define BLD_IsRxReady()     UART2_IsRxReady()
//#define BLD_IsTxReady()     UART2_IsTxReady()
//#define BLD_Read()          UART2_Read()
//#define BLD_Write(b)        UART2_Write(b)
//#define BLD_BUFFER_SIZE     48
//
//#define __PROJECT_NAME__    "SAMPI BOOTLOADER"
//#define __HARDWARE_ID__     "SAMM-57 v1.2"
//#define __WEBSITE__         "https://github.com/sampidevkit/PIC16FDevKit/tree/pic16lf18857"

#endif