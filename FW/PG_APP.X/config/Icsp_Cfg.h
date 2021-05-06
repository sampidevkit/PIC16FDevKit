#ifndef ICSP_CFG_H
#define ICSP_CFG_H

#include <xc.h>
// Library configure
#define ICSP_LOG_LEN                    APP_BUFFER_LOG_LEN
#define Icsp_Log_Buffer                 App_Log_Buffer       
//#define ICSP_Shared_IO_Module_Enable()  do{LATAbits.LATA4=1; TRISAbits.TRISA4=0; KIT_USB_Device_CDC_Uart_Enable();}while(0)
//#define ICSP_Shared_IO_Module_Disable() do{TRISAbits.TRISA4=1; KIT_USB_Device_CDC_Uart_Disable();}while(0)
#define ICSP_Shared_IO_Module_Enable()  Change_ICSP_To_I2C()
#define ICSP_Shared_IO_Module_Disable() Change_I2C_To_ICSP()
#define ICSP_LedActive()                Indicator_SetHigh(0)
#define ICSP_LedFail()                  Indicator_SetState(0, 500, 1000, IND_LOOP_FOREVER)
#define ICSP_LedRelease()               Indicator_SetState(0, 5, 995, IND_LOOP_FOREVER)
#define ICSP_Exit()                     PIC16F188XX_ExitICSP()
#define ICSP_Entry()                    PIC16F188XX_EnterICSP()
#define ICSP_ChipErase()                PIC16F188XX_BulkEraseMemory()
#define ICSP_DownloadPE()               1 // set 1 if without PE
#define ICSP_BlankCheck()               1 // set 1 if not implemented
// PGD I/O configure
#define ICSP_PGD_SetDigitalInput()      (TRISBSET=(1<<8))
#define ICSP_PGD_SetDigitalOutput()     (TRISBCLR=(1<<8))
#define ICSP_PGD_GetValue()             PORTBbits.RB8
#define ICSP_PGD_SetHigh()              (LATBSET=(1<<8))
#define ICSP_PGD_SetLow()               (LATBCLR=(1<<8))
#define ICSP_PGD_Toggle()               (LATBINV=(1<<8))

inline static void ICSP_PGD_SetValue(bool value) {
    if (value) {
        ICSP_PGD_SetDigitalInput();
        ICSP_PGD_SetHigh();
    } else {
        ICSP_PGD_SetLow();
        ICSP_PGD_SetDigitalOutput();
    }

    while (ICSP_PGD_GetValue() != value);
}
// PGC I/O configure
#define ICSP_PGC_SetDigitalInput()      (TRISBSET=(1<<9))
#define ICSP_PGC_SetDigitalOutput()     (TRISBCLR=(1<<9))
#define ICSP_PGC_GetValue()             PORTBbits.RB9
#define ICSP_PGC_SetHigh()              (LATBSET=(1<<9))
#define ICSP_PGC_SetLow()               (LATBCLR=(1<<9))
#define ICSP_PGC_Toggle()               (LATBINV=(1<<9))

inline static void ICSP_PGC_SetValue(bool value) {
    if (value) {
        ICSP_PGC_SetDigitalInput();
        ICSP_PGC_SetHigh();
    } else {
        ICSP_PGC_SetLow();
        ICSP_PGC_SetDigitalOutput();
    }

    while (ICSP_PGC_GetValue() != value);
}

#endif