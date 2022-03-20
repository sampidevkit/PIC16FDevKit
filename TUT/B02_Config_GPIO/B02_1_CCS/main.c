#include <main.h>

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
      output_toggle(PIN_A1);
      delay_ms(100);
      //output_bit(PIN_A1, !input(PIN_D3));
   }
}
