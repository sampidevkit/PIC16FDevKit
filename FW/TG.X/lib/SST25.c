#include "libcomp.h"
#include "SST25.h"

private uint8_t sst25Buffer[8];

private void SST25_Xfer(bool enCS, uint8_t *data, uint16_t lenIn, uint16_t lenOut, bool dnCS)
{
    uint16_t i;

    if(enCS)
        SST25_nCS_SetLow();

    for(i=0; i<lenIn; i++)
        SPI2_Exchange8bit(data[i]);

    for(i=0; i<lenOut; i++)
        data[i]=SPI2_Exchange8bit(0xFF);

    if(dnCS)
        SST25_nCS_SetHigh();
}

private void SST25_Enable_Write(void)
{
    sst25Buffer[0]=SST25_WRITE_EN;
    SST25_Xfer(1, sst25Buffer, 1, 0, 1);
}

private void SST25_Disable_Write(void)
{
    sst25Buffer[0]=SST25_WRITE_DIS;
    SST25_Xfer(1, sst25Buffer, 1, 0, 1);
}

private uint8_t SST25_Read_Status(void)
{
    sst25Buffer[0]=SST25_READ_STATUS;
    SST25_Xfer(1, sst25Buffer, 1, 1, 1);

    return sst25Buffer[0];
}

private void SST25_Wait(void)
{
    while(SST25_Read_Status()&0x01);
}

private void SST25_Write_Status(uint8_t stt)// Private function
{
    sst25Buffer[0]=SST25_WRITE_STATUS_EN;
    SST25_Xfer(1, sst25Buffer, 1, 0, 1);
    sst25Buffer[0]=SST25_WRITE_STATUS;
    sst25Buffer[1]=stt;
    SST25_Xfer(1, sst25Buffer, 2, 0, 1);
    SST25_Wait();
}

public void SST25_Chip_Erase(void)
{
    SST25_Enable_Write();
    sst25Buffer[0]=SST25_BULK_ERASE;
    SST25_Xfer(1, sst25Buffer, 1, 0, 1);
    SST25_Wait();
}

public void SST25_Sector_Erase(uint32_t BAddr)
{
    SST25_Enable_Write();
    sst25Buffer[0]=SST25_SECTOR_ERASE;
    sst25Buffer[1]=(uint8_t) (BAddr>>16);
    sst25Buffer[2]=(uint8_t) (BAddr>>8);
    sst25Buffer[3]=(uint8_t) BAddr;
    SST25_Xfer(1, sst25Buffer, 4, 0, 1);
    SST25_Wait();
}

public void SST25_Protect(sst25_protect_range_t range)
{
    SST25_Enable_Write();
    sst25Buffer[0]=SST25_WRITE_STATUS;
    sst25Buffer[1]=SST25_PROTECT_UNLOCK;
    SST25_Xfer(1, sst25Buffer, 2, 0, 1);
    SST25_Enable_Write();
    sst25Buffer[0]=range|SST25_PROTECT_LOCK;
    SST25_Xfer(1, sst25Buffer, 1, 0, 1);
    SST25_Wait();
    SST25_Disable_Write();
}

public uint32_t SST25_GetJDECID(void)
{
    uint32_t id=0;

    sst25Buffer[0]=SST25_READ_JDECID;
    SST25_Xfer(1, sst25Buffer, 1, 3, 1);
    id=sst25Buffer[0];
    id<<8;
    id|=sst25Buffer[1];
    id<<=16;

    return id;
}

public uint8_t SST25_ReadByte(uint32_t Addr)
{
    sst25Buffer[0]=SST25_READ_DATA;
    sst25Buffer[1]=(uint8_t) (Addr>>16);
    sst25Buffer[2]=(uint8_t) (Addr>>8);
    sst25Buffer[3]=(uint8_t) Addr;
    SST25_Xfer(1, sst25Buffer, 4, 1, 1);

    return sst25Buffer[0];
}

public void SST25_WriteByte(uint32_t Addr, uint8_t Data)
{
    SST25_Enable_Write();
    sst25Buffer[0]=SST25_BYTE_PROG;
    sst25Buffer[1]=(uint8_t) (Addr>>16);
    sst25Buffer[2]=(uint8_t) (Addr>>8);
    sst25Buffer[3]=(uint8_t) Addr;
    sst25Buffer[4]=Data;
    SST25_Xfer(1, sst25Buffer, 5, 0, 1);
    SST25_Wait();
    SST25_Disable_Write();
}

public void SST25_Init(void)
{
    SST25_Write_Status(0);
    SST25_Protect(SST25_PROTECT_NONE);
}

public void SST25_Deinit(void)
{
    SST25_Write_Status(0);
    SST25_Protect(SST25_PROTECT_ALL);
}