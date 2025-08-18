#include "mcc_generated_files/system/system.h"
#include "mcc_generated_files/usb/usb_cdc/usb_cdc.h"
#include "mcc_generated_files/usb/usb_cdc/usb_cdc_virtual_serial_port.h"
#include "system/system_tick.h"
#include "system/task_manager.h"
#include "system/soft_wdt.h"
#include "misc/button.h"
#include "misc/indicator.h"
#include "VCP.h"

static bt_cxt_t ModeBtCxt;

static void SYS_Wait(void)
{
    TaskManager();
}

static void EarlyWdtCallback(void)
{
    
}

int main(void)
{
    SYSTEM_Initialize();
    Tick_Timer_Init(SYS_Wait);
    TaskManager_Init();
    Indicator_Init();
    softWDT_Init(8, EarlyWdtCallback);
    BUTTON_Init(&ModeBtCxt, NULL, NULL, NULL);
    VCP_Init();
    
    LED_BUSY_SetHigh();
    
    while(1)
    {
        TaskManager();
        
    }
}