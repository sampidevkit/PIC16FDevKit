#include "libcomp.h"

public bool MediaReady=0;
public uint8_t App_Log_Buffer[APP_BUFFER_LOG_LEN];

public void DummyInterruptHandler(void) // <editor-fold defaultstate="collapsed" desc="Dummy interrupt handler">
{
    // Do nothing
} // </editor-fold>

public void LibComp_Initialize(void) // <editor-fold defaultstate="collapsed" desc="App porting initialize">
{
    VDDTG_EN_SetHigh(); // enable power for target MCU
    VICSP_EN_N_SetLow();
    VICSP_EN_N_SetDigitalOutput();
} // </editor-fold>

public uint8_t Hardware_Info(uint8_t *pD) // <editor-fold defaultstate="collapsed" desc="Get hardware info">
{

    union
    {
        uint16_t val;

        struct
        {
            unsigned Rfu:8;
            unsigned Thermal:2;
            unsigned Rtcc:2;
            unsigned Flash:4;
        };
    } part_number;

    uint8_t i;
    uint8_t flash_name[16];
    uint8_t rtcc_name[16];
    uint8_t thermal_name[24];

    part_number.val=(uint16_t) FDEVOPTbits.USERID;

    i=(uint8_t) sprintf(&pD[0], "P/N: SAMM-7x-");

    if(part_number.Flash>0)
        pD[i++]='F';

    if(part_number.Rtcc>0)
        pD[i++]='R';

    if(part_number.Thermal>0)
        pD[i++]='T';

    switch(part_number.Flash)
    {
        case 0b0000:
            strcpy(flash_name, "No flash");
            break;

        case 0b0001:
            strcpy(flash_name, "SST25VF020B");
            break;

        case 0b0010:
            strcpy(flash_name, "SST25VF040B");
            break;

        case 0b0011:
            strcpy(flash_name, "SST25VF080B");
            break;

        case 0b0100:
            strcpy(flash_name, "SST25VF016B");
            break;

        case 0b0101:
            strcpy(flash_name, "SST25VF032B");
            break;

        case 0b0110:
            strcpy(flash_name, "SST25VF064B");
            break;

        case 0b0111:
            strcpy(flash_name, "SST25PF020B");
            break;

        case 0b1000:
            strcpy(flash_name, "SST25PF040C");
            break;

        case 0b1001:
            strcpy(flash_name, "SST25PF080B");
            break;

        case 0b1100:
            strcpy(flash_name, "W25Q32");
            break;

        case 0b1101:
            strcpy(flash_name, "W25Q16");
            break;

        case 0b1110:
            strcpy(flash_name, "GD25Q32");
            break;

        case 0b1111:
            strcpy(flash_name, "GD25Q64");
            break;

        default:
            flash_name[0]=0x00;
            break;
    }

    switch(part_number.Rtcc)
    {
        case 0b00:
            strcpy(rtcc_name, "No RTCC");
            break;

        case 0b01:
            strcpy(rtcc_name, "RV-8263-C7");
            break;

        case 0b10:
            strcpy(rtcc_name, "RV-8803-C7");
            break;

        default:
            rtcc_name[0]=0x00;
            break;
    }

    switch(part_number.Thermal)
    {
        case 0b00:
            strcpy(thermal_name, "No thermal sensor");
            break;

        case 0b01:
            strcpy(thermal_name, "MCP9700");
            break;

        case 0b10:
            strcpy(thermal_name, "MCP9701");
            break;

        default:
            thermal_name[0]=0x00;
            break;
    }

    if(part_number.val==0)
        i+=(uint8_t) sprintf(&pD[i], "0000\n");
    else
        i+=(uint8_t) sprintf(&pD[i], "-%04X\n", part_number.val);

    i+=(uint8_t) sprintf(&pD[i], "%s, %s, %s\n", flash_name, rtcc_name, thermal_name);

    return i;
} // </editor-fold>

public void Change_I2C_To_ICSP(void) // <editor-fold defaultstate="collapsed" desc="Change I2C to ICSP">
{
    CNPUBSET=(3<<4); // pull-up RB4, RB5 (PGD, PGC)
    VICSP_EN_N_SetLow(); // disable power of I2C slaver
    VICSP_EN_N_SetDigitalOutput();
    // clear the master interrupt flag
    IFS2bits.I2C2SIF=0;
    // enable the master interrupt
    IEC2bits.I2C2SIE=0;
    // OFF I2C module
    I2C2CONbits.ON=0;
    SRAM_Emulate_Deinit();
} // </editor-fold>

public void Change_ICSP_To_I2C(void) // <editor-fold defaultstate="collapsed" desc="Change ICSP to I2C">
{
    CNPUBCLR=(3<<4); // no pull-up RB4, RB5 (PGD, PGC)
    VICSP_EN_N_SetHigh();
    VICSP_EN_N_SetDigitalInput();
    SRAM_Emulate_Init();
    I2C2_Initialize();
} // </editor-fold>

public void StatusLED_SetState(sled_t Set) // <editor-fold defaultstate="collapsed" desc="Set state of status LED">
{
    static bool locked=0;

LOOP:
    switch(Set)
    {
        case SLED_ACTIVE:
            locked=0;
        case SLED_RESET:
            Indicator_SetHigh(0);
            break;

        case SLED_FAIL:
            locked=1;
            Indicator_SetState(0, 500, 1500, IND_LOOP_FOREVER);
            break;

        case SLED_ONESHOT:
            Indicator_SetState(0, 5, 1, 1);
            break;

        case SLED_IDLE:
        default:
            if(locked==0)
                Indicator_SetState(0, 10, 1990, IND_LOOP_FOREVER);
            else
            {
                Set=SLED_FAIL;
                goto LOOP;
            }
            break;
    }
} // </editor-fold>

public bool ProgButton_GetState(void) // <editor-fold defaultstate="collapsed" desc="Get state of PG button">
{
    return PG_BT_N_GetValue();
} // </editor-fold>