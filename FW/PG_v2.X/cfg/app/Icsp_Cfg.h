#ifndef ICSP_CFG_H
#define ICSP_CFG_H

#include <xc.h>
#include <stdint.h>
#include <stdbool.h>

// Library configure
#define ICSP_LOG_HW_INFO
#define ICSP_LOG_LEN                        APP_BUFFER_LOG_LEN
#define Icsp_Log_Buffer                     App_Log_Buffer       
#define ICSP_Deinit_UserCb()                Change_Mode_To_Running()
#define ICSP_Init_UserCb()                  Change_Mode_To_ICSP()
#define ICSP_Init_Indicator()               StatusLED_SetState(SLED_ACTIVE)
#define ICSP_Error_Indicator()              StatusLED_SetState(SLED_FAIL)
#define ICSP_Deinit_Indicator()             StatusLED_SetState(SLED_IDLE)
#define ICSP_Exit()                         PIC16F188XX_ExitICSP()
#define ICSP_Entry()                        PIC16F188XX_EnterICSP()
#define ICSP_ChipErase()                    PIC16F188XX_BulkEraseMemory()
#define ICSP_DownloadPE()                   1 // set 1 if without PE
#define ICSP_BlankCheck()                   1 // set 1 if not implemented
// PGD I/O configure
#define ICSP_PGD_SetDigitalInput()          (TRISBSET=(1<<8))
#define ICSP_PGD_SetDigitalOutput()         (TRISBCLR=(1<<8))
#define ICSP_PGD_GetValue()                 PORTBbits.RB8
#define ICSP_PGD_SetHigh()                  (LATBSET=(1<<8))
#define ICSP_PGD_SetLow()                   (LATBCLR=(1<<8))
#define ICSP_PGD_Toggle()                   (LATBINV=(1<<8))
#define ICSP_PGD_Pullup_Set()               (CNPUBSET=(1<<8))
#define ICSP_PGD_Pullup_Release()           (CNPUBCLR=(1<<8))

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
#define ICSP_PGC_SetDigitalInput()          (TRISBSET=(1<<9))
#define ICSP_PGC_SetDigitalOutput()         (TRISBCLR=(1<<9))
#define ICSP_PGC_GetValue()                 PORTBbits.RB9
#define ICSP_PGC_SetHigh()                  (LATBSET=(1<<9))
#define ICSP_PGC_SetLow()                   (LATBCLR=(1<<9))
#define ICSP_PGC_Toggle()                   (LATBINV=(1<<9))
#define ICSP_PGC_Pullup_Set()               (CNPUBSET=(1<<9))
#define ICSP_PGC_Pullup_Release()           (CNPUBCLR=(1<<9))

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
#define ICSP_MCLR_SetDigitalInput()         (TRISBSET=(1<<4))
#define ICSP_MCLR_SetDigitalOutput()        (TRISBCLR=(1<<4))
#define ICSP_MCLR_GetValue()                PORTBbits.RB4
#define ICSP_MCLR_SetHigh()                 (LATBSET=(1<<4))
#define ICSP_MCLR_SetLow()                  (LATBCLR=(1<<4))
#define ICSP_MCLR_Toggle()                  (LATBINV=(1<<4))

inline static void ICSP_MCLR_SetValue(bool value) {
    if (value)
        ICSP_MCLR_SetHigh();
    else
        ICSP_MCLR_SetLow();

    while (ICSP_MCLR_GetValue() != value);
}
// VDDTG_EN I/O configure
#define ICSP_VDDTG_EN_SetDigitalInput()     (TRISBSET=(1<<15))
#define ICSP_VDDTG_EN_SetDigitalOutput()    (TRISBCLR=(1<<15))
#define ICSP_VDDTG_EN_GetValue()            PORTBbits.RB15
#define ICSP_VDDTG_EN_SetHigh()             (LATBSET=(1<<15))
#define ICSP_VDDTG_EN_SetLow()              (LATBCLR=(1<<15))
#define ICSP_VDDTG_EN_Toggle()              (LATBINV=(1<<15))

inline static void ICSP_VDDTG_EN_SetValue(bool value) {
    if (value)
        ICSP_VDDTG_EN_SetHigh();
    else
        ICSP_VDDTG_EN_SetLow();

    while (ICSP_VDDTG_EN_GetValue() != value);
}
// VBUS_EN_N I/O configure
#define ICSP_VBUS_EN_N_SetDigitalInput()    (TRISBSET=(1<<2))
#define ICSP_VBUS_EN_N_SetDigitalOutput()   (TRISBCLR=(1<<2))
#define ICSP_VBUS_EN_N_GetValue()           PORTBbits.RB2
#define ICSP_VBUS_EN_N_SetHigh()            (LATBSET=(1<<2))
#define ICSP_VBUS_EN_N_SetLow()             (LATBCLR=(1<<2))
#define ICSP_VBUS_EN_N_Toggle()             (LATBINV=(1<<2))

inline static void ICSP_VBUS_EN_N_SetValue(bool value) {
    if (value)
        ICSP_VBUS_EN_N_SetHigh();
    else
        ICSP_VBUS_EN_N_SetLow();

    while (ICSP_VBUS_EN_N_GetValue() != value);
}

void Change_Mode_To_ICSP(void);
void Change_Mode_To_Running(void);

#endif