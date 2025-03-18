#include "mcc_generated_files/system/system.h"
#include <avr/sleep.h>
#include <avr/wdt.h>
#include <util/delay.h>

int main(void)
{
    SYSTEM_Initialize();

    while(1)
    {
        wdt_reset();
        LED_TGRDY_SetLow();
        LED_BUSY_SetHigh();
        _delay_ms(200);
        LED_BUSY_SetLow();
        LED_TGRDY_SetHigh();
        _delay_ms(200);
    }
}