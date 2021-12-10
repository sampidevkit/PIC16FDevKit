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

#define TRISX_EXT_GPIO0         TRISAbits.TRISA0
#define TRISX_EXT_GPIO1         TRISAbits.TRISA1
#define TRISX_EXT_GPIO2         TRISBbits.TRISB9
#define TRISX_EXT_GPIO3         TRISBbits.TRISB8
#define TRISX_EXT_GPIO4         TRISBbits.TRISB7
#define TRISX_EXT_GPIO5         TRISBbits.TRISB14

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

#define PORTX_EXT_GPIO0         PORTAbits.RA0
#define PORTX_EXT_GPIO1         PORTAbits.RA1
#define PORTX_EXT_GPIO2         PORTBbits.RB9
#define PORTX_EXT_GPIO3         PORTBbits.RB8
#define PORTX_EXT_GPIO4         PORTBbits.RB7
#define PORTX_EXT_GPIO5         PORTBbits.RB14

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

#define LATX_EXT_GPIO0         LATAbits.LATA0
#define LATX_EXT_GPIO1         LATAbits.LATA1
#define LATX_EXT_GPIO2         LATBbits.LATB9
#define LATX_EXT_GPIO3         LATBbits.LATB8
#define LATX_EXT_GPIO4         LATBbits.LATB7
#define LATX_EXT_GPIO5         LATBbits.LATB14

/**************************************************************************** */
public void SRAM_Emulate_Init(void);
public void SRAM_Emulate_Deinit(void);
public void SRAM_Emulate_Tasks(void*);

#endif