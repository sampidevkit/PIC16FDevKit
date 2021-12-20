#include "libcomp.h"

#define DATA_LEN        144
#define BEGIN_ADDR      0x1D00C000
#define END_ADDR        (BEGIN_ADDR+DATA_LEN)

static uint8_t RawLen;
static uint8_t RawHex[64];
static uint8_t ModIdx;
static uint8_t ModLen;
static uint8_t ModTotalLen;
static uint8_t ModHex[DATA_LEN];
static uint8_t mod=0;

int8_t DATA_Write(uint32_t Addr, uint8_t *pData, uint8_t Len) // <editor-fold defaultstate="collapsed" desc="Write data">
{
    if((Addr>=BEGIN_ADDR)&&(Addr<END_ADDR))
    {
        //uint8_t i;

        ModLen=Len;
        ModIdx=(uint8_t) (Addr-BEGIN_ADDR);

        //        for(i=0; i<Len; i++)
        //            ModHex[ModIdx+i]=*pData++;

        mod=1;
    }

    return PROC_DONE;
} // </editor-fold>

uint8_t Ascii2Hex(uint8_t *pD) // <editor-fold defaultstate="collapsed" desc="Convert ASCII to hex">
{
    uint8_t x;

    if(*pD<='9')
        x=(*pD)-'0';
    else if(*pD<='F')
        x=((*pD)-'A')+10;
    else
        x=((*pD)-'a')+10;

    x<<=4;
    pD++;

    if(*pD<='9')
        x|=(*pD)-'0';
    else if(*pD<='F')
        x|=((*pD)-'A')+10;
    else
        x|=((*pD)-'a')+10;

    return x;
} // </editor-fold>

int main(int argc, char** argv)
{
    if(argc!=4)
    {
        printf("Incorrect inputs");
        printf("\nHELP:\n<hex file> <template> <user name>");
        goto EXIT;
    }

    //FILE *pHex=fopen("..\\PG_v2.X\\bld.hex", "r");
    FILE *pHex=fopen(argv[1], "r");
    FILE *pTemplate=fopen(argv[2], "r");

    char new_file_name[64];

    sprintf(new_file_name, "%s.hex", argv[3]);
    str_remove(new_file_name, '"');

    FILE *pNewHex=fopen(new_file_name, "w+");

    if(pHex==NULL)
    {
        printf("\nHex file not found");
        goto EXIT;
    }

    if(pTemplate==NULL)
    {
        printf("\nTemplate file not found");
        goto EXIT;
    }

    if(pNewHex==NULL)
    {
        printf("\nCan not create new hex file");
        goto EXIT;
    }

    uint8_t c, i, j, k;

    mod=0;
    RawLen=0;
    ModTotalLen=9;
    memset(RawHex, 0x00, sizeof (RawHex));
    memset(ModHex, 0x00, sizeof (ModHex));

    i=0;

    do
    {
        c=(uint8_t) fgetc(pTemplate);
        ModHex[i++]=c;

        if(i>=sizeof (ModHex))
            break;
    }
    while((c!=0x00)||(c!=0xFF)||(c!=EOF));

    uint8_t *p=strstr(ModHex, "BLD Rel: ");

    if(p==NULL)
    {
        printf("\nNo \"BLD Rel: \" in template file");
        goto EXIT;
    }

    uint8_t footer[128];

    strcpy(footer, p);
    p=strstr(ModHex, "Owner: ");

    if(p==NULL)
    {
        printf("\nNo \"Owner: \" in template file");
        goto EXIT;
    }
    
    p+=7;
    
    while(*p!=0x00)
    {
        *p=0x00;
        p++;
    }

    i=strlen(ModHex);
    sprintf(&ModHex[i], "%s\n%s", argv[3], footer);
    //sprintf(ModHex, "Arsenal up against Wolfs burg in tricky Champions League quarters tie\n");

    printf("\nNew info:\n%s\n", ModHex);

    do
    {
        c=(uint8_t) fgetc(pHex);
        HEXPARSE_Tasks(c);

        if((c==':')||(c==0x00)||(c==0xFF)||(c==EOF))
        {
            if(mod!=0)
            {
                j=0;

                for(i=1; i<ModTotalLen; i+=2)
                {
                    k=Ascii2Hex(&RawHex[i]);
                    j+=k;

                    //printf("\n%c%c, %02X", RawHex[i], RawHex[i+1], k);
                }

                j=(0xFF-j);
                j++;

                RawHex[ModTotalLen++]=Bcd2Hex(j>>4);
                RawHex[ModTotalLen++]=Bcd2Hex(j&0x0F);
                RawHex[ModTotalLen++]='\n';
                RawHex[ModTotalLen++]=0x00;

                ModTotalLen=9;
                mod=0;
            }

            fprintf(pNewHex, "%s", RawHex);
            memset(RawHex, 0x00, sizeof (RawHex));
            RawLen=0;
        }

        RawHex[RawLen++]=c;

        if(mod==1)
        {
            for(i=0; i<ModLen; i++)
            {
                j=2*i+9;
                k=ModHex[ModIdx+i];
                RawHex[j]=Bcd2Hex(k>>4);
                RawHex[j+1]=Bcd2Hex(k&0x0F);
                ModTotalLen+=2;
            }

            mod=2;
        }
    }
    while((c!=0xFF)&&(c!=0x00));

EXIT:
    if(pHex)
        fclose(pHex);

    if(pTemplate)
        fclose(pTemplate);


    if(pNewHex)
        fclose(pNewHex);

    //printf("\nPress any key to exit...");
    //getchar();

    return (EXIT_SUCCESS);
}