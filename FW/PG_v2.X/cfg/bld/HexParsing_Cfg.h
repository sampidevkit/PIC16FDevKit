#ifndef HEXPARSING_CFG_H
#define HEXPARSING_CFG_H

#define HEX_DATA_SIZE                           16
#define HEXPARSE_NVM_Write(Addr, pData, Len)    BLD_Nvm_Write(Addr, pData, Len) // write data to nNVM, get result code
#define write_error_log(line)                   //do{err=line; icsp_log(ICSP_LOG_INTERNAL_ERROR, &err, NULL);}while(0)
#define HEXPARSE_StreamOut(c)

#endif