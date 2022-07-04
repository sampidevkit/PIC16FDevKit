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

#if defined(USE_DEFAULT_CONFIG_1MHZ)
#define __debug_bit_delay() _delay(26) // 9600bps
#elif defined(USE_DEFAULT_CONFIG_2MHZ)
#define __debug_bit_delay() _delay(52) // 9600bps
#elif defined(USE_DEFAULT_CONFIG_4MHZ)
#define __debug_bit_delay() _delay(104) // 9600bps
#elif defined(USE_DEFAULT_CONFIG_8MHZ)
#define __debug_bit_delay() _delay(208) // 9600bps
#elif defined(USE_DEFAULT_CONFIG_16MHZ)
#define __debug_bit_delay() _delay(416) // 9600bps
#elif defined(USE_DEFAULT_CONFIG_32MHZ)
#define __debug_bit_delay() _delay(832) // 9600bps
#else
#define __debug_bit_delay() _delay((unsigned long)(104*_XTAL_FREQ)/4000000) // 9600bps
#endif

/* ********************************************************** SOFT UART DEBUG */
void Debug_Init(void) // <editor-fold defaultstate="collapsed" desc="SoftUART debug initialize">
{
    ANSELBbits.ANSB5=0;
    ODCONBbits.ODCB5=1;
    LATBbits.LATB5=1;
    TRISBbits.TRISB5=0;
} // </editor-fold>

void Debug_Putc(char c) // <editor-fold defaultstate="collapsed" desc="SoftUART put a char">
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
} // </editor-fold>

void Debug_Puts(const char *s) // <editor-fold defaultstate="collapsed" desc="SoftUART put a string">
{
    while(*s!=0x00)
        Debug_Putc(*s++);
} // </editor-fold>

#ifdef USE_UART_DEBUG

void putch(char txData) // <editor-fold defaultstate="collapsed" desc="STDIO library">
{
    Debug_Putc(txData);
} // </editor-fold>
#endif

/* ********************************************************* MSSP1 I2C MASTER */
static uint8_t mssp1_i2c_timeout=255;

#define MSSP1_I2C_MasterOpen()               SSP1CON1bits.SSPEN=1
#define MSSP1_I2C_MasterClose()              SSP1CON1bits.SSPEN=0

#define MSSP1_I2C_MasterEnableIrq()          PIE3bits.SSP1IE=1
#define MSSP1_I2C_MasterDisableIrq()         PIE3bits.SSP1IE=0
#define MSSP1_I2C_MasterSetIrq()             PIR3bits.SSP1IF=1
#define MSSP1_I2C_MasterClearIrq()           PIR3bits.SSP1IF=0
#define MSSP1_I2C_MasterIsIrqEnabled()       PIE3bits.SSP1IE
#define MSSP1_I2C_MasterWaitForEvent()       if(mssp1_i2c_timeout>0){mssp1_i2c_timeout=255; while((PIR3bits.SSP1IF==0)&&(--mssp1_i2c_timeout>0)) __delay_us(5);}

#define MSSP1_I2C_MasterIsRxBufFull()        SSP1STATbits.BF
#define MSSP1_I2C_MasterClearBusCollision()  PIR3bits.BCL2IF=0
#define MSSP1_I2C_MasterSendNack()           do{SSP1CON2bits.ACKDT=1; SSP1CON2bits.ACKEN=1;}while(0)
#define MSSP1_I2C_MasterSendAck()            do{SSP1CON2bits.ACKDT=0; SSP1CON2bits.ACKEN=1;}while(0)
#define MSSP1_I2C_MasterIsNack()             SSP1CON2bits.ACKSTAT
#define MSSP1_I2C_MasterStop()               SSP1CON2bits.PEN=1
#define MSSP1_I2C_MasterStart()              SSP1CON2bits.SEN=1
#define MSSP1_I2C_MasterStartRx()            SSP1CON2bits.RCEN=1
#define MSSP1_I2C_MasterDisableRestart()     SSP1CON2bits.RSEN=0
#define MSSP1_I2C_MasterEnableRestart()      SSP1CON2bits.RSEN=1
#define MSSP1_I2C_MasterSendTxData(data)     SSP1BUF=data
#define MSSP1_I2C_MasterGetRxData()          SSP1BUF

void MSSP1_I2C_Master_Init(uint32_t clock) // <editor-fold defaultstate="collapsed" desc="MSSP1 I2C master initialize">
{
    int32_t tmp;

    __db("\n%s: ", __FUNCTION__);

    PMD4bits.MSSP1MD=0; // enable MSSP module
    SSP1CON1=0x08; // disable I2C, Master mode, clock=FOSC / (4 * (SSPxADD+1))
    SSP1CON2=0x00;
    SSP1STAT=0x00;

    tmp=(_XTAL_FREQ>>2);
    tmp/=(int32_t) clock;
    tmp--;

    if(tmp>255)
        tmp=255;
    else if(tmp<0)
        tmp=0;

    SSP1ADD=(uint8_t) tmp;
    mssp1_i2c_timeout=255;

    __db("SSP1ADD=%02X\n", SSP1ADD);
} // </editor-fold>

void MSSP1_I2C_Master_Deinit(void) // <editor-fold defaultstate="collapsed" desc="MSSP1 I2C master de-initialize">
{
    mssp1_i2c_timeout=0;
    SSP1CON1bits.SSPEN=0; // disable I2C
    PMD4bits.MSSP1MD=1; // disable MSSP module
} // </editor-fold>

int8_t MSSP1_I2C_Master_Scan(void (*pStreamFnc)(uint8_t)) // <editor-fold defaultstate="collapsed" desc="MSSP1 I2C master scans device">
{
    int8_t found;
    uint8_t slvAddr;

    if(pStreamFnc==NULL)
        return -1; // error

    for(slvAddr=0, found=0; slvAddr<127; slvAddr++)
    {
        bool rslt=0;

        mssp1_i2c_timeout=255;
        // clear event
        MSSP1_I2C_MasterClearBusCollision();
        MSSP1_I2C_MasterClearIrq();
        // enable I2C
        MSSP1_I2C_MasterOpen();
        // send start bit
        MSSP1_I2C_MasterStart();
        // wait for event
        MSSP1_I2C_MasterWaitForEvent();
        // clear event
        MSSP1_I2C_MasterClearIrq();
        // send slave address
        MSSP1_I2C_MasterSendTxData((uint8_t) ((slvAddr<<1)|1));
        // wait for event
        MSSP1_I2C_MasterWaitForEvent();
        // clear event
        MSSP1_I2C_MasterClearIrq();
        // get ACK
        rslt|=MSSP1_I2C_MasterIsNack();
        // enable receive
        MSSP1_I2C_MasterStartRx();
        // get last data
        uint8_t dummy=MSSP1_I2C_MasterGetRxData();
        // wait for event
        MSSP1_I2C_MasterWaitForEvent();
        // clear event
        MSSP1_I2C_MasterClearIrq();
        // send NACK
        MSSP1_I2C_MasterSendNack();
        // wait for event
        MSSP1_I2C_MasterWaitForEvent();
        // clear event
        MSSP1_I2C_MasterClearIrq();
        // send stop bit
        MSSP1_I2C_MasterStop();
        // wait for event
        MSSP1_I2C_MasterWaitForEvent();
        // clear event
        MSSP1_I2C_MasterClearIrq();
        // disable I2C
        MSSP1_I2C_MasterClose();

        if((mssp1_i2c_timeout>0)&&(!rslt))
        {
            found++;
            pStreamFnc(slvAddr);
        }
    }

    return found;
} // </editor-fold>

bool MSSP1_I2C_Master_ReadNByte(uint8_t slvAddr, uint8_t *pD, uint8_t len) // <editor-fold defaultstate="collapsed" desc="MSSP1 I2C master reads N bytes">
{
    bool rslt=0;

    mssp1_i2c_timeout=255;
    // clear event
    MSSP1_I2C_MasterClearBusCollision();
    MSSP1_I2C_MasterClearIrq();
    // enable I2C
    MSSP1_I2C_MasterOpen();
    // send start bit
    MSSP1_I2C_MasterStart();
    // wait for event
    MSSP1_I2C_MasterWaitForEvent();
    // clear event
    MSSP1_I2C_MasterClearIrq();
    // send slave address
    MSSP1_I2C_MasterSendTxData((uint8_t) ((slvAddr<<1)|1));
    // wait for event
    MSSP1_I2C_MasterWaitForEvent();
    // clear event
    MSSP1_I2C_MasterClearIrq();
    // get ACK
    rslt|=MSSP1_I2C_MasterIsNack();
    // get N-1 byte data
    while(len>1)
    {
        // enable receive
        MSSP1_I2C_MasterStartRx();
        len--;
        // get data
        *pD=MSSP1_I2C_MasterGetRxData();
        pD++;
        // wait for event
        MSSP1_I2C_MasterWaitForEvent();
        // clear event
        MSSP1_I2C_MasterClearIrq();
        // send ACK
        MSSP1_I2C_MasterSendAck();
        // wait for event
        MSSP1_I2C_MasterWaitForEvent();
        // clear event
        MSSP1_I2C_MasterClearIrq();
    }
    // enable receive
    MSSP1_I2C_MasterStartRx();
    // get last data
    *pD=MSSP1_I2C_MasterGetRxData();
    // wait for event
    MSSP1_I2C_MasterWaitForEvent();
    // clear event
    MSSP1_I2C_MasterClearIrq();
    // send NACK
    MSSP1_I2C_MasterSendNack();
    // wait for event
    MSSP1_I2C_MasterWaitForEvent();
    // clear event
    MSSP1_I2C_MasterClearIrq();
    // send stop bit
    MSSP1_I2C_MasterStop();
    // wait for event
    MSSP1_I2C_MasterWaitForEvent();
    // clear event
    MSSP1_I2C_MasterClearIrq();
    // disable I2C
    MSSP1_I2C_MasterClose();

    if(mssp1_i2c_timeout>0)
        return !rslt;

    return 0;
} // </editor-fold>

bool MSSP1_I2C_Master_WriteNByte(uint8_t slvAddr, const uint8_t *pD, uint8_t len) // <editor-fold defaultstate="collapsed" desc="MSSP1 I2C master writes N bytes">
{
    bool rslt=0;

    mssp1_i2c_timeout=255;
    // clear event
    MSSP1_I2C_MasterClearBusCollision();
    MSSP1_I2C_MasterClearIrq();
    // enable I2C
    MSSP1_I2C_MasterOpen();
    // send start bit
    MSSP1_I2C_MasterStart();
    // wait for event
    MSSP1_I2C_MasterWaitForEvent();
    // clear event
    MSSP1_I2C_MasterClearIrq();
    // send slave address
    MSSP1_I2C_MasterSendTxData((uint8_t) (slvAddr<<1));
    // write N byte data
    while(len>0)
    {
        // wait for event
        MSSP1_I2C_MasterWaitForEvent();
        // clear event
        MSSP1_I2C_MasterClearIrq();
        // get ACK
        rslt|=MSSP1_I2C_MasterIsNack();
        len--;
        // send data
        MSSP1_I2C_MasterSendTxData(*pD++);
    }
    // wait for event
    MSSP1_I2C_MasterWaitForEvent();
    // clear event
    MSSP1_I2C_MasterClearIrq();
    // get ACK
    rslt|=MSSP1_I2C_MasterIsNack();
    // send stop bit
    MSSP1_I2C_MasterStop();
    // wait for event
    MSSP1_I2C_MasterWaitForEvent();
    // clear event
    MSSP1_I2C_MasterClearIrq();
    // disable I2C
    MSSP1_I2C_MasterClose();

    if(mssp1_i2c_timeout>0)
        return !rslt;

    return 0;
} // </editor-fold>

/* ********************************************************* MSSP1 I2C MASTER */

static uint8_t mssp2_i2c_timeout=255;

#define MSSP2_I2C_MasterOpen()               SSP2CON1bits.SSPEN=1
#define MSSP2_I2C_MasterClose()              SSP2CON1bits.SSPEN=0

#define MSSP2_I2C_MasterEnableIrq()          PIE3bits.SSP2IE=1
#define MSSP2_I2C_MasterDisableIrq()         PIE3bits.SSP2IE=0
#define MSSP2_I2C_MasterSetIrq()             PIR3bits.SSP2IF=1
#define MSSP2_I2C_MasterClearIrq()           PIR3bits.SSP2IF=0
#define MSSP2_I2C_MasterIsIrqEnabled()       PIE3bits.SSP2IE
#define MSSP2_I2C_MasterWaitForEvent()       if(mssp2_i2c_timeout>0){mssp2_i2c_timeout=255; while((PIR3bits.SSP2IF==0)&&(--mssp2_i2c_timeout>0)) __delay_us(5);}

#define MSSP2_I2C_MasterIsRxBufFull()        SSP2STATbits.BF
#define MSSP2_I2C_MasterClearBusCollision()  PIR3bits.BCL2IF=0
#define MSSP2_I2C_MasterSendNack()           do{SSP2CON2bits.ACKDT=1; SSP2CON2bits.ACKEN=1;}while(0)
#define MSSP2_I2C_MasterSendAck()            do{SSP2CON2bits.ACKDT=0; SSP2CON2bits.ACKEN=1;}while(0)
#define MSSP2_I2C_MasterIsNack()             SSP2CON2bits.ACKSTAT
#define MSSP2_I2C_MasterStop()               SSP2CON2bits.PEN=1
#define MSSP2_I2C_MasterStart()              SSP2CON2bits.SEN=1
#define MSSP2_I2C_MasterStartRx()            SSP2CON2bits.RCEN=1
#define MSSP2_I2C_MasterDisableRestart()     SSP2CON2bits.RSEN=0
#define MSSP2_I2C_MasterEnableRestart()      SSP2CON2bits.RSEN=1
#define MSSP2_I2C_MasterSendTxData(data)     SSP2BUF=data
#define MSSP2_I2C_MasterGetRxData()          SSP2BUF

void MSSP2_I2C_Master_Init(uint32_t clock) // <editor-fold defaultstate="collapsed" desc="MSSP2 I2C master initialize">
{
    int32_t tmp;

    __db("\n%s: ", __FUNCTION__);

    PMD4bits.MSSP2MD=0; // enable MSSP module
    SSP2CON1=0x08; // disable I2C, Master mode, clock=FOSC / (4 * (SSPxADD+1))
    SSP2CON2=0x00;
    SSP2STAT=0x00;

    tmp=(_XTAL_FREQ>>2);
    tmp/=(int32_t) clock;
    tmp--;

    if(tmp>255)
        tmp=255;
    else if(tmp<0)
        tmp=0;

    SSP2ADD=(uint8_t) tmp;
    mssp2_i2c_timeout=255;

    __db("SSP2ADD=%02X\n", SSP2ADD);
} // </editor-fold>

void MSSP2_I2C_Master_Deinit(void) // <editor-fold defaultstate="collapsed" desc="MSSP2 I2C master de-initialize">
{
    mssp2_i2c_timeout=0;
    SSP2CON1bits.SSPEN=0; // disable I2C
    PMD4bits.MSSP2MD=1; // disable MSSP module
} // </editor-fold>

int8_t MSSP2_I2C_Master_Scan(void (*pStreamFnc)(uint8_t)) // <editor-fold defaultstate="collapsed" desc="MSSP2 I2C master scans device">
{
    int8_t found;
    uint8_t slvAddr;

    if(pStreamFnc==NULL)
        return -1; // error

    for(slvAddr=0, found=0; slvAddr<127; slvAddr++)
    {
        bool rslt=0;

        mssp2_i2c_timeout=255;
        // clear event
        MSSP2_I2C_MasterClearBusCollision();
        MSSP2_I2C_MasterClearIrq();
        // enable I2C
        MSSP2_I2C_MasterOpen();
        // send start bit
        MSSP2_I2C_MasterStart();
        // wait for event
        MSSP2_I2C_MasterWaitForEvent();
        // clear event
        MSSP2_I2C_MasterClearIrq();
        // send slave address
        MSSP2_I2C_MasterSendTxData((uint8_t) ((slvAddr<<1)|1));
        // wait for event
        MSSP2_I2C_MasterWaitForEvent();
        // clear event
        MSSP2_I2C_MasterClearIrq();
        // get ACK
        rslt|=MSSP2_I2C_MasterIsNack();
        // enable receive
        MSSP2_I2C_MasterStartRx();
        // get last data
        uint8_t dummy=MSSP2_I2C_MasterGetRxData();
        // wait for event
        MSSP2_I2C_MasterWaitForEvent();
        // clear event
        MSSP2_I2C_MasterClearIrq();
        // send NACK
        MSSP2_I2C_MasterSendNack();
        // wait for event
        MSSP2_I2C_MasterWaitForEvent();
        // clear event
        MSSP2_I2C_MasterClearIrq();
        // send stop bit
        MSSP2_I2C_MasterStop();
        // wait for event
        MSSP2_I2C_MasterWaitForEvent();
        // clear event
        MSSP2_I2C_MasterClearIrq();
        // disable I2C
        MSSP2_I2C_MasterClose();
        
        if((mssp2_i2c_timeout>0)&&(!rslt))
        {
            found++;
            pStreamFnc(slvAddr);
        }
    }

    return found;
} // </editor-fold>

bool MSSP2_I2C_Master_ReadNByte(uint8_t slvAddr, uint8_t *pD, uint8_t len) // <editor-fold defaultstate="collapsed" desc="MSSP2 I2C master reads N bytes">
{
    bool rslt=0;

    mssp2_i2c_timeout=255;
    // clear event
    MSSP2_I2C_MasterClearBusCollision();
    MSSP2_I2C_MasterClearIrq();
    // enable I2C
    MSSP2_I2C_MasterOpen();
    // send start bit
    MSSP2_I2C_MasterStart();
    // wait for event
    MSSP2_I2C_MasterWaitForEvent();
    // clear event
    MSSP2_I2C_MasterClearIrq();
    // send slave address
    MSSP2_I2C_MasterSendTxData((uint8_t) ((slvAddr<<1)|1));
    // wait for event
    MSSP2_I2C_MasterWaitForEvent();
    // clear event
    MSSP2_I2C_MasterClearIrq();
    // get ACK
    rslt|=MSSP2_I2C_MasterIsNack();
    // get N-1 byte data
    while(len>1)
    {
        // enable receive
        MSSP2_I2C_MasterStartRx();
        len--;
        // get data
        *pD=MSSP2_I2C_MasterGetRxData();
        pD++;
        // wait for event
        MSSP2_I2C_MasterWaitForEvent();
        // clear event
        MSSP2_I2C_MasterClearIrq();
        // send ACK
        MSSP2_I2C_MasterSendAck();
        // wait for event
        MSSP2_I2C_MasterWaitForEvent();
        // clear event
        MSSP2_I2C_MasterClearIrq();
    }
    // enable receive
    MSSP2_I2C_MasterStartRx();
    // get last data
    *pD=MSSP2_I2C_MasterGetRxData();
    // wait for event
    MSSP2_I2C_MasterWaitForEvent();
    // clear event
    MSSP2_I2C_MasterClearIrq();
    // send NACK
    MSSP2_I2C_MasterSendNack();
    // wait for event
    MSSP2_I2C_MasterWaitForEvent();
    // clear event
    MSSP2_I2C_MasterClearIrq();
    // send stop bit
    MSSP2_I2C_MasterStop();
    // wait for event
    MSSP2_I2C_MasterWaitForEvent();
    // clear event
    MSSP2_I2C_MasterClearIrq();
    // disable I2C
    MSSP2_I2C_MasterClose();

    if(mssp2_i2c_timeout>0)
        return !rslt;

    return 0;
} // </editor-fold>

bool MSSP2_I2C_Master_WriteNByte(uint8_t slvAddr, const uint8_t *pD, uint8_t len) // <editor-fold defaultstate="collapsed" desc="MSSP2 I2C master writes N bytes">
{
    bool rslt=0;

    mssp2_i2c_timeout=255;
    // clear event
    MSSP2_I2C_MasterClearBusCollision();
    MSSP2_I2C_MasterClearIrq();
    // enable I2C
    MSSP2_I2C_MasterOpen();
    // send start bit
    MSSP2_I2C_MasterStart();
    // wait for event
    MSSP2_I2C_MasterWaitForEvent();
    // clear event
    MSSP2_I2C_MasterClearIrq();
    // send slave address
    MSSP2_I2C_MasterSendTxData((uint8_t) (slvAddr<<1));
    // write N byte data
    while(len>0)
    {
        // wait for event
        MSSP2_I2C_MasterWaitForEvent();
        // clear event
        MSSP2_I2C_MasterClearIrq();
        // get ACK
        rslt|=MSSP2_I2C_MasterIsNack();
        len--;
        // send data
        MSSP2_I2C_MasterSendTxData(*pD++);
    }
    // wait for event
    MSSP2_I2C_MasterWaitForEvent();
    // clear event
    MSSP2_I2C_MasterClearIrq();
    // get ACK
    rslt|=MSSP2_I2C_MasterIsNack();
    // send stop bit
    MSSP2_I2C_MasterStop();
    // wait for event
    MSSP2_I2C_MasterWaitForEvent();
    // clear event
    MSSP2_I2C_MasterClearIrq();
    // disable I2C
    MSSP2_I2C_MasterClose();

    if(mssp2_i2c_timeout>0)
        return !rslt;

    return 0;
} // </editor-fold>

/* ******************************************************************* SYSTEM */

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