#include "Buttons_CCS.h"

int1 Button_Is_Pressed(bt_t *pCxt, int16 Pin) // <editor-fold defaultstate="collapsed" desc="Check state of button">
{
    if(pCxt->State!=input(Pin))
    {
        if(pCxt->State==1)
        {
            if(++pCxt->Count>BUTTON_DELAY_CYCLES)
            {
                pCxt->State=0;
                return 1;
            }
        }
        else
            pCxt->State=1;
    }
    else if(pCxt->Count>0)
        pCxt->Count=0;

    return 0;
} // </editor-fold>