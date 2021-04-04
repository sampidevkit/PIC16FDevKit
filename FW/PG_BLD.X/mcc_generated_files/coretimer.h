/**
  CORETIMER Generated Driver API Header File

  @Company
    Microchip Technology Inc.

  @File Name
    coretimer.h

  @Summary
    This is the generated header file for the CORETIMER driver using PIC24 / dsPIC33 / PIC32MM MCUs

  @Description
    This header file provides APIs for driver for CORETIMER.
    Generation Information :
        Product Revision  :  PIC24 / dsPIC33 / PIC32MM MCUs - pic24-dspic-pic32mm : 1.169.0
        Device            :  PIC32MM0064GPM028
        Driver Version    :  2.00
    The generated drivers are tested against the following:
        Compiler          :  XC32 v2.40
        MPLAB             :  MPLAB X v5.40
*/

/*
    (c) 2016 Microchip Technology Inc. and its subsidiaries. You may use this
    software and any derivatives exclusively with Microchip products.

    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
    WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
    PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION
    WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION.

    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
    BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
    FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
    ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
    THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.

    MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE
    TERMS.
*/

#ifndef _CORETIMER_H
#define _CORETIMER_H

/**
  Section: Included Files
*/

#include <xc.h>
#include <stdint.h>
#include <stdbool.h>

#ifdef __cplusplus  // Provide C++ Compatibility
    extern "C" {
#endif

/**
  @Summary
    Initializes the Core Timer peripheral

  @Description
    This function sets the initial count and compare
    value of the core timer

  @Preconditions
    None

  @Param
    None

  @Returns
    None
*/
void CORETIMER_Initialize();

void CORETIMER_EnableInterrupt();

void CORETIMER_DisableInterrupt();

/**
  @Summary
    Returns the count value

  @Description
    This function returns the core timer's 
    count value
 
  @Preconditions
    None

  @Param
    None

  @Returns
    Returns the count value of the core 
    timer module
*/
uint32_t CORETIMER_CountGet();

#ifdef __cplusplus  // Provide C++ Compatibility
}
#endif

#endif	//_CORETIMER_H
/**
 End of File
*/

