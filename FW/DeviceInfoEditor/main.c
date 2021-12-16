#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#define membersof(a) ((ssize_t)(sizeof(a)/sizeof((a)[0])))

typedef struct
{
    uint16_t byte_count;
    uint16_t address;
    uint8_t record_type;
    uint8_t data[16];
    uint8_t checksum;
} hex_line_t;

static uint8_t InfoRaw[144];
static uint8_t InfoHex[512];

static uint8_t is_hex_format(uint8_t c) // <editor-fold defaultstate="collapsed" desc="Hex convert">
{
    if((c>='0')&&(c<='9'))
        return (c-'0');

    if((c>='A')&&(c<='F'))
        return ((c-'A')+10);

    if((c>='a')&&(c<='f'))
        return ((c-'a')+10);

    return 0xFF; // error
} // </editor-fold>

static int ReadLine(FILE *pFs, hex_line_t *pD) // <editor-fold defaultstate="collapsed" desc="Get 1 hex line">
{
    uint8_t i, c, Cks=0, DoNext=0;

    while(1)
    {
        c=fgetc(pFs);

        switch(DoNext)
        {
            case 0: // start code
                if(c==':')
                {
                    i=0;
                    DoNext++;
                    memset((void *) pD, 0x00, sizeof (hex_line_t));
                    //printf("\n\nNew\n");
                }
                else if((c==EOF)||(c==0x00)||(c==0xFF))
                    return 0;
                else if((c!='\r')&&(c!='\n')&&(c!=' ')) // skip these characters
                    return (-1);
                continue;

            case 1: // byte count
                c=is_hex_format(c);

                if(c==0xFF)
                    return (-2);

                pD->byte_count<<=4;
                pD->byte_count|=c;

                if(++i>=2)
                {
                    Cks+=pD->byte_count;
                    i=0;
                    DoNext++;
                    //printf("\nByte count %d", pD->byte_count);
                }
                break;

            case 2: // address
                c=is_hex_format(c);

                if(c==0xFF)
                    return (-3);

                pD->address<<=4;
                pD->address|=c;

                if(++i>=4)
                {
                    Cks+=(uint8_t) (pD->address>>8);
                    Cks+=(uint8_t) pD->address;
                    i=0;
                    DoNext++;
                    //printf("\nAddress %04X", pD->address);
                }
                break;

            case 3: // record type
                c=is_hex_format(c);

                if(c==0xFF)
                    return (-4);

                pD->record_type<<=4;
                pD->record_type|=c;

                if(++i>=2)
                {
                    Cks+=pD->record_type;
                    i=0;

                    if(pD->record_type==1)
                        DoNext+=2;
                    else
                        DoNext++;
                    //printf("\nRecord type %d", pD->record_type);
                }
                break;

            case 4: // data
                c=is_hex_format(c);

                if(c==0xFF)
                    return (-5);

                pD->data[i/2]<<=4;
                pD->data[i/2]|=c;

                if(++i>=(2*pD->byte_count))
                {
                    for(i=0; i<pD->byte_count; i++)
                        Cks+=pD->data[i];

                    i=0;
                    DoNext++;
                }
                break;

            case 5: // checksum
                c=is_hex_format(c);

                if(c==0xFF)
                    return (-6);

                pD->checksum<<=4;
                pD->checksum|=c;

                if(++i>=2)
                {
                    Cks+=pD->checksum;
                    i=0;
                    DoNext++;
                }
                break;

            default:
                if(Cks==0x00)
                    return 1; // success

                return (-7); // error
        }
    }
} // </editor-fold>

int main(int argc, char** argv)
{
    //    if(argc!=3)
    //    {
    //        printf("Incorrect inputs");
    //        printf("\nHELP:\n<hex file> <list file>");
    //        goto EXIT;
    //    }
    //
    //    FILE *pHex=fopen(argv[1], "r");

    FILE *pCodec=fopen("Codec.hex", "w+");
    FILE *pHex=fopen("H:\\PIC16FDevKit\\FW\\PG_v2.X\\bld.hex", "r");

    if(pCodec==NULL)
    {
        printf("\nCan not create Codec.hex");
        goto EXIT;
    }

    if(pHex==NULL)
    {
        printf("\nHex file not found");
        goto EXIT;
    }

    while(1)
    {
        hex_line_t HexLine;
        int rslt=ReadLine(pHex, &HexLine);

        if(rslt<0)
        {
            printf("\nIncorrect data of hex file: %d", rslt);
            goto EXIT;
        }
        else if(rslt==0)
        {
            printf("\nDone\n");
            goto EXIT;
        }

        printf("\nByte count %d", HexLine.byte_count);
        fprintf(pCodec, ":%02X", HexLine.byte_count);

        printf("\nAddress %04X", HexLine.address);
        fprintf(pCodec, "%04X", HexLine.address);

        printf("\nRecord type %d", HexLine.record_type);
        fprintf(pCodec, "%02X", HexLine.record_type);

        if(HexLine.record_type!=1)
        {
            printf("\nData: ");

            int i;

            for(i=0; i<HexLine.byte_count; i++)
            {
                printf("%02X", HexLine.data[i]);
                fprintf(pCodec, "%02X", HexLine.data[i]);
            }
        }

        printf("\nChecksum %02X\n", HexLine.checksum);
        fprintf(pCodec, "%02X\n", HexLine.checksum);
    }

    memset(InfoRaw, 0x00, sizeof (InfoRaw));

EXIT:
    if(pCodec)
        fclose(pCodec);

    if(pHex)
        fclose(pHex);

    printf("\nPress any key to exit...");
    getchar();
    return (EXIT_SUCCESS);
}

