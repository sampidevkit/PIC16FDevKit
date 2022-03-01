#include "samm_7x_frt.h"

#if defined(USE_DEFAULT_CONFIG_1MHZ) \
||defined(USE_DEFAULT_CONFIG_2MHZ) \
||defined(USE_DEFAULT_CONFIG_4MHZ) \
||defined(USE_DEFAULT_CONFIG_8MHZ) \
||defined(USE_DEFAULT_CONFIG_16MHZ) \
||defined(USE_DEFAULT_CONFIG_32MHZ)
// CONFIG1
#pragma config FEXTOSC=OFF      // External Oscillator mode selection bits->Oscillator not enabled
#pragma config RSTOSC=HFINT1    // Power-up default value for COSC bits->HFINTOSC (1MHz)
#pragma config CLKOUTEN=OFF     // Clock Out Enable bit->CLKOUT function is disabled; i/o or oscillator function on OSC2
#pragma config CSWEN=ON         // Clock Switch Enable bit->Writing to NOSC and NDIV is allowed
#pragma config FCMEN=ON         // Fail-Safe Clock Monitor Enable bit->FSCM timer enabled
// CONFIG2
#pragma config MCLRE=ON         // Master Clear Enable bit->MCLR pin is Master Clear function
#pragma config PWRTE=OFF        // Power-up Timer Enable bit->PWRT disabled
#pragma config LPBOREN=OFF      // Low-Power BOR enable bit->ULPBOR disabled
#pragma config BOREN=ON         // Brown-out reset enable bits->Brown-out Reset Enabled, SBOREN bit is ignored
#pragma config BORV=LO          // Brown-out Reset Voltage Selection->Brown-out Reset Voltage (VBOR) set to 1.9V on LF, and 2.45V on F Devices
#pragma config ZCD=OFF          // Zero-cross detect disable->Zero-cross detect circuit is disabled at POR.
#pragma config PPS1WAY=OFF      // Peripheral Pin Select one-way control->The PPSLOCK bit can be set and cleared repeatedly by software
#pragma config STVREN=ON        // Stack Overflow/Underflow Reset Enable bit->Stack Overflow or Underflow will cause a reset
#pragma config DEBUG=OFF        // Background Debugger->Background Debugger disabled
// CONFIG3
#pragma config WDTCPS=WDTCPS_31 // WDT Period Select bits->Divider ratio 1:65536; software control of WDTPS
#pragma config WDTE=ON          // WDT operating mode->WDT enabled regardless of sleep; SWDTEN ignored
#pragma config WDTCWS=WDTCWS_7  // WDT Window Select bits->window always open (100%); software control; keyed access not required
#pragma config WDTCCS=LFINTOSC  // WDT input clock selector->WDT reference clock is the 31.0kHz LFINTOSC output
// CONFIG4
#pragma config WRT=OFF          // UserNVM self-write protection bits->Write protection off
#pragma config SCANE=available  // Scanner Enable bit->Scanner module is available for use
#pragma config LVP=ON           // Low Voltage Programming Enable bit->Low Voltage programming enabled. MCLR/Vpp pin function is MCLR.
// CONFIG5
#pragma config CP=ON            // UserNVM Program memory code protection bit->Program Memory code protection enabled
#pragma config CPD=ON           // DataNVM code protection bit->Data EEPROM code protection enabled
#endif

#define __debug_bit_delay() _delay((unsigned long)(104*_XTAL_FREQ)/4000000) // 9600bps

void Debug_Init(void)
{
    ANSELBbits.ANSB5=0;
    ODCONBbits.ODCB5=1;
    LATBbits.LATB5=1;
    TRISBbits.TRISB5=0;
}

void Debug_Putc(char c)
{
    char i;

    LATBbits.LATB5=0;
    TRISBbits.TRISB5=0;
    __debug_bit_delay();

    for(i=0; i<8; i++)
    {
        if(c&1)
            LATBbits.LATB5=1;
        else
            LATBbits.LATB5=0;

        c>>=1;
        __debug_bit_delay();
    }

    LATBbits.LATB5=1;
    __debug_bit_delay();
    TRISBbits.TRISB5=1;
}

void Debug_Puts(const char *s)
{
    while(*s!=0x00)
        Debug_Putc(*s++);
}

#ifdef USE_UART_DEBUG
void putch(char txData)
{
    Debug_Putc(txData);
}
#endif

void Samm7xFrt_Init(void) // <editor-fold defaultstate="collapsed" desc="System initialize">
{
    /* *********************************************************** Oscillator */
    OSCCON1=0x60; // NOSC HFINTOSC; NDIV 1; 
    OSCCON3=0x00; // CSWHOLD may proceed; SOSCPWR Low power; 
    OSCEN=0x00; // MFOEN disabled; LFOEN disabled; ADOEN disabled; SOSCEN disabled; EXTOEN disabled; HFOEN disabled; 

#if defined(USE_DEFAULT_CONFIG_1MHZ)
    OSCFRQ=0x00; // HFFRQ 1_MHz; 
#elif defined(USE_DEFAULT_CONFIG_2MHZ)
    OSCFRQ=0x01; // HFFRQ 2_MHz; 
#elif defined(USE_DEFAULT_CONFIG_4MHZ)
    OSCFRQ=0x02; // HFFRQ 4_MHz; 
#elif defined(USE_DEFAULT_CONFIG_8MHZ)
    OSCFRQ=0x03; // HFFRQ 8_MHz; 
#elif defined(USE_DEFAULT_CONFIG_16MHZ)
    OSCFRQ=0x05; // HFFRQ 16_MHz; 
#elif defined(USE_DEFAULT_CONFIG_32MHZ)
    OSCFRQ=0x06; // HFFRQ 32_MHz; 
#endif

    OSCTUNE=0x00;
    /* ******************************************** Peripheral Module Disable */
    // CLKRMD CLKR disabled; SYSCMD SYSCLK enabled; SCANMD SCANNER disabled;
    // FVRMD FVR disabled; IOCMD IOC disabled; CRCMD CRC disabled; NVMMD NVM disabled; 
    PMD0=0x5F;
    // TMR0MD TMR0 disabled; TMR1MD TMR1 disabled; TMR4MD TMR4 disabled; 
    // TMR5MD TMR5 disabled; TMR2MD TMR2 disabled; TMR3MD TMR3 disabled; 
    // NCOMD DDS(NCO) disabled; TMR6MD TMR6 disabled; 
    PMD1=0xFF;
    // ZCDMD ZCD disabled; DACMD DAC disabled; CMP1MD CMP1 disabled; 
    // ADCMD ADC disabled; CMP2MD CMP2 disabled; 
    PMD2=0x67;
    // CCP2MD CCP2 disabled; CCP1MD CCP1 disabled; CCP4MD CCP4 disabled; 
    // CCP3MD CCP3 disabled; CCP5MD CCP5 disabled; PWM6MD PWM6 disabled; 
    // PWM7MD PWM7 disabled; 
    PMD3=0x7F;
    // CWG3MD CWG3 disabled; CWG2MD CWG2 disabled; CWG1MD CWG1 disabled; 
    // MSSP1MD MSSP1 disabled; UART1MD EUSART disabled; MSSP2MD MSSP2 disabled; 
    PMD4=0x77;
    // DSMMD DSM disabled; CLC3MD CLC3 disabled; CLC4MD CLC4 disabled; 
    // SMT1MD SMT1 disabled; SMT2MD SMT2 disabled; CLC1MD CLC1 disabled; CLC2MD CLC2 disabled; 
    PMD5=0xDF;
    /* ***************************************************************** GPIO */
    /* ********************************************* Peripheral Pin Selection */
    /* ***************************************************************** ADCC */
    /* ***************************************************************** CCP1 */
    /* ***************************************************************** CCP2 */
    /* ***************************************************************** CCP3 */
    /* ***************************************************************** CCP4 */
    /* ***************************************************************** CCP5 */
    /* ***************************************************************** CLC1 */
    /* ***************************************************************** CLC2 */
    /* ***************************************************************** CLC3 */
    /* ***************************************************************** CLC4 */
    /* ****************************************************** Clock Reference */
    /* ********************************************************** Comparator1 */
    /* ********************************************************** Comparator2 */
    /* ****************************************************************** CRC */
    /* ***************************************************************** CWG1 */
    /* ***************************************************************** CWG2 */
    /* ***************************************************************** CWG3 */
    /* ****************************************************************** DAC */
    /* ****************************************************************** DSM */
    /* *************************************************************** EUSART */
    /* *************************************************** External Interrupt */
    /* ****************************************************************** FVR */
    /* *************************************************************** Memory */
    /* **************************************************************** MSSP1 */
    /* **************************************************************** MSSP2 */
    /* ****************************************************************** NCO */
    /* ***************************************************************** PWM6 */
    /* ***************************************************************** PWM7 */
    /* ***************************************************************** SMT1 */
    /* ***************************************************************** SMT2 */
    /* *************************************************************** Timer0 */
    /* *************************************************************** Timer1 */
    /* *************************************************************** Timer2 */
    /* *************************************************************** Timer3 */
    /* *************************************************************** Timer4 */
    /* *************************************************************** Timer5 */
    /* *************************************************************** Timer6 */
    /* ****************************************************************** ZCD */
    /* *********************************************************** UART Debug */
    /* *********************************************************** Interrupts */
} // </editor-fold>

void Samm7xFrt_Sleep(void) // <editor-fold defaultstate="collapsed" desc="System sleep">
{
    
} // </editor-fold>