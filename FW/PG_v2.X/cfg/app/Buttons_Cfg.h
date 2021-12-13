#ifndef BUTTONS_CFG_H
#define BUTTONS_CFG_H
// Reset target MCU
#define SW1_TIMEOUT             200 // ms
#define SW1_TIME_MODE_EDGE_H2L  TIME_MODE_EDGE_H2L
#define SW1_GetValue            ProgButton_GetState
// Enter into bootloader mode
#define SW2_TIMEOUT             3000 // ms
#define SW2_TIME_MODE_EDGE_H2L  TIME_MODE_EDGE_H2L
#define SW2_GetValue            ProgButton_GetState
// Erase target MCU
#define SW3_TIMEOUT             10 // ms
#define SW3_TIME_MODE_EDGE_H2L  TIME_MODE_EDGE_L2H
#define SW3_GetValue            ProgButton_GetState
#endif