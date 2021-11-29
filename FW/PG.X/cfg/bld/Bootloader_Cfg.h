#ifndef BOOTLOADER_CFG_H
#define BOOTLOADER_CFG_H

#define BLD_Trigger_GetState()  (PG_BT_N_GetValue()|BOOT_N_GetValue())
#define BLD_Trigger_Init()      
#define BLD_Comm_Init()         KIT_USB_Device_Init() // Uncomment in UART BLD mode
#define BLD_SystemReboot()      WDT_Disable()
#define USE_BOOTLOADER_BUILTIN_EXCEPTION
#define BLD_SKIP_TIGGER_TIMEOUT

#endif