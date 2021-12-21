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
        ModLen=Len;
        ModIdx=(uint8_t) (Addr-BEGIN_ADDR);
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
    uint8_t *p;
    uint8_t c, i, j, k;
    FILE *pHex, *pTemplate, *pNewHex, *pUser;
    char footer[128], new_file_name[64], user_name[64];

    if(argc!=4)
    {
        printf("Incorrect inputs");
        printf("\nHELP:\n<hex file> <template file> <user name file>");
        goto EXIT;
    }

    pUser=fopen(argv[3], "r");

    if(pUser==NULL)
    {
        printf("\nCan not open User name file");
        goto EXIT;
    }

    while(1)
    {
        i=0;
        memset(user_name, 0x00, (size_t) membersof(user_name));

        do
        {
            c=fgetc(pUser);
            user_name[i++]=c;
        }
        while((c!=0x00)&&(c!=0xFF)&&(c!=EOF)&&(c!='\n'));

        if(i<=1)
            goto EXIT;
        
        if(user_name[i-1]==0xFF)
            user_name[i-1]=0x00;

        pHex=fopen(argv[1], "r");

        if(pHex==NULL)
        {
            printf("\nCan not open Hex file");
            goto EXIT;
        }

        pTemplate=fopen(argv[2], "r");

        if(pTemplate==NULL)
        {
            printf("\nCan not open Template file");
            goto EXIT;
        }

        str_remove(user_name, '"');
        str_remove(user_name, '\r');
        str_remove(user_name, '\n');
        sprintf(new_file_name, "%s.hex", user_name);
        pNewHex=fopen(new_file_name, "w+");

        if(pNewHex==NULL)
        {
            printf("\nCan not create new hex file");
            goto EXIT;
        }

        mod=0;
        RawLen=0;
        ModTotalLen=9;
        memset(RawHex, 0x00, (size_t) membersof(RawHex));
        memset(ModHex, 0x00, (size_t) membersof(ModHex));

        i=0;

        do
        {
            c=(uint8_t) fgetc(pTemplate);
            ModHex[i++]=c;

            if(i>=(size_t) membersof(ModHex))
                break;
        }
        while((c!=0x00)&&(c!=0xFF)&&(c!=EOF));

        p=strstr(ModHex, "BLD Rel: ");

        if(p==NULL)
        {
            printf("\nNo \"BLD Rel: \" in template file");
            goto EXIT;
        }

        memset(footer, 0x00, (size_t) membersof(footer));
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
        sprintf(&ModHex[i], "%s\n%s", user_name, footer);

        printf("\nNew info:\n%s\n", ModHex);
        PrintHex(ModHex, DATA_LEN, 8);

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
                memset(RawHex, 0x00, (size_t) membersof(RawHex));
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
        while((c!=0xFF)&&(c!=0x00)&&(c!=EOF));

        if(pHex)
            fclose(pHex);

        if(pNewHex)
            fclose(pNewHex);
    }

EXIT:
    if(pHex)
        fclose(pHex);

    if(pTemplate)
        fclose(pTemplate);

    if(pNewHex)
        fclose(pNewHex);

    if(pUser)
        fclose(pUser);

    return (EXIT_SUCCESS);
}