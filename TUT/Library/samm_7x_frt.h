#ifndef SAMM_7X_FRT_H
#define SAMM_7X_FRT_H

#include <xc.h>
#include <time.h>
#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <stdbool.h>
#include "samm_7x_frt_cfg.h"

#if defined(USE_DEFAULT_CONFIG_1MHZ)
#define _XTAL_FREQ 1000000
#elif defined(USE_DEFAULT_CONFIG_2MHZ)
#define _XTAL_FREQ 2000000
#elif defined(USE_DEFAULT_CONFIG_4MHZ)
#define _XTAL_FREQ 4000000
#elif defined(USE_DEFAULT_CONFIG_8MHZ)
#define _XTAL_FREQ 8000000
#elif defined(USE_DEFAULT_CONFIG_16MHZ)
#define _XTAL_FREQ 16000000
#elif defined(USE_DEFAULT_CONFIG_32MHZ)
#define _XTAL_FREQ 32000000
#else
#warning "Use user's configures"
#endif

#ifdef USE_UART_DEBUG
#define __db(...) printf(__VA_ARGS__)
#else
#define __db(...)
#endif

/* ********************************************************** SOFT UART DEBUG */
void Debug_Init(void);
void Debug_Putc(char c);
void Debug_Puts(const char *s);
/* ********************************************************* MSSP1 I2C MASTER */
void MSSP1_I2C_Master_Init(uint32_t clock);
void MSSP1_I2C_Master_Deinit(void);
int8_t MSSP1_I2C_Master_Scan(void (*pStreamFnc)(uint8_t));
bool MSSP1_I2C_Master_ReadNByte(uint8_t slvAddr, uint8_t *pD, uint8_t len);
bool MSSP1_I2C_Master_WriteNByte(uint8_t slvAddr, const uint8_t *pD, uint8_t len);
/* ********************************************************* MSSP2 I2C MASTER */
void MSSP2_I2C_Master_Init(uint32_t clock);
void MSSP2_I2C_Master_Deinit(void);
int8_t MSSP2_I2C_Master_Scan(void (*pStreamFnc)(uint8_t));
bool MSSP2_I2C_Master_ReadNByte(uint8_t slvAddr, uint8_t *pD, uint8_t len);
bool MSSP2_I2C_Master_WriteNByte(uint8_t slvAddr, const uint8_t *pD, uint8_t len);
/* ******************************************************************* SYSTEM */
void Samm7xFrt_Init(void);
void Samm7xFrt_Sleep(void);

#endif