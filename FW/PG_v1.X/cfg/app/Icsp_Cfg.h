#ifndef ICSP_CFG_H
#define ICSP_CFG_H

#include <xc.h>
// Library configure
#define ICSP_LOG_HW_INFO
#define ICSP_LOG_LEN                    APP_BUFFER_LOG_LEN
#define Icsp_Log_Buffer                 App_Log_Buffer       
//#define ICSP_Shared_IO_Module_Enable()  do{LATAbits.LATA4=1; TRISAbits.TRISA4=0; KIT_USB_Device_CDC_Uart_Enable();}while(0)
//#define ICSP_Shared_IO_Module_Disable() do{TRISAbits.TRISA4=1; KIT_USB_Device_CDC_Uart_Disable();}while(0)
#define ICSP_Shared_IO_Module_Enable()  Change_ICSP_To_I2C()
#define ICSP_Shared_IO_Module_Disable() Change_I2C_To_ICSP()
#define ICSP_Begin_Callback()           StatusLED_SetState(SLED_ACTIVE)
#define ICSP_Error_Callback()           StatusLED_SetState(SLED_FAIL)
#define ICSP_End_Callback()             StatusLED_SetState(SLED_IDLE)
#define ICSP_Exit()                     PIC16F188XX_ExitICSP()
#define ICSP_Entry()                    PIC16F188XX_EnterICSP()
#define ICSP_ChipErase()                PIC16F188XX_BulkEraseMemory()
#define ICSP_DownloadPE()               1 // set 1 if without PE
#define ICSP_BlankCheck()               1 // set 1 if not implemented
// PGD I/O configure
#define ICSP_PGD_SetDigitalInput()      (TRISBSET=(1<<4))
#define ICSP_PGD_SetDigitalOutput()     (TRISBCLR=(1<<4))
#define ICSP_PGD_GetValue()             PORTBbits.RB4
#define ICSP_PGD_SetHigh()              (LATBSET=(1<<4))
#define ICSP_PGD_SetLow()               (LATBCLR=(1<<4))
#define ICSP_PGD_Toggle()               (LATBINV=(1<<4))

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
#define ICSP_PGC_SetDigitalInput()      (TRISBSET=(1<<5))
#define ICSP_PGC_SetDigitalOutput()     (TRISBCLR=(1<<5))
#define ICSP_PGC_GetValue()             PORTBbits.RB5
#define ICSP_PGC_SetHigh()              (LATBSET=(1<<5))
#define ICSP_PGC_SetLow()               (LATBCLR=(1<<5))
#define ICSP_PGC_Toggle()               (LATBINV=(1<<5))

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
// MCLR I/O configure
#define ICSP_MCLR_SetDigitalInput()      (TRISASET=(1<<2))
#define ICSP_MCLR_SetDigitalOutput()     (TRISACLR=(1<<2))
#define ICSP_MCLR_GetValue()             PORTAbits.RA2
#define ICSP_MCLR_SetHigh()              do{LATASET=(1<<2); LATBSET=(1<<0);}while(0) // Set high ARD_RESET_N
#define ICSP_MCLR_SetLow()               do{LATACLR=(1<<2); LATBCLR=(1<<0);}while(0) // Set low ARD_RESET_N
#define ICSP_MCLR_Toggle()               do{LATAINV=(1<<2); LATBINV=(1<<0);}while(0) // Set toggle ARD_RESET_N

inline static void ICSP_MCLR_SetValue(bool value) {
    if (value) {
        ICSP_MCLR_SetDigitalInput();
        ICSP_MCLR_SetHigh();
    } else {
        ICSP_MCLR_SetLow();
        ICSP_MCLR_SetDigitalOutput();
    }

    while (ICSP_MCLR_GetValue() != value);
}

// VDDTG_EN I/O configure
#define VDDTG_EN_SetDigitalInput()      
#define VDDTG_EN_SetDigitalOutput()     
#define VDDTG_EN_GetValue()             0
#define VDDTG_EN_SetHigh()              
#define VDDTG_EN_SetLow()               
#define VDDTG_EN_Toggle()               

inline static void VDDTG_EN_SetValue(bool value) {
    if (value) {
        VDDTG_EN_SetDigitalInput();
        VDDTG_EN_SetHigh();
    } else {
        VDDTG_EN_SetLow();
        VDDTG_EN_SetDigitalOutput();
    }

    while (VDDTG_EN_GetValue() != value);
}

// VICSP_EN_N I/O configure
#define VICSP_EN_N_SetDigitalInput()      
#define VICSP_EN_N_SetDigitalOutput()     
#define VICSP_EN_N_GetValue()             0
#define VICSP_EN_N_SetHigh()              
#define VICSP_EN_N_SetLow()               
#define VICSP_EN_N_Toggle()               

inline static void VICSP_EN_N_SetValue(bool value) {
    if (value) {
        VICSP_EN_N_SetDigitalInput();
        VICSP_EN_N_SetHigh();
    } else {
        VICSP_EN_N_SetLow();
        VICSP_EN_N_SetDigitalOutput();
    }

    while (VICSP_EN_N_GetValue() != value);
}
#endif