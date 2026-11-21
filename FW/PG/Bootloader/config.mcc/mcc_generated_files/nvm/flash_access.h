#ifndef FLASH_ACCESS_H_
#define FLASH_ACCESS_H_

#include <stdint.h>
/* Jump in program memory at a specific address */
extern void pgm_jmp_far(uint32_t addrr);

/* Write a word in program memory at a specific address*/
extern void pgm_word_write(uint32_t addrr, uint16_t data);

#endif