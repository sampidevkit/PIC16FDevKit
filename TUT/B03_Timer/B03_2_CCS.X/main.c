#include <main.h>

#INT_TIMER2

void TIMER2_isr(void)
{
    clear_interrupt(INT_TIMER2);
    output_toggle(BLED);
}

void main(void)
{
    setup_timer_2(T2_CLK_LFINTRC|T2_DIV_BY_2|T2_START_IMMEDIATELY, 154, 10);
    enable_interrupts(INT_TIMER2);
    enable_interrupts(PERIPH);
    enable_interrupts(GLOBAL);

    while(TRUE)
    {
        sleep();
    }
}
