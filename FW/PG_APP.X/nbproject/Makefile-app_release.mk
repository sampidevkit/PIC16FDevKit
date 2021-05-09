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
SOURCEFILES_QUOTED_IF_SPACED=app/AppMain.c app/SRAM_Emulator.c app/libcomp.c config/user_usb_device_descriptors.c ../Library/buttons/ButtonApi.c ../Library/buttons/Buttons.c ../Library/common/RingBuffer.c ../Library/common/UserFunctions.c ../Library/fileio/files_lite.c ../Library/indicator/Indicator.c ../Library/kit/kit.c ../Library/kit/kit_usb_device.c ../Library/kit/kit_usb_device_cdc.c ../Library/kit/kit_usb_device_msd.c ../Library/programmer/HexParsing.c ../Library/programmer/Icsp.c ../Library/programmer/ICSP_FileIO.c ../Library/programmer/ICSP_PIC16F188XX.c ../Library/system/TaskManager.c ../Library/system/TickCounter.c ../Library/system/TickTimer.c ../Library/system/Wdt.c ../Library/usb/usb_device_cdc.c ../Library/usb/usb_device_msd.c ../Library/usb/user_usb_device_events.c mcc_generated_files/usb/usb_device.c mcc_generated_files/mcc.c mcc_generated_files/system.c mcc_generated_files/uart2.c mcc_generated_files/pin_manager.c mcc_generated_files/clock.c mcc_generated_files/exceptions.c mcc_generated_files/interrupt_manager.c mcc_generated_files/coretimer.c mcc_generated_files/i2c1.c main.c mcc_generated_files/memory/flash.c app/Registration.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/app/AppMain.o ${OBJECTDIR}/app/SRAM_Emulator.o ${OBJECTDIR}/app/libcomp.o ${OBJECTDIR}/config/user_usb_device_descriptors.o ${OBJECTDIR}/_ext/1353568322/ButtonApi.o ${OBJECTDIR}/_ext/1353568322/Buttons.o ${OBJECTDIR}/_ext/1129169394/RingBuffer.o ${OBJECTDIR}/_ext/1129169394/UserFunctions.o ${OBJECTDIR}/_ext/1048860731/files_lite.o ${OBJECTDIR}/_ext/127659252/Indicator.o ${OBJECTDIR}/_ext/436516243/kit.o ${OBJECTDIR}/_ext/436516243/kit_usb_device.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o ${OBJECTDIR}/_ext/967316345/HexParsing.o ${OBJECTDIR}/_ext/967316345/Icsp.o ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o ${OBJECTDIR}/_ext/661682606/TaskManager.o ${OBJECTDIR}/_ext/661682606/TickCounter.o ${OBJECTDIR}/_ext/661682606/TickTimer.o ${OBJECTDIR}/_ext/661682606/Wdt.o ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o ${OBJECTDIR}/_ext/436526145/usb_device_msd.o ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/exceptions.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/coretimer.o ${OBJECTDIR}/mcc_generated_files/i2c1.o ${OBJECTDIR}/main.o ${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/app/Registration.o
POSSIBLE_DEPFILES=${OBJECTDIR}/app/AppMain.o.d ${OBJECTDIR}/app/SRAM_Emulator.o.d ${OBJECTDIR}/app/libcomp.o.d ${OBJECTDIR}/config/user_usb_device_descriptors.o.d ${OBJECTDIR}/_ext/1353568322/ButtonApi.o.d ${OBJECTDIR}/_ext/1353568322/Buttons.o.d ${OBJECTDIR}/_ext/1129169394/RingBuffer.o.d ${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d ${OBJECTDIR}/_ext/1048860731/files_lite.o.d ${OBJECTDIR}/_ext/127659252/Indicator.o.d ${OBJECTDIR}/_ext/436516243/kit.o.d ${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o.d ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d ${OBJECTDIR}/_ext/967316345/HexParsing.o.d ${OBJECTDIR}/_ext/967316345/Icsp.o.d ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o.d ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o.d ${OBJECTDIR}/_ext/661682606/TaskManager.o.d ${OBJECTDIR}/_ext/661682606/TickCounter.o.d ${OBJECTDIR}/_ext/661682606/TickTimer.o.d ${OBJECTDIR}/_ext/661682606/Wdt.o.d ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o.d ${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/uart2.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/exceptions.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/coretimer.o.d ${OBJECTDIR}/mcc_generated_files/i2c1.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d ${OBJECTDIR}/app/Registration.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/app/AppMain.o ${OBJECTDIR}/app/SRAM_Emulator.o ${OBJECTDIR}/app/libcomp.o ${OBJECTDIR}/config/user_usb_device_descriptors.o ${OBJECTDIR}/_ext/1353568322/ButtonApi.o ${OBJECTDIR}/_ext/1353568322/Buttons.o ${OBJECTDIR}/_ext/1129169394/RingBuffer.o ${OBJECTDIR}/_ext/1129169394/UserFunctions.o ${OBJECTDIR}/_ext/1048860731/files_lite.o ${OBJECTDIR}/_ext/127659252/Indicator.o ${OBJECTDIR}/_ext/436516243/kit.o ${OBJECTDIR}/_ext/436516243/kit_usb_device.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o ${OBJECTDIR}/_ext/967316345/HexParsing.o ${OBJECTDIR}/_ext/967316345/Icsp.o ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o ${OBJECTDIR}/_ext/661682606/TaskManager.o ${OBJECTDIR}/_ext/661682606/TickCounter.o ${OBJECTDIR}/_ext/661682606/TickTimer.o ${OBJECTDIR}/_ext/661682606/Wdt.o ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o ${OBJECTDIR}/_ext/436526145/usb_device_msd.o ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/exceptions.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/coretimer.o ${OBJECTDIR}/mcc_generated_files/i2c1.o ${OBJECTDIR}/main.o ${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/app/Registration.o

# Source Files
SOURCEFILES=app/AppMain.c app/SRAM_Emulator.c app/libcomp.c config/user_usb_device_descriptors.c ../Library/buttons/ButtonApi.c ../Library/buttons/Buttons.c ../Library/common/RingBuffer.c ../Library/common/UserFunctions.c ../Library/fileio/files_lite.c ../Library/indicator/Indicator.c ../Library/kit/kit.c ../Library/kit/kit_usb_device.c ../Library/kit/kit_usb_device_cdc.c ../Library/kit/kit_usb_device_msd.c ../Library/programmer/HexParsing.c ../Library/programmer/Icsp.c ../Library/programmer/ICSP_FileIO.c ../Library/programmer/ICSP_PIC16F188XX.c ../Library/system/TaskManager.c ../Library/system/TickCounter.c ../Library/system/TickTimer.c ../Library/system/Wdt.c ../Library/usb/usb_device_cdc.c ../Library/usb/usb_device_msd.c ../Library/usb/user_usb_device_events.c mcc_generated_files/usb/usb_device.c mcc_generated_files/mcc.c mcc_generated_files/system.c mcc_generated_files/uart2.c mcc_generated_files/pin_manager.c mcc_generated_files/clock.c mcc_generated_files/exceptions.c mcc_generated_files/interrupt_manager.c mcc_generated_files/coretimer.c mcc_generated_files/i2c1.c main.c mcc_generated_files/memory/flash.c app/Registration.c



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
ProjectDir="F:\Github\SAMPIDevKit\PIC16DevKit\PIC16F1887x\FW\PG_APP.X"
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
${OBJECTDIR}/app/AppMain.o: app/AppMain.c  .generated_files/3e22463bccd19c18160b6276d108c3127828c8d6.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/AppMain.o.d 
	@${RM} ${OBJECTDIR}/app/AppMain.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/app/AppMain.o.d" -o ${OBJECTDIR}/app/AppMain.o app/AppMain.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/SRAM_Emulator.o: app/SRAM_Emulator.c  .generated_files/2728573ecf701914ae8dd0fb6a8f369b11ae05e1.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/SRAM_Emulator.o.d 
	@${RM} ${OBJECTDIR}/app/SRAM_Emulator.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/app/SRAM_Emulator.o.d" -o ${OBJECTDIR}/app/SRAM_Emulator.o app/SRAM_Emulator.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/libcomp.o: app/libcomp.c  .generated_files/839611bce8fe8bb9538e6ee9d9e1ad2aa30c1657.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/libcomp.o.d 
	@${RM} ${OBJECTDIR}/app/libcomp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/app/libcomp.o.d" -o ${OBJECTDIR}/app/libcomp.o app/libcomp.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/config/user_usb_device_descriptors.o: config/user_usb_device_descriptors.c  .generated_files/9c3e3a1f712bb3a941ce5b769d60088e012947d6.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/config" 
	@${RM} ${OBJECTDIR}/config/user_usb_device_descriptors.o.d 
	@${RM} ${OBJECTDIR}/config/user_usb_device_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/config/user_usb_device_descriptors.o.d" -o ${OBJECTDIR}/config/user_usb_device_descriptors.o config/user_usb_device_descriptors.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1353568322/ButtonApi.o: ../Library/buttons/ButtonApi.c  .generated_files/469e5bb2a17a79800a76ee6230b8c7efc9c19abd.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1353568322" 
	@${RM} ${OBJECTDIR}/_ext/1353568322/ButtonApi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1353568322/ButtonApi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1353568322/ButtonApi.o.d" -o ${OBJECTDIR}/_ext/1353568322/ButtonApi.o ../Library/buttons/ButtonApi.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1353568322/Buttons.o: ../Library/buttons/Buttons.c  .generated_files/484034a02f48ca9107cc7fdff873367cf4f563b3.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1353568322" 
	@${RM} ${OBJECTDIR}/_ext/1353568322/Buttons.o.d 
	@${RM} ${OBJECTDIR}/_ext/1353568322/Buttons.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1353568322/Buttons.o.d" -o ${OBJECTDIR}/_ext/1353568322/Buttons.o ../Library/buttons/Buttons.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/RingBuffer.o: ../Library/common/RingBuffer.c  .generated_files/e2e1d268902a3e49378551f7e5ee0b4e02569ba0.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/RingBuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/RingBuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/RingBuffer.o.d" -o ${OBJECTDIR}/_ext/1129169394/RingBuffer.o ../Library/common/RingBuffer.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/UserFunctions.o: ../Library/common/UserFunctions.c  .generated_files/cb9399f1c6d8ad46cd2c47fb80665ece29cf7548.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d" -o ${OBJECTDIR}/_ext/1129169394/UserFunctions.o ../Library/common/UserFunctions.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1048860731/files_lite.o: ../Library/fileio/files_lite.c  .generated_files/f08ecf5e7e24fb8ada5cc03621abe50e26e89488.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1048860731" 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o.d 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1048860731/files_lite.o.d" -o ${OBJECTDIR}/_ext/1048860731/files_lite.o ../Library/fileio/files_lite.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/127659252/Indicator.o: ../Library/indicator/Indicator.c  .generated_files/a54f895b13879b197bfda3c23f04a9b56583938e.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/127659252" 
	@${RM} ${OBJECTDIR}/_ext/127659252/Indicator.o.d 
	@${RM} ${OBJECTDIR}/_ext/127659252/Indicator.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/127659252/Indicator.o.d" -o ${OBJECTDIR}/_ext/127659252/Indicator.o ../Library/indicator/Indicator.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit.o: ../Library/kit/kit.c  .generated_files/8bf40bd1fb0cddf663538401c251e782ef0711c.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit.o.d" -o ${OBJECTDIR}/_ext/436516243/kit.o ../Library/kit/kit.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device.o: ../Library/kit/kit_usb_device.c  .generated_files/179fc5f7745610863a7d6e00b7cc720743026fb2.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device.o ../Library/kit/kit_usb_device.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o: ../Library/kit/kit_usb_device_cdc.c  .generated_files/dc15827145dc0dfae3e78f4fb81888fc136518c0.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o ../Library/kit/kit_usb_device_cdc.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o: ../Library/kit/kit_usb_device_msd.c  .generated_files/fbc105382d39beb82dfd79b94c1c86080308e2e5.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o ../Library/kit/kit_usb_device_msd.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/HexParsing.o: ../Library/programmer/HexParsing.c  .generated_files/48fcc1e1c667f7b9e8c02d1b0dfd33fb4f8a26fa.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/HexParsing.o.d" -o ${OBJECTDIR}/_ext/967316345/HexParsing.o ../Library/programmer/HexParsing.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/Icsp.o: ../Library/programmer/Icsp.c  .generated_files/28969bb1e257df815705f7046d45751035d1e6d7.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/Icsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/Icsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/Icsp.o.d" -o ${OBJECTDIR}/_ext/967316345/Icsp.o ../Library/programmer/Icsp.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o: ../Library/programmer/ICSP_FileIO.c  .generated_files/9e059825aedca06ac874259e27396c8434922fbf.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o.d" -o ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o ../Library/programmer/ICSP_FileIO.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o: ../Library/programmer/ICSP_PIC16F188XX.c  .generated_files/7e3d2cc8b901399e6ca7d16735a6653333e44569.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o.d" -o ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o ../Library/programmer/ICSP_PIC16F188XX.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TaskManager.o: ../Library/system/TaskManager.c  .generated_files/318b63dca75cf767bc1c13aaaeed5b8f09d38c70.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TaskManager.o.d" -o ${OBJECTDIR}/_ext/661682606/TaskManager.o ../Library/system/TaskManager.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TickCounter.o: ../Library/system/TickCounter.c  .generated_files/7b97632954e2c5267e07112626f784603e930591.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickCounter.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickCounter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TickCounter.o.d" -o ${OBJECTDIR}/_ext/661682606/TickCounter.o ../Library/system/TickCounter.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TickTimer.o: ../Library/system/TickTimer.c  .generated_files/aa7eda77bba846c43352ba61d254c81d9107296a.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TickTimer.o.d" -o ${OBJECTDIR}/_ext/661682606/TickTimer.o ../Library/system/TickTimer.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/Wdt.o: ../Library/system/Wdt.c  .generated_files/b295623f4138ed7ce3989272d883d7e2b1daf618.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/Wdt.o.d" -o ${OBJECTDIR}/_ext/661682606/Wdt.o ../Library/system/Wdt.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_cdc.o: ../Library/usb/usb_device_cdc.c  .generated_files/a235ade4839cdd7d2ec9b5de41660d849f4a82b7.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o ../Library/usb/usb_device_cdc.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_msd.o: ../Library/usb/usb_device_msd.c  .generated_files/6d322f90bd8d42dfc0925267298729b330d1db4c.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_msd.o ../Library/usb/usb_device_msd.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/user_usb_device_events.o: ../Library/usb/user_usb_device_events.c  .generated_files/e3add46ea05352b95a5500deb38749d1faee17c7.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d" -o ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o ../Library/usb/user_usb_device_events.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/d5bc888a458d86d0de6a7facadc5704cece3abe7.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/4d8727793ef291466b1000456469882b79c244f9.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/df99edf1cbb63f52e3fe19c80018a6e666e555a2.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/89580bdf20e3b568e696d41ec626128bd71473d3.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart2.o mcc_generated_files/uart2.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/29c04de5b5377c88cd3289c63160e3ddf04b2077.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/942d5a00fb74910e1632aacb3a78dbbf1536cb3.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/exceptions.o: mcc_generated_files/exceptions.c  .generated_files/53935be4604b68c95fed49ec54e5f2a4f60ed4b2.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/exceptions.o.d" -o ${OBJECTDIR}/mcc_generated_files/exceptions.o mcc_generated_files/exceptions.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/bd47518d87899cf672471b7543685639be98e838.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/coretimer.o: mcc_generated_files/coretimer.c  .generated_files/c9a8f64bba09e801d698f8cdced6d99431d1e582.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/coretimer.o.d" -o ${OBJECTDIR}/mcc_generated_files/coretimer.o mcc_generated_files/coretimer.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/i2c1.o: mcc_generated_files/i2c1.c  .generated_files/784a10be0815ff250befa5963546c7277b4bde98.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1.o.d" -o ${OBJECTDIR}/mcc_generated_files/i2c1.o mcc_generated_files/i2c1.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/49d76ba62280b2382e3af75f8a58921593a87dcf.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.c  .generated_files/adc6f754a2cd2943d556ec28c26798ac3555b164.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o mcc_generated_files/memory/flash.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/Registration.o: app/Registration.c  .generated_files/32548e5b0ef693fefe6b928431c9254093adced4.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/Registration.o.d 
	@${RM} ${OBJECTDIR}/app/Registration.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/app/Registration.o.d" -o ${OBJECTDIR}/app/Registration.o app/Registration.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/app/AppMain.o: app/AppMain.c  .generated_files/afc617d571f68b970c444c256a6964ee9fdd45b1.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/AppMain.o.d 
	@${RM} ${OBJECTDIR}/app/AppMain.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/app/AppMain.o.d" -o ${OBJECTDIR}/app/AppMain.o app/AppMain.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/SRAM_Emulator.o: app/SRAM_Emulator.c  .generated_files/9354900077b404adee7dfffcf1767af8f9c3b3b7.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/SRAM_Emulator.o.d 
	@${RM} ${OBJECTDIR}/app/SRAM_Emulator.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/app/SRAM_Emulator.o.d" -o ${OBJECTDIR}/app/SRAM_Emulator.o app/SRAM_Emulator.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/libcomp.o: app/libcomp.c  .generated_files/81b9443fd627e6d9d46168e2e0ef3975f0e15b7c.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/libcomp.o.d 
	@${RM} ${OBJECTDIR}/app/libcomp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/app/libcomp.o.d" -o ${OBJECTDIR}/app/libcomp.o app/libcomp.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/config/user_usb_device_descriptors.o: config/user_usb_device_descriptors.c  .generated_files/aba26edbbbe8f896b0e0d05001bdcf36f74d258c.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/config" 
	@${RM} ${OBJECTDIR}/config/user_usb_device_descriptors.o.d 
	@${RM} ${OBJECTDIR}/config/user_usb_device_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/config/user_usb_device_descriptors.o.d" -o ${OBJECTDIR}/config/user_usb_device_descriptors.o config/user_usb_device_descriptors.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1353568322/ButtonApi.o: ../Library/buttons/ButtonApi.c  .generated_files/f3c299dcd46df9a49400d98ccde616963bd90f79.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1353568322" 
	@${RM} ${OBJECTDIR}/_ext/1353568322/ButtonApi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1353568322/ButtonApi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1353568322/ButtonApi.o.d" -o ${OBJECTDIR}/_ext/1353568322/ButtonApi.o ../Library/buttons/ButtonApi.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1353568322/Buttons.o: ../Library/buttons/Buttons.c  .generated_files/a2f57393dbb334acc446f0617d331330bec52444.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1353568322" 
	@${RM} ${OBJECTDIR}/_ext/1353568322/Buttons.o.d 
	@${RM} ${OBJECTDIR}/_ext/1353568322/Buttons.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1353568322/Buttons.o.d" -o ${OBJECTDIR}/_ext/1353568322/Buttons.o ../Library/buttons/Buttons.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/RingBuffer.o: ../Library/common/RingBuffer.c  .generated_files/1badc917cdee3b0ae901af2538b61fdfa47cc577.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/RingBuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/RingBuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/RingBuffer.o.d" -o ${OBJECTDIR}/_ext/1129169394/RingBuffer.o ../Library/common/RingBuffer.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/UserFunctions.o: ../Library/common/UserFunctions.c  .generated_files/dba274de4672deaee1a31e95b160f8e8c10d2f5.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d" -o ${OBJECTDIR}/_ext/1129169394/UserFunctions.o ../Library/common/UserFunctions.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1048860731/files_lite.o: ../Library/fileio/files_lite.c  .generated_files/1118253db2f2cbf75835c89cebeb6d534ed16316.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1048860731" 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o.d 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1048860731/files_lite.o.d" -o ${OBJECTDIR}/_ext/1048860731/files_lite.o ../Library/fileio/files_lite.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/127659252/Indicator.o: ../Library/indicator/Indicator.c  .generated_files/d9b8ee8037cedeee15dd458ddb620f4992ff8423.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/127659252" 
	@${RM} ${OBJECTDIR}/_ext/127659252/Indicator.o.d 
	@${RM} ${OBJECTDIR}/_ext/127659252/Indicator.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/127659252/Indicator.o.d" -o ${OBJECTDIR}/_ext/127659252/Indicator.o ../Library/indicator/Indicator.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit.o: ../Library/kit/kit.c  .generated_files/f779bc4015b2d150256115d879c51731fe90f98f.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit.o.d" -o ${OBJECTDIR}/_ext/436516243/kit.o ../Library/kit/kit.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device.o: ../Library/kit/kit_usb_device.c  .generated_files/139fb7b29c201e70a50e969b559ad4392a36d562.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device.o ../Library/kit/kit_usb_device.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o: ../Library/kit/kit_usb_device_cdc.c  .generated_files/cf27525f9718bd987ef15578a1043b880db7c144.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o ../Library/kit/kit_usb_device_cdc.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o: ../Library/kit/kit_usb_device_msd.c  .generated_files/24617b7fe90910c446e221ab9ae6134935a53c27.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o ../Library/kit/kit_usb_device_msd.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/HexParsing.o: ../Library/programmer/HexParsing.c  .generated_files/b4d36634b5d06de12abb6ab4839f71c244c8def3.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/HexParsing.o.d" -o ${OBJECTDIR}/_ext/967316345/HexParsing.o ../Library/programmer/HexParsing.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/Icsp.o: ../Library/programmer/Icsp.c  .generated_files/7ea69e4a8157170239048282680019505be01d3a.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/Icsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/Icsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/Icsp.o.d" -o ${OBJECTDIR}/_ext/967316345/Icsp.o ../Library/programmer/Icsp.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o: ../Library/programmer/ICSP_FileIO.c  .generated_files/5bcbe798b118dc891ff97200b2199aa6ac8506a2.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o.d" -o ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o ../Library/programmer/ICSP_FileIO.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o: ../Library/programmer/ICSP_PIC16F188XX.c  .generated_files/efc8b61e180532f175c5fe1ec984d29a0b454140.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o.d" -o ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o ../Library/programmer/ICSP_PIC16F188XX.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TaskManager.o: ../Library/system/TaskManager.c  .generated_files/ccb6714610e3a4498f17367b7f4c2e9449ba5b39.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TaskManager.o.d" -o ${OBJECTDIR}/_ext/661682606/TaskManager.o ../Library/system/TaskManager.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TickCounter.o: ../Library/system/TickCounter.c  .generated_files/f8b7453bd6124a545e2994557a362f331797f5e8.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickCounter.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickCounter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TickCounter.o.d" -o ${OBJECTDIR}/_ext/661682606/TickCounter.o ../Library/system/TickCounter.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TickTimer.o: ../Library/system/TickTimer.c  .generated_files/5c78c0099f23899891a7fd3d92ff1c52dabd03e9.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TickTimer.o.d" -o ${OBJECTDIR}/_ext/661682606/TickTimer.o ../Library/system/TickTimer.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/Wdt.o: ../Library/system/Wdt.c  .generated_files/70928ccab03918b21be9cfdb4717b4023f61c0df.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/Wdt.o.d" -o ${OBJECTDIR}/_ext/661682606/Wdt.o ../Library/system/Wdt.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_cdc.o: ../Library/usb/usb_device_cdc.c  .generated_files/16808f521a2ccd23d6fb326196407c630892206e.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o ../Library/usb/usb_device_cdc.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_msd.o: ../Library/usb/usb_device_msd.c  .generated_files/571926ff91ad7940406edfcdc7d206f55bf117e4.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_msd.o ../Library/usb/usb_device_msd.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/user_usb_device_events.o: ../Library/usb/user_usb_device_events.c  .generated_files/2d2b70efdc0716437427271be70a5bad6af5cca4.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d" -o ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o ../Library/usb/user_usb_device_events.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/e3e34a74dd981992d33139a5111cf21e20a0f37c.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/362a11aa721afd86216ab9ce9df697b700710c8d.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/927bf4e4ad3d7098fd93fb24dfdb77546c88fcef.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/cbdd7569405db5c100ae40625a24dd7b3bd56f4c.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart2.o mcc_generated_files/uart2.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/4b48648a6e3913069704b58043e1c9925a175bce.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/33aef96a47b61e5d187203218e108d7229d59ae4.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/exceptions.o: mcc_generated_files/exceptions.c  .generated_files/3063f2705464800c35420b3d29d4b63fb7650d72.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/exceptions.o.d" -o ${OBJECTDIR}/mcc_generated_files/exceptions.o mcc_generated_files/exceptions.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/847eb0c6b2d77c1d929c35b79d9da7cc3cc2e40f.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/coretimer.o: mcc_generated_files/coretimer.c  .generated_files/3a16683f417b9f8318907473817de6ad34ed0348.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/coretimer.o.d" -o ${OBJECTDIR}/mcc_generated_files/coretimer.o mcc_generated_files/coretimer.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/i2c1.o: mcc_generated_files/i2c1.c  .generated_files/35358e9680de3e4b83359573be5519fb888a55ad.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1.o.d" -o ${OBJECTDIR}/mcc_generated_files/i2c1.o mcc_generated_files/i2c1.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/e3796e769cdd33265a2a81a8157d24c2195f18a6.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.c  .generated_files/a11c55b0caa3be7e583f2fbb07518bc10a2a891d.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o mcc_generated_files/memory/flash.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/Registration.o: app/Registration.c  .generated_files/8922efc5a864d2c945f28a19cf5ea108e79d6427.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/Registration.o.d 
	@${RM} ${OBJECTDIR}/app/Registration.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/app/Registration.o.d" -o ${OBJECTDIR}/app/Registration.o app/Registration.c    -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/PG_APP.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_app_release=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
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
