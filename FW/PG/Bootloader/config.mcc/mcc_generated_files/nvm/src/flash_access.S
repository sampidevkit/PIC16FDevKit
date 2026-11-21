#include "system\utils\assembler.h"

PUBLIC_FUNCTION(pgm_jmp_far)
  
    movw    r30, r22                    // Update R30, R31 pair with address[Byte1,Byte0]
    out        _SFR_IO_ADDR(RAMPZ), r24 // Update RAMPZ with address[Byte2]
    ijmp
    ret                                 // Return to caller

END_FUNC(pgm_jmp_far)

PUBLIC_FUNCTION(pgm_word_write)

    movw    r0, r20
    movw    r30, r22                    // Update R30, R31 pair with address[Byte1,Byte0]
    out        _SFR_IO_ADDR(RAMPZ), r24 // Update RAMPZ with address[Byte2]
    spm
    clr        r1
    ret                                 // Return to caller

END_FUNC(pgm_word_write)

END_FILE()
