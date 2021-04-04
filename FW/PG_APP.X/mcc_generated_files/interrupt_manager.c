/**
  System Interrupts Generated Driver File 

  @Company:
    Microchip Technology Inc.

  @File Name:
    interrupt_manager.h

  @Summary:
    This is the generated driver implementation file for setting up the
    interrupts using PIC24 / dsPIC33 / PIC32MM MCUs

  @Description:
    This source file provides implementations for PIC24 / dsPIC33 / PIC32MM MCUs interrupts.
    Generation Information : 
        Product Revision  :  PIC24 / dsPIC33 / PIC32MM MCUs - 1.170.0
        Device            :  PIC32MM0064GPM028
    The generated drivers are tested against the following:
        Compiler          :  XC32 v2.50
        MPLAB             :  MPLAB X v5.45
*/
/*
    (c) 2020 Microchip Technology Inc. and its subsidiaries. You may use this
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

/**
    Section: Includes
*/
#include <xc.h>

/**
    void INTERRUPT_Initialize (void)
*/
void INTERRUPT_Initialize (void)
{
    // Enable Multi Vector Configuration
    INTCONbits.MVEC = 1;
    
    //    CTI: Core Timer
    //    Priority: 1
        IPC0bits.CTIP = 1;
    //    Sub Priority: 0
        IPC0bits.CTIS = 0;
    //    BICI: I2C 1 Bus Collision
    //    Priority: 1
        IPC16bits.I2C1BCIP = 1;
    //    Sub Priority: 1
        IPC16bits.I2C1BCIS = 1;
    //    MICI: I2C 1 Master
    //    Priority: 1
        IPC16bits.I2C1MIP = 1;
    //    Sub Priority: 3
        IPC16bits.I2C1MIS = 3;
    //    SICI: I2C 1 Slave
    //    Priority: 1
        IPC16bits.I2C1SIP = 1;
    //    Sub Priority: 2
        IPC16bits.I2C1SIS = 2;
    //    UERI: UART 2 Error
    //    Priority: 2
        IPC14bits.U2EIP = 2;
    //    Sub Priority: 2
        IPC14bits.U2EIS = 2;
    //    UTXI: UART 2 Transmission
    //    Priority: 2
        IPC14bits.U2TXIP = 2;
    //    Sub Priority: 1
        IPC14bits.U2TXIS = 1;
    //    URXI: UART 2 Reception
    //    Priority: 2
        IPC14bits.U2RXIP = 2;
    //    Sub Priority: 0
        IPC14bits.U2RXIS = 0;
}
