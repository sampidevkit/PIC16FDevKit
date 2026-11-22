#include "vcp.h"
#include "internal_memory_maps.h"
#include "system/system.h"
#include "system/system_tick.h"
#include "system/task_manager.h"
#include "misc/util.h"

#ifndef BLD_USE_DEBUG // Enable debug
#define DEBUG_H
#endif

#include "common/debug.h"

#define CRC16_CCITT_POLY  0x1021U
#define CRC16_CCITT_INIT  0xFFFFU

static struct
{
    uint8_t DgCnt;
    uint16_t Len;
    uint8_t Data[518];
} FrameCxt;

static bool BLD_TRIG_GetValue(void)
{
    if(BT_FNC_N_GetValue()==0)
        return 1;

    if(NoInitMem()->BootCnt==0xAA)
        return 1;

    return 0;
}

static uint16_t crc16_ccitt_update(uint16_t crc, const uint8_t *data, uint16_t len)
{
    if((data==NULL)||(len==0U))
    {
        return crc;
    }

    const uint8_t *p=data;

    while(len-- >0U)
    {
        crc^=(uint16_t) (*p++)<<8;

        for(uint8_t bit=0U; bit<8U; bit++)
        {
            if((crc&0x8000U)!=0U)
            {
                crc=(uint16_t) ((crc<<1) ^ CRC16_CCITT_POLY);
            }
            else
            {
                crc=(uint16_t) (crc<<1);
            }
        }
    }

    return crc;
}

static uint16_t crc16_ccitt_calc(const uint8_t *data, uint16_t len)
{
    return crc16_ccitt_update(CRC16_CCITT_INIT, data, len);
}

int main(void)
{
    uint16_t opcode;

    SYSTEM_Initialize();

    if(BLD_TRIG_GetValue())
    {
        tick_timer_t Tick;
        uint8_t DoNext=0;

        NoInitMem()->RtccTs=0;
        Tick_Timer_Reset(Tick);
        LED_BUSY_SetHigh();
        Tick_Timer_Init(NULL);
        TaskManager_Init();
        VCP_Init();

        while(TaskManager_Count()>0)
        {
            ClrWdt();
            TaskManager();

            switch(DoNext)
            {
                case 0:
                {
                    if(VCP_IsOpenned())
                    {
                        DoNext=1;
                        FrameCxt.DgCnt=0;
                        FrameCxt.Len=0xFFFF;
                        NoInitMem()->RtccTs=0;
                        LED_TGRDY_SetLow();
                        Tick_Timer_Reset(Tick);
                    }
                    else if(Tick_Timer_Is_Over_Ms(Tick, 100))
                    {
                        LED_TGRDY_Toggle();

                        if(++NoInitMem()->RtccTs>=300)
                            DoNext=5;
                        break;
                    }

                    break;
                }

                case 1:
                {
                    if(!VCP_IsOpenned())
                    {
                        DoNext=5;
                        break;
                    }

                    if(VCP_IsRxReady())
                    {
                        uint8_t c=VCP_RxByte();
                        LED_TGRDY_SetHigh();

                        if(FrameCxt.Len==0xFFFF) // Find start byte
                        {
                            if(c=='\n') // start byte
                            {
                                FrameCxt.Len=0;
                                FrameCxt.DgCnt=0;
                                FrameCxt.Data[0]=0;
                            }
                        }
                        else if(c=='\r') // Stop byte
                        {
                            if(FrameCxt.Len!=518)
                            {
                                DoNext=3;
                                break;
                            }

                            uint16_t crc=make16(&FrameCxt.Data[516]);

                            if(crc==crc16_ccitt_calc(&FrameCxt.Data[0], 516))
                            {
                                uint32_t addr=make32(&FrameCxt.Data[0]);

                                addr>>=1;

                                if((addr<AppCodeMem()->BEGIN_ADDR)||(addr>AppCodeMem()->END_ADDR))
                                {
                                    FLASH_PageErase(addr);
                                    while(!FLASH_IsBusy());
                                    FLASH_RowWrite(addr, &FrameCxt.Data[4]);
                                    while(!FLASH_IsBusy());
                                    DoNext=3;
                                }
                                else if(addr==0xFFFFFFFF)
                                {
                                    DoNext=5;
                                }
                            }
                        }
                        else
                        {
                            if(is_hex_data(c))
                            {
                                FrameCxt.Data[FrameCxt.Len]<<=4;
                                FrameCxt.Data[FrameCxt.Len]|=AHex2Bcd(c);

                                if(++FrameCxt.DgCnt>=2)
                                {
                                    if(++FrameCxt.Len>=518)
                                    {
                                        FrameCxt.Len=0;
                                    }

                                    FrameCxt.Data[FrameCxt.Len]=0;
                                }
                            }
                            else
                            {
                                FrameCxt.Len=0xFFFF;
                            }
                        }

                        Tick_Timer_Reset(Tick);
                        DoNext=2;
                    }

                    if(Tick_Timer_Is_Over_Ms(Tick, 30000))
                    {
                        DoNext=5;
                        break;
                    }

                    break;
                }

                case 2: // Success
                {
                    FrameCxt.Data[0]='\r';
                    FrameCxt.Data[1]='\n';
                    FrameCxt.Data[2]='O';
                    FrameCxt.Data[3]='K';
                    FrameCxt.Data[4]='\r';
                    FrameCxt.Data[5]='\n';
                    FrameCxt.Len=6;
                    DoNext=4;
                    break;
                }

                case 3: // Error
                {
                    FrameCxt.Data[0]='\r';
                    FrameCxt.Data[1]='\n';
                    FrameCxt.Data[2]='E';
                    FrameCxt.Data[3]='R';
                    FrameCxt.Data[4]='R';
                    FrameCxt.Data[5]='\r';
                    FrameCxt.Data[6]='\n';
                    FrameCxt.Len=7;
                    DoNext=4;
                    break;
                }

                case 4:
                {
                    if(!VCP_IsOpenned())
                    {
                        DoNext=5;
                        break;
                    }

                    for(uint16_t i=0; i<FrameCxt.Len; i++)
                    {
                        while(!VCP_IsTxReady())
                            TaskManager();

                        VCP_TxByte(FrameCxt.Data[i]);
                    }

                    DoNext=1;
                    FrameCxt.Len=0xFFFF;
                    LED_TGRDY_SetLow();
                    break;
                }

                default:
                {
                    LED_TGRDY_SetLow();
                    TaskManager_End_AllTasks();
                    break;
                }
            }
        }
    }

    LED_BUSY_SetLow();
    opcode=FLASH_ReadWord(AppCodeMem()->BEGIN_ADDR);

    if(0xFFFF!=opcode)
    {
        ccp_write_io((void *) &(CPUINT.CTRLA), (CPUINT.CTRLA|CPUINT_IVSEL_bm));
        ccp_write_io((void *) &NVMCTRL.CTRLB, 0x01); // Enable Boot Section Lock
        jump_to_variable_address(AppCodeMem()->BEGIN_ADDR); // Jump to application, located immediately after boot section
    }
    else
        NoInitMem()->BootCnt=0xAA;

    POWER_LowPowerModeEnter(POWER_PDOWN_MODE);

    return 0;
}
