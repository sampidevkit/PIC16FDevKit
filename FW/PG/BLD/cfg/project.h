#ifndef PROJECT_H
#define	PROJECT_H

#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>

/* ************************************************************** MCC library */
#include "../mcc_generated_files/system/system.h"
#include <avr/wdt.h>
#include <avr/sleep.h>
#include <util/delay.h>

/* ****************************************************** Application library */

#define ClrWdt() wdt_reset()

#endif
