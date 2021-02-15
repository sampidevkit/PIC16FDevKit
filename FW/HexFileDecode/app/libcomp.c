#include "libcomp.h"

public uint8_t App_Log_Buffer[APP_BUFFER_LOG_LEN]={
    "OK\n"
};

public void LogTask(void)
{
    static int i=0;

    if(App_Log_Buffer[i]!=0x00)
    {
        printf("%c", App_Log_Buffer[i]);
        App_Log_Buffer[i++]=0x00;

        if(i>=APP_BUFFER_LOG_LEN)
            i=0;
    }
}

public int8_t NVM_Write(uint32_t Addr, const uint8_t *pData, uint8_t Len)
{
    uint8_t i;
    static bool Init=0;
    static FILE *pLog;

    if(Init==0)
    {
        pLog=fopen("Log.txt", "w+");
        Init=1;
    }

    if(Len==0)
    {
        Init=0;
        fclose(pLog);
        printf("\nFinish\n");
    }
    else
    {
        printf("\n%04X ", Addr/2);
        fprintf(pLog, "\n%04X ", Addr/2);

        for(i=0; i<Len; i+=2)
        {
            printf("%02X%02X ", pData[i+1], pData[i]);
            fprintf(pLog, "%02X%02X ", pData[i+1], pData[i]);
        }
    }

    return 0;
}

public void DummyInterruptHandler(void) // <editor-fold defaultstate="collapsed" desc="Dummy interrupt handler">
{
    // Do nothing
} // </editor-fold>

public void LibComp_Initialize(void) // <editor-fold defaultstate="collapsed" desc="App porting initialize">
{

} // </editor-fold>