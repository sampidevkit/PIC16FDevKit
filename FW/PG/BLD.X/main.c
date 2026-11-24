#include "hardware.h"
#include "bld.h"
#include "vcp.h"

int main(void)
{
    SYSTEM_Initialize();
    BLD_Init();
    VCP_Init();

    while(1)
    {
        ClrWdt();
        BLD_Tasks();
        VCP_Tasks();

#if(0) // Echo test
        if(VCP_IsOpenned())
        {
            if(VCP_IsTxReady())
            {
                if(VCP_IsRxReady())
                {
                    VCP_TxByte(VCP_RxByte());
                }
            }
        }
#endif
    }

    POWER_LowPowerModeEnter(POWER_PDOWN_MODE);

    return 0;
}