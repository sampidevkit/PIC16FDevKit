#ifndef PROJECT_H
#define	PROJECT_H

#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>

/* ************************************************************** MCC library */
#include "system/system.h"
#include <avr/wdt.h>
#include <avr/sleep.h>
#include <util/delay.h>
#include <avr/pgmspace.h>

/* ****************************************************** Application library */

#define ClrWdt() wdt_reset()
#define SoftReset() RSTCTRL_SoftwareReset()

#define BLD_USE_DEBUG
#define USE_INTERNAL_MEMORY_MAPS_DEBUG
#endif
