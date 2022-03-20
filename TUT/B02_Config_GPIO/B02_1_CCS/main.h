#include <16F18877.h>
#device ADC=10
#use delay(internal=32MHz)
#use FIXED_IO( A_outputs=PIN_A1 )
#define BLED	PIN_A1
#define BUTTON	PIN_D3


