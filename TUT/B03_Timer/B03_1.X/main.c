/*
 * File:   main.c
 * Author: sampi
 *
 * Created on January 21, 2022, 10:28 PM
 */

// PIC16F18877 Configuration Bit Settings
// 'C' source line config statements
// CONFIG1
#pragma config FEXTOSC = OFF    // External Oscillator mode selection bits (Oscillator not enabled)
#pragma config RSTOSC = HFINT32 // Power-up default value for COSC bits (HFINTOSC with OSCFRQ= 32 MHz and CDIV = 1:1)
#pragma config CLKOUTEN = OFF   // Clock Out Enable bit (CLKOUT function is disabled; i/o or oscillator function on OSC2)
#pragma config CSWEN = ON       // Clock Switch Enable bit (Writing to NOSC and NDIV is allowed)
#pragma config FCMEN = ON       // Fail-Safe Clock Monitor Enable bit (FSCM timer enabled)

// CONFIG2
#pragma config MCLRE = ON       // Master Clear Enable bit (MCLR pin is Master Clear function)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config LPBOREN = OFF    // Low-Power BOR enable bit (ULPBOR disabled)
#pragma config BOREN = ON       // Brown-out reset enable bits (Brown-out Reset Enabled, SBOREN bit is ignored)
#pragma config BORV = LO        // Brown-out Reset Voltage Selection (Brown-out Reset Voltage (VBOR) set to 1.9V on LF, and 2.45V on F Devices)
#pragma config ZCD = OFF        // Zero-cross detect disable (Zero-cross detect circuit is disabled at POR.)
#pragma config PPS1WAY = ON     // Peripheral Pin Select one-way control (The PPSLOCK bit can be cleared and set only once in software)
#pragma config STVREN = ON      // Stack Overflow/Underflow Reset Enable bit (Stack Overflow or Underflow will cause a reset)

// CONFIG3
#pragma config WDTCPS = WDTCPS_31// WDT Period Select bits (Divider ratio 1:65536; software control of WDTPS)
#pragma config WDTE = OFF       // WDT operating mode (WDT Disabled, SWDTEN is ignored)
#pragma config WDTCWS = WDTCWS_7// WDT Window Select bits (window always open (100%); software control; keyed access not required)
#pragma config WDTCCS = SC      // WDT input clock selector (Software Control)

// CONFIG4
#pragma config WRT = OFF        // UserNVM self-write protection bits (Write protection off)
#pragma config SCANE = available// Scanner Enable bit (Scanner module is available for use)
#pragma config LVP = ON         // Low Voltage Programming Enable bit (Low Voltage programming enabled. MCLR/Vpp pin function is MCLR.)

// CONFIG5
#pragma config CP = OFF         // UserNVM Program memory code protection bit (Program Memory code protection disabled)
#pragma config CPD = OFF        // DataNVM code protection bit (Data EEPROM code protection disabled)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#include <xc.h>

#define _XTAL_FREQ 32000000 // System clock

void __interrupt() INTERRUPT_InterruptManager(void)
{
    if((PIE0bits.TMR0IE==1)&&(PIR0bits.TMR0IF==1))
    {
        PIR0bits.TMR0IF=0; // clear the TMR0 interrupt flag
        // Reinitialize TMR0 value for 500ms overflow;
        TMR0L=111;
        TMR0H=248;
        // Do something
        LATAbits.LATA1^=1; // toggle A1
    }
}

void main(void)
{
    // Oscillator configure, data sheet pg. 121-126
    OSCCON1=0b01100000; // NOSC HFINTOSC; NDIV 1; 
    OSCFRQ=0b00000110; // HFFRQ 32_MHz;

    // GPIO configure
    ANSELAbits.ANSA1=0; // A1 signal is digital
    TRISAbits.TRISA1=0; // A1 is an output
    LATAbits.LATA1=0; // State of A1 is low

    // Timer 0 configure
    PMD1bits.TMR0MD=0; // TMR0 module is enabled
    T0CON0=0b00010000; // T0EN disabled; T016BIT 16-bit; T0OUTPS 1:1; 
    T0CON1=0b10010011; // T0CS LFINTOSC; T0ASYNC not sync; T0CKPS 1:8; 
    // TMR0 initialize value for 500ms overflow;
    TMR0L=111;
    TMR0H=248;
    PIR0bits.TMR0IF=0; // Clear Interrupt flag
    PIE0bits.TMR0IE=1; // Enabling TMR0 interrupt
    T0CON0bits.T0EN=1; // enable TMR0
    INTCONbits.GIE=1; // enable global interrupt

    while(1)
    {
        // do nothing
    }
}
