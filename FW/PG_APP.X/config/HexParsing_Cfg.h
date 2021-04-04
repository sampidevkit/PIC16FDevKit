#ifndef HEXPARSING_CFG_H
#define HEXPARSING_CFG_H

#define HEX_DATA_SIZE                           16
#define HEXPARSE_NVM_Write(Addr, pData, Len)    PIC16F188XX_NVM_Write(Addr, pData, Len) // write data to nNVM, get result code
#define HEXPARSE_StreamOut(c)                   

#endif