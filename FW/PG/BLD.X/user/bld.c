#include "hardware.h"
#include "bld.h"
#include "vcp.h"
#include "internal_memory_maps.h"
#include "system/system_tick.h"

#ifndef BLD_USE_DEBUG // Enable debug
#define DEBUG_H
#endif

#include "common/debug.h"

#define CRC16_CCITT_POLY  0x1021U
#define CRC16_CCITT_INIT  0xFFFFU

typedef void (*func_ptr_t)(void);

static struct
{
    uint8_t DgCnt;
    uint16_t Len;
    uint8_t Data[518];
} FrameCxt;

static struct
{
    tick_timer_t Tick;
    uint16_t Cnt;
    uint8_t DoNext;
} TaskCxt;

static uint8_t tmp8;
static uint16_t tmp16;
static uint32_t tmp32;

static bool BLD_TRIG_GetValue(void) // <editor-fold defaultstate="collapsed" desc="Check BLD trigger">
{
    if(BT_FNC_N_GetValue()==0)
        return 1;

    return 1;
} // </editor-fold>

static uint16_t crc16_ccitt_update(uint16_t crc, const uint8_t *data, uint16_t len) // <editor-fold defaultstate="collapsed" desc="CRC16-CCITT">
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
} // </editor-fold>

static uint16_t crc16_ccitt_calc(const uint8_t *data, uint16_t len) // <editor-fold defaultstate="collapsed" desc="CRC16-CCITT Calculation">
{
    return crc16_ccitt_update(CRC16_CCITT_INIT, data, len);
} // </editor-fold>

static void Jump2App(void) // <editor-fold defaultstate="collapsed" desc="Jump to application">
{
    tmp16=pgm_read_byte_near(AppCodeMem()->BEGIN_ADDR+1);
    tmp16<<=8;
    tmp16|=pgm_read_byte_near(AppCodeMem()->BEGIN_ADDR);

    if(0xFFFF!=tmp16)
    {
        ccp_write_io((void *) &(CPUINT.CTRLA), (CPUINT.CTRLA|CPUINT_IVSEL_bm));
        ccp_write_io((void *) &NVMCTRL.CTRLB, 0x01); // Enable Boot Section Lock

        uint16_t word_addr=(uint16_t) (AppCodeMem()->BEGIN_ADDR>>1);
        func_ptr_t jump_func=(func_ptr_t) word_addr;

        jump_func();
    }
} // </editor-fold>

void BLD_Tasks(void) // <editor-fold defaultstate="collapsed" desc="BLD task">
{
#if(1)
    switch(TaskCxt.DoNext)
    {
        case 0:
        {
            if(VCP_IsOpenned())
            {
                TaskCxt.Cnt=0;
                TaskCxt.DoNext=1;
                FrameCxt.DgCnt=0;
                FrameCxt.Len=0xFFFF;
                LED_TGRDY_SetLow();
                Tick_Timer_Reset(TaskCxt.Tick);
            }
            else if(Tick_Timer_Is_Over_Ms(TaskCxt.Tick, 100))
            {
                LED_TGRDY_Toggle();

                if(++TaskCxt.Cnt>=300)
                    TaskCxt.DoNext=5;
                break;
            }

            break;
        }

        case 1:
        {
            if(!VCP_IsOpenned())
            {
                TaskCxt.DoNext=0;
                TaskCxt.Cnt=0;
                Tick_Timer_Reset(TaskCxt.Tick);
                LED_BUSY_SetHigh();
                break;
            }

            if(VCP_IsRxReady())
            {
                tmp8=VCP_RxByte();
                LED_TGRDY_SetHigh();

                if(FrameCxt.Len==0xFFFF) // Find start byte
                {
                    if(tmp8=='\n') // start byte
                    {
                        FrameCxt.Len=0;
                        FrameCxt.DgCnt=0;
                        FrameCxt.Data[0]=0;
                    }
                }
                else if(tmp8=='\r') // Stop byte
                {
                    if(FrameCxt.Len!=518)
                    {
                        TaskCxt.DoNext=3;
                        break;
                    }

                    tmp16=make16(&FrameCxt.Data[516]);

                    if(tmp16==crc16_ccitt_calc(&FrameCxt.Data[0], 516))
                    {
                        tmp32=make32(&FrameCxt.Data[0])>>1;

                        if((tmp32<AppCodeMem()->BEGIN_ADDR)||(tmp32>AppCodeMem()->END_ADDR))
                        {
                            FLASH_PageErase(tmp32);
                            while(!FLASH_IsBusy());
                            FLASH_RowWrite(tmp32, &FrameCxt.Data[4]);
                            while(!FLASH_IsBusy());
                            TaskCxt.DoNext=3;
                        }
                        else if(tmp32==0xFFFFFFFF)
                        {
                            TaskCxt.DoNext=5;
                        }
                    }
                }
                else
                {
                    if(is_hex_data(tmp8))
                    {
                        FrameCxt.Data[FrameCxt.Len]<<=4;
                        FrameCxt.Data[FrameCxt.Len]|=AHex2Bcd(tmp8);

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

                Tick_Timer_Reset(TaskCxt.Tick);
                TaskCxt.DoNext=2;
            }

            if(Tick_Timer_Is_Over_Ms(TaskCxt.Tick, 30000))
            {
                TaskCxt.DoNext=5;
                break;
            }

            break;
        }

        case 2: // Success
        {
            FrameCxt.Data[0]='\n';
            FrameCxt.Data[1]='O';
            FrameCxt.Data[2]='K';
            FrameCxt.Data[3]='\r';
            FrameCxt.Len=4;
            TaskCxt.DoNext=4;
            break;
        }

        case 3: // Error
        {
            FrameCxt.Data[0]='\n';
            FrameCxt.Data[1]='E';
            FrameCxt.Data[2]='R';
            FrameCxt.Data[3]='R';
            FrameCxt.Data[4]='\r';
            FrameCxt.Len=5;
            TaskCxt.DoNext=4;
            break;
        }

        case 4:
        {
            if(!VCP_IsOpenned())
            {
                TaskCxt.DoNext=0;
                TaskCxt.Cnt=0;
                Tick_Timer_Reset(TaskCxt.Tick);
                LED_BUSY_SetHigh();
                break;
            }

            for(tmp16=0; tmp16<FrameCxt.Len; tmp16++)
            {
                while(!VCP_IsTxReady())
                    TaskManager();

                VCP_TxByte(FrameCxt.Data[tmp16]);
            }

            TaskCxt.DoNext=1;
            FrameCxt.Len=0xFFFF;
            LED_TGRDY_SetLow();
            break;
        }

        default:
        {
            LED_TGRDY_SetLow();
            Jump2App();
            SoftReset();
            break;
        }
    }
#endif
} // </editor-fold>

void BLD_Init(void) // <editor-fold defaultstate="collapsed" desc="BLD init">
{
    Tick_Timer_Init(NULL);

    if(BLD_TRIG_GetValue())
    {
        TaskCxt.DoNext=0;
        TaskCxt.Cnt=0;
        Tick_Timer_Reset(TaskCxt.Tick);
        LED_BUSY_SetHigh();
    }
    else
    {
        LED_BUSY_SetLow();
        Jump2App();
        while(1); // waiting for WDT
    }
} // </editor-fold>
