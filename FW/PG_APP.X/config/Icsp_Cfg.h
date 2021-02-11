#ifndef ICSP_CFG_H
#define ICSP_CFG_H

#define ICSP_LOG_LEN                    APP_BUFFER_LOG_LEN
#define Icsp_Log_Buffer                 App_Log_Buffer       
#define ICSP_Shared_IO_Module_Enable()  KIT_USB_Device_CDC_Uart_Enable()
#define ICSP_Shared_IO_Module_Disable() KIT_USB_Device_CDC_Uart_Disable()
#define ICSP_LedActive()                Indicator_SetHigh(0)
#define ICSP_LedRelease()               Indicator_SetState(0, 5, 995, IND_LOOP_FOREVER)
#define ICSP_Exit()                     PIC16F188XX_ExitICSP()
#define ICSP_Entry()                    PIC16F188XX_EnterICSP()
#define ICSP_ChipErase()                PIC16F188XX_MTAP_ChipErase()
#define ICSP_DownloadPE()               1 // set 1 if without PE
#define ICSP_BlankCheck()               PIC16F188XX_PE_BlankCheck(TARGET_PFM_START, TARGET_PFM_WORD_LENGTH)
#define ICSP_DWordProg(Addr, W1, W0)    PIC16F188XX_PE_DoubleWordProg(Addr, W1, W0)

#endif