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

typedef enum
{
    WAIT_PORT_OPEN=0,
    GET_NEW_CMD,
    REP_OK,
    REP_ERR,
    PUT_REPORT,
    TASK_EXCEPT
} bld_task_t;

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
    bld_task_t DoNext;
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
    if(VCP_IsOpenned())
    {
        if(TaskCxt.DoNext==WAIT_PORT_OPEN)
        {
            TaskCxt.DoNext=GET_NEW_CMD;
            TaskCxt.Cnt=0;
            FrameCxt.DgCnt=0;
            FrameCxt.Len=0xFFFF;
            LED_TGRDY_SetLow();
            Tick_Timer_Reset(TaskCxt.Tick);
        }
    }
    else if(TaskCxt.DoNext!=WAIT_PORT_OPEN)
    {
        TaskCxt.DoNext=WAIT_PORT_OPEN;
        TaskCxt.Cnt=0;
        Tick_Timer_Reset(TaskCxt.Tick);
        LED_BUSY_SetHigh();
    }
    else if(Tick_Timer_Is_Over_Ms(TaskCxt.Tick, 100))
    {
        LED_TGRDY_Toggle();

        if(TaskCxt.Cnt<300)
        {
            TaskCxt.Cnt++;
        }
        else
        {
            TaskCxt.DoNext=TASK_EXCEPT;
        }
    }

    switch(TaskCxt.DoNext)
    {
        case WAIT_PORT_OPEN:
        {
            break;
        }

        case GET_NEW_CMD:
        {
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
                        TaskCxt.DoNext=REP_ERR;
                        break;
                    }

                    tmp16=make16(&FrameCxt.Data[516]);

                    if(tmp16==crc16_ccitt_calc(&FrameCxt.Data[0], 516))
                    {
                        tmp32=make32(&FrameCxt.Data[0])>>1;

                        if((tmp32<AppCodeMem()->BEGIN_ADDR)||(tmp32>AppCodeMem()->END_ADDR))
                        {
                            //                            FLASH_PageErase(tmp32);
                            //                            while(!FLASH_IsBusy());
                            //                            FLASH_RowWrite(tmp32, &FrameCxt.Data[4]);
                            //                            while(!FLASH_IsBusy());
                            TaskCxt.DoNext=REP_OK;
                        }
                        else if(tmp32==0xFFFFFFFF)
                        {
                            TaskCxt.DoNext=TASK_EXCEPT;
                        }
                        else
                        {
                            TaskCxt.DoNext=REP_OK;
                        }
                    }
                    else
                    {
                        TaskCxt.DoNext=REP_ERR;
                    }
                }
                else if(is_hex_data(tmp8))
                {
                    if(FrameCxt.Len>=518)
                    {
                        FrameCxt.Len=0;
                    }

                    FrameCxt.Data[FrameCxt.Len]<<=4;
                    FrameCxt.Data[FrameCxt.Len]|=AHex2Bcd(tmp8);

                    if(++FrameCxt.DgCnt>=2)
                    {
                        FrameCxt.Len++;
                        FrameCxt.DgCnt=0;
                        FrameCxt.Data[FrameCxt.Len]=0;
                    }
                }
                else
                {
                    FrameCxt.Len=0xFFFF;
                }

                Tick_Timer_Reset(TaskCxt.Tick);
            }
            break;
        }

        case REP_OK: // Success
        {
            FrameCxt.Data[0]='\n';
            FrameCxt.Data[1]='O';
            FrameCxt.Data[2]='K';
            FrameCxt.Data[3]='\r';
            FrameCxt.Data[4]='\0';
            FrameCxt.Len=0;
            TaskCxt.DoNext=PUT_REPORT;
            break;
        }

        case REP_ERR: // Error
        {
            FrameCxt.Data[0]='\n';
            FrameCxt.Data[1]='E';
            FrameCxt.Data[2]='R';
            FrameCxt.Data[3]='R';
            FrameCxt.Data[4]='\r';
            FrameCxt.Data[5]='\0';
            FrameCxt.Len=0;
            TaskCxt.DoNext=PUT_REPORT;
            break;
        }

        case PUT_REPORT:
        {
            if(VCP_IsTxReady())
            {
                VCP_TxByte(FrameCxt.Data[FrameCxt.Len++]);

                if(FrameCxt.Data[FrameCxt.Len]=='\0')
                {
                    TaskCxt.DoNext=GET_NEW_CMD;
                    FrameCxt.Len=0xFFFF;
                    LED_TGRDY_SetLow();
                }
            }

            break;
        }

        case TASK_EXCEPT:
        default:
        {
            LED_TGRDY_SetLow();
            Jump2App();
            SoftReset();
            while(1);
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
        TaskCxt.DoNext=WAIT_PORT_OPEN;
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
