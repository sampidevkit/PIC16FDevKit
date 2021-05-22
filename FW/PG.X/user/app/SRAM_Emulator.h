#ifndef SRAM_EMULATOR_H
#define	SRAM_EMULATOR_H

#define Ext_GPIO0_Write(value)  RLED_EXT_SetValue(value)
#define Ext_GPIO1_Write(value)  GLED_EXT_SetValue(value)
#define Ext_GPIO0_Toggle()      RLED_EXT_Toggle()
#define Ext_GPIO1_Toggle()      GLED_EXT_Toggle()
#define Ext_GPIO0_Read()        RLED_EXT_GetValue()
#define Ext_GPIO1_Read()        GLED_EXT_GetValue()

void SRAM_Emulate_Init(void);
void SRAM_Emulate_Deinit(void);
void SRAM_Emulate_Tasks(void);

#endif