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
#include <stdbool.h>
#include <pic16f18877.h>

#define _XTAL_FREQ 32000000 // System clock

static bool SimpleButton_is_pressed(void)
{
    if(PORTDbits.RD3==0)
        return 1;

    return 0;
}

static bool LatchedButton_is_pressed(void)
{
    static bool prv_state=1; // init state of the button, set 1 if use pull-up resister, 0 if use pull-down resistor

    if(prv_state!=PORTDbits.RD3) // compare previous state with present state of D3
    {
        prv_state=PORTDbits.RD3; // update new state

        if(prv_state==0) // button is pressed
            return 1;
    }

    return 0;
}

bool DebounceButton_is_pressed(void)
{
    static bool prv_state=1;
    static uint16_t count=0;

    if(prv_state!=PORTDbits.RD3)
    {
        if(prv_state==1)
        {
            if(++count>1000) // check in 1000 cycles
            {
                prv_state=0;
                return 1;
            }
        }
        else
            prv_state=1;
    }
    else
        count=0;

    return 0;
}

void main(void)
{
    // Oscillator configure, datasheet trang 121-126
    OSCCON1=0x60; // NOSC HFINTOSC; NDIV 1; 
    OSCCON3=0x00; // CSWHOLD may proceed; SOSCPWR Low power; 
    OSCEN=0x00; // MFOEN disabled; LFOEN disabled; ADOEN disabled; SOSCEN disabled; EXTOEN disabled; HFOEN disabled; 
    OSCFRQ=0x06; // HFFRQ 32_MHz;
    OSCTUNE=0x00; // HFTUN 0; 

    // GPIO configure
    LATAbits.LATA1=0; // State of A1 is low
    TRISAbits.TRISA1=0; // A1 is an output
    ANSELAbits.ANSA1=0; // A1 signal is digital

    TRISDbits.TRISD3=1; // D3 is an input
    ANSELDbits.ANSD3=0; // D3 signal is digital
    WPUDbits.WPUD3=1; // D3 uses pull-up resistor

    while(1)
    {
        if(
                //SimpleButton_is_pressed()
                //LatchedButton_is_pressed())
                DebounceButton_is_pressed())
            LATAbits.LATA1^=1; // Toggle pin A1
        
        __delay_ms(1);
    }

    return;
}
