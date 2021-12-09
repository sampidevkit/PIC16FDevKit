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
ifeq "$(wildcard nbproject/Makefile-local-app.mk)" "nbproject/Makefile-local-app.mk"
include nbproject/Makefile-local-app.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=app
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PG_v1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PG_v1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=cfg/app/user_usb_device_descriptors.c ../Library/buttons/ButtonApi.c ../Library/buttons/Buttons.c ../Library/common/RingBuffer.c ../Library/common/UserFunctions.c ../Library/fileio/files_lite.c ../Library/indicator/Indicator.c ../Library/kit/kit.c ../Library/kit/kit_usb_device.c ../Library/kit/kit_usb_device_cdc.c ../Library/kit/kit_usb_device_msd.c ../Library/programmer/HexParsing.c ../Library/programmer/Icsp.c ../Library/programmer/ICSP_FileIO.c ../Library/programmer/ICSP_PIC16F188XX.c ../Library/system/TaskManager.c ../Library/system/TickCounter.c ../Library/system/TickTimer.c ../Library/system/Wdt.c ../Library/usb/usb_device_cdc.c ../Library/usb/usb_device_msd.c ../Library/usb/user_usb_device_events.c mcc_generated_files/memory/flash.c mcc_generated_files/usb/usb_device.c mcc_generated_files/i2c1.c mcc_generated_files/pin_manager.c mcc_generated_files/interrupt_manager.c mcc_generated_files/exceptions.c mcc_generated_files/uart2.c mcc_generated_files/clock.c mcc_generated_files/coretimer.c mcc_generated_files/mcc.c mcc_generated_files/system.c user/app/SRAM_Emulator.c user/app/libcomp.c user/app/AppMain.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/cfg/app/user_usb_device_descriptors.o ${OBJECTDIR}/_ext/1353568322/ButtonApi.o ${OBJECTDIR}/_ext/1353568322/Buttons.o ${OBJECTDIR}/_ext/1129169394/RingBuffer.o ${OBJECTDIR}/_ext/1129169394/UserFunctions.o ${OBJECTDIR}/_ext/1048860731/files_lite.o ${OBJECTDIR}/_ext/127659252/Indicator.o ${OBJECTDIR}/_ext/436516243/kit.o ${OBJECTDIR}/_ext/436516243/kit_usb_device.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o ${OBJECTDIR}/_ext/967316345/HexParsing.o ${OBJECTDIR}/_ext/967316345/Icsp.o ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o ${OBJECTDIR}/_ext/661682606/TaskManager.o ${OBJECTDIR}/_ext/661682606/TickCounter.o ${OBJECTDIR}/_ext/661682606/TickTimer.o ${OBJECTDIR}/_ext/661682606/Wdt.o ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o ${OBJECTDIR}/_ext/436526145/usb_device_msd.o ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o ${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/i2c1.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/exceptions.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/coretimer.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/user/app/SRAM_Emulator.o ${OBJECTDIR}/user/app/libcomp.o ${OBJECTDIR}/user/app/AppMain.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/cfg/app/user_usb_device_descriptors.o.d ${OBJECTDIR}/_ext/1353568322/ButtonApi.o.d ${OBJECTDIR}/_ext/1353568322/Buttons.o.d ${OBJECTDIR}/_ext/1129169394/RingBuffer.o.d ${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d ${OBJECTDIR}/_ext/1048860731/files_lite.o.d ${OBJECTDIR}/_ext/127659252/Indicator.o.d ${OBJECTDIR}/_ext/436516243/kit.o.d ${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o.d ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d ${OBJECTDIR}/_ext/967316345/HexParsing.o.d ${OBJECTDIR}/_ext/967316345/Icsp.o.d ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o.d ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o.d ${OBJECTDIR}/_ext/661682606/TaskManager.o.d ${OBJECTDIR}/_ext/661682606/TickCounter.o.d ${OBJECTDIR}/_ext/661682606/TickTimer.o.d ${OBJECTDIR}/_ext/661682606/Wdt.o.d ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o.d ${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d ${OBJECTDIR}/mcc_generated_files/i2c1.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/exceptions.o.d ${OBJECTDIR}/mcc_generated_files/uart2.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/coretimer.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/user/app/SRAM_Emulator.o.d ${OBJECTDIR}/user/app/libcomp.o.d ${OBJECTDIR}/user/app/AppMain.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/cfg/app/user_usb_device_descriptors.o ${OBJECTDIR}/_ext/1353568322/ButtonApi.o ${OBJECTDIR}/_ext/1353568322/Buttons.o ${OBJECTDIR}/_ext/1129169394/RingBuffer.o ${OBJECTDIR}/_ext/1129169394/UserFunctions.o ${OBJECTDIR}/_ext/1048860731/files_lite.o ${OBJECTDIR}/_ext/127659252/Indicator.o ${OBJECTDIR}/_ext/436516243/kit.o ${OBJECTDIR}/_ext/436516243/kit_usb_device.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o ${OBJECTDIR}/_ext/967316345/HexParsing.o ${OBJECTDIR}/_ext/967316345/Icsp.o ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o ${OBJECTDIR}/_ext/661682606/TaskManager.o ${OBJECTDIR}/_ext/661682606/TickCounter.o ${OBJECTDIR}/_ext/661682606/TickTimer.o ${OBJECTDIR}/_ext/661682606/Wdt.o ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o ${OBJECTDIR}/_ext/436526145/usb_device_msd.o ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o ${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/i2c1.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/exceptions.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/coretimer.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/user/app/SRAM_Emulator.o ${OBJECTDIR}/user/app/libcomp.o ${OBJECTDIR}/user/app/AppMain.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=cfg/app/user_usb_device_descriptors.c ../Library/buttons/ButtonApi.c ../Library/buttons/Buttons.c ../Library/common/RingBuffer.c ../Library/common/UserFunctions.c ../Library/fileio/files_lite.c ../Library/indicator/Indicator.c ../Library/kit/kit.c ../Library/kit/kit_usb_device.c ../Library/kit/kit_usb_device_cdc.c ../Library/kit/kit_usb_device_msd.c ../Library/programmer/HexParsing.c ../Library/programmer/Icsp.c ../Library/programmer/ICSP_FileIO.c ../Library/programmer/ICSP_PIC16F188XX.c ../Library/system/TaskManager.c ../Library/system/TickCounter.c ../Library/system/TickTimer.c ../Library/system/Wdt.c ../Library/usb/usb_device_cdc.c ../Library/usb/usb_device_msd.c ../Library/usb/user_usb_device_events.c mcc_generated_files/memory/flash.c mcc_generated_files/usb/usb_device.c mcc_generated_files/i2c1.c mcc_generated_files/pin_manager.c mcc_generated_files/interrupt_manager.c mcc_generated_files/exceptions.c mcc_generated_files/uart2.c mcc_generated_files/clock.c mcc_generated_files/coretimer.c mcc_generated_files/mcc.c mcc_generated_files/system.c user/app/SRAM_Emulator.c user/app/libcomp.c user/app/AppMain.c main.c



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
_/_=\\
ShExtension=.bat
Device=PIC32MM0064GPM028
ProjectDir="F:\Git\SAMPI\P16DK\P16F1887x\FW\PG_v1.X"
ProjectName=PG_v1
ConfName=app
ImagePath="dist\app\${IMAGE_TYPE}\PG_v1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="dist\app\${IMAGE_TYPE}"
ImageName="PG_v1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-app.mk dist/${CND_CONF}/${IMAGE_TYPE}/PG_v1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
	@echo "--------------------------------------"
	@echo "User defined post-build step: [copy ${ImagePath} ".\app.${OUTPUT_SUFFIX}"]"
	@copy ${ImagePath} ".\app.${OUTPUT_SUFFIX}"
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
${OBJECTDIR}/cfg/app/user_usb_device_descriptors.o: cfg/app/user_usb_device_descriptors.c  .generated_files/flags/app/4c73df5681ec355e8a00cb48e2f53a10f9331b49 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/cfg/app" 
	@${RM} ${OBJECTDIR}/cfg/app/user_usb_device_descriptors.o.d 
	@${RM} ${OBJECTDIR}/cfg/app/user_usb_device_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/cfg/app/user_usb_device_descriptors.o.d" -o ${OBJECTDIR}/cfg/app/user_usb_device_descriptors.o cfg/app/user_usb_device_descriptors.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1353568322/ButtonApi.o: ../Library/buttons/ButtonApi.c  .generated_files/flags/app/c7e2f1cde0a0da29537bb9bc993ec0fce5524c25 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/1353568322" 
	@${RM} ${OBJECTDIR}/_ext/1353568322/ButtonApi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1353568322/ButtonApi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1353568322/ButtonApi.o.d" -o ${OBJECTDIR}/_ext/1353568322/ButtonApi.o ../Library/buttons/ButtonApi.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1353568322/Buttons.o: ../Library/buttons/Buttons.c  .generated_files/flags/app/a460eaf0da9e8ed7fa9018c13dad5e3079e16ff9 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/1353568322" 
	@${RM} ${OBJECTDIR}/_ext/1353568322/Buttons.o.d 
	@${RM} ${OBJECTDIR}/_ext/1353568322/Buttons.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1353568322/Buttons.o.d" -o ${OBJECTDIR}/_ext/1353568322/Buttons.o ../Library/buttons/Buttons.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/RingBuffer.o: ../Library/common/RingBuffer.c  .generated_files/flags/app/802c432d463f47bd2ccd5db1af1f07534c87aacc .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/RingBuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/RingBuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/RingBuffer.o.d" -o ${OBJECTDIR}/_ext/1129169394/RingBuffer.o ../Library/common/RingBuffer.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/UserFunctions.o: ../Library/common/UserFunctions.c  .generated_files/flags/app/2f210b30803347770c2354550d07daf3a1d8ffdc .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d" -o ${OBJECTDIR}/_ext/1129169394/UserFunctions.o ../Library/common/UserFunctions.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1048860731/files_lite.o: ../Library/fileio/files_lite.c  .generated_files/flags/app/78447a91d8453490534e0e8cca653343efb07aa .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/1048860731" 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o.d 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1048860731/files_lite.o.d" -o ${OBJECTDIR}/_ext/1048860731/files_lite.o ../Library/fileio/files_lite.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/127659252/Indicator.o: ../Library/indicator/Indicator.c  .generated_files/flags/app/cb975bf2de6275d40c4e4b3155aaf2bddf0fe184 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/127659252" 
	@${RM} ${OBJECTDIR}/_ext/127659252/Indicator.o.d 
	@${RM} ${OBJECTDIR}/_ext/127659252/Indicator.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/127659252/Indicator.o.d" -o ${OBJECTDIR}/_ext/127659252/Indicator.o ../Library/indicator/Indicator.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit.o: ../Library/kit/kit.c  .generated_files/flags/app/4535c6957d21ce1c1e6081d9bbc1cdc82dd1bba4 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit.o.d" -o ${OBJECTDIR}/_ext/436516243/kit.o ../Library/kit/kit.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device.o: ../Library/kit/kit_usb_device.c  .generated_files/flags/app/c86e6b8e207bb3668a86a97b486fa77f078831d1 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device.o ../Library/kit/kit_usb_device.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o: ../Library/kit/kit_usb_device_cdc.c  .generated_files/flags/app/5a0e24800a62c7d08cec681dcd8851fa1c931231 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o ../Library/kit/kit_usb_device_cdc.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o: ../Library/kit/kit_usb_device_msd.c  .generated_files/flags/app/eacf64d26a260f4fe6cdc87c226c432bccc58476 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o ../Library/kit/kit_usb_device_msd.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/HexParsing.o: ../Library/programmer/HexParsing.c  .generated_files/flags/app/a499afa4bc852abc6a5959c25619a0c9199ffad8 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/HexParsing.o.d" -o ${OBJECTDIR}/_ext/967316345/HexParsing.o ../Library/programmer/HexParsing.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/Icsp.o: ../Library/programmer/Icsp.c  .generated_files/flags/app/533f763b823d55366ae3305d4c5befd594402a07 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/Icsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/Icsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/Icsp.o.d" -o ${OBJECTDIR}/_ext/967316345/Icsp.o ../Library/programmer/Icsp.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o: ../Library/programmer/ICSP_FileIO.c  .generated_files/flags/app/ab5f89be7c797c318a090324872a92994d52bcb6 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o.d" -o ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o ../Library/programmer/ICSP_FileIO.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o: ../Library/programmer/ICSP_PIC16F188XX.c  .generated_files/flags/app/3a1a50c7dfa66bec6ccdfa93ddf8b69e9049e50f .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o.d" -o ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o ../Library/programmer/ICSP_PIC16F188XX.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TaskManager.o: ../Library/system/TaskManager.c  .generated_files/flags/app/cb37f356b78e6a202674675c8ff1b3c9bbca5cab .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TaskManager.o.d" -o ${OBJECTDIR}/_ext/661682606/TaskManager.o ../Library/system/TaskManager.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TickCounter.o: ../Library/system/TickCounter.c  .generated_files/flags/app/226631b5fe17d603c23afb34f8dc21191b3769c8 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickCounter.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickCounter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TickCounter.o.d" -o ${OBJECTDIR}/_ext/661682606/TickCounter.o ../Library/system/TickCounter.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TickTimer.o: ../Library/system/TickTimer.c  .generated_files/flags/app/277681f8e79f20b26fd7c90b3f3f357f0268819 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TickTimer.o.d" -o ${OBJECTDIR}/_ext/661682606/TickTimer.o ../Library/system/TickTimer.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/Wdt.o: ../Library/system/Wdt.c  .generated_files/flags/app/a0a0843afcc4de8db1f44b90d63b5c5d60531c8e .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/Wdt.o.d" -o ${OBJECTDIR}/_ext/661682606/Wdt.o ../Library/system/Wdt.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_cdc.o: ../Library/usb/usb_device_cdc.c  .generated_files/flags/app/fe282b4a7420b5ff9b7b0107ae1c4837d0a2615a .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o ../Library/usb/usb_device_cdc.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_msd.o: ../Library/usb/usb_device_msd.c  .generated_files/flags/app/58b5e0e6fc78c510bdeb279388cf723dd390c24f .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_msd.o ../Library/usb/usb_device_msd.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/user_usb_device_events.o: ../Library/usb/user_usb_device_events.c  .generated_files/flags/app/4a7bcf434240e76242ee83a893e28db967ee90e .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d" -o ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o ../Library/usb/user_usb_device_events.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.c  .generated_files/flags/app/fbae146fcf93be875b6cf3e1e2fd0438ef3db59b .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o mcc_generated_files/memory/flash.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/flags/app/67225319e9aecc43602245542ccf63b91b2f608f .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/i2c1.o: mcc_generated_files/i2c1.c  .generated_files/flags/app/b242dd9cdfb3c0552cdfbc848daa648ce292f813 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1.o.d" -o ${OBJECTDIR}/mcc_generated_files/i2c1.o mcc_generated_files/i2c1.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/app/ff208d2da2c101e07ab364b78e7606446d9c7006 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/app/de9830bf8694063f247e69206b5f7cb3fe18d1f2 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/exceptions.o: mcc_generated_files/exceptions.c  .generated_files/flags/app/184f4df6b7bea526e2708c143a7dc8e1e846510f .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/exceptions.o.d" -o ${OBJECTDIR}/mcc_generated_files/exceptions.o mcc_generated_files/exceptions.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/flags/app/122c485a1418c6ff13f5c793e719e0476a59e368 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart2.o mcc_generated_files/uart2.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/app/4543466bb387d05816c1cf45db0f4d3a5ab9a99e .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/coretimer.o: mcc_generated_files/coretimer.c  .generated_files/flags/app/d989695fc048ed47cb4ef04deff08d36caa65111 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/coretimer.o.d" -o ${OBJECTDIR}/mcc_generated_files/coretimer.o mcc_generated_files/coretimer.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/app/8d68704ebb09217b7f761f185df01b201ee3b88d .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/app/bac68e450efbdad9931dee5995395cbb389bd14 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/user/app/SRAM_Emulator.o: user/app/SRAM_Emulator.c  .generated_files/flags/app/db006158835b49ce26651aa13c2844c887dc73f7 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/user/app" 
	@${RM} ${OBJECTDIR}/user/app/SRAM_Emulator.o.d 
	@${RM} ${OBJECTDIR}/user/app/SRAM_Emulator.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/user/app/SRAM_Emulator.o.d" -o ${OBJECTDIR}/user/app/SRAM_Emulator.o user/app/SRAM_Emulator.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/user/app/libcomp.o: user/app/libcomp.c  .generated_files/flags/app/501350cfffe1c4e295bb5773582a3f59b96e06fa .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/user/app" 
	@${RM} ${OBJECTDIR}/user/app/libcomp.o.d 
	@${RM} ${OBJECTDIR}/user/app/libcomp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/user/app/libcomp.o.d" -o ${OBJECTDIR}/user/app/libcomp.o user/app/libcomp.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/user/app/AppMain.o: user/app/AppMain.c  .generated_files/flags/app/5b0534dfb09c0754b68b3f43b92d7f22a7ea3388 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/user/app" 
	@${RM} ${OBJECTDIR}/user/app/AppMain.o.d 
	@${RM} ${OBJECTDIR}/user/app/AppMain.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/user/app/AppMain.o.d" -o ${OBJECTDIR}/user/app/AppMain.o user/app/AppMain.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/app/251f02cf9747029f3561b8b42d35439d62cc6013 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/cfg/app/user_usb_device_descriptors.o: cfg/app/user_usb_device_descriptors.c  .generated_files/flags/app/be5d5020a5ee5a090133bf88dcc9421aa4a766eb .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/cfg/app" 
	@${RM} ${OBJECTDIR}/cfg/app/user_usb_device_descriptors.o.d 
	@${RM} ${OBJECTDIR}/cfg/app/user_usb_device_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/cfg/app/user_usb_device_descriptors.o.d" -o ${OBJECTDIR}/cfg/app/user_usb_device_descriptors.o cfg/app/user_usb_device_descriptors.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1353568322/ButtonApi.o: ../Library/buttons/ButtonApi.c  .generated_files/flags/app/c8ff4853bf0bb20685e20a3952cdf5244f12137e .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/1353568322" 
	@${RM} ${OBJECTDIR}/_ext/1353568322/ButtonApi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1353568322/ButtonApi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1353568322/ButtonApi.o.d" -o ${OBJECTDIR}/_ext/1353568322/ButtonApi.o ../Library/buttons/ButtonApi.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1353568322/Buttons.o: ../Library/buttons/Buttons.c  .generated_files/flags/app/7d3aab7daccd556cb514fa874f8f9981de9264d .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/1353568322" 
	@${RM} ${OBJECTDIR}/_ext/1353568322/Buttons.o.d 
	@${RM} ${OBJECTDIR}/_ext/1353568322/Buttons.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1353568322/Buttons.o.d" -o ${OBJECTDIR}/_ext/1353568322/Buttons.o ../Library/buttons/Buttons.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/RingBuffer.o: ../Library/common/RingBuffer.c  .generated_files/flags/app/1fba33324c59e5ce863d08094a33c83cbc56afba .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/RingBuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/RingBuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/RingBuffer.o.d" -o ${OBJECTDIR}/_ext/1129169394/RingBuffer.o ../Library/common/RingBuffer.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/UserFunctions.o: ../Library/common/UserFunctions.c  .generated_files/flags/app/3dfade4baf4c7f2e6862566bd0c039e7c3a71741 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d" -o ${OBJECTDIR}/_ext/1129169394/UserFunctions.o ../Library/common/UserFunctions.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1048860731/files_lite.o: ../Library/fileio/files_lite.c  .generated_files/flags/app/fe910d3478b475746f578749c8033a9903c37987 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/1048860731" 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o.d 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1048860731/files_lite.o.d" -o ${OBJECTDIR}/_ext/1048860731/files_lite.o ../Library/fileio/files_lite.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/127659252/Indicator.o: ../Library/indicator/Indicator.c  .generated_files/flags/app/a9f78bb1576a36aaac294fd586eb002ddc64465f .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/127659252" 
	@${RM} ${OBJECTDIR}/_ext/127659252/Indicator.o.d 
	@${RM} ${OBJECTDIR}/_ext/127659252/Indicator.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/127659252/Indicator.o.d" -o ${OBJECTDIR}/_ext/127659252/Indicator.o ../Library/indicator/Indicator.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit.o: ../Library/kit/kit.c  .generated_files/flags/app/20cf271dc1ef28db0b5d850dd42b011921ec39ef .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit.o.d" -o ${OBJECTDIR}/_ext/436516243/kit.o ../Library/kit/kit.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device.o: ../Library/kit/kit_usb_device.c  .generated_files/flags/app/7660cb1431e80db2bdebb4d763d8994395147328 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device.o ../Library/kit/kit_usb_device.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o: ../Library/kit/kit_usb_device_cdc.c  .generated_files/flags/app/7b3267438014ba945768d1fb49512a9edb7ddaa9 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o ../Library/kit/kit_usb_device_cdc.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o: ../Library/kit/kit_usb_device_msd.c  .generated_files/flags/app/58c45afcdb701f8e1ef50ddba30457d01ce08d7e .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o ../Library/kit/kit_usb_device_msd.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/HexParsing.o: ../Library/programmer/HexParsing.c  .generated_files/flags/app/5c1b20bbc44aa09d3f0821d02d0c33ee04a0f2be .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/HexParsing.o.d" -o ${OBJECTDIR}/_ext/967316345/HexParsing.o ../Library/programmer/HexParsing.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/Icsp.o: ../Library/programmer/Icsp.c  .generated_files/flags/app/a77c010c6db3446822b10a20b4850ac1796a0ea3 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/Icsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/Icsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/Icsp.o.d" -o ${OBJECTDIR}/_ext/967316345/Icsp.o ../Library/programmer/Icsp.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o: ../Library/programmer/ICSP_FileIO.c  .generated_files/flags/app/ed9c697b260fc30dd5cc8ca0b02e8f749e353794 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o.d" -o ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o ../Library/programmer/ICSP_FileIO.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o: ../Library/programmer/ICSP_PIC16F188XX.c  .generated_files/flags/app/f6bf9fc96d6706bf796312de5540a25003ba6863 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o.d" -o ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o ../Library/programmer/ICSP_PIC16F188XX.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TaskManager.o: ../Library/system/TaskManager.c  .generated_files/flags/app/795d8432bc903f87500f4e362c2e44e84c291e80 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TaskManager.o.d" -o ${OBJECTDIR}/_ext/661682606/TaskManager.o ../Library/system/TaskManager.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TickCounter.o: ../Library/system/TickCounter.c  .generated_files/flags/app/fbdf4d1b8889538537fe39c9766e860a0a81871f .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickCounter.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickCounter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TickCounter.o.d" -o ${OBJECTDIR}/_ext/661682606/TickCounter.o ../Library/system/TickCounter.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TickTimer.o: ../Library/system/TickTimer.c  .generated_files/flags/app/ff48a9eda8d28e86089c0b5863ee95254845edec .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TickTimer.o.d" -o ${OBJECTDIR}/_ext/661682606/TickTimer.o ../Library/system/TickTimer.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/Wdt.o: ../Library/system/Wdt.c  .generated_files/flags/app/ee79cd4be0b1f08d367c7e62c0bf6ae173c54677 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/Wdt.o.d" -o ${OBJECTDIR}/_ext/661682606/Wdt.o ../Library/system/Wdt.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_cdc.o: ../Library/usb/usb_device_cdc.c  .generated_files/flags/app/a565534b1434420bf7380d0074f92483d5363fd1 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o ../Library/usb/usb_device_cdc.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_msd.o: ../Library/usb/usb_device_msd.c  .generated_files/flags/app/549026b62d70a5edc2f06bafd78509b3e1e5afef .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_msd.o ../Library/usb/usb_device_msd.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/user_usb_device_events.o: ../Library/usb/user_usb_device_events.c  .generated_files/flags/app/81313ee871b363280b2d1b8c50cde2d3d888cf7c .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d" -o ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o ../Library/usb/user_usb_device_events.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.c  .generated_files/flags/app/c8ae8257a3a359cdb09e9f9626e8cc65da2ee293 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o mcc_generated_files/memory/flash.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/flags/app/f93d5efbc32a6293e48e3b1f7be4b3d5a0b15b6d .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/i2c1.o: mcc_generated_files/i2c1.c  .generated_files/flags/app/890f2ad34fbb3e926dfda9ff5bdeeed85eb6274f .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1.o.d" -o ${OBJECTDIR}/mcc_generated_files/i2c1.o mcc_generated_files/i2c1.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/app/2ce74cac5be44a193c5ab699cbc47b6204ec4736 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/app/4a3e685b7fa72b52de90df47e421b855f4d4afb4 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/exceptions.o: mcc_generated_files/exceptions.c  .generated_files/flags/app/bbe6a00bed80a4cca0b8d132dae477b8e00f5b03 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/exceptions.o.d" -o ${OBJECTDIR}/mcc_generated_files/exceptions.o mcc_generated_files/exceptions.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/flags/app/26f4a97cba13206db0279be2ee068a9c1900db64 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart2.o mcc_generated_files/uart2.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/app/6049bccfcef0343161f729c5762b2525b9097b99 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/coretimer.o: mcc_generated_files/coretimer.c  .generated_files/flags/app/ff46653377a552c1ad06964e5ea809a68074f963 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/coretimer.o.d" -o ${OBJECTDIR}/mcc_generated_files/coretimer.o mcc_generated_files/coretimer.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/app/ded38c35f84c5e301dd9aa6e8b78ea2456d903be .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/app/c0c58bedaf157b9220c5da35ecc258d40cf7486e .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/user/app/SRAM_Emulator.o: user/app/SRAM_Emulator.c  .generated_files/flags/app/85664197325a5bea9b2e41d2c8e91fd2e8600498 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/user/app" 
	@${RM} ${OBJECTDIR}/user/app/SRAM_Emulator.o.d 
	@${RM} ${OBJECTDIR}/user/app/SRAM_Emulator.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/user/app/SRAM_Emulator.o.d" -o ${OBJECTDIR}/user/app/SRAM_Emulator.o user/app/SRAM_Emulator.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/user/app/libcomp.o: user/app/libcomp.c  .generated_files/flags/app/aa82a2f8fedb302b4d351035794d18a91e436c16 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/user/app" 
	@${RM} ${OBJECTDIR}/user/app/libcomp.o.d 
	@${RM} ${OBJECTDIR}/user/app/libcomp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/user/app/libcomp.o.d" -o ${OBJECTDIR}/user/app/libcomp.o user/app/libcomp.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/user/app/AppMain.o: user/app/AppMain.c  .generated_files/flags/app/fa5ab6a8b93a2fffb1485d4d8968ef3cbdb1e6d1 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/user/app" 
	@${RM} ${OBJECTDIR}/user/app/AppMain.o.d 
	@${RM} ${OBJECTDIR}/user/app/AppMain.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/user/app/AppMain.o.d" -o ${OBJECTDIR}/user/app/AppMain.o user/app/AppMain.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/app/431b76ed0335a55ac6ea37e834c63fbb89a26793 .generated_files/flags/app/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/PG_v1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../Library/bootloader/Linker/p32MM0064GPM028/App.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/PG_v1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--cref,--warn-section-align,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/PG_v1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../Library/bootloader/Linker/p32MM0064GPM028/App.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/PG_v1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--cref,--warn-section-align,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/PG_v1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
	@echo Normalizing hex file
	@"C:/Program Files/Microchip/MPLABX/v5.50/mplab_platform/platform/../mplab_ide/modules/../../bin/hexmate" --edf="C:/Program Files/Microchip/MPLABX/v5.50/mplab_platform/platform/../mplab_ide/modules/../../dat/en_msgs.txt" dist/${CND_CONF}/${IMAGE_TYPE}/PG_v1.X.${IMAGE_TYPE}.hex -odist/${CND_CONF}/${IMAGE_TYPE}/PG_v1.X.${IMAGE_TYPE}.hex

endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/app
	${RM} -r dist/app

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
