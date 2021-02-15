#include "libcomp.h"

__eeprom uint8_t EepromData[]={
    "https://github.com/sampidevkit/PIC16FDevKit/tree/pic16lf18857\n"
    "This is an open source project, a development kit of PIC16LF18857.\n"
    "Arduino Uno PCB form and pinout.\n"
    "Drag-n-Drop programmer: You can download directly a hex file to your target chip.\n\x00"
};

struct
{
    uint8_t DoNext;
    uint16_t Ton;
    uint16_t Toff;
    tick_timer_t Tick;
} LedCxt;

void LED_Task(void)
{
    switch(LedCxt.DoNext)
    {
        case 0:
            if(Tick_Timer_Is_Over_Ms(LedCxt.Tick, LedCxt.Toff))
            {
                USER_LED_SetHigh();
                LedCxt.DoNext=1;
            }
            break;

        case 1:
            if(Tick_Timer_Is_Over_Ms(LedCxt.Tick, LedCxt.Ton))
            {
                USER_LED_SetLow();
                LedCxt.DoNext=0;
            }
            break;

        default:
            Tick_Timer_Reset(LedCxt.Tick);
            USER_LED_SetLow();
            LedCxt.DoNext=0;
            break;
    }
}

#define LED_UpdateState()   (LedCxt.DoNext=2)
#define LED_Init()          do{LedCxt.DoNext=0; Tick_Timer_Reset(LedCxt.Tick); \
                            LedCxt.Ton=500; LedCxt.Toff=500;}while(0)

void main(void)
{
    uint16_t i;
    uint8_t c, DoNext=0;
    tick_timer_t Tick;

    SYSTEM_Initialize();
    Tick_Timer_Init();
    LED_Init();
    Tick_Timer_Reset(Tick);
    INTERRUPT_GlobalInterruptEnable();
    INTERRUPT_PeripheralInterruptEnable();

    while(1)
    {
        while(EUSART_is_rx_ready())
        {
            if(EUSART_is_tx_ready())
                EUSART_Write(EUSART_Read());
            else
                break;
        }

        switch(DoNext)
        {
            case 0:
                i=0;
                DoNext++;
                USER_LED_SetHigh();
                printf("\nEEPROM data:\n");
                break;

            case 1:
                c=eeprom_read((uint8_t) (i++));

                if(i>=256)
                {
                    DoNext++;
                    USER_LED_SetLow();
                }
                else
                    printf("%c", c);
                break;

            case 2:
                DoNext++;
                LedCxt.Ton=100;
                LedCxt.Toff=100;
                LED_UpdateState();
                break;

            case 4:
                DoNext++;
                LedCxt.Ton=200;
                LedCxt.Toff=200;
                LED_UpdateState();
                break;

            case 6:
                DoNext++;
                LedCxt.Ton=500;
                LedCxt.Toff=500;
                LED_UpdateState();
                break;

            case 8:
                DoNext++;
                LedCxt.Ton=100;
                LedCxt.Toff=900;
                LED_UpdateState();
                break;
                
            case 10:
                DoNext=0;
                break;

            default:
                if(Tick_Timer_Is_Over_Ms(Tick, 5000))
                    DoNext++;
                
                LED_Task();
                break;
        }
    }
}