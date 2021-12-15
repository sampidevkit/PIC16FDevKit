/**
  Generated Pin Manager File

  Company:
    Microchip Technology Inc.

  File Name:
    pin_manager.c

  Summary:
    This is the Pin Manager file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  Description:
    This header file provides implementations for pin APIs for all pins selected in the GUI.
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.7
        Device            :  PIC16F18877
        Driver Version    :  2.11
    The generated drivers are tested against the following:
        Compiler          :  XC8 2.31 and above
        MPLAB             :  MPLAB X 5.45

    Copyright (c) 2013 - 2015 released Microchip Technology Inc.  All rights reserved.
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

#include "pin_manager.h"




void (*IOCAF3_InterruptHandler)(void);


void PIN_MANAGER_Initialize(void)
{
    /**
    LATx registers
    */
    LATE = 0x00;
    LATD = 0x09;
    LATA = 0x00;
    LATB = 0x21;
    LATC = 0x00;

    /**
    TRISx registers
    */
    TRISE = 0x07;
    TRISA = 0xFD;
    TRISB = 0xD6;
    TRISC = 0xFF;
    TRISD = 0xB6;

    /**
    ANSELx registers
    */
    ANSELD = 0x36;
    ANSELC = 0xFF;
    ANSELB = 0x06;
    ANSELE = 0x07;
    ANSELA = 0xF5;

    /**
    WPUx registers
    */
    WPUD = 0x08;
    WPUE = 0x00;
    WPUB = 0xC0;
    WPUA = 0x00;
    WPUC = 0x00;

    /**
    ODx registers
    */
    ODCONE = 0x00;
    ODCONA = 0x00;
    ODCONB = 0x00;
    ODCONC = 0x00;
    ODCOND = 0x08;

    /**
    SLRCONx registers
    */
    SLRCONA = 0xFF;
    SLRCONB = 0xFF;
    SLRCONC = 0xFF;
    SLRCOND = 0xFF;
    SLRCONE = 0x07;

    /**
    INLVLx registers
    */
    INLVLA = 0xFF;
    INLVLB = 0xFF;
    INLVLC = 0xFF;
    INLVLD = 0xFF;
    INLVLE = 0x0F;


    /**
    IOCx registers 
    */
    //interrupt on change for group IOCAF - flag
    IOCAFbits.IOCAF3 = 0;
    //interrupt on change for group IOCAN - negative
    IOCANbits.IOCAN3 = 1;
    //interrupt on change for group IOCAP - positive
    IOCAPbits.IOCAP3 = 1;



    // register default IOC callback functions at runtime; use these methods to register a custom function
    IOCAF3_SetInterruptHandler(IOCAF3_DefaultInterruptHandler);
   
    // Enable IOCI interrupt 
    PIE0bits.IOCIE = 1; 
    
	
    RXPPS = 0x0C;   //RB4->EUSART:RX;    
    SSP1CLKPPS = 0x0F;   //RB7->MSSP1:SCL1;    
    SSP2DATPPS = 0x1F;   //RD7->MSSP2:SDI2;    
    RB6PPS = 0x15;   //RB6->MSSP1:SDA1;    
    RB7PPS = 0x14;   //RB7->MSSP1:SCL1;    
    RB5PPS = 0x10;   //RB5->EUSART:TX;    
    RB3PPS = 0x16;   //RB3->MSSP2:SCK2;    
    RD6PPS = 0x17;   //RD6->MSSP2:SDO2;    
    SSP1DATPPS = 0x0E;   //RB6->MSSP1:SDA1;    
    SSP2CLKPPS = 0x0B;   //RB3->MSSP2:SCK2;    
}
  
void PIN_MANAGER_IOC(void)
{   
	// interrupt on change for pin IOCAF3
    if(IOCAFbits.IOCAF3 == 1)
    {
        IOCAF3_ISR();  
    }	
}

/**
   IOCAF3 Interrupt Service Routine
*/
void IOCAF3_ISR(void) {

    // Add custom IOCAF3 code

    // Call the interrupt handler for the callback registered at runtime
    if(IOCAF3_InterruptHandler)
    {
        IOCAF3_InterruptHandler();
    }
    IOCAFbits.IOCAF3 = 0;
}

/**
  Allows selecting an interrupt handler for IOCAF3 at application runtime
*/
void IOCAF3_SetInterruptHandler(void (* InterruptHandler)(void)){
    IOCAF3_InterruptHandler = InterruptHandler;
}

/**
  Default interrupt handler for IOCAF3
*/
void IOCAF3_DefaultInterruptHandler(void){
    // add your IOCAF3 interrupt custom code
    // or set custom function using IOCAF3_SetInterruptHandler()
}

/**
 End of File
*/