/**
  SPI2 Generated Driver File

  @Company
    Microchip Technology Inc.

  @File Name
    spi2.c

  @Summary
    This is the generated driver implementation file for the SPI2 driver using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description
    This header file provides implementations for driver APIs for SPI2.
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.7
        Device            :  PIC16F18877
        Driver Version    :  1.0.0
    The generated drivers are tested against the following:
        Compiler          :  XC8 2.31 and above or later
        MPLAB             :  MPLAB X 5.45
*/

/*
    (c) 2018 Microchip Technology Inc. and its subsidiaries. 
    
    Subject to your compliance with these terms, you may use Microchip software and any 
    derivatives exclusively with Microchip products. It is your responsibility to comply with third party 
    license terms applicable to your use of third party software (including open source software) that 
    may accompany Microchip software.
    
    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER 
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY 
    IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS 
    FOR A PARTICULAR PURPOSE.
    
    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP 
    HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO 
    THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL 
    CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT 
    OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS 
    SOFTWARE.
*/

#include "spi2.h"
#include <xc.h>

typedef struct { 
    uint8_t con1; 
    uint8_t stat;
    uint8_t add;
    uint8_t operation;
} spi2_configuration_t;

//con1 == SSPxCON1, stat == SSPxSTAT, add == SSPxADD, operation == Master/Slave
static const spi2_configuration_t spi2_configuration[] = {   
    { 0xa, 0x40, 0xf, 0 }
};

void SPI2_Initialize(void)
{
    //Setup PPS Pins
    SSP2CLKPPS = 11;
    SSP2DATPPS = 31;
    RB3PPS    = 22;
    RD6PPS    = 23;
    //SPI setup
    SSP2STAT = 0x40;
    SSP2CON1 = 0x0A;
    SSP2ADD = 0x0F;
    TRISBbits.TRISB3 = 0;
    SSP2CON1bits.SSPEN = 0;
}

bool SPI2_Open(spi2_modes_t spi2UniqueConfiguration)
{
    if(!SSP2CON1bits.SSPEN)
    {
        SSP2STAT = spi2_configuration[spi2UniqueConfiguration].stat;
        SSP2CON1 = spi2_configuration[spi2UniqueConfiguration].con1;
        SSP2CON2 = 0x00;
        SSP2ADD  = spi2_configuration[spi2UniqueConfiguration].add;
        TRISBbits.TRISB3 = spi2_configuration[spi2UniqueConfiguration].operation;
        SSP2CON1bits.SSPEN = 1;
        return true;
    }
    return false;
}

void SPI2_Close(void)
{
    SSP2CON1bits.SSPEN = 0;
}

uint8_t SPI2_ExchangeByte(uint8_t data)
{
    SSP2BUF = data;
    while(!PIR3bits.SSP2IF);
    PIR3bits.SSP2IF = 0;
    return SSP2BUF;
}

void SPI2_ExchangeBlock(void *block, size_t blockSize)
{
    uint8_t *data = block;
    while(blockSize--)
    {
        SSP2BUF = *data;
        while(!PIR3bits.SSP2IF);
        PIR3bits.SSP2IF = 0;
        *data++ = SSP2BUF;
    }
}

// Half Duplex SPI Functions
void SPI2_WriteBlock(void *block, size_t blockSize)
{
    uint8_t *data = block;
    while(blockSize--)
    {
        SPI2_ExchangeByte(*data++);
    }
}

void SPI2_ReadBlock(void *block, size_t blockSize)
{
    uint8_t *data = block;
    while(blockSize--)
    {
        *data++ = SPI2_ExchangeByte(0);
    }
}

void SPI2_WriteByte(uint8_t byte)
{
    SSP2BUF = byte;
}

uint8_t SPI2_ReadByte(void)
{
    return SSP2BUF;
}