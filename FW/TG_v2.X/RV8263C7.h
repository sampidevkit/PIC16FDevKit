#ifndef RV8263C7_H
#define RV8263C7_H

#include <time.h>
#include "examples/i2c1_master_example.h"

#define RV8263C7_SLAVE_ADDR         0b01010001
/* **************************************************** REGISTER ORGANIZATION */
#define RV8263C7_REG_CONTROL1       0x00
#define RV8263C7_REG_CONTROL2       0x01
#define RV8263C7_REG_OFFSET         0x02
#define RV8263C7_REG_RAM            0x03
#define RV8263C7_REG_SECOND         0x04
#define RV8263C7_REG_MINUTE         0x05
#define RV8263C7_REG_HOUR_24        0x06
#define RV8263C7_REG_HOUR_12        0x06
#define RV8263C7_REG_DATE           0x07
#define RV8263C7_REG_WEEKDAY        0x08
#define RV8263C7_REG_MONTH          0x09
#define RV8263C7_REG_YEAR           0x0A
#define RV8263C7_REG_SEC_ALARM      0x0B
#define RV8263C7_REG_MIN_ALARM      0x0C
#define RV8263C7_REG_HRS24_ALARM    0x0D
#define RV8263C7_REG_HRS12_ALARM    0x0D
#define RV8263C7_REG_DATE_ALARM     0x0E
#define RV8263C7_REG_WKDAY_ALARM    0x0F
#define RV8263C7_REG_TMR_VALUE      0x10
#define RV8263C7_REG_TMR_MODE       0x11

/* *************************************************************** BITS FIELD */
#ifdef __XC8
#define __bit_t unsigned
#else
#define __bit_t uint8_t
#endif
// Control and status register 1.
#define RV8263C7_CONTROL1_CAP_POS       0
#define RV8263C7_CONTROL1_CAP_LEN       1
#define RV8263C7_CONTROL1_CAP_MASK      0b00000001

#define RV8263C7_CONTROL1_H12_24_POS    1
#define RV8263C7_CONTROL1_H12_24_LEN    1
#define RV8263C7_CONTROL1_H12_24_MASK   0b000000010

#define RV8263C7_CONTROL1_CIE_POS       2
#define RV8263C7_CONTROL1_CIE_LEN       1
#define RV8263C7_CONTROL1_CIE_MASK      0b000000100

#define RV8263C7_CONTROL1_SR1_POS       3
#define RV8263C7_CONTROL1_SR1_LEN       2
#define RV8263C7_CONTROL1_SR1_MASK      0b00011000

#define RV8263C7_CONTROL1_STOP_POS      5
#define RV8263C7_CONTROL1_STOP_LEN      1
#define RV8263C7_CONTROL1_STOP_MASK     0b00100000

#define RV8263C7_CONTROL1_SR2_POS       6
#define RV8263C7_CONTROL1_SR2_LEN       1
#define RV8263C7_CONTROL1_SR2_MASK      0b01000000

#define RV8263C7_CONTROL1_TEST_POS      7
#define RV8263C7_CONTROL1_TEST_LEN      1
#define RV8263C7_CONTROL1_TEST_MASK     0b10000000

typedef union {
    uint8_t value;

    struct {
        __bit_t CAP : 1; // Must always be written with logic 0.
        __bit_t H12_24 : 1; // 12 or 24 hour mode
        __bit_t CIE : 1; // Compensation Interrupt Enable 
        __bit_t SR1 : 2; // Software Reset 
        __bit_t STOP : 1; // RTC stop
        __bit_t SR2 : 1; // Software Reset 
        __bit_t TEST : 1; // Test mode
    };
} rv8263c7_ctrl1_t;
// Control and status register 2.
#define RV8263C7_CONTROL2_FD_POS      0
#define RV8263C7_CONTROL2_FD_LEN      3
#define RV8263C7_CONTROL2_FD_MASK     0b00000111

#define RV8263C7_CONTROL2_TF_POS      3
#define RV8263C7_CONTROL2_TF_LEN      1
#define RV8263C7_CONTROL2_TF_MASK     0b00001000

#define RV8263C7_CONTROL2_HMI_POS     4
#define RV8263C7_CONTROL2_HMI_LEN     1
#define RV8263C7_CONTROL2_HMI_MASK    0b00010000

#define RV8263C7_CONTROL2_MI_POS      5
#define RV8263C7_CONTROL2_MI_LEN      1
#define RV8263C7_CONTROL2_MI_MASK     0b00100000

#define RV8263C7_CONTROL2_AF_POS      6
#define RV8263C7_CONTROL2_AF_LEN      1
#define RV8263C7_CONTROL2_AF_MASK     0b01000000

#define RV8263C7_CONTROL2_AIE_POS     7
#define RV8263C7_CONTROL2_AIE_LEN     1
#define RV8263C7_CONTROL2_AIE_MASK    0b10000000

typedef union {
    uint8_t value;

    struct {
        __bit_t FD : 3; // CLKOUT Frequency
        __bit_t TF : 1; // Timer Flag
        __bit_t HMI : 1; // Half Minute Interrupt Enable
        __bit_t MI : 1; // Minute Interrupt Enable
        __bit_t AF : 1; // Alarm Flag
        __bit_t AIE : 1; // Alarm Interrupt Enable
    };
} rv8263c7_ctrl2_t;
// Offset Register
#define RV8263C7_OFFSET_OFFSET_POS  0
#define RV8263C7_OFFSET_OFFSET_LEN  7
#define RV8263C7_OFFSET_OFFSET_MASK 0b01111111

#define RV8263C7_OFFSET_MODE_POS    7
#define RV8263C7_OFFSET_MODE_LEN    1
#define RV8263C7_OFFSET_MODE_MASK   0b10000000

typedef union {
    uint8_t value;

    struct {
        __bit_t OFFSET : 7; // Offset value
        __bit_t MODE : 1; // Offset Mode
    };
} rv8263c7_offset_t;
// Seconds register
#define RV8263C7_SEC_SEC_POS    0
#define RV8263C7_SEC_SEC_LEN    7
#define RV8263C7_SEC_SEC_MASK   0b01111111

#define RV8263C7_SEC_OS_POS     7
#define RV8263C7_SEC_OS_LEN     1
#define RV8263C7_SEC_OS_MASK    0b10000000

typedef union {
    uint8_t value;

    struct {
        __bit_t SEC : 7; // Holds the count of minutes, coded in BCD format
        __bit_t OS : 1; // Oscillator Stop
    };
} rv8263c7_sec_t;
// Hours 12 register
#define RV8263C7_HRS12_HOUR_POS     0
#define RV8263C7_HRS12_HOUR_LEN     5
#define RV8263C7_HRS12_HOUR_MASK    0b00011111

#define RV8263C7_HRS12_AMPM_POS     5
#define RV8263C7_HRS12_AMPM_LEN     1
#define RV8263C7_HRS12_AMPM_MASK    0b00100000

typedef union {
    uint8_t value;

    struct {
        __bit_t HOUR : 5; // Holds the count of hours, coded in BCD format
        __bit_t AMPM : 1; // AM hours or PM hours
        __bit_t _RFU : 2;
    };
} rv8263c7_hrs12_t;
// Seconds alarm register
#define RV8263C7_SEC_ALM_SEC_POS    0
#define RV8263C7_SEC_ALM_SEC_LEN    7
#define RV8263C7_SEC_ALM_SEC_MASK   0b01111111

#define RV8263C7_SEC_ALM_AE_S_POS   7
#define RV8263C7_SEC_ALM_AE_S_LEN   1
#define RV8263C7_SEC_ALM_AE_S_MASK  0b10000000

typedef union {
    uint8_t value;

    struct {
        __bit_t SEC : 7; // Holds the alarm value for seconds, coded in BCD format
        __bit_t AE_S : 1; // Seconds Alarm Enable bit
    };
} rv8263c7_sec_alm_t;
// Minutes alarm register
#define RV8263C7_MIN_ALM_MIN_POS    0
#define RV8263C7_MIN_ALM_MIN_LEN    7
#define RV8263C7_MIN_ALM_MIN_MASK   0b01111111

#define RV8263C7_MIN_ALM_AE_M_POS   7
#define RV8263C7_MIN_ALM_AE_M_LEN   1
#define RV8263C7_MIN_ALM_AE_M_MASK  0b10000000

typedef union {
    uint8_t value;

    struct {
        __bit_t MIN : 7; // Holds the alarm value for minutes, coded in BCD format
        __bit_t AE_M : 1; // Minutes Alarm Enable bit
    };
} rv8263c7_min_alm_t;
// Hours 24 alarm register
#define RV8263C7_HRS24_ALM_HOUR_POS      0
#define RV8263C7_HRS24_ALM_HOUR_LEN      6
#define RV8263C7_HRS24_ALM_HOUR_MASK     0b00111111

#define RV8263C7_HRS24_ALM_AE_H_POS      7
#define RV8263C7_HRS24_ALM_AE_H_LEN      1
#define RV8263C7_HRS24_ALM_AE_H_MASK     0b10000000

typedef union {
    uint8_t value;

    struct {
        __bit_t HOUR : 6; // Holds the alarm value for hours, coded in BCD format
        __bit_t _RFU : 1;
        __bit_t AE_H : 1; // Hours Alarm Enable bit
    };
} rv8263c7_hrs24_alm_t;
// Hours 12 alarm register
#define RV8263C7_HRS12_ALM_HOUR_POS     0
#define RV8263C7_HRS12_ALM_HOUR_LEN     5
#define RV8263C7_HRS12_ALM_HOUR_MASK    0b00011111

#define RV8263C7_HRS12_ALM_AMPM_POS     5
#define RV8263C7_HRS12_ALM_AMPM_LEN     1
#define RV8263C7_HRS12_ALM_AMPM_MASK    0b00100000

#define RV8263C7_HRS12_ALM_AE_H_POS     7
#define RV8263C7_HRS12_ALM_AE_H_LEN     1
#define RV8263C7_HRS12_ALM_AE_H_MASK    0b10000000

typedef union {
    uint8_t value;

    struct {
        __bit_t HOUR : 5; // Holds the alarm value for hours, coded in BCD format
        __bit_t AMPM : 1; // AM hours or PM hours
        __bit_t _RFU : 1;
        __bit_t AE_H : 1; // Hours Alarm Enable bit
    };
} rv8263c7_hrs12_alm_t;
// Date alarm register
#define RV8263C7_DATE_ALM_DATE_POS  0
#define RV8263C7_DATE_ALM_DATE_LEN  7
#define RV8263C7_DATE_ALM_DATE_MASK 0b01111111

#define RV8263C7_DATE_ALM_AE_D_POS  7
#define RV8263C7_DATE_ALM_AE_D_LEN  1
#define RV8263C7_DATE_ALM_AE_D_MASK 0b10000000

typedef union {
    uint8_t value;

    struct {
        __bit_t DATE : 7; // Holds the alarm value for the date, coded in BCD format
        __bit_t AE_D : 1; // Date Alarm Enable bit
    };
} rv8263c7_date_alm_t;
// Week-day alarm register
#define RV8263C7_WKDAY_ALM_WKDAY_POS    0
#define RV8263C7_WKDAY_ALM_WKDAY_LEN    3
#define RV8263C7_WKDAY_ALM_WKDAY_MASK   0b00000111

#define RV8263C7_WKDAY_ALM_AE_W_POS     7
#define RV8263C7_WKDAY_ALM_AE_W_LEN     1
#define RV8263C7_WKDAY_ALM_AE_W_MASK    0b10000000

typedef union {
    uint8_t value;

    struct {
        __bit_t WKDAY : 3; // Holds the weekday alarm value, coded in BCD format.
        __bit_t _RFU : 4;
        __bit_t AE_W : 1; // Weekday Alarm Enable bit 
    };
} rv8263c7_wkday_alm_t;
// Timer mode register
#define RV8263C7_TMR_MODE_TI_TP_POS     0
#define RV8263C7_TMR_MODE_TI_TP_LEN     1
#define RV8263C7_TMR_MODE_TI_TP_MASK    0b00000001

#define RV8263C7_TMR_MODE_TIE_POS       1
#define RV8263C7_TMR_MODE_TIE_LEN       1
#define RV8263C7_TMR_MODE_TIE_MASK      0b00000010

#define RV8263C7_TMR_MODE_TE_POS        2
#define RV8263C7_TMR_MODE_TE_LEN        1
#define RV8263C7_TMR_MODE_TE_MASK       0b00000100

#define RV8263C7_TMR_MODE_TD_POS        3
#define RV8263C7_TMR_MODE_TD_LEN        2
#define RV8263C7_TMR_MODE_TD_MASK       0b00011000

typedef union {
    uint8_t value;

    struct {
        __bit_t TI_TP : 1; // Timer Interrupt Mode 
        __bit_t TIE : 1; // Timer Interrupt Enable
        __bit_t TE : 1; // Timer Enable
        __bit_t TD : 2; // Timer Clock Frequency
        __bit_t _RFU : 3;
    };
} rv8263c7_tmr_mode_t;
// Standard RTCC structure

typedef union {
    uint8_t val[7];

    struct {
        uint8_t sec : 8;
        uint8_t min : 8;
        uint8_t hour : 8;
        uint8_t day : 8;
        uint8_t wkday : 8;
        uint8_t month : 8;
        uint8_t year : 8;
    };
} rtcc_t;
/* *************************************************************** BASIC APIs */
void RV8263C7_Init(void);
#define RV8263C7_H24            0
#define RV8263C7_H12            1
void RV8263C7_SetHourMode(bool H24_12);
void RV8263C7_RegSet(uint8_t reg, uint8_t val);
void RV8263C7_RegGet(uint8_t reg, uint8_t *pVal);
/* ***************************************************************** ADV APIs */
// RV8263C7_SetClockOut(mode)
#define RV8263C7_CLKO_32768     0b00000000
#define RV8263C7_CLKO_16384     0b00000001
#define RV8263C7_CLKO_8192      0b00000010
#define RV8263C7_CLKO_4096      0b00000011
#define RV8263C7_CLKO_2048      0b00000100
#define RV8263C7_CLKO_1024      0b00000101
#define RV8263C7_CLKO_1         0b00000110
#define RV8263C7_CLKO_0         0b00000111
void RV8263C7_SetClockOut(uint8_t mode);
void RV8263C7_SoftReset(void);
void RV8263C7_Stop(void);
void RV8263C7_Resume(void);
void RV8263C7_SetRtcc(const rtcc_t *pD);
void RV8263C7_GetRtcc(rtcc_t *pD);

#endif