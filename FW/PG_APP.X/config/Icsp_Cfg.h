#ifndef ICSP_CFG_H
#define ICSP_CFG_H

#define ICSP_LOG_LEN                    APP_BUFFER_LOG_LEN
#define Icsp_Log_Buffer                 App_Log_Buffer       
#define ICSP_Shared_IO_Module_Enable()  do{LATAbits.LATA4=1; TRISAbits.TRISA4=0; KIT_USB_Device_CDC_Uart_Enable();}while(0)
#define ICSP_Shared_IO_Module_Disable() do{TRISAbits.TRISA4=1; KIT_USB_Device_CDC_Uart_Disable();}while(0)
#define ICSP_LedActive()                Indicator_SetHigh(0)
#define ICSP_LedRelease()               Indicator_SetState(0, 5, 995, IND_LOOP_FOREVER)
#define ICSP_Exit()                     PIC16F188XX_ExitICSP()
#define ICSP_Entry()                    PIC16F188XX_EnterICSP()
#define ICSP_ChipErase()                PIC16F188XX_BulkEraseMemory()
#define ICSP_DownloadPE()               1 // set 1 if without PE
#define ICSP_BlankCheck()               1 // set 1 if not implemented

#define ICSP_PGD_SetHigh()              TG_PGD_SetHigh()
#define ICSP_PGD_SetLow()               TG_PGD_SetLow()
#define ICSP_PGD_Toggle()               TG_PGD_Toggle()
#define ICSP_PGD_GetValue()             TG_PGD_GetValue()
#define ICSP_PGD_SetDigitalInput()      TG_PGD_SetDigitalInput()
#define ICSP_PGD_SetDigitalOutput()     TG_PGD_SetDigitalOutput()
#define ICSP_PGD_SetValue(value)        TG_PGD_SetValue(value)

#define ICSP_PGC_SetHigh()              TG_PGC_SetHigh()
#define ICSP_PGC_SetLow()               TG_PGC_SetLow()
#define ICSP_PGC_Toggle()               TG_PGC_Toggle()
#define ICSP_PGC_GetValue()             TG_PGC_GetValue()
#define ICSP_PGC_SetDigitalInput()      TG_PGC_SetDigitalInput()
#define ICSP_PGC_SetDigitalOutput()     TG_PGC_SetDigitalOutput()
#define ICSP_PGC_SetValue(value)        TG_PGC_SetValue(value)

#define ICSP_MCLR_SetHigh()             TG_MCLR_SetHigh()
#define ICSP_MCLR_SetLow()              TG_MCLR_SetLow()
#define ICSP_MCLR_Toggle()              TG_MCLR_Toggle()
#define ICSP_MCLR_GetValue()            TG_MCLR_GetValue()
#define ICSP_MCLR_SetDigitalInput()     TG_MCLR_SetDigitalInput()
#define ICSP_MCLR_SetDigitalOutput()    TG_MCLR_SetDigitalOutput()
#define ICSP_MCLR_SetValue(value)       TG_MCLR_SetValue(value)

#endif