#ifndef LIBCOMP_H
#define LIBCOMP_H

#include "common/LibDef.h"
#include "common/UserFunctions.h"
#include "programmer/HexParsing.h"

int8_t DATA_Write(uint32_t Addr, uint8_t *pData, uint8_t Len);

#endif