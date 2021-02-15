#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-app_release.mk)" "nbproject/Makefile-local-app_release.mk"
include nbproject/Makefile-local-app_release.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=app_release
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PG_APP.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PG_APP.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=app/AppMain.c app/Ext_ADC.c app/Ext_GPIO.c app/Ext_PWM.c app/I2C_Slaver.c app/SRAM_Emulator.c app/libcomp.c config/user_usb_device_descriptors.c ../Library/buttons/ButtonApi.c ../Library/buttons/Buttons.c ../Library/common/RingBuffer.c ../Library/common/UserFunctions.c ../Library/common/Debug.c ../Library/fileio/files_lite.c ../Library/indicator/Indicator.c ../Library/kit/kit.c ../Library/kit/kit_usb_device.c ../Library/kit/kit_usb_device_cdc.c ../Library/kit/kit_usb_device_msd.c ../Library/programmer/HexParsing.c ../Library/programmer/Icsp.c ../Library/programmer/ICSP_FileIO.c ../Library/programmer/ICSP_PIC16F188XX.c ../Library/system/TaskManager.c ../Library/system/TickCounter.c ../Library/system/TickTimer.c ../Library/system/Wdt.c ../Library/usb/usb_device_cdc.c ../Library/usb/usb_device_msd.c ../Library/usb/user_usb_device_events.c mcc_generated_files/memory/flash.c mcc_generated_files/usb/usb_device.c mcc_generated_files/sccp7_compare.c mcc_generated_files/mcc.c mcc_generated_files/system.c mcc_generated_files/uart2.c mcc_generated_files/pin_manager.c mcc_generated_files/clock.c mcc_generated_files/sccp9_compare.c mcc_generated_files/sccp6_compare.c mcc_generated_files/sccp5_compare.c mcc_generated_files/adc1.c mcc_generated_files/exceptions.c mcc_generated_files/interrupt_manager.c mcc_generated_files/sccp4_compare.c mcc_generated_files/i2c2.c mcc_generated_files/sccp8_compare.c mcc_generated_files/coretimer.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/app/AppMain.o ${OBJECTDIR}/app/Ext_ADC.o ${OBJECTDIR}/app/Ext_GPIO.o ${OBJECTDIR}/app/Ext_PWM.o ${OBJECTDIR}/app/I2C_Slaver.o ${OBJECTDIR}/app/SRAM_Emulator.o ${OBJECTDIR}/app/libcomp.o ${OBJECTDIR}/config/user_usb_device_descriptors.o ${OBJECTDIR}/_ext/1353568322/ButtonApi.o ${OBJECTDIR}/_ext/1353568322/Buttons.o ${OBJECTDIR}/_ext/1129169394/RingBuffer.o ${OBJECTDIR}/_ext/1129169394/UserFunctions.o ${OBJECTDIR}/_ext/1129169394/Debug.o ${OBJECTDIR}/_ext/1048860731/files_lite.o ${OBJECTDIR}/_ext/127659252/Indicator.o ${OBJECTDIR}/_ext/436516243/kit.o ${OBJECTDIR}/_ext/436516243/kit_usb_device.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o ${OBJECTDIR}/_ext/967316345/HexParsing.o ${OBJECTDIR}/_ext/967316345/Icsp.o ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o ${OBJECTDIR}/_ext/661682606/TaskManager.o ${OBJECTDIR}/_ext/661682606/TickCounter.o ${OBJECTDIR}/_ext/661682606/TickTimer.o ${OBJECTDIR}/_ext/661682606/Wdt.o ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o ${OBJECTDIR}/_ext/436526145/usb_device_msd.o ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o ${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/sccp7_compare.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/sccp9_compare.o ${OBJECTDIR}/mcc_generated_files/sccp6_compare.o ${OBJECTDIR}/mcc_generated_files/sccp5_compare.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/exceptions.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/sccp4_compare.o ${OBJECTDIR}/mcc_generated_files/i2c2.o ${OBJECTDIR}/mcc_generated_files/sccp8_compare.o ${OBJECTDIR}/mcc_generated_files/coretimer.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/app/AppMain.o.d ${OBJECTDIR}/app/Ext_ADC.o.d ${OBJECTDIR}/app/Ext_GPIO.o.d ${OBJECTDIR}/app/Ext_PWM.o.d ${OBJECTDIR}/app/I2C_Slaver.o.d ${OBJECTDIR}/app/SRAM_Emulator.o.d ${OBJECTDIR}/app/libcomp.o.d ${OBJECTDIR}/config/user_usb_device_descriptors.o.d ${OBJECTDIR}/_ext/1353568322/ButtonApi.o.d ${OBJECTDIR}/_ext/1353568322/Buttons.o.d ${OBJECTDIR}/_ext/1129169394/RingBuffer.o.d ${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d ${OBJECTDIR}/_ext/1129169394/Debug.o.d ${OBJECTDIR}/_ext/1048860731/files_lite.o.d ${OBJECTDIR}/_ext/127659252/Indicator.o.d ${OBJECTDIR}/_ext/436516243/kit.o.d ${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o.d ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d ${OBJECTDIR}/_ext/967316345/HexParsing.o.d ${OBJECTDIR}/_ext/967316345/Icsp.o.d ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o.d ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o.d ${OBJECTDIR}/_ext/661682606/TaskManager.o.d ${OBJECTDIR}/_ext/661682606/TickCounter.o.d ${OBJECTDIR}/_ext/661682606/TickTimer.o.d ${OBJECTDIR}/_ext/661682606/Wdt.o.d ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o.d ${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d ${OBJECTDIR}/mcc_generated_files/sccp7_compare.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/uart2.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/sccp9_compare.o.d ${OBJECTDIR}/mcc_generated_files/sccp6_compare.o.d ${OBJECTDIR}/mcc_generated_files/sccp5_compare.o.d ${OBJECTDIR}/mcc_generated_files/adc1.o.d ${OBJECTDIR}/mcc_generated_files/exceptions.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/sccp4_compare.o.d ${OBJECTDIR}/mcc_generated_files/i2c2.o.d ${OBJECTDIR}/mcc_generated_files/sccp8_compare.o.d ${OBJECTDIR}/mcc_generated_files/coretimer.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/app/AppMain.o ${OBJECTDIR}/app/Ext_ADC.o ${OBJECTDIR}/app/Ext_GPIO.o ${OBJECTDIR}/app/Ext_PWM.o ${OBJECTDIR}/app/I2C_Slaver.o ${OBJECTDIR}/app/SRAM_Emulator.o ${OBJECTDIR}/app/libcomp.o ${OBJECTDIR}/config/user_usb_device_descriptors.o ${OBJECTDIR}/_ext/1353568322/ButtonApi.o ${OBJECTDIR}/_ext/1353568322/Buttons.o ${OBJECTDIR}/_ext/1129169394/RingBuffer.o ${OBJECTDIR}/_ext/1129169394/UserFunctions.o ${OBJECTDIR}/_ext/1129169394/Debug.o ${OBJECTDIR}/_ext/1048860731/files_lite.o ${OBJECTDIR}/_ext/127659252/Indicator.o ${OBJECTDIR}/_ext/436516243/kit.o ${OBJECTDIR}/_ext/436516243/kit_usb_device.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o ${OBJECTDIR}/_ext/967316345/HexParsing.o ${OBJECTDIR}/_ext/967316345/Icsp.o ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o ${OBJECTDIR}/_ext/661682606/TaskManager.o ${OBJECTDIR}/_ext/661682606/TickCounter.o ${OBJECTDIR}/_ext/661682606/TickTimer.o ${OBJECTDIR}/_ext/661682606/Wdt.o ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o ${OBJECTDIR}/_ext/436526145/usb_device_msd.o ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o ${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/sccp7_compare.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/sccp9_compare.o ${OBJECTDIR}/mcc_generated_files/sccp6_compare.o ${OBJECTDIR}/mcc_generated_files/sccp5_compare.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/exceptions.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/sccp4_compare.o ${OBJECTDIR}/mcc_generated_files/i2c2.o ${OBJECTDIR}/mcc_generated_files/sccp8_compare.o ${OBJECTDIR}/mcc_generated_files/coretimer.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=app/AppMain.c app/Ext_ADC.c app/Ext_GPIO.c app/Ext_PWM.c app/I2C_Slaver.c app/SRAM_Emulator.c app/libcomp.c config/user_usb_device_descriptors.c ../Library/buttons/ButtonApi.c ../Library/buttons/Buttons.c ../Library/common/RingBuffer.c ../Library/common/UserFunctions.c ../Library/common/Debug.c ../Library/fileio/files_lite.c ../Library/indicator/Indicator.c ../Library/kit/kit.c ../Library/kit/kit_usb_device.c ../Library/kit/kit_usb_device_cdc.c ../Library/kit/kit_usb_device_msd.c ../Library/programmer/HexParsing.c ../Library/programmer/Icsp.c ../Library/programmer/ICSP_FileIO.c ../Library/programmer/ICSP_PIC16F188XX.c ../Library/system/TaskManager.c ../Library/system/TickCounter.c ../Library/system/TickTimer.c ../Library/system/Wdt.c ../Library/usb/usb_device_cdc.c ../Library/usb/usb_device_msd.c ../Library/usb/user_usb_device_events.c mcc_generated_files/memory/flash.c mcc_generated_files/usb/usb_device.c mcc_generated_files/sccp7_compare.c mcc_generated_files/mcc.c mcc_generated_files/system.c mcc_generated_files/uart2.c mcc_generated_files/pin_manager.c mcc_generated_files/clock.c mcc_generated_files/sccp9_compare.c mcc_generated_files/sccp6_compare.c mcc_generated_files/sccp5_compare.c mcc_generated_files/adc1.c mcc_generated_files/exceptions.c mcc_generated_files/interrupt_manager.c mcc_generated_files/sccp4_compare.c mcc_generated_files/i2c2.c mcc_generated_files/sccp8_compare.c mcc_generated_files/coretimer.c main.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

# The following macros may be used in the pre and post step lines
Device=PIC32MM0064GPM028
ProjectDir="F:\Github\SAMPIDevKit\PIC16FDevKit\FW\PG_APP.X"
ProjectName=PG_APP
ConfName=app_release
ImagePath="dist\app_release\${IMAGE_TYPE}\PG_APP.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="dist\app_release\${IMAGE_TYPE}"
ImageName="PG_APP.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-app_release.mk dist/${CND_CONF}/${IMAGE_TYPE}/PG_APP.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
	@echo "--------------------------------------"
	@echo "User defined post-build step: [copy ${ImagePath} ".\Application.${OUTPUT_SUFFIX}"]"
	@copy ${ImagePath} ".\Application.${OUTPUT_SUFFIX}"
	@echo "--------------------------------------"

MP_PROCESSOR_OPTION=32MM0064GPM028
MP_LINKER_FILE_OPTION=,--script="..\Library\bootloader\Linker\p32MM0064GPM028\App.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/app/AppMain.o: app/AppMain.c  .generated_files/563a3f6ff43ea009f4e84dc6338c5c1b6e98c55c.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/AppMain.o.d 
	@${RM} ${OBJECTDIR}/app/AppMain.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/app/AppMain.o.d" -o ${OBJECTDIR}/app/AppMain.o app/AppMain.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/Ext_ADC.o: app/Ext_ADC.c  .generated_files/ae1e26be3df73ff5a32c834b3a6943571103574d.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/Ext_ADC.o.d 
	@${RM} ${OBJECTDIR}/app/Ext_ADC.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/app/Ext_ADC.o.d" -o ${OBJECTDIR}/app/Ext_ADC.o app/Ext_ADC.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/Ext_GPIO.o: app/Ext_GPIO.c  .generated_files/5ada6a4ca5be97b91830df24441369e2ce5af30a.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/Ext_GPIO.o.d 
	@${RM} ${OBJECTDIR}/app/Ext_GPIO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/app/Ext_GPIO.o.d" -o ${OBJECTDIR}/app/Ext_GPIO.o app/Ext_GPIO.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/Ext_PWM.o: app/Ext_PWM.c  .generated_files/ce12c76df346352b4c93d1b445dcb6dcb9788354.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/Ext_PWM.o.d 
	@${RM} ${OBJECTDIR}/app/Ext_PWM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/app/Ext_PWM.o.d" -o ${OBJECTDIR}/app/Ext_PWM.o app/Ext_PWM.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/I2C_Slaver.o: app/I2C_Slaver.c  .generated_files/94a2a480b1d49300f51dfc0454bbadf026190e4d.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/I2C_Slaver.o.d 
	@${RM} ${OBJECTDIR}/app/I2C_Slaver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/app/I2C_Slaver.o.d" -o ${OBJECTDIR}/app/I2C_Slaver.o app/I2C_Slaver.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/SRAM_Emulator.o: app/SRAM_Emulator.c  .generated_files/9fe9bbd28ce80eae24c039479229661dcc13be0e.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/SRAM_Emulator.o.d 
	@${RM} ${OBJECTDIR}/app/SRAM_Emulator.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/app/SRAM_Emulator.o.d" -o ${OBJECTDIR}/app/SRAM_Emulator.o app/SRAM_Emulator.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/libcomp.o: app/libcomp.c  .generated_files/e8fe72a80a7f2aed70f33bfeb838dd8f51eb8612.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/libcomp.o.d 
	@${RM} ${OBJECTDIR}/app/libcomp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/app/libcomp.o.d" -o ${OBJECTDIR}/app/libcomp.o app/libcomp.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/config/user_usb_device_descriptors.o: config/user_usb_device_descriptors.c  .generated_files/545f0800edc684501420c119ee361e2db68bd2ae.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/config" 
	@${RM} ${OBJECTDIR}/config/user_usb_device_descriptors.o.d 
	@${RM} ${OBJECTDIR}/config/user_usb_device_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/config/user_usb_device_descriptors.o.d" -o ${OBJECTDIR}/config/user_usb_device_descriptors.o config/user_usb_device_descriptors.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1353568322/ButtonApi.o: ../Library/buttons/ButtonApi.c  .generated_files/66883231ff118296221d82b3753738c7804c3f1c.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1353568322" 
	@${RM} ${OBJECTDIR}/_ext/1353568322/ButtonApi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1353568322/ButtonApi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1353568322/ButtonApi.o.d" -o ${OBJECTDIR}/_ext/1353568322/ButtonApi.o ../Library/buttons/ButtonApi.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1353568322/Buttons.o: ../Library/buttons/Buttons.c  .generated_files/d33b5d601b94609f21fb7dcda5fbecfc032bdd0a.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1353568322" 
	@${RM} ${OBJECTDIR}/_ext/1353568322/Buttons.o.d 
	@${RM} ${OBJECTDIR}/_ext/1353568322/Buttons.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1353568322/Buttons.o.d" -o ${OBJECTDIR}/_ext/1353568322/Buttons.o ../Library/buttons/Buttons.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/RingBuffer.o: ../Library/common/RingBuffer.c  .generated_files/4a2bd5f7b7b535740730ff3ba2ab2c5025b422f0.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/RingBuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/RingBuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/RingBuffer.o.d" -o ${OBJECTDIR}/_ext/1129169394/RingBuffer.o ../Library/common/RingBuffer.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/UserFunctions.o: ../Library/common/UserFunctions.c  .generated_files/7f306806a124821a678053eba46c0cda3ce6c201.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d" -o ${OBJECTDIR}/_ext/1129169394/UserFunctions.o ../Library/common/UserFunctions.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/Debug.o: ../Library/common/Debug.c  .generated_files/e74c035a11382acd024a591c28c6dae654f95d1f.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/Debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/Debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/Debug.o.d" -o ${OBJECTDIR}/_ext/1129169394/Debug.o ../Library/common/Debug.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1048860731/files_lite.o: ../Library/fileio/files_lite.c  .generated_files/83f3f9bbdb3698c813e69d3986a5c4733b0b8d12.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1048860731" 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o.d 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1048860731/files_lite.o.d" -o ${OBJECTDIR}/_ext/1048860731/files_lite.o ../Library/fileio/files_lite.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/127659252/Indicator.o: ../Library/indicator/Indicator.c  .generated_files/32ee2539c37e81cfa428b361c4097f33f3af54ac.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/127659252" 
	@${RM} ${OBJECTDIR}/_ext/127659252/Indicator.o.d 
	@${RM} ${OBJECTDIR}/_ext/127659252/Indicator.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/127659252/Indicator.o.d" -o ${OBJECTDIR}/_ext/127659252/Indicator.o ../Library/indicator/Indicator.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit.o: ../Library/kit/kit.c  .generated_files/4f70290e5b322596c2d067913f2248a270459fe7.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit.o.d" -o ${OBJECTDIR}/_ext/436516243/kit.o ../Library/kit/kit.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device.o: ../Library/kit/kit_usb_device.c  .generated_files/5767768de1a2cd672a7a0488dbc2bba9bb1a234e.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device.o ../Library/kit/kit_usb_device.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o: ../Library/kit/kit_usb_device_cdc.c  .generated_files/da4758e4059f09ce3916366b4188485061424847.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o ../Library/kit/kit_usb_device_cdc.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o: ../Library/kit/kit_usb_device_msd.c  .generated_files/e3a872b8e7bbc9aa3562e49839cab16b48676d89.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o ../Library/kit/kit_usb_device_msd.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/HexParsing.o: ../Library/programmer/HexParsing.c  .generated_files/4fbad5120aa2a8b652c0c74a0ab67e341dd2dc69.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/HexParsing.o.d" -o ${OBJECTDIR}/_ext/967316345/HexParsing.o ../Library/programmer/HexParsing.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/Icsp.o: ../Library/programmer/Icsp.c  .generated_files/1ba64d5cbd4f78240932c38a9553821fc3b41ee4.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/Icsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/Icsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/Icsp.o.d" -o ${OBJECTDIR}/_ext/967316345/Icsp.o ../Library/programmer/Icsp.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o: ../Library/programmer/ICSP_FileIO.c  .generated_files/9aebfa6b2305ee4d40eb1a7526db19dd1105eefa.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o.d" -o ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o ../Library/programmer/ICSP_FileIO.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o: ../Library/programmer/ICSP_PIC16F188XX.c  .generated_files/3c8c82d5a565430c7b3cc6145d825fca3c139c36.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o.d" -o ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o ../Library/programmer/ICSP_PIC16F188XX.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TaskManager.o: ../Library/system/TaskManager.c  .generated_files/ce140d8ed676b9a4931ee50f9f5fe7b2f49f5f75.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TaskManager.o.d" -o ${OBJECTDIR}/_ext/661682606/TaskManager.o ../Library/system/TaskManager.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TickCounter.o: ../Library/system/TickCounter.c  .generated_files/ee0ecb13913eafc6634cc81d5038535d8db98d0f.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickCounter.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickCounter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TickCounter.o.d" -o ${OBJECTDIR}/_ext/661682606/TickCounter.o ../Library/system/TickCounter.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TickTimer.o: ../Library/system/TickTimer.c  .generated_files/efa9c35be6a0b0c7cc3055d29ac87b6edd279f49.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TickTimer.o.d" -o ${OBJECTDIR}/_ext/661682606/TickTimer.o ../Library/system/TickTimer.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/Wdt.o: ../Library/system/Wdt.c  .generated_files/a253f6718b0cbd1777577b0cad8d5bad92b421c9.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/Wdt.o.d" -o ${OBJECTDIR}/_ext/661682606/Wdt.o ../Library/system/Wdt.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_cdc.o: ../Library/usb/usb_device_cdc.c  .generated_files/2a81b78bae88e27f50116ae631b30bfa803c5a6d.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o ../Library/usb/usb_device_cdc.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_msd.o: ../Library/usb/usb_device_msd.c  .generated_files/dcec1cb912bf0752a48a63ac2a727e2b7b21c8df.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_msd.o ../Library/usb/usb_device_msd.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/user_usb_device_events.o: ../Library/usb/user_usb_device_events.c  .generated_files/41a499730061d35f56f5cf050d99044de8c3ed99.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d" -o ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o ../Library/usb/user_usb_device_events.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.c  .generated_files/df1ef2709d2d6aba29eaf78037e12501bb9d0105.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o mcc_generated_files/memory/flash.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/ffbe2e252d0d26772ae9a40df22abe77f2f63679.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/sccp7_compare.o: mcc_generated_files/sccp7_compare.c  .generated_files/16b8f79b8575e323adb82c80f103741a8f448b1e.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp7_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp7_compare.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp7_compare.o.d" -o ${OBJECTDIR}/mcc_generated_files/sccp7_compare.o mcc_generated_files/sccp7_compare.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/e890aaeb479abb88abc07faf83c796b9e7a881fe.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/71a9185fad08656189922ab1da37fca8fe55bf52.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/5dc65425a55c7fa2e9852484f98cf36fad89706b.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart2.o mcc_generated_files/uart2.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/66c3d8658b5d4fdd6c01194fabdef235e5b52e70.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/729d11d92a4344f14adb8f9ddb31970dbd33208b.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/sccp9_compare.o: mcc_generated_files/sccp9_compare.c  .generated_files/92c371acb90a035f5b5f5b481ce971cf3f246eaa.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp9_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp9_compare.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp9_compare.o.d" -o ${OBJECTDIR}/mcc_generated_files/sccp9_compare.o mcc_generated_files/sccp9_compare.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/sccp6_compare.o: mcc_generated_files/sccp6_compare.c  .generated_files/d70dfaa2821057e75a368b6953f3aebc31c1f210.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp6_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp6_compare.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp6_compare.o.d" -o ${OBJECTDIR}/mcc_generated_files/sccp6_compare.o mcc_generated_files/sccp6_compare.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/sccp5_compare.o: mcc_generated_files/sccp5_compare.c  .generated_files/c0176c0c2d7479ba01ce39291c3fb90e89be8d6c.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp5_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp5_compare.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp5_compare.o.d" -o ${OBJECTDIR}/mcc_generated_files/sccp5_compare.o mcc_generated_files/sccp5_compare.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  .generated_files/458a1ae90a71f92254a638f26e49fcc436eb3870.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d" -o ${OBJECTDIR}/mcc_generated_files/adc1.o mcc_generated_files/adc1.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/exceptions.o: mcc_generated_files/exceptions.c  .generated_files/d455b19c9f82a4f5883f6c2f04219ecc6deea415.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/exceptions.o.d" -o ${OBJECTDIR}/mcc_generated_files/exceptions.o mcc_generated_files/exceptions.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/7d1036ff6d1604861548a25d6435ff1872c0b007.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/sccp4_compare.o: mcc_generated_files/sccp4_compare.c  .generated_files/8c8906e399c51d478483420f6e0dba1768d9df20.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp4_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp4_compare.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp4_compare.o.d" -o ${OBJECTDIR}/mcc_generated_files/sccp4_compare.o mcc_generated_files/sccp4_compare.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/i2c2.o: mcc_generated_files/i2c2.c  .generated_files/a7d7fc8fc0270267af8348ed6b550ee518fdd3f7.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c2.o.d" -o ${OBJECTDIR}/mcc_generated_files/i2c2.o mcc_generated_files/i2c2.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/sccp8_compare.o: mcc_generated_files/sccp8_compare.c  .generated_files/56bdda95c5965c887fbf80fc92251cc9f54839eb.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp8_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp8_compare.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp8_compare.o.d" -o ${OBJECTDIR}/mcc_generated_files/sccp8_compare.o mcc_generated_files/sccp8_compare.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/coretimer.o: mcc_generated_files/coretimer.c  .generated_files/ed52bee2c61287cbbe2545aecfd694f2d3d2dab9.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/coretimer.o.d" -o ${OBJECTDIR}/mcc_generated_files/coretimer.o mcc_generated_files/coretimer.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/bfe70390b9d4995857f76ebe2c32106ff89eb8e.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/app/AppMain.o: app/AppMain.c  .generated_files/743375313e6a911582c3640145c6b2970be83d25.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/AppMain.o.d 
	@${RM} ${OBJECTDIR}/app/AppMain.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/app/AppMain.o.d" -o ${OBJECTDIR}/app/AppMain.o app/AppMain.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/Ext_ADC.o: app/Ext_ADC.c  .generated_files/c6414ba398cf19502b0a91c767216cc0262f6ed8.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/Ext_ADC.o.d 
	@${RM} ${OBJECTDIR}/app/Ext_ADC.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/app/Ext_ADC.o.d" -o ${OBJECTDIR}/app/Ext_ADC.o app/Ext_ADC.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/Ext_GPIO.o: app/Ext_GPIO.c  .generated_files/4f5f21f8491bdca7f4ee4306b20706b83fa42c85.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/Ext_GPIO.o.d 
	@${RM} ${OBJECTDIR}/app/Ext_GPIO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/app/Ext_GPIO.o.d" -o ${OBJECTDIR}/app/Ext_GPIO.o app/Ext_GPIO.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/Ext_PWM.o: app/Ext_PWM.c  .generated_files/50a482106a69950a50504f5f3a944f69c0633a41.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/Ext_PWM.o.d 
	@${RM} ${OBJECTDIR}/app/Ext_PWM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/app/Ext_PWM.o.d" -o ${OBJECTDIR}/app/Ext_PWM.o app/Ext_PWM.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/I2C_Slaver.o: app/I2C_Slaver.c  .generated_files/4adedf978b0381e02705b6516b921d178e8b1824.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/I2C_Slaver.o.d 
	@${RM} ${OBJECTDIR}/app/I2C_Slaver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/app/I2C_Slaver.o.d" -o ${OBJECTDIR}/app/I2C_Slaver.o app/I2C_Slaver.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/SRAM_Emulator.o: app/SRAM_Emulator.c  .generated_files/8107b82a48f592d332ef1df89ef640c2c60ff2e2.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/SRAM_Emulator.o.d 
	@${RM} ${OBJECTDIR}/app/SRAM_Emulator.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/app/SRAM_Emulator.o.d" -o ${OBJECTDIR}/app/SRAM_Emulator.o app/SRAM_Emulator.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/libcomp.o: app/libcomp.c  .generated_files/dbecd9bc19c4719465255d9fd64ff64a57e4ef55.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/libcomp.o.d 
	@${RM} ${OBJECTDIR}/app/libcomp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/app/libcomp.o.d" -o ${OBJECTDIR}/app/libcomp.o app/libcomp.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/config/user_usb_device_descriptors.o: config/user_usb_device_descriptors.c  .generated_files/1e2e705689065fe71e4185cf0ac46b036607b8ee.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/config" 
	@${RM} ${OBJECTDIR}/config/user_usb_device_descriptors.o.d 
	@${RM} ${OBJECTDIR}/config/user_usb_device_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/config/user_usb_device_descriptors.o.d" -o ${OBJECTDIR}/config/user_usb_device_descriptors.o config/user_usb_device_descriptors.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1353568322/ButtonApi.o: ../Library/buttons/ButtonApi.c  .generated_files/f3b8171045c4475dba8fdf2b1c74e9c24556b58c.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1353568322" 
	@${RM} ${OBJECTDIR}/_ext/1353568322/ButtonApi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1353568322/ButtonApi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1353568322/ButtonApi.o.d" -o ${OBJECTDIR}/_ext/1353568322/ButtonApi.o ../Library/buttons/ButtonApi.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1353568322/Buttons.o: ../Library/buttons/Buttons.c  .generated_files/e5f415e04120f4806738219bcaf14d5a1d81ff66.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1353568322" 
	@${RM} ${OBJECTDIR}/_ext/1353568322/Buttons.o.d 
	@${RM} ${OBJECTDIR}/_ext/1353568322/Buttons.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1353568322/Buttons.o.d" -o ${OBJECTDIR}/_ext/1353568322/Buttons.o ../Library/buttons/Buttons.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/RingBuffer.o: ../Library/common/RingBuffer.c  .generated_files/1514dc149e5d0acc4e3a18ef688f028e26264b27.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/RingBuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/RingBuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/RingBuffer.o.d" -o ${OBJECTDIR}/_ext/1129169394/RingBuffer.o ../Library/common/RingBuffer.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/UserFunctions.o: ../Library/common/UserFunctions.c  .generated_files/86afdedf0e4a2b4ec3daa3e015acfa0d62bf452a.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d" -o ${OBJECTDIR}/_ext/1129169394/UserFunctions.o ../Library/common/UserFunctions.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/Debug.o: ../Library/common/Debug.c  .generated_files/751fad22de01f3e0220255ef3b0bbada05cd0959.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/Debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/Debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/Debug.o.d" -o ${OBJECTDIR}/_ext/1129169394/Debug.o ../Library/common/Debug.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1048860731/files_lite.o: ../Library/fileio/files_lite.c  .generated_files/aa054a9ab1f319a7bc69585785f667f92580f576.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1048860731" 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o.d 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1048860731/files_lite.o.d" -o ${OBJECTDIR}/_ext/1048860731/files_lite.o ../Library/fileio/files_lite.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/127659252/Indicator.o: ../Library/indicator/Indicator.c  .generated_files/5b39fff205bf03ffeff1037b9bca988096759e77.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/127659252" 
	@${RM} ${OBJECTDIR}/_ext/127659252/Indicator.o.d 
	@${RM} ${OBJECTDIR}/_ext/127659252/Indicator.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/127659252/Indicator.o.d" -o ${OBJECTDIR}/_ext/127659252/Indicator.o ../Library/indicator/Indicator.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit.o: ../Library/kit/kit.c  .generated_files/42958f3be5d585f6a2a39f41bbb4e45b962266fd.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit.o.d" -o ${OBJECTDIR}/_ext/436516243/kit.o ../Library/kit/kit.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device.o: ../Library/kit/kit_usb_device.c  .generated_files/f000098a33986ced75960519da229027a6139f1a.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device.o ../Library/kit/kit_usb_device.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o: ../Library/kit/kit_usb_device_cdc.c  .generated_files/b04d285bb44f4a81fa31943f6268b067be26fb5f.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o ../Library/kit/kit_usb_device_cdc.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o: ../Library/kit/kit_usb_device_msd.c  .generated_files/552968b768adb1f7bfb7126be04fd7571d969d38.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o ../Library/kit/kit_usb_device_msd.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/HexParsing.o: ../Library/programmer/HexParsing.c  .generated_files/e7a77915e6333eb99ca76694343290e109bb1496.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/HexParsing.o.d" -o ${OBJECTDIR}/_ext/967316345/HexParsing.o ../Library/programmer/HexParsing.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/Icsp.o: ../Library/programmer/Icsp.c  .generated_files/de3f5c224c04dd27f42dccc5d8b78eb5c3203251.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/Icsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/Icsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/Icsp.o.d" -o ${OBJECTDIR}/_ext/967316345/Icsp.o ../Library/programmer/Icsp.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o: ../Library/programmer/ICSP_FileIO.c  .generated_files/b7a0f7e4746773fa9ca0a3a67059d6e7895523de.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o.d" -o ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o ../Library/programmer/ICSP_FileIO.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o: ../Library/programmer/ICSP_PIC16F188XX.c  .generated_files/a01f3a7cc193e9763a412993afc88a246d474568.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o.d" -o ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o ../Library/programmer/ICSP_PIC16F188XX.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TaskManager.o: ../Library/system/TaskManager.c  .generated_files/7c972e7bfc76e98b0d11a21b3655109a993a9e44.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TaskManager.o.d" -o ${OBJECTDIR}/_ext/661682606/TaskManager.o ../Library/system/TaskManager.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TickCounter.o: ../Library/system/TickCounter.c  .generated_files/6b10d142f633bf68a0fe93953a536db07b1d97ac.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickCounter.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickCounter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TickCounter.o.d" -o ${OBJECTDIR}/_ext/661682606/TickCounter.o ../Library/system/TickCounter.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TickTimer.o: ../Library/system/TickTimer.c  .generated_files/65855ad2ab4454b0772be70486a26ce8496249ce.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TickTimer.o.d" -o ${OBJECTDIR}/_ext/661682606/TickTimer.o ../Library/system/TickTimer.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/Wdt.o: ../Library/system/Wdt.c  .generated_files/5f0eed5d517df9dafd8014dfc07a7306070ac960.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/Wdt.o.d" -o ${OBJECTDIR}/_ext/661682606/Wdt.o ../Library/system/Wdt.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_cdc.o: ../Library/usb/usb_device_cdc.c  .generated_files/bc9e227624ebfd6d9181b41e7a49b1d588f670b1.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o ../Library/usb/usb_device_cdc.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_msd.o: ../Library/usb/usb_device_msd.c  .generated_files/10aaee83b933c32c4db28441f9dd2525385ea627.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_msd.o ../Library/usb/usb_device_msd.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/user_usb_device_events.o: ../Library/usb/user_usb_device_events.c  .generated_files/72e58306e4535f637edeef77b99df1c0c508071e.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d" -o ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o ../Library/usb/user_usb_device_events.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.c  .generated_files/ef199497f4fcf93f5a841c601f815ad3573ab9ec.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o mcc_generated_files/memory/flash.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/d4d6b19517d2c3448ddf211f8a7928c39294f44e.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/sccp7_compare.o: mcc_generated_files/sccp7_compare.c  .generated_files/d97dac409a73e9881054c37b66a7778c2d474b13.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp7_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp7_compare.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp7_compare.o.d" -o ${OBJECTDIR}/mcc_generated_files/sccp7_compare.o mcc_generated_files/sccp7_compare.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/c2f9cecb449da1e75ecb093e96d97b0b01f5e298.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/b8edc9466e0ee13d4b1e6562ab59fbfa30acaa.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/4203f1f20a33a03c8c7d479907963ef1daa2093a.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart2.o mcc_generated_files/uart2.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/f9936db174ab2db45fb46004b6885b323bd075eb.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/6a8743dc6644898c263f983b2320220a0f4b15a6.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/sccp9_compare.o: mcc_generated_files/sccp9_compare.c  .generated_files/f2f3f6f95c46bea8209b1f3c7c99e6ad6ec51afd.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp9_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp9_compare.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp9_compare.o.d" -o ${OBJECTDIR}/mcc_generated_files/sccp9_compare.o mcc_generated_files/sccp9_compare.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/sccp6_compare.o: mcc_generated_files/sccp6_compare.c  .generated_files/8bc74cbc4e1cf57d009d63cb90fbdbab73baa3e8.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp6_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp6_compare.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp6_compare.o.d" -o ${OBJECTDIR}/mcc_generated_files/sccp6_compare.o mcc_generated_files/sccp6_compare.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/sccp5_compare.o: mcc_generated_files/sccp5_compare.c  .generated_files/30b5c2f72b8947217bbd7c1587a77b735de20655.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp5_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp5_compare.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp5_compare.o.d" -o ${OBJECTDIR}/mcc_generated_files/sccp5_compare.o mcc_generated_files/sccp5_compare.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  .generated_files/87865de0998332030773e55cb924a4509312d5cb.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d" -o ${OBJECTDIR}/mcc_generated_files/adc1.o mcc_generated_files/adc1.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/exceptions.o: mcc_generated_files/exceptions.c  .generated_files/3f1ba3d1dfdfa5673d8c57e3b0e098ba286e9ed0.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/exceptions.o.d" -o ${OBJECTDIR}/mcc_generated_files/exceptions.o mcc_generated_files/exceptions.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/14d765174b607ef651d48cee5ec3fe116518e8.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/sccp4_compare.o: mcc_generated_files/sccp4_compare.c  .generated_files/6e23a2fae27a92e1809cd5445a47542358394763.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp4_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp4_compare.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp4_compare.o.d" -o ${OBJECTDIR}/mcc_generated_files/sccp4_compare.o mcc_generated_files/sccp4_compare.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/i2c2.o: mcc_generated_files/i2c2.c  .generated_files/786fcf7608c0e2afc1e0515d47ab17ab7a60c43e.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c2.o.d" -o ${OBJECTDIR}/mcc_generated_files/i2c2.o mcc_generated_files/i2c2.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/sccp8_compare.o: mcc_generated_files/sccp8_compare.c  .generated_files/41986062fecbcde9909ee12c21438958c06720fa.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp8_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp8_compare.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp8_compare.o.d" -o ${OBJECTDIR}/mcc_generated_files/sccp8_compare.o mcc_generated_files/sccp8_compare.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/coretimer.o: mcc_generated_files/coretimer.c  .generated_files/284e53387399a5b370d18ce160ba90faac0fbb97.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/coretimer.o.d" -o ${OBJECTDIR}/mcc_generated_files/coretimer.o mcc_generated_files/coretimer.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/f02dbd445cd0b41def9597129528e572da36cdf3.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/PG_APP.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../Library/bootloader/Linker/p32MM0064GPM028/App.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/PG_APP.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC00490:0x1FC016FF -mreserve=boot@0x1FC00490:0x1FC00BEF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/PG_APP.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../Library/bootloader/Linker/p32MM0064GPM028/App.ld ../PG_BLD.X/Bootloader.hex
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/PG_APP.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/PG_APP.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
	@echo Normalizing hex file
	@"C:/Program Files/Microchip/MPLABX/v5.45/mplab_platform/platform/../mplab_ide/modules/../../bin/hexmate" --edf="C:/Program Files/Microchip/MPLABX/v5.45/mplab_platform/platform/../mplab_ide/modules/../../dat/en_msgs.txt" dist/${CND_CONF}/${IMAGE_TYPE}/PG_APP.X.${IMAGE_TYPE}.hex -odist/${CND_CONF}/${IMAGE_TYPE}/PG_APP.X.${IMAGE_TYPE}.hex

	@echo "Creating unified hex file"
	@"C:/Program Files/Microchip/MPLABX/v5.45/mplab_platform/platform/../mplab_ide/modules/../../bin/hexmate" --edf="C:/Program Files/Microchip/MPLABX/v5.45/mplab_platform/platform/../mplab_ide/modules/../../dat/en_msgs.txt" dist/${CND_CONF}/${IMAGE_TYPE}/PG_APP.X.${IMAGE_TYPE}.hex ../PG_BLD.X/Bootloader.hex -odist/${CND_CONF}/production/PG_APP.X.production.unified.hex

endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/app_release
	${RM} -r dist/app_release

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
