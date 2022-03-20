#include <main.h>
//#define SIMPLE_BUTTON
//#define LATCHED_BUTTON
#define DEBOUNCE_BUTTON

static int1 SimpleButton_is_pressed(void)
{
    if(input(PIN_D3)==0)
        return 1;

    return 0;
}

static int1 LatchedButton_is_pressed(void)
{
    static int1 prv_state=1; // init state of the button, set 1 if use pull-up resister, 0 if use pull-down resistor

    if(prv_state!=input(PIN_D3)) // compare previous state with present state of D3
    {
        prv_state=input(PIN_D3); // update new state

        if(prv_state==0) // button is pressed
            return 1;
    }

    return 0;
}

int1 DebounceButton_is_pressed(void)
{
    static int1 prv_state=1;
    static unsigned int16 count=0;

    if(prv_state!=input(PIN_D3))
    {
        if(prv_state==1)
        {
            if(++count>1000) // check in 1000 cycles
            {
                prv_state=0;
                return 1;
            }
        }
        else
            prv_state=1;
    }
    else
        count=0;

    return 0;
}

void main()
{
   // A1 output
   set_tris_a(0b11111101);
   output_low(PIN_A1);
   // D3 input
   set_tris_d(0b11111111);
   port_d_pullups(0b00001000);

   while(TRUE)
   {
#ifdef SIMPLE_BUTTON
        if(SimpleButton_is_pressed())
#elif defined(LATCHED_BUTTON)
        if(LatchedButton_is_pressed())
#else
        if(DebounceButton_is_pressed())
#endif
            output_toggle(PIN_A1); // Toggle pin A1

        delay_ms(1);
   }
}
