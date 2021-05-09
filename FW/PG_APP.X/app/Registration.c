#include "libcomp.h"
#include "Registration.h"

bool Kit_Is_Registed=0;
static const uint32_t __attribute((space(prog), aligned(FLASH_ERASE_PAGE_SIZE_IN_PC_UNITS))) RegisZone[FLASH_ERASE_PAGE_SIZE_IN_PC_UNITS/4];

public void Registration_Init(void)
{
    
}

public int Get_RegisCode(uint8_t *pCode)
{
    
}

public void Write_RegisKey(uint8_t *pKey)
{

}