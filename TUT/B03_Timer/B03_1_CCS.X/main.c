#include <main.h>

#INT_TIMER0

void TIMER0_isr(void)
{
    clear_interrupt(INT_TIMER0);
    set_timer0(63599);
    output_toggle(BLED);
}

void main(void)
{
    setup_timer_0(T0_LFINTOSC|T0_INPUT_NOT_SYNCRONIZED|T0_DIV_8|T0_16_BIT);
    set_timer0(63599);
    enable_interrupts(INT_TIMER0);
    enable_interrupts(GLOBAL);

    while(TRUE)
    {
        sleep();
    }
}
