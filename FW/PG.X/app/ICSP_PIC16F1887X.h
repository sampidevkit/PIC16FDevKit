#ifndef ICSP_PIC16F1887X_H
#define	ICSP_PIC16F1887X_H

#include "Common/LibDef.h"

#ifdef COMMON_LIB_CFG
#include "Common_Lib_Cfg.h"
#else
#include "ICSP_PIC16F1887X_Cfg.h"
#endif

#ifndef KVA_TO_PA
#define KVA_TO_PA(v)    ((_paddr_t)(v)&0x1FFFFFFF)
#endif

#ifndef PA_TO_KVA0
#define PA_TO_KVA0(pa)  ((void*)((pa)|0x80000000))
#endif

typedef struct {
    uint32_t Address;
    uint32_t Word0;
    uint32_t Word1;
} icsp_nvm_t;

typedef union pe_response {
    uint32_t Value;

    struct {
        uint32_t ResponseCode : 16;
        uint32_t LastCommand : 16;
    };
} pe_resp_t;

typedef union devid_bit_field {
    unsigned int Value;

    struct {
        unsigned int MftID : 12;
        unsigned int DevID : 16;
        unsigned int Ver : 4;
    };
} device_id_t;

typedef union mchp_status_bit_field {
    uint8_t Value;

    struct {
        uint8_t DEVRST : 1; // Device Reset State bit
        uint8_t BIT1 : 1; // Read as '0'
        uint8_t FCBUSY : 1; // Flash Controller Busy bit
        uint8_t CFGRDY : 1; // Code-Protect State bit
        uint8_t BIT4 : 1; // Read as '0'
        uint8_t NVMERR : 1; // NVMCON Status bit
        uint8_t BIT6 : 1; // Read as '0'
        uint8_t CPS : 1; // Code-Protect State bit
    };
} mchp_stt_t;

typedef union ecr_bit_field {
    uint32_t Value;

    struct {
        uint32_t BIT0_2 : 3; // Read as '0'
        uint32_t DM : 1;
        uint32_t BIT5_11 : 8; // Read as '0'
        uint32_t EjtagBrk : 1; // Debug Interrupt Exception Request bit
        uint32_t BIT13 : 1; // Read as '0'
        uint32_t ProbTrap : 1; // Debug Exception Vector Control Location bit
        uint32_t ProbEn : 1; // Processor Access Service Control bit
        uint32_t PrRst : 1;
        uint32_t BIT17 : 1; // Read as '0'
        uint32_t PrACC : 1; // Pending Processor Access and Control bit
        uint32_t PrnW : 1;
        uint32_t PerRst : 1;
        uint32_t Halt : 1;
        uint32_t Doze : 1;
        uint32_t VPED : 1;
        uint32_t BIT24_28 : 5; // Read as '0'
        uint32_t Psz : 2;
        uint32_t Rocc : 1;
    };
} ecr_t;

void PIC16F1887X_InitICSP(void);
bool PIC16F1887X_EnterICSP(void);
void PIC16F1887X_ExitICSP(void);

bool PIC16F1887X_CheckDeviceStatus(void);
uint32_t PIC16F1887X_MTAP_GetDeviceID(void);
bool PIC16F1887X_MTAP_ChipErase(void);

bool PIC16F1887X_DownloadPE(void);
bool PIC16F1887X_PE_RowProgram(uint32_t startAddress, const uint32_t *pData, uint32_t length);
bool PIC16F1887X_PE_Read(uint32_t startAddress, uint32_t *pData, uint32_t length);
bool PIC16F1887X_PE_Program(uint32_t startAddress, const uint32_t *pData, uint32_t length);
bool PIC16F1887X_PE_ChipErase(uint32_t startAddress);
bool PIC16F1887X_PE_PageErase(uint32_t startAddress, uint32_t nPage);
bool PIC16F1887X_PE_BlankCheck(uint32_t startAddress, uint32_t length);
uint16_t PIC16F1887X_PE_ExecVerison(void);
uint32_t PIC16F1887X_PE_GetCRC(uint32_t startAddress, uint32_t length);
bool PIC16F1887X_PE_ProgramCluster(uint32_t startAddress, uint32_t length);
uint16_t PIC16F1887X_PE_GetDeviceID(void);
bool PIC16F1887X_PE_GetCheckSum(uint32_t startAddress, uint32_t length, uint8_t Cks);
bool PIC16F1887X_PE_DoubleWordProg(uint32_t Address, uint32_t Word1, uint32_t Word0);

void PIC16F1887X_UI_GetUDID(uint32_t *pUDID);

bool PIC16F1887X_NVM_WriteDWord_Then_Checksum(icsp_nvm_t *pNvm);
int8_t PIC16F1887X_NVM_Write(uint32_t Addr, const uint8_t *pData, int Len);

#endif