#ifndef HEXPARSING_CFG_H
#define HEXPARSING_CFG_H

#define HEX_DATA_SIZE                           16
//#define HEXPARSE_NVM_Write(Addr, pData, Len)    NVM_Write(Addr, pData, Len) //PIC16F188XX_NVM_Write(Addr, pData, Len) // write data to nNVM, get result code
#define HEXPARSE_NVM_Write(Addr, pData, Len)    PIC16F188XX_NVM_Write(Addr, pData, Len) // write data to nNVM, get result code
#define HEXPARSE_StreamOut(c)                   
#define write_error_log(line)                   printf("\n%s, Err %d, Line: %d\n", __FILE__, ICSP_LOG_INTERNAL_ERROR, line) //do{uint32_t err=line; icsp_log(ICSP_LOG_INTERNAL_ERROR, &err, NULL);}while(0)

#endif