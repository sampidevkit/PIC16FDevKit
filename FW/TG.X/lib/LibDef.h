#ifndef LIBDEF_H
#define	LIBDEF_H

#if (defined(__PCH__)||defined(__ISNT_CCS__))
#include <xc.h>
#else
#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include <stdlib.h>
#include <stdarg.h>
#include <time.h>

#ifndef __XC8
#include <sys/types.h>
#endif

#ifdef __WIN32
#include <windows.h>
#define WIN32_LEAN_AND_MEAN
#include <wincrypt.h>
#endif

/* Application Definitions */
#ifdef public
#undef  public
#define public
#else
#define public
#endif

#ifdef private
#undef  private
#define private static
#else
#define private static
#endif

#ifndef	BYTE
#define	BYTE uint8_t
#endif

#ifndef	WORD
#define	WORD uint16_t
#endif

#ifndef	DWORD
#define	DWORD uint32_t
#endif

#ifndef	QWORD
#define	QWORD uint64_t
#endif

#ifndef ROM
#define ROM const
#endif

#if !defined(__XC8)
#define __attribute_packed__            __attribute__((packed))
#define __attribute_aligned4__          __attribute__((aligned(4)))
#define __attribute_aligned8__          __attribute__((aligned(8)))
#define __attribute_aligned16__         __attribute__((aligned(16)))
#else
#define __attribute_packed__
#define __attribute_aligned4__
#endif

#ifndef rslt_t
typedef int8_t                          rslt_t;
#define	rslt_t                          __int8_t
#endif

typedef struct tm                       tm_t;
typedef const char *far_string_t;

#endif

// Result code
#define PROC_DONE                       0
#define PROC_BUSY                       1
#define PROC_REMAIN                     2
#define PROC_CONT                       3
#define PROC_ERR                        (-1)
#define PROC_DRV_ERR                    (-2)

#ifdef __XC32
// MIPS memory address convert
#ifndef KVA_TO_PA
#define KVA_TO_PA(v)                    ((_paddr_t)(v)&0x1FFFFFFF)
#endif

#ifndef PA_TO_KVA0
#define PA_TO_KVA0(pa)                  ((void*)((pa)|0x80000000))
#endif
#endif

#define BitTest(x, i)                   ((x>>i)&1)
#define BitSet(x, i)                    x=x|(1<<i)
#define BitClear(x, i)                  x=x&(~(1<<i))

#define membersof(a)                    ((ssize_t)(sizeof(a)/sizeof((a)[0]))) // Get the number of elements in an array.
#define indexof(e_p, a)                 (e_p-&(a)[0]) // Get the index of given element in an array.

#define container_of(ptr, type, member) ({const typeof(((type *)0)->member ) *__mptr=(ptr); \
                                        (type *)((char *)__mptr-offsetof(type,member));})

#define DIV_CEIL(n, d)                  (((n)+(d)-1)/(d)) // Integer division that rounds the result up.
#define DIV_ROUND(n, d)                 (((n)+(d/2))/(d)) // Integer division that rounds the result to the closest integer.

#define MIN(a, b)                       (((a)<(b))?(a):(b))
#define MAX(a, b)                       (((a)>(b))?(a):(b))

#define BIT(pos)                        (1<<(pos))
#define BITFIELD_SET(name, value)       (((value)<<name ## _POS)&name ## _MASK)
#define BITFIELD_GET(name, value)       (((value)&name ## _MASK)>>name ## _POS)

#define _convert2(type, pt)             (*((type*)pt))

#endif