#ifndef HARDWARE_H
#define	HARDWARE_H

#include "system/system.h"
#include "power/power.h"
#include "usb/usb_cdc/usb_cdc.h"
#include "usb/usb_cdc/usb_cdc_virtual_serial_port.h"

#include <avr/wdt.h>
#include <avr/sleep.h>
#include <util/delay.h>
#include <avr/pgmspace.h>

#include "system/system_tick.h"
#include "system/task_manager.h"
#include "misc/util.h"

#define ClrWdt()        wdt_reset()
#define SoftReset()     RSTCTRL_SoftwareReset()

#endif
