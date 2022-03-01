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

void Samm7xFrt_Init(void);

#endif