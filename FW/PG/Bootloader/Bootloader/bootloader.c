#include "hardware.h"
#include "bootloader.h"
#include "Common/Util.h"
#include "Crypto/xtea.h"
#include "internal_memory_maps.h"
#include "Drivers/timer/SystemTick.h"

#ifndef BLD_USE_DEBUG // Enable debug
#define DEBUG_H
#endif

#include "Common/debug.h"

typedef enum
{
    TASK_INIT=0,
    TASK_SEND_ACK,
    TASK_SEND_NACK,
    TASK_SEND_ACK_EXIT,
    TASK_GET_CMD,
    TASK_PROCESS,
    TASK_EXIT
} task_t;

static task_t Task=TASK_INIT;
//static task_t Next=TASK_INIT;
static task_t Prev=TASK_INIT;
static uint8_t Retry=0;
static tick_timer_t Tick=TICK_INIT_VALUE;
static uint32_t XTEAkey[4];


void BLD_Port_Puts(const uint8_t *pS) // <editor-fold defaultstate="collapsed" desc="Put string">
{
    while(*pS!=0x00)
    {
        BLD_Port_Write(*pS);

        while(!BLD_Port_IsTxDone())
            BLD_Port_Task();

        //__dbc(*pS);
        pS++;
    }
} // </editor-fold>

int8_t BLD_eHexParse(uint8_t c) // <editor-fold defaultstate="collapsed" desc="eHex parse">
{
    static uint32_t NVMAddr=0;
    static uint32_t prev[2]={0, 0}; // CBC IV
    static uint8_t buf[9], cks=0, cnt=0;
    static bool phase=0, type=0;

    if(phase==0) // get CMD type
    {
        if(c=='@') // address
        {
            cnt=0;
            cks=0;
            type=0;
            phase=1;
            memset(buf, 0x00, 9);
        }
        else if(c=='#') // data
        {
            cnt=0;
            cks=0;
            type=1;
            phase=1;
            memset(buf, 0x00, 9);
        }
        else if(c=='$') // exit
        {
            BLD_NVM_EraseUnusedMemory(NVMAddr);
            return RESULT_REBOOT;
        }
    }
    else if(is_hex_data(c))
    {
        uint8_t idx=cnt>>1;

        if(cnt&1) // odd byte
        {
            buf[idx]|=AHex2Bcd(c);
            cks+=buf[idx];
        }
        else
        {
            buf[idx]=AHex2Bcd(c);
            buf[idx]<<=4;
        }

        if(++cnt>=18)
        {
            if(cks==0) // correct
            {
                uint32_t block[2];
                uint32_t cipher_copy[2];

                block[0]=make32(buf);
                block[1]=make32(buf+4);
                cipher_copy[0]=block[0];
                cipher_copy[1]=block[1];
                xtea_decrypt(block, XTEAkey);
                block[0]^=prev[0];
                block[1]^=prev[1];
                prev[0]=cipher_copy[0];
                prev[1]=cipher_copy[1];

                if(type==0) // address
                {
                    NVMAddr=block[0];
                }
                else // data
                {
                    BLD_NVM_Write(NVMAddr, block[0]);
                    NVMAddr+=4;
                }

                phase=0;
                return RESULT_ACK;
            }
            else // incorrect
            {
                phase=0;
                __dbs("--> Incorrect checksum ");
                __dbh2(cks);

                return RESULT_NACK;
            }
        }
    }
    else
    {
        phase=0;
        __dbsc("--> Incorrect data: ", c);
        return RESULT_NACK;
    }

    return RESULT_BUSY;
} // </editor-fold>

int8_t BLD_Tasks(void) // <editor-fold defaultstate="collapsed" desc="Boot loader task">
{
    static uint8_t len=0;
    static uint8_t rxBuf[24];

    if(BLD_BootFlag())
    {
        if(BLD_TRIG_GetValue())
        {
            switch(Task)
            {
                default:
                case TASK_INIT:
                {
                    Task=TASK_SEND_ACK;
                    BLD_GetEncryptKey(XTEAkey);
                    BLD_Port_Init();
                    Retry=0;
                    break;
                }

                case TASK_SEND_ACK:
                {
                    if(BLD_Port_IsTxReady())
                    {
                        Prev=TASK_SEND_ACK;
                        Task=TASK_GET_CMD;
                        len=0;
                        BLD_Port_Puts((const uint8_t *) "A\r\n");
                        Tick_Timer_Reset(Tick);
                        __dbs("\r\nSend ACK");
                        __dbs("\r\nRX: ");
                    }

                    break;
                }

                case TASK_SEND_NACK:
                {
                    if(BLD_Port_IsTxReady())
                    {
                        Prev=TASK_SEND_NACK;
                        Task=TASK_GET_CMD;
                        len=0;
                        BLD_Port_Puts((const uint8_t *) "N\r\n");
                        Tick_Timer_Reset(Tick);
                        __dbs("\r\nSend NACK");
                        __dbs("\r\nRX: ");
                    }

                    break;
                }

                case TASK_SEND_ACK_EXIT:
                {
                    if(BLD_Port_IsTxReady())
                    {
                        Task=TASK_EXIT;
                        BLD_Port_Puts((const uint8_t *) "A\r\n");
                        __dbs("\r\nSend ACK & EXIT");
                    }

                    break;
                }

                case TASK_GET_CMD:
                {
                    if(BLD_Port_IsRxReady()) // get data, save to buffer
                    {
                        uint8_t c=BLD_Port_Read();

                        switch(c)
                        {
                            case '\n':
                            {
                                Retry=0;
                                Task=TASK_PROCESS;
                                Tick_Timer_Reset(Tick);

                                for(uint8_t i=0; i<len; i++) // print buffer data
                                {
                                    if(is_printable(rxBuf[i]))
                                    {
                                        __dbc(rxBuf[i]);
                                    }
                                    else
                                    {
                                        __dbc('<');
                                        __dbh2(rxBuf[i]);
                                        __dbc('>');
                                    }
                                }

                                break;
                            }

                            case '@':
                            case '#':
                            case '$':
                                len=0;
                            default:
                            {
                                rxBuf[len++]=c;

                                if(len>=sizeof (rxBuf)) // reset buffer if over flow
                                {
                                    len=0;
                                    __dbs("--> Over flow");
                                }
                                break;
                            }
                        }
                    }

                    if(Tick_Timer_Is_Over_Sec(Tick, 1))
                    {
                        __dbs("--> Timeout");

                        if(++Retry>2)
                            Task=TASK_EXIT;
                        else
                            Task=Prev;
                    }

                    break;
                }

                case TASK_PROCESS:
                {
                    for(uint8_t i=0; i<len; i++) // process data
                    {
                        switch(BLD_eHexParse(rxBuf[i]))
                        {
                            default:
                            case RESULT_BUSY:
                                break;

                            case RESULT_REBOOT:
                            {
                                Task=TASK_SEND_ACK_EXIT;
                                BLD_SetBootFlag();
                                break;
                            }

                            case RESULT_ACK:
                            {
                                Task=TASK_SEND_ACK;
                                break;
                            }

                            case RESULT_NACK:
                            {
                                Task=TASK_SEND_NACK;
                                break;
                            }
                        }
                    }

                    break;
                }

                case TASK_EXIT:
                {
                    __dbs("\r\nExit DFU");
                    return PROC_DONE;
                }
            }

            if(Task!=TASK_INIT)
                BLD_Port_Task();
        }
        else
        {
            __dbs("\r\nNo BLD trigger");
            return PROC_DONE;
        }
    }
    else
    {
        __dbs("\r\nNo BLD flag");
        return PROC_DONE;
    }

    return PROC_BUSY;
} // </editor-fold>

void BLD_Init(void) // <editor-fold defaultstate="collapsed" desc="Bootloader initialize">
{
    Task=TASK_INIT;
} // </editor-fold>

void BLD_Deinit(void) // <editor-fold defaultstate="collapsed" desc="Bootloader deintialize">
{
    Task=TASK_EXIT;
    BLD_Port_DeInit();
} // </editor-fold>
