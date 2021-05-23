#ifndef SRAM_EMULATOR_H
#define	SRAM_EMULATOR_H

#include <stdint.h>
#include <stdbool.h>

#define EMULATE_SRAM_SIZE 4104

/* ****************************************************************** MEMORY MAP
 * [0000 to 4095]: 4KB SRAM DATA
 * [    4096    ]: TRISX
 * [    4097    ]: PORTX
 * [    4098    ]: LATX
 * [4099 to 4103]: RFU ****************************************************** */

extern volatile uint8_t EMULATE_SRAM_Memory[EMULATE_SRAM_SIZE];

/************************************************************** TRIS REGISTER */
typedef union {
    uint8_t w : 8;

    struct {
        uint8_t TRISX0 : 1;
        uint8_t TRISX1 : 1;
        uint8_t TRISX2 : 1;
        uint8_t TRISX3 : 1;
        uint8_t TRISX4 : 1;
        uint8_t TRISX5 : 1;
        uint8_t TRISX6 : 1;
        uint8_t TRISX7 : 1;
    };
} __TRISXbits_t;

#define TRISX_EXT_GPIO0         TRISBbits.TRISB13
#define TRISX_EXT_GPIO1         TRISBbits.TRISB14

/************************************************************** PORT REGISTER */
typedef union {
    uint8_t w : 8;

    struct {
        uint8_t RX0 : 1;
        uint8_t RX1 : 1;
        uint8_t RX2 : 1;
        uint8_t RX3 : 1;
        uint8_t RX4 : 1;
        uint8_t RX5 : 1;
        uint8_t RX6 : 1;
        uint8_t RX7 : 1;
    };
} __PORTXbits_t;

#define PORTX_EXT_GPIO0         PORTBbits.RB13
#define PORTX_EXT_GPIO1         PORTBbits.RB14

/*************************************************************** LAT REGISTER */
typedef union {
    uint8_t w : 8;

    struct {
        uint8_t LATX0 : 1;
        uint8_t LATX1 : 1;
        uint8_t LATX2 : 1;
        uint8_t LATX3 : 1;
        uint8_t LATX4 : 1;
        uint8_t LATX5 : 1;
        uint8_t LATX6 : 1;
        uint8_t LATX7 : 1;
    };
} __LATXbits_t;

#define LATX_EXT_GPIO0         LATBbits.LATB13
#define LATX_EXT_GPIO1         LATBbits.LATB14

/**************************************************************************** */
void SRAM_Emulate_Init(void);
void SRAM_Emulate_Deinit(void);
void SRAM_Emulate_Tasks(void);

#endif