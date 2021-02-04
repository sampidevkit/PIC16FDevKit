#include <stdio.h>
#include <string.h>
#include "Icsp.h"
#include "libcomp.h"
#include "ICSP_PIC16F1887X.h"
#include "System/TickTimer.h"
#include "ICSP_Target_Device.h"

// <editor-fold defaultstate="collapsed" desc="Definition">
/* PE command set */
#define PE_ROW_PROGRAM          0x0 // Program one row of flash memory
#define PE_READ                 0x1 // Read N 32-bit words
#define PE_PROGRAM              0x2 // Program flash memory
#define PE_CHIP_ERASE           0x4 // Erase the entire chip
#define PE_PAGE_ERASE           0x5 // Erase pages by address
#define PE_BLANK_CHECK          0x6 // Check blank memory
#define PE_EXEC_VERSION         0x7 // Read the PE software version
#define PE_GET_CRC              0x8 // Get the checksum of memory
#define PE_PROGRAM_CLUSTER      0x9 // Program N bytes
#define PE_GET_DEVICEID         0xA // Return the hardware ID of device
#define PE_GET_CHECKSUM         0xC // Gets the checksum of Flash memory
#define PE_DOUBLE_WORD_PGRM     0xE // Programs two words of Flash memory at the specified address
/* PE command operand */
#define PE_CMD_NO_OPERAND       0x0
/* TIMING REQUIREMENTS */
// DS60001387C-page 295
#define delay_D136()            18 // 17.3ms - Self-Timed Chip Erase Time
#define delay_D133B()           5 // 4.33ms - Self-Timed Page Erase Time
#define delay_D133A()           2 // 1.47ms - Self-Timed Row Write Cycle Time
// DS60001364D-page 52
#define wait()                  do{Nop(); Nop();} while(0) // 1us @ SYS_CLK=48MHz
#define delay_P11()             delay_D136() // Chip Erase Time
#define delay_P12()             delay_D133B() // Page Erase Time
#define delay_P13()             delay_D133A() // Row Programming Time
#define delay_P1A()             wait() // Serial Clock (PGECx) Low Time
#define delay_P1B()             wait() // Serial Clock (PGECx) High Time
#define delay_P6()              wait() // VDD Setup Time to MCLR
#define delay_P7()              wait() // Input Data Hold Time from MCLR
#define delay_P18()             wait() // Delay from First MCLR to First PGECx for Key Sequence on PGEDx
#define delay_P19()             wait() // Delay from Last PGECx for Key Sequence on PGEDx to Second MCLR
#define delay_P20()             icsp_delay_us(500) // MCLR High Time
/* MCHP TAP INSTRUCTIONS */
#define MTAP_COMMAND            0x07 // 5-bit
#define MTAP_SW_MTAP            0x04 // 5-bit
#define MTAP_SW_ETAP            0x05 // 5-bit
#define MTAP_IDCODE             0x01 // 5-bit
/* MTAP_COMMAND DR COMMANDS */
#define MCHP_STATUS             0x00 // 8-bit
#define MCHP_ASSERT_RST         0xD1 // 8-bit
#define MCHP_DE_ASSERT_RST      0xD0 // 8-bit
#define MCHP_ERASE              0xFC // 8-bit
#define MCHP_FLASH_ENABLE       0xFE // 8-bit
#define MCHP_FLASH_DISABLE      0xFD // 8-bit
/* EJTAG TAP INSTRUCTIONS */
#define ETAP_ADDRESS            0x08 // 5-bit
#define ETAP_DATA               0x09 // 5-bit
#define ETAP_CONTROL            0x0A // 5-bit
#define ETAP_EJTAGBOOT          0x0C // 5-bit
#define ETAP_FASTDATA           0x0E // 5-bit
/* PE INSTRUCTIONS */
static const uint16_t pic32_pe_loader []=// <editor-fold defaultstate="collapsed" desc="PIC16F1887X loader">
{
    // [LOW] [HIGH]
    0x41A3, 0xFF20,
    0x41A5, 0xDEAD,
    0x6A30, 0x6930,
    0x94A2, 0x0009,
    0x41B9, 0xA000,
    0x40E2, 0xFFF8,
    0x6B30, 0xEB40,
    0x6E42, 0xCFFA,
    0x6D2E,
    0x3339, 0x0301,
    0x4599,
    0x0C00, 0x0C00
}; // </editor-fold>
static const uint32_t pic32_pe_instruction[]=// <editor-fold defaultstate="collapsed" desc="RIPE_20a_000510.hex">
{
    0xA00041BC, 0x7FF0339C, 0xA00041BD, 0x02FC53BD, 0xA00041A8, 0x06FD3108, 0x0C004588, 0xCBE54FF5,
    0x04CE7400, 0x4BE50C00, 0x4C0D459F, 0xA00041A7, 0x0F0030E7, 0x010030C7, 0x41A50C47, 0x69D0FF20,
    0x6D22E9A0, 0xFFFBB4C2, 0x4FF50C00, 0xA00041A2, 0x0F003042, 0x00044042, 0xCC06CBE5, 0xE02C00A7,
    0xE00041A5, 0x0F0030A5, 0x04F47400, 0x4BE50C00, 0x4C0D459F, 0x233D4FE1, 0x9405D018, 0x0EA50049,
    0x41B70E24, 0x32F7A000, 0x00770F00, 0x9097E02C, 0x41A20000, 0x3042E000, 0x00830F00, 0xC8441018,
    0x004033C0, 0x41B00ED7, 0x9295FF20, 0x0C5E0041, 0x10180295, 0x00334082, 0x26240E82, 0x21500096,
    0x69800C57, 0x6D22E9A0, 0xFFFBB482, 0xCC220C00, 0xF4000C00, 0xFCBD04F4, 0xAD260010, 0x01003231,
    0x0295CC11, 0x0E60A9D0, 0x74000C91, 0x0CB204DE, 0x4E64AD1B, 0x02936C94, 0xAD761350, 0x00083252,
    0xA9D00295, 0xFFD3B415, 0x00419295, 0x0C40CC0D, 0x0C40CC0B, 0xFFE7B7D4, 0xCFDB0E56, 0xB7C20C91,
    0x0C91FFEF, 0x0C00CFD6, 0x5018233D, 0x4C21459F, 0x001040E5, 0x45644FF1, 0x0E450E04, 0x74000E20,
    0x0C900504, 0x6C908D05, 0xFFF9B651, 0x08003210, 0x4C114524, 0x0C0045BF, 0xCBE54FF5, 0x05107400,
    0x4BE50C00, 0x4C0D459F, 0x8EA626D5, 0x1FC041A6, 0x30C60C40, 0x41A92FFC, 0x51297FFF, 0x41A7FFFF,
    0x30E7BFC0, 0x31002FFC, 0x94C4FFFF, 0x0C000004, 0x0008B4E4, 0x69C00C00, 0x00099523, 0x6D2E6D20,
    0xED01459F, 0xB50369C0, 0x0C000009, 0xB4A26D20, 0x6E42FFEC, 0x0C40459F, 0x0C40459F, 0xED01459F,
    0x69424FB0, 0x40E5C840, 0x26D4000B, 0x41A60C40, 0x05A8FF20, 0xE9E369B0, 0xB4A26D22, 0x05A8FFFB,
    0x4C05459F, 0x45644FF1, 0x0E450E04, 0xF4000E26, 0x508005BA, 0x41A2FFFF, 0x00504000, 0x8D041390,
    0xA00041A4, 0x44E0CC04, 0xC00041A4, 0x74000640, 0x0CB20584, 0x056C7400, 0xE9100C00, 0x45240C40,
    0x4C11459F, 0x400041A2, 0x13900044, 0x000840E2, 0xA00041A2, 0x07D844E2, 0x0C40AE87, 0xE960459F,
    0xC00041A2, 0x0628CFF8, 0x09CF6E40, 0xFFFCB4E4, 0xE9600534, 0x45BF0C40, 0x233D4FE1, 0x0E84D018,
    0x00919405, 0x41BE0EC5, 0x33DEA000, 0x007E0F00, 0x909EE02C, 0x41A20000, 0x3042E000, 0x00830F00,
    0xC8441018, 0xA00041A2, 0x0E003042, 0xE02C0062, 0x00009082, 0xE00041A2, 0x0E003042, 0x10180083,
    0x0E60C845, 0x0EE0EE01, 0xA00041B1, 0x10003231, 0xFF2041B0, 0xA00041B2, 0x3252CC42, 0x69800F00,
    0x6D22E9A0, 0xFFFBB622, 0xAE080C00, 0xFF003054, 0x05547400, 0x0EE20C00, 0xFF003054, 0x981802E2,
    0x0009B413, 0xFFC03056, 0xF4000C94, 0xFCBD0518, 0x30560010, 0x9062FFC0, 0xAD9D0040, 0x010032B4,
    0xA00041A2, 0x0E003042, 0xE9A06980, 0xB6426D22, 0x0C00FFFB, 0x05547400, 0x00540C00, 0xB4139818,
    0x0EE20006, 0xF4000C95, 0xFCBD0518, 0x30560014, 0x32B4FF80, 0x8D050200, 0x0E950C80, 0xCFBF0EC2,
    0x74000C5E, 0x0C000554, 0xED82AD06, 0x002340B3, 0x41A2CC17, 0x41A2FF20, 0xE9A3FF20, 0x000A9413,
    0xFF0032B5, 0xFF2041A2, 0x000CFA62, 0x0C40CC1F, 0xFF0032B5, 0xFF2041A2, 0x000CFAA2, 0x0C40CC17,
    0xCC14E823, 0x74000C40, 0x0C000554, 0xED82AD0A, 0x41A2CFF7, 0x41A2FF20, 0xE9A3FF20, 0x41A2CFE5,
    0x41A2FF20, 0xE9A3FF20, 0x0EB4CFE3, 0x5018233D, 0x4C21459F, 0xCBE34FF9, 0x00FC0049, 0x0069C840,
    0x484000FC, 0x00820527, 0xAD791390, 0x459F4BE3, 0x0C004C09, 0x45464FF1, 0x41A20E04, 0x69A0FF20,
    0x6920C864, 0xF400C845, 0x3080035A, 0x0C9001F4, 0x04DE7400, 0x45066E89, 0x4C11459F, 0x22BD4FE9,
    0x41A2D018, 0xFE62BF80, 0x02733660, 0x41A23B2C, 0x0053000A, 0x41B29A90, 0x3252A000, 0x41A2073C,
    0x6AA0FF20, 0x80400205, 0x000FB050, 0x00979402, 0xFFFFD285, 0x11180212, 0x0C0045A2, 0xA000079F,
    0xA00007D1, 0xA00007DF, 0xA0000779, 0xA00007B1, 0xA00007BD, 0xA0000811, 0xA000086D, 0xA0000829,
    0xA00007F5, 0xA000088B, 0xA000085F, 0xA0000843, 0xA000085F, 0xA000078D, 0xFF2041A2, 0x6AA068A0,
    0x04CE7400, 0xCC8E0C91, 0x80000070, 0xFF2041A2, 0x740068A0, 0x0C91036A, 0x0070CC85, 0x41A28000,
    0x68A0FF20, 0x01967400, 0xCC7C0C91, 0x80000070, 0x05107400, 0xCC760C00, 0x80000070, 0xFF2041A2,
    0x0C9168A0, 0x02187400, 0xCC6C0CB4, 0x80000070, 0xFF2041A2, 0xED0268A0, 0x0220CC63, 0x41A21018,
    0x68A0FF20, 0x0C916AA0, 0x02AC7400, 0xCF9926D5, 0xFF2041A2, 0xFF2041A2, 0xFE8268A0, 0x02940000,
    0x0C911040, 0x01BA7400, 0xCC4C0CB4, 0x80000070, 0xFF2041A2, 0xFE8268A0, 0x0C910000, 0x02347400,
    0xCC400CB4, 0x80000070, 0xFF2041A2, 0xFE8268A0, 0x0C910000, 0x74000CB4, 0x6F090272, 0x0070CC33,
    0xC8058000, 0xFF2041A2, 0xFE8268A0, 0x0C910000, 0x74000CB4, 0x6F0B0292, 0x0070CC25, 0xED078000,
    0x000FB450, 0xCC06ED03, 0x000741A3, 0x05103040, 0x000741A3, 0x41A344D3, 0xE933FF20, 0x41A2CF52,
    0xED0AFF20, 0x0008B450, 0x41A20C00, 0xFA62FF20, 0xCF47000C, 0xFF2041A2, 0x9450ED02, 0xED03FF40,
    0x80000070, 0x41A48D1C, 0xCC20FF20, 0x00025063, 0x02607400, 0xCF350CB4, 0xFF2041A2, 0xE9A34864,
    0x41A2CF30, 0xB470FF20, 0x0C00FF2A, 0xFF27B402, 0xFF2041A2, 0xE9A34865, 0x41A2CF24, 0xE9C3FF20,
    0xB470ED81, 0xED88000D, 0x0C91CFE3, 0xFF2041A4, 0xED88E9C3, 0xFFE7B470, 0xCF13ED8C, 0xFF2041A2,
    0xFFE1B470, 0xCFDAED8C, 0xFF2041A2, 0xBF8041A2, 0x2930F882, 0x40005084, 0x2930F882, 0xBF8041A2,
    0x2940F802, 0xBF8041A8, 0x29305108, 0xAA9941A9, 0x66555129, 0x556641AA, 0x99AA514A, 0x000041AB,
    0x8000516B, 0x000041AC, 0x8080518C, 0x0010F928, 0x0010F948, 0x0070F988, 0xF9280C00, 0xF9480010,
    0xF9680010, 0x41A30008, 0xFC43BF80, 0x2D2E2930, 0xFFFB40A2, 0x0C000C00, 0x0C000C00, 0x40003060,
    0xBF8041A2, 0x2934F862, 0xBF8041A2, 0x2930FC42, 0xD042459F, 0x0C002000, 0x0C40459F, 0xCBE54FF5,
    0xBF8041A2, 0x2950F882, 0xBF8041A2, 0x2960F8A2, 0x04867400, 0x4BE5EE01, 0x4C0D459F, 0xCBE54FF5,
    0xBF8041A2, 0x2950F882, 0x41A269D0, 0xF862BF80, 0x69D12960, 0xBF8041A2, 0x2970F862, 0x04867400,
    0x4BE5EE02, 0x4C0D459F, 0xCBE54FF5, 0xBF8041A2, 0x2950F882, 0xBF8041A2, 0x2980F8A2, 0x04867400,
    0x4BE5EE03, 0x4C0D459F, 0xCBE54FF5, 0xBF8041A2, 0x2950F882, 0x04867400, 0x4BE5EE04, 0x4C0D459F,
    0xCBE54FF5, 0x04867400, 0x4BE5EE0E, 0x4C0D459F, 0xBF8041A2, 0x2950F882, 0xBF8041A2, 0x2980F8A2,
    0xBF8041A2, 0xF862ED83, 0x30602930, 0xF8624003, 0x41A22930, 0xF802BF80, 0x41A82940, 0x5108BF80,
    0x41A92930, 0x5129AA99, 0x41AA6655, 0x514A5566, 0x41AB99AA, 0x516B0000, 0x41AC8000, 0x518C0000,
    0xF9288080, 0xF9480010, 0xF9880010, 0x0C000070, 0x0010F928, 0x0010F948, 0x0008F968, 0x0C000C00,
    0x0C000C00, 0x0C40459F, 0xBF8041A3, 0x2930FC43, 0x40A22D2E, 0x0C00FFFB, 0x0C000C00, 0x30600C00,
    0x41A24000, 0xF862BF80, 0x41A22934, 0xFC42BF80, 0x459F2930, 0x2000D042, 0xA00041A2, 0x3442459F,
    0x0C000004, 0x41A22E4D, 0x3462A000, 0x26B10004, 0x41A54465, 0x30A5A000, 0x00850F00, 0x25B02118,
    0x459F445C, 0x00043862, 0x000E40E5, 0x45554FF1, 0x0E250E04, 0xF4006C00, 0x14900572, 0x6C9EFFFF,
    0x6C00ACFA, 0x4C114515, 0x0C0045BF, 0xA00041A7, 0x0F0030E7, 0x31000CC0, 0x26600100, 0xED882E4F,
    0x00440C40, 0x00A52B10, 0x40453B3C, 0x0C000006, 0x70422522, 0xCC031021, 0x25222D2F, 0x26422D2F,
    0xADEF6DBE, 0xE9702E4F, 0xB5066F60, 0x6FF2FFE6, 0x0C0045BF, 0x45444FF5, 0xA00041B0, 0x0000F810,
    0xA00041A2, 0x0596F400, 0x00043882, 0xF850ED01, 0x45040000, 0x4C0D459F, 0x0510CDAB, 0xA0000E00,
    0x00000200, 0x00000000, 0x00000000
}; // </editor-fold>

#define PIC32_PE_VERSION_MM         0x0510
#define PIC32_PE_LOADER_LEN         ((sizeof(pic32_pe_loader) / sizeof((pic32_pe_loader)[0])))
#define PIC32_PE_INSTRUCTION_LEN    ((sizeof(pic32_pe_instruction) / sizeof((pic32_pe_instruction)[0])))

// </editor-fold>

static bool Icsp_Is_InProgress=0;
static bool serial_execution_mode=0;
static uint8_t asm_temp1, asm_temp2, asm_temp3;
#define ASM_TEMP1_RAM asm_temp1 // TDI (output) value in bit 0
#define ASM_TEMP2_RAM asm_temp2 // TMS (output) value in bit 0
#define ASM_TEMP3_RAM asm_temp3 // TDO (input) value in bit 0

static void JTAG2W4PH(void) // <editor-fold defaultstate="collapsed" desc="JTAG2W4PH primitive">
{
    ICSP_PGC_SetHigh(); // bsf LATA, 3, 0; // CLK high phase 1
    ICSP_PGD_SetLow(); // bcf LATA, 2, 0; // TDI = 0?

    if((ASM_TEMP1_RAM&1)==1) // btfsc ASM_TEMP1_RAM, 0, 0; // Test for TDI value
        ICSP_PGD_SetHigh(); // bsf LATA, 2, 0; // TDI = 1

    ICSP_PGD_SetDigitalOutput(); // bcf TRISA, 2, 0; // Output TDI (PGD = output)  
    wait(); // nop
    ICSP_PGC_SetLow(); // bcf LATA, 3, 0; // CLK low Phase 1

    if((ASM_TEMP2_RAM&1)==0) // btfss ASM_TEMP2_RAM, 0, 0; // Test for TMS value low
        ICSP_PGD_SetLow(); // bcf LATA, 2, 0; // TMS = 0

    ICSP_PGC_SetHigh(); // bsf LATA, 3, 0; // CLK high phase 2

    if((ASM_TEMP2_RAM&1)==1) // btfsc ASM_TEMP2_RAM, 0, 0; // Test for TMS value high
        ICSP_PGD_SetHigh(); // bsf LATA, 2, 0; // TMS = 1

    ASM_TEMP3_RAM&=0x7F; // bcf ASM_TEMP3_RAM, 7, 0; // TDO = 0?
    ICSP_PGC_SetLow(); // bcf LATA, 3, 0; // CLK low Phase 2
    ICSP_PGC_SetHigh(); // bsf LATA, 3, 0; // CLK high phase 3
    ICSP_PGD_SetDigitalInput(); // bsf TRISA, 2, 0; // Input TDO (PGD = input)
    ICSP_PGC_SetLow(); // bcf LATA, 3, 0; // CLK low Phase 3
    ICSP_PGC_SetHigh(); // bsf LATA, 3, 0; // CLK high phase 4

    if(ICSP_PGD_GetValue()==1) // btfsc PORTA, 2, 0; // Test for TDO value
        ASM_TEMP3_RAM|=0x80; // bsf ASM_TEMP3_RAM, 7, 0; // TDO = 1

    ICSP_PGC_SetLow(); // bcf LATA, 3, 0; // CLK low Phase 4
} // </editor-fold>

static void PIC16F1887X_SetMode(uint8_t numbits, uint8_t value) // <editor-fold defaultstate="collapsed" desc="Transmits the "numbits" LSbs of "value" as TMS bits on JTAG 2W 4PH.  TDI = 0, TDO is ignored">
{
    uint8_t i;

    if(numbits==0)
        return;

    asm_temp1=0; // TDI
    asm_temp2=value; // TMS

    for(i=0; i<numbits; i++)
    {
        JTAG2W4PH();
        asm_temp2>>=1;
    }
} // </editor-fold>

static uint8_t PIC16F1887X_DataIO(uint8_t numbits, uint8_t tdi, uint8_t tms) // <editor-fold defaultstate="collapsed" desc="Transmits up to 8 bits at a time on TDI/TMS and receives up to 8 bits from TDO as the return value.">
{
    uint8_t i;

    if(numbits==0)
        return 0;

    asm_temp1=tdi;
    asm_temp2=tms;
    asm_temp3=0;

    for(i=0; i<numbits; i++)
    {
        asm_temp3>>=1;
        JTAG2W4PH();
        asm_temp1>>=1;
        asm_temp2>>=1;
    }

    return asm_temp3;
} // </editor-fold>

static void PIC16F1887X_SendCommand(uint8_t command) // <editor-fold defaultstate="collapsed" desc="Transmits a 5 bit command via JTAG 2W 4PH">
{
    //TMS header 1100
    PIC16F1887X_SetMode(4, 0x03); // sent LSb first
    // command itself
    PIC16F1887X_DataIO(5, command, 0x10); // TMS on MSB
    // TMS footer 10
    PIC16F1887X_SetMode(2, 0x01); // sent LSb first
} // </editor-fold>

static uint8_t PIC16F1887X_XferData8(uint8_t byte0) // <editor-fold defaultstate="collapsed" desc="Completes an 8-bit XferData psuedo operation">
{
    uint8_t rxbyte=0;

    //TMS header 100
    PIC16F1887X_SetMode(3, 0x01); // sent LSb first
    // TDO first bit received on last phase of setmode
    if(asm_temp3&0x80)
        rxbyte=1;
    // data
    PIC16F1887X_DataIO(8, byte0, 0x80); // TMS on last bit
    rxbyte|=(asm_temp3<<1);
    // TMS footer 10
    PIC16F1887X_SetMode(2, 0x01); // sent LSb first  

    return rxbyte;
} // </editor-fold>

static uint8_t PIC16F1887X_XferData32(uint32_t iData, uint32_t *oData, char rxdata) // <editor-fold defaultstate="collapsed" desc="Completes a 32-bit XferData psuedo op.  If rxdata > 0, places received data in the Upload buffer.">
{
    uint32_t data=0;
    uint32_t rxbyte=0;
    uint8_t thirdbyte=0;
    uint8_t byte3=(uint8_t) (iData>>24);
    uint8_t byte2=(uint8_t) (iData>>16);
    uint8_t byte1=(uint8_t) (iData>>8);
    uint8_t byte0=(uint8_t) (iData>>0);

    //TMS header 100
    PIC16F1887X_SetMode(3, 0x01); // sent LSb first
    // TDO first bit received on last phase of setmode
    if(asm_temp3&0x80)
        rxbyte=1;
    // data
    PIC16F1887X_DataIO(8, byte0, 0);
    rxbyte|=(asm_temp3<<1);

    if(rxdata) // Byte 0
        data=rxbyte;

    rxbyte=0;

    if(asm_temp3&0x80)
        rxbyte=1;

    PIC16F1887X_DataIO(8, byte1, 0);
    rxbyte|=(asm_temp3<<1);

    if(rxdata) // Byte 1
        data|=(rxbyte<<8);

    rxbyte=0;

    if(asm_temp3&0x80)
        rxbyte=1;

    PIC16F1887X_DataIO(8, byte2, 0);
    rxbyte|=(asm_temp3<<1);

    if(rxdata) // Byte 2
        data|=(rxbyte<<16);

    thirdbyte=rxbyte;
    rxbyte=0;

    if(asm_temp3&0x80)
        rxbyte=1;

    PIC16F1887X_DataIO(8, byte3, 0x80); // TMS on last bit
    rxbyte|=(asm_temp3<<1);

    if(rxdata) // Byte 3
        data|=(rxbyte<<24);

    // TMS footer 10
    PIC16F1887X_SetMode(2, 0x01); // sent LSb first    

    if((oData!=NULL)&&(rxdata))
        *oData=data;

    return thirdbyte; // return value is the third of the 4 bytes (for PrACC bit)
} // </editor-fold>

static void PIC16F1887X_XferFastData32(uint32_t iData) // <editor-fold defaultstate="collapsed" desc="Completes a 32-bit XferFastData psuedo op.  If PrAcc = 0 sets Pk2Status.ICDTimeout">
{
    uint8_t byte3=(uint8_t) (iData>>24);
    uint8_t byte2=(uint8_t) (iData>>16);
    uint8_t byte1=(uint8_t) (iData>>8);
    uint8_t byte0=(uint8_t) (iData>>0);

    //TMS header 100
    PIC16F1887X_SetMode(3, 0x01); // sent LSb first
    // PrAcc first bit received on last phase of setmode
    if((asm_temp3&0x80)==0)
    { // unrecoverable error.
        PIC16F1887X_SetMode(5, 0x1F);
        return;
    }
    // PrAcc bit
    PIC16F1887X_SetMode(1, 0);
    // data
    PIC16F1887X_DataIO(8, byte0, 0);
    PIC16F1887X_DataIO(8, byte1, 0);
    PIC16F1887X_DataIO(8, byte2, 0);
    PIC16F1887X_DataIO(8, byte3, 0x80); // TMS on last bit
    // TMS footer 10
    PIC16F1887X_SetMode(2, 0x01); // sent LSb first  
} // </editor-fold>

static void PIC16F1887X_XferInstruction(uint32_t instruction) // <editor-fold defaultstate="collapsed" desc="Completes the entire XferInstruction psuedo op. Has a timeout on PrACC bit check, which sets Pk2Status.ICDTimeout">
{
    elapse_t elapse;
    uint8_t praccbyte;

    PIC16F1887X_SendCommand(ETAP_CONTROL);
    Elapse_Create(elapse, 1400);

    do
    {
        praccbyte=PIC16F1887X_XferData32(0x0004D000, NULL, 0);

        if(Elapse_Get(elapse))
            return;
    }
    while((praccbyte&0x04)==0);

    PIC16F1887X_SendCommand(ETAP_DATA);
    // actual instruction:
    PIC16F1887X_XferData32(instruction, NULL, 0);
    PIC16F1887X_SendCommand(ETAP_CONTROL);
    PIC16F1887X_XferData32(0x0000C000, NULL, 0);
} // </editor-fold>

bool PIC16F1887X_CheckDeviceStatus(void) // <editor-fold defaultstate="collapsed" desc="Get device status">
{
    elapse_t elapse;
    mchp_stt_t statusVal;

    PIC16F1887X_SetMode(6, 0x1F);
    PIC16F1887X_SendCommand(MTAP_SW_MTAP);
    PIC16F1887X_SendCommand(MTAP_COMMAND);

    Elapse_Create(elapse, 1400);

    do
    {
        statusVal.Value=PIC16F1887X_XferData8(MCHP_STATUS);

        if(Elapse_Get(elapse))
            return 0;
    }
    while((statusVal.CFGRDY==0)||(statusVal.FCBUSY==1));

    return 1;
} // </editor-fold>

bool PIC16F1887X_MTAP_ChipErase(void) // <editor-fold defaultstate="collapsed" desc="Erase memory of device">
{
    elapse_t elapse;
    mchp_stt_t statusVal;

    PIC16F1887X_SendCommand(MTAP_SW_MTAP);
    PIC16F1887X_SendCommand(MTAP_COMMAND);
    PIC16F1887X_XferData8(MCHP_ERASE);
    PIC16F1887X_XferData8(MCHP_DE_ASSERT_RST);
    Elapse_Create(elapse, 1400);

    while(1)
    {
        delay_P11();
        statusVal.Value=PIC16F1887X_XferData8(MCHP_STATUS);

        if((statusVal.FCBUSY==0)&&(statusVal.CFGRDY==1))
            return 1;

        if(Elapse_Get(elapse))
        {
            icsp_log(ICSP_LOG_ERASE_ERROR, NULL, NULL);
            return 0;
        }
    }
} // </editor-fold>

uint32_t PIC16F1887X_MTAP_GetDeviceID(void) // <editor-fold defaultstate="collapsed" desc="Get device ID">
{
    uint32_t Id;

    PIC16F1887X_SendCommand(MTAP_IDCODE);
    PIC16F1887X_XferData32(32, &Id, 1);

    return Id;
} // </editor-fold>

static void PIC16F1887X_EnterSerialExecution(void) // <editor-fold defaultstate="collapsed" desc="Enter serial excecution">
{
    elapse_t elapse;
    uint8_t statusVal;

    if(serial_execution_mode==0)
    {
        PIC16F1887X_SendCommand(MTAP_SW_MTAP);
        PIC16F1887X_SendCommand(MTAP_COMMAND);
        Elapse_Create(elapse, 1400);

        do
        {
            statusVal=PIC16F1887X_XferData8(MCHP_STATUS);

            if(Elapse_Get(elapse))
                return;
        }
        while((statusVal&0x80)==0);

        PIC16F1887X_SendCommand(MTAP_SW_MTAP);
        PIC16F1887X_SendCommand(MTAP_COMMAND);
        PIC16F1887X_XferData8(MCHP_ASSERT_RST);
        PIC16F1887X_SendCommand(MTAP_SW_ETAP);
        PIC16F1887X_SetMode(6, 0x1F);
        PIC16F1887X_SendCommand(ETAP_EJTAGBOOT);
        PIC16F1887X_SendCommand(MTAP_SW_MTAP);
        PIC16F1887X_SendCommand(MTAP_COMMAND);
        PIC16F1887X_XferData8(MCHP_DE_ASSERT_RST);
        serial_execution_mode=1;
    }
} // </editor-fold>

bool PIC16F1887X_DownloadPE(void) // <editor-fold defaultstate="collapsed" desc="Download MCHP PE">
{
    int i;
    uint32_t nwords=PIC32_PE_INSTRUCTION_LEN;

    PIC16F1887X_EnterSerialExecution();
    /* Step 1. */
    PIC16F1887X_SendCommand(MTAP_SW_ETAP);
    PIC16F1887X_SetMode(6, 0x1F);
    PIC16F1887X_XferInstruction(0xA00041A4);
    PIC16F1887X_XferInstruction(0x02005084);
    /* Step 2. Download the PE loader. */
    for(i=0; i<PIC32_PE_LOADER_LEN; i+=2)
    {
        /* Step 5. */
        uint32_t opcode1=(pic32_pe_loader[i+1]<<16)|0x41A6; // PE_loader_hi
        uint32_t opcode2=(pic32_pe_loader[i]<<16)|0x50c6; // PE_loader_lo

        PIC16F1887X_XferInstruction(opcode1); // lui a2, PE_loader_hi++
        PIC16F1887X_XferInstruction(opcode2); // ori a2, PE_loader_lo++
        PIC16F1887X_XferInstruction(0x6e42eb40); // sw  a2, 0(a0)
    }
    /* Step 3. Jump to PE loader @0xA000.0201. */
    PIC16F1887X_XferInstruction(0xa00041b9);
    PIC16F1887X_XferInstruction(0x02015339);
    PIC16F1887X_XferInstruction(0x0c004599);
    PIC16F1887X_XferInstruction(0x0c000c00);
    PIC16F1887X_XferInstruction(0x0c000c00);
    /* Switch from serial to fast execution mode. */
    PIC16F1887X_SendCommand(MTAP_SW_ETAP);
    PIC16F1887X_SetMode(6, 0x1F);
    PIC16F1887X_SendCommand(ETAP_FASTDATA);
    PIC16F1887X_XferFastData32(0xa0000300);
    PIC16F1887X_XferFastData32(nwords);
    /* Download the PE itself (step 7-B). */
    for(i=0; i<nwords; i++)
        PIC16F1887X_XferFastData32(pic32_pe_instruction[i]);

    icsp_delay_ms(100);
    /* Download the PE instructions. */
    PIC16F1887X_XferFastData32(0x00000000); /* Step 8 - jump to PE. */
    PIC16F1887X_XferFastData32(0xDEAD0000);
    icsp_delay_ms(100);

    if((0xFFFF&PIC16F1887X_PE_ExecVerison())==PIC32_PE_VERSION_MM)
        return 1;

    return 0;
} // </editor-fold>

static uint32_t PIC16F1887X_GetPEResponse(uint8_t savedata, uint8_t execute) // <editor-fold defaultstate="collapsed" desc="Completes the entire GET PE RESPONSE psuedo op. Has a timeout on PrACC bit check, which sets Pk2Status.ICDTimeout">
{
    elapse_t elapse;
    uint8_t praccbyte;
    uint32_t response;

    Elapse_Create(elapse, 1400);
    PIC16F1887X_SendCommand(ETAP_CONTROL);

    do
    {
        praccbyte=PIC16F1887X_XferData32(0x0004D000, NULL, 0);

        if(Elapse_Get(elapse))
            return;
    }
    while((praccbyte&0x04)==0);

    PIC16F1887X_SendCommand(ETAP_DATA);
    // actual instruction:
    PIC16F1887X_XferData32(0, &response, savedata); // response in upload buffer

    if(execute)
    {
        PIC16F1887X_SendCommand(ETAP_CONTROL);
        PIC16F1887X_XferData32(0x0000C000, NULL, 0);
    }

    // ICSP_Debug("Res: %08X\n", response);

    return response;
} // </editor-fold>

static bool PIC16F1887X_SendPECmdGetResp(uint32_t Opcode, uint32_t Operand, const uint32_t *pTxD,
                                     uint32_t TxLen, uint32_t *pRxD, uint32_t RxLen) // <editor-fold defaultstate="collapsed" desc="PE Send command then get Response">
{
    uint32_t i;
    pe_resp_t resp;
    elapse_t elapse;

    PIC16F1887X_SendCommand(ETAP_FASTDATA);
    PIC16F1887X_XferFastData32((Opcode<<16)|Operand);

    for(i=0; i<TxLen; i++)
        PIC16F1887X_XferFastData32(*pTxD++);

    Elapse_Create(elapse, 1400);

    while(1) // Get 1st response
    {
        if(Elapse_Get(elapse))
            return 0;

        resp.Value=PIC16F1887X_GetPEResponse(1, 1);

        if((resp.LastCommand==Opcode)&&(resp.ResponseCode==0)) // Check response
        {
            if(RxLen>0)
                break;
            else
                return 1;
        }
        else if(resp.ResponseCode==0x02) // CMD fail
            return 0;
        else if((Opcode==PE_PROGRAM)&&(resp.ResponseCode==0))
            return 1;
        else if((Opcode==PE_EXEC_VERSION)&&(resp.LastCommand==PE_EXEC_VERSION))
        {
            *pRxD=resp.ResponseCode;
            return 1;
        }
        else if((Opcode==PE_GET_DEVICEID)&&(resp.LastCommand==PE_GET_DEVICEID))
        {
            *pRxD=resp.ResponseCode;
            return 1;
        }
    }

    Elapse_Update(elapse);

    while(1) // Get other responses
    {
        if(Elapse_Get(elapse))
            return 0;

        *pRxD=PIC16F1887X_GetPEResponse(1, 1);

        if(--RxLen==0)
            return 1;

        pRxD++;
    }

    return 0;
} // </editor-fold>

bool PIC16F1887X_PE_RowProgram(uint32_t startAddress, const uint32_t *pData, uint32_t length) // <editor-fold defaultstate="collapsed" desc="Programs one row of Flash memory at the specified address">
{
    bool response;
    uint32_t *pbuff;

    if(!icsp_row_aligned_address_check(startAddress, length))
        return 0;

    pbuff=calloc(length+1, sizeof (uint32_t));

    if(pbuff==NULL)
        return 0;

    pbuff[0]=startAddress;
    // memcpy(&pbuff[1], &pData[0], length*sizeof (uint32_t));
    icsp_memcpy32(&pbuff[1], &pData[0], length);
    // ICSP_Debug("Write: \n");
    // ICSP_PrintHex32(&pbuff[0], length+1);
    response=PIC16F1887X_SendPECmdGetResp(PE_ROW_PROGRAM, PE_CMD_NO_OPERAND, &pbuff[0], length+1, NULL, 0);
    free(pbuff);

    if(response)
        return 1;

    icsp_log(ICSP_LOG_ROW_PROG_ERROR, &startAddress, NULL);

    return 0;
} // </editor-fold>

bool PIC16F1887X_PE_Read(uint32_t startAddress, uint32_t *pData, uint32_t length) // <editor-fold defaultstate="collapsed" desc="Reads N 32-bit words of memory starting from the specified address (N < 65,536)">
{
    bool response;

    if(!icsp_valid_address_check(startAddress, length))
        return 0;

    response=PIC16F1887X_SendPECmdGetResp(PE_READ, length, &startAddress, 1, &pData[0], length);

    if(response)
        return 1;

    icsp_log(ICSP_LOG_READ_ERROR, &startAddress, NULL);

    return 0;
} // </editor-fold>

bool PIC16F1887X_PE_Program(uint32_t startAddress, const uint32_t *pData, uint32_t length) // <editor-fold defaultstate="collapsed" desc="Programs Flash memory starting at the specified address">
{
    bool response;
    uint32_t *pbuff;

    if(!icsp_valid_address_check(startAddress, length))
        return 0;

    pbuff=calloc(length+2, sizeof (uint32_t));

    if(pbuff==NULL)
        return 0;

    pbuff[0]=startAddress;
    pbuff[1]=length;
    // memcpy(&pbuff[2], &pData[0], length*sizeof (uint32_t));
    icsp_memcpy32(&pbuff[2], &pData[0], length);
    response=PIC16F1887X_SendPECmdGetResp(PE_PROGRAM, PE_CMD_NO_OPERAND, &pbuff[0], length+2, NULL, 0);
    free(pbuff);

    return response;
} // </editor-fold>

bool PIC16F1887X_PE_ChipErase(uint32_t startAddress) // <editor-fold defaultstate="collapsed" desc="Chip Erase of entire chip">
{
    if(!icsp_valid_address_check(startAddress, 1))
        return 0;

    return PIC16F1887X_SendPECmdGetResp(PE_CHIP_ERASE, PE_CMD_NO_OPERAND, &startAddress, 1, NULL, 0);
} // </editor-fold>

bool PIC16F1887X_PE_PageErase(uint32_t startAddress, uint32_t nPage) // <editor-fold defaultstate="collapsed" desc="Erases pages of code memory from the specified address">
{
    if(!icsp_valid_address_check(startAddress, nPage*TARGET_PAGE_WORD_SIZE))
        return 0;

    return PIC16F1887X_SendPECmdGetResp(PE_PAGE_ERASE, nPage, &startAddress, 1, NULL, 0);
} // </editor-fold>

bool PIC16F1887X_PE_BlankCheck(uint32_t startAddress, uint32_t length) // <editor-fold defaultstate="collapsed" desc="Blank Check code">
{
    bool response;
    uint32_t buff[2]={startAddress, length};

    if(!icsp_valid_address_check(startAddress, length))
        return 0;

    response=PIC16F1887X_SendPECmdGetResp(PE_BLANK_CHECK, PE_CMD_NO_OPERAND, &buff[0], 2, NULL, 0);

    if(response)
        return 1;

    icsp_log(ICSP_LOG_NOT_BLANK_ERROR, &startAddress, NULL);

    return 0;
} // </editor-fold>

uint16_t PIC16F1887X_PE_ExecVerison(void) // <editor-fold defaultstate="collapsed" desc="Reads the PE software version">
{
    uint32_t version;

    PIC16F1887X_SendPECmdGetResp(PE_EXEC_VERSION, PE_CMD_NO_OPERAND, NULL, 0, &version, 1);
    // ICSP_Debug("PE ver: %04X\n", version&0xFFFF);

    return (uint16_t) version;
} // </editor-fold>

uint32_t PIC16F1887X_PE_GetCRC(uint32_t startAddress, uint32_t length) // <editor-fold defaultstate="collapsed" desc="Gets the CRC of Flash memory">
{
    uint32_t buff[2]={startAddress, length};

    if(!icsp_valid_address_check(startAddress, length))
        return 0;

    PIC16F1887X_SendPECmdGetResp(PE_GET_CRC, PE_CMD_NO_OPERAND, &buff[0], 2, &buff[0], 1);

    return buff[0];
} // </editor-fold>

bool PIC16F1887X_PE_ProgramCluster(uint32_t startAddress, uint32_t length) // <editor-fold defaultstate="collapsed" desc="Programs the specified number of bytes to the specified address">
{
    uint32_t buff[2]={startAddress, length};

    if(!icsp_valid_address_check(startAddress, length))
        return 0;

    return PIC16F1887X_SendPECmdGetResp(PE_PROGRAM_CLUSTER, PE_CMD_NO_OPERAND, &buff[0], 2, NULL, 0);
} // </editor-fold>

uint16_t PIC16F1887X_PE_GetDeviceID(void) // <editor-fold defaultstate="collapsed" desc="Returns the hardware ID of the device">
{
    uint32_t chipid;

    PIC16F1887X_SendPECmdGetResp(PE_GET_DEVICEID, PE_CMD_NO_OPERAND, NULL, 0, &chipid, 1);

    return (uint16_t) chipid;
} // </editor-fold>

bool PIC16F1887X_PE_GetCheckSum(uint32_t startAddress, uint32_t length, uint8_t Cks) // <editor-fold defaultstate="collapsed" desc="Gets the checksum of Flash memory">
{
    uint32_t buff[2]={startAddress, length};

    if(!icsp_valid_address_check(startAddress, length))
        return 0;

    PIC16F1887X_SendPECmdGetResp(PE_GET_CHECKSUM, PE_CMD_NO_OPERAND, &buff[0], 2, &buff[0], 1);

    if((uint8_t) buff[0]==Cks)
        return 1;

    icsp_log(ICSP_LOG_CHECKSUM_ERROR, &startAddress, &buff[0]);

    return 0;
} // </editor-fold>

bool PIC16F1887X_PE_DoubleWordProg(uint32_t Address, uint32_t Word1, uint32_t Word0) // <editor-fold defaultstate="collapsed" desc="Programs two words of Flash memory at the specified address">
{
    bool response;
    uint32_t buff[3]={Address, Word0, Word1};

    if(!icsp_valid_address_check(Address, 2))
        return 0;

    if(Address&7) // aligned two-word boundary
    {
        icsp_log(ICSP_LOG_ADDR_NOT_ALIG_DWORD, &Address, NULL);
        return 0;
    }

    response=PIC16F1887X_SendPECmdGetResp(PE_DOUBLE_WORD_PGRM, PE_CMD_NO_OPERAND, buff, 3, NULL, 0);

    if(response)
        return 1;

    icsp_log(ICSP_LOG_DWORD_PROG_ERROR, &Address, NULL);

    return 0;
} // </editor-fold>

void PIC16F1887X_UI_GetUDID(uint32_t *pUDID) // <editor-fold defaultstate="collapsed" desc="Get UDID of target chip">
{
#if defined(TARGET_UDID_START) && defined(TARGET_UDID_END)
    PIC16F1887X_PE_Read(UDID_START, pUDID, 5);
#endif
} // </editor-fold>

void PIC16F1887X_InitICSP(void) // <editor-fold defaultstate="collapsed" desc="Initializes the GPIOs required for ICSP">
{
    serial_execution_mode=0;
    ICSP_PGC_SetDigitalInput();
    ICSP_PGC_SetDigitalInput();
    ICSP_MCLR_SetDigitalInput();
} // </editor-fold>

bool PIC16F1887X_EnterICSP(void) // <editor-fold defaultstate="collapsed" desc="ICSP entry">
{
    if(Icsp_Is_InProgress==0)
    {
        ICSP_PGC_SetLow();
        ICSP_PGD_SetLow();
        ICSP_MCLR_SetLow();
        ICSP_PGC_SetDigitalOutput();
        ICSP_PGD_SetDigitalOutput();
        ICSP_MCLR_SetDigitalOutput();
        delay_P6();
        ICSP_MCLR_SetHigh();
        delay_P20();
        ICSP_MCLR_SetLow();
        delay_P18();

        uint8_t i;
        uint32_t key=0x4D434850;

        for(i=0; i<32; i++)
        {
            if(key&0x80000000)
                ICSP_PGD_SetHigh();
            else
                ICSP_PGD_SetLow();

            key<<=1;
            ICSP_PGC_SetHigh();
            delay_P1B();
            ICSP_PGC_SetLow();
            delay_P1A();
        }

        delay_P19();
        ICSP_MCLR_SetHigh();
        delay_P7();
        ICSP_PGD_SetDigitalInput();

        uint32_t DevID=0xFFFFFFFF;

        if(PIC16F1887X_CheckDeviceStatus())
        {
            DevID=PIC16F1887X_MTAP_GetDeviceID();
            // ICSP_Debug("Target ID: %08X\n", DevID);

            if((DevID&0x0FFFFFFF)==TARGET_ID)
            {
                icsp_log(ICSP_LOG_SUCCESS, NULL, NULL);
                Icsp_Is_InProgress=1;
                return 1;
            }
        }

        PIC16F1887X_ExitICSP();
        icsp_log(ICSP_LOG_CHIPID_ERROR, &DevID, NULL);

        return 0;
    }

    return 1;
} // </editor-fold>

void PIC16F1887X_ExitICSP(void) // <editor-fold defaultstate="collapsed" desc="Exit ICSP mode">
{
    PIC16F1887X_SetMode(6, 0x1F);
    ICSP_PGD_SetDigitalInput();
    wait();
    ICSP_MCLR_SetLow();
    ICSP_PGC_SetHigh();
    wait();
    ICSP_PGC_SetLow();
    wait();
    icsp_delay_ms(100);
    PIC16F1887X_InitICSP();
    Icsp_Is_InProgress=0;
    // ICSP_Debug("Exited ICSP mode\n");
} // </editor-fold>

static uint32_t PIC16F1887X_Convert4x8to32(const uint8_t *pArr) // <editor-fold defaultstate="collapsed" desc="Convert 32bit to 4x8bit">
{
    uint32_t Value=pArr[3];

    Value<<=8;
    Value|=pArr[2];
    Value<<=8;
    Value|=pArr[1];
    Value<<=8;
    Value|=pArr[0];

    return Value;
} // </editor-fold>

bool PIC16F1887X_NVM_WriteDWord_Then_Checksum(icsp_nvm_t *pNvm) // <editor-fold defaultstate="collapsed" desc="Write double word then checksum">
{
    bool rslt=0;

    if(ICSP_Init(0))
    {
        if((pNvm->Word0!=0xFFFFFFFF)||(pNvm->Word1!=0xFFFFFFFF))
        {
#if(0)
            uint32_t ReadOut[2];

            if((pNvm->Word0==0xFFFFFFFF)||(pNvm->Word1==0xFFFFFFFF))
            {
                PE_Read(pNvm->Address, ReadOut, 2);

                if(pNvm->Word0==0xFFFFFFFF)
                    pNvm->Word0=ReadOut[0];
                else if(pNvm->Word1==0xFFFFFFFF)
                    pNvm->Word1=ReadOut[1];
            }
#endif
            if(ICSP_DWordProg(pNvm->Address, pNvm->Word1, pNvm->Word0))
                rslt=1;

            pNvm->Word0=0xFFFFFFFF; // add blanked data
            pNvm->Word1=0xFFFFFFFF; // add blanked data
        }
        else
            rslt=1;
    }

    return rslt;
} // </editor-fold>

int8_t PIC16F1887X_NVM_Write(uint32_t Addr, const uint8_t *pData, int Len) // <editor-fold defaultstate="collapsed" desc="Write hex data to flash">
{
#define debug(...) printf(__VA_ARGS__)
    // copy only the bytes from the current data packet up to the boundary of a row
    int8_t rslt=PROC_DONE;
    static icsp_nvm_t nvm={0, 0xFFFFFFFF, 0xFFFFFFFF};

    // Check the last data
    if(Len==0)
    {
        if(!PIC16F1887X_NVM_WriteDWord_Then_Checksum(&nvm))
        {
            rslt=PROC_ERR;
            write_error_log(__LINE__);
        }

        goto EXIT;
    }

    while(Len>0)
    {
        // Check boundary of DWord
        if(GetDWordStartAddr(Addr)!=nvm.Address)
        {
            if(nvm.Address!=0) // Skip in the first time
            {
                if(!PIC16F1887X_NVM_WriteDWord_Then_Checksum(&nvm))
                {
                    rslt=PROC_ERR;
                    write_error_log(__LINE__);
                    goto EXIT;
                }
            }

            nvm.Address=GetDWordStartAddr(Addr); // update new row address
        }
        // Check current address is of Word0 or Word1
        if((Addr&7)==0) // Word 0 address
        {
            nvm.Word0=PIC16F1887X_Convert4x8to32(pData);
        }
        else // if((Addr&4)==4) // Word 1 address
        {
            nvm.Word1=PIC16F1887X_Convert4x8to32(pData);
        }

        pData+=4;
        Addr+=4;
        Len-=4;
    }

    return PROC_DONE;

EXIT:
    nvm.Address=0; // Reset the 1st start address
    ICSP_Deinit();
    return rslt;

#undef debug
} // </editor-fold>
