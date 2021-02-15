#ifndef ICSP_CFG_H
#define ICSP_CFG_H

#define ICSP_LOG_LEN                    APP_BUFFER_LOG_LEN
#define Icsp_Log_Buffer                 App_Log_Buffer       
#define ICSP_Shared_IO_Module_Enable()  
#define ICSP_Shared_IO_Module_Disable() 
#define ICSP_LedActive()                
#define ICSP_LedRelease()               
#define ICSP_Exit()                     PIC16F188XX_ExitICSP()
#define ICSP_Entry()                    PIC16F188XX_EnterICSP()
#define ICSP_ChipErase()                PIC16F188XX_BulkEraseMemory()
#define ICSP_DownloadPE()               1 // set 1 if without PE
#define ICSP_BlankCheck()               1 // set 1 if not implemented

#define ICSP_PGD_SetHigh()              
#define ICSP_PGD_SetLow()               
#define ICSP_PGD_Toggle()               
#define ICSP_PGD_GetValue()             0
#define ICSP_PGD_SetDigitalInput()      
#define ICSP_PGD_SetDigitalOutput()     
#define ICSP_PGD_SetValue(value)        

#define ICSP_PGC_SetHigh()              
#define ICSP_PGC_SetLow()               
#define ICSP_PGC_Toggle()               
#define ICSP_PGC_GetValue()             0
#define ICSP_PGC_SetDigitalInput()      
#define ICSP_PGC_SetDigitalOutput()     
#define ICSP_PGC_SetValue(value)        

#define ICSP_MCLR_SetHigh()             
#define ICSP_MCLR_SetLow()              
#define ICSP_MCLR_Toggle()              
#define ICSP_MCLR_GetValue()            0
#define ICSP_MCLR_SetDigitalInput()     
#define ICSP_MCLR_SetDigitalOutput()    
#define ICSP_MCLR_SetValue(value)       

#endif