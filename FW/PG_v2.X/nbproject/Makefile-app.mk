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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PG_v2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PG_v2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=cfg/app/user_usb_device_descriptors.c ../Library/buttons/ButtonApi.c ../Library/buttons/Buttons.c ../Library/common/RingBuffer.c ../Library/common/UserFunctions.c ../Library/fileio/files_lite.c ../Library/indicator/Indicator.c ../Library/kit/kit.c ../Library/kit/kit_usb_device.c ../Library/kit/kit_usb_device_cdc.c ../Library/kit/kit_usb_device_msd.c ../Library/programmer/HexParsing.c ../Library/programmer/Icsp.c ../Library/programmer/ICSP_FileIO.c ../Library/programmer/ICSP_PIC16F188XX.c ../Library/system/TaskManager.c ../Library/system/TickCounter.c ../Library/system/TickTimer.c ../Library/system/Wdt.c ../Library/usb/usb_device_cdc.c ../Library/usb/usb_device_msd.c ../Library/usb/user_usb_device_events.c mcc_generated_files/memory/flash.c mcc_generated_files/usb/usb_device.c mcc_generated_files/i2c1.c mcc_generated_files/interrupt_manager.c mcc_generated_files/exceptions.c mcc_generated_files/uart2.c mcc_generated_files/clock.c mcc_generated_files/coretimer.c mcc_generated_files/mcc.c mcc_generated_files/system.c mcc_generated_files/pin_manager.c user/app/SRAM_Emulator.c user/app/libcomp.c user/app/AppMain.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/cfg/app/user_usb_device_descriptors.o ${OBJECTDIR}/_ext/1353568322/ButtonApi.o ${OBJECTDIR}/_ext/1353568322/Buttons.o ${OBJECTDIR}/_ext/1129169394/RingBuffer.o ${OBJECTDIR}/_ext/1129169394/UserFunctions.o ${OBJECTDIR}/_ext/1048860731/files_lite.o ${OBJECTDIR}/_ext/127659252/Indicator.o ${OBJECTDIR}/_ext/436516243/kit.o ${OBJECTDIR}/_ext/436516243/kit_usb_device.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o ${OBJECTDIR}/_ext/967316345/HexParsing.o ${OBJECTDIR}/_ext/967316345/Icsp.o ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o ${OBJECTDIR}/_ext/661682606/TaskManager.o ${OBJECTDIR}/_ext/661682606/TickCounter.o ${OBJECTDIR}/_ext/661682606/TickTimer.o ${OBJECTDIR}/_ext/661682606/Wdt.o ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o ${OBJECTDIR}/_ext/436526145/usb_device_msd.o ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o ${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/i2c1.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/exceptions.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/coretimer.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/user/app/SRAM_Emulator.o ${OBJECTDIR}/user/app/libcomp.o ${OBJECTDIR}/user/app/AppMain.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/cfg/app/user_usb_device_descriptors.o.d ${OBJECTDIR}/_ext/1353568322/ButtonApi.o.d ${OBJECTDIR}/_ext/1353568322/Buttons.o.d ${OBJECTDIR}/_ext/1129169394/RingBuffer.o.d ${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d ${OBJECTDIR}/_ext/1048860731/files_lite.o.d ${OBJECTDIR}/_ext/127659252/Indicator.o.d ${OBJECTDIR}/_ext/436516243/kit.o.d ${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o.d ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d ${OBJECTDIR}/_ext/967316345/HexParsing.o.d ${OBJECTDIR}/_ext/967316345/Icsp.o.d ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o.d ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o.d ${OBJECTDIR}/_ext/661682606/TaskManager.o.d ${OBJECTDIR}/_ext/661682606/TickCounter.o.d ${OBJECTDIR}/_ext/661682606/TickTimer.o.d ${OBJECTDIR}/_ext/661682606/Wdt.o.d ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o.d ${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d ${OBJECTDIR}/mcc_generated_files/i2c1.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/exceptions.o.d ${OBJECTDIR}/mcc_generated_files/uart2.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/coretimer.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/user/app/SRAM_Emulator.o.d ${OBJECTDIR}/user/app/libcomp.o.d ${OBJECTDIR}/user/app/AppMain.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/cfg/app/user_usb_device_descriptors.o ${OBJECTDIR}/_ext/1353568322/ButtonApi.o ${OBJECTDIR}/_ext/1353568322/Buttons.o ${OBJECTDIR}/_ext/1129169394/RingBuffer.o ${OBJECTDIR}/_ext/1129169394/UserFunctions.o ${OBJECTDIR}/_ext/1048860731/files_lite.o ${OBJECTDIR}/_ext/127659252/Indicator.o ${OBJECTDIR}/_ext/436516243/kit.o ${OBJECTDIR}/_ext/436516243/kit_usb_device.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o ${OBJECTDIR}/_ext/967316345/HexParsing.o ${OBJECTDIR}/_ext/967316345/Icsp.o ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o ${OBJECTDIR}/_ext/661682606/TaskManager.o ${OBJECTDIR}/_ext/661682606/TickCounter.o ${OBJECTDIR}/_ext/661682606/TickTimer.o ${OBJECTDIR}/_ext/661682606/Wdt.o ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o ${OBJECTDIR}/_ext/436526145/usb_device_msd.o ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o ${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/i2c1.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/exceptions.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/coretimer.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/user/app/SRAM_Emulator.o ${OBJECTDIR}/user/app/libcomp.o ${OBJECTDIR}/user/app/AppMain.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=cfg/app/user_usb_device_descriptors.c ../Library/buttons/ButtonApi.c ../Library/buttons/Buttons.c ../Library/common/RingBuffer.c ../Library/common/UserFunctions.c ../Library/fileio/files_lite.c ../Library/indicator/Indicator.c ../Library/kit/kit.c ../Library/kit/kit_usb_device.c ../Library/kit/kit_usb_device_cdc.c ../Library/kit/kit_usb_device_msd.c ../Library/programmer/HexParsing.c ../Library/programmer/Icsp.c ../Library/programmer/ICSP_FileIO.c ../Library/programmer/ICSP_PIC16F188XX.c ../Library/system/TaskManager.c ../Library/system/TickCounter.c ../Library/system/TickTimer.c ../Library/system/Wdt.c ../Library/usb/usb_device_cdc.c ../Library/usb/usb_device_msd.c ../Library/usb/user_usb_device_events.c mcc_generated_files/memory/flash.c mcc_generated_files/usb/usb_device.c mcc_generated_files/i2c1.c mcc_generated_files/interrupt_manager.c mcc_generated_files/exceptions.c mcc_generated_files/uart2.c mcc_generated_files/clock.c mcc_generated_files/coretimer.c mcc_generated_files/mcc.c mcc_generated_files/system.c mcc_generated_files/pin_manager.c user/app/SRAM_Emulator.c user/app/libcomp.c user/app/AppMain.c main.c



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
ProjectDir="H:\PIC16FDevKit\FW\PG_v2.X"
ProjectName=PG_v2
ConfName=app
ImagePath="dist\app\${IMAGE_TYPE}\PG_v2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="dist\app\${IMAGE_TYPE}"
ImageName="PG_v2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-app.mk dist/${CND_CONF}/${IMAGE_TYPE}/PG_v2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
${OBJECTDIR}/cfg/app/user_usb_device_descriptors.o: cfg/app/user_usb_device_descriptors.c  .generated_files/flags/app/b080a3b5976813db447ab5c770019af3780d5598 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/cfg/app" 
	@${RM} ${OBJECTDIR}/cfg/app/user_usb_device_descriptors.o.d 
	@${RM} ${OBJECTDIR}/cfg/app/user_usb_device_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/cfg/app/user_usb_device_descriptors.o.d" -o ${OBJECTDIR}/cfg/app/user_usb_device_descriptors.o cfg/app/user_usb_device_descriptors.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1353568322/ButtonApi.o: ../Library/buttons/ButtonApi.c  .generated_files/flags/app/fce5e350baf676ece399fa149531e287c2e05b55 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/1353568322" 
	@${RM} ${OBJECTDIR}/_ext/1353568322/ButtonApi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1353568322/ButtonApi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1353568322/ButtonApi.o.d" -o ${OBJECTDIR}/_ext/1353568322/ButtonApi.o ../Library/buttons/ButtonApi.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1353568322/Buttons.o: ../Library/buttons/Buttons.c  .generated_files/flags/app/96ada6d4ab308b2d12a3c85c65d236d4be954bc6 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/1353568322" 
	@${RM} ${OBJECTDIR}/_ext/1353568322/Buttons.o.d 
	@${RM} ${OBJECTDIR}/_ext/1353568322/Buttons.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1353568322/Buttons.o.d" -o ${OBJECTDIR}/_ext/1353568322/Buttons.o ../Library/buttons/Buttons.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/RingBuffer.o: ../Library/common/RingBuffer.c  .generated_files/flags/app/67e42dc4e2b423e83c11b48037d6232d9979b1f7 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/RingBuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/RingBuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/RingBuffer.o.d" -o ${OBJECTDIR}/_ext/1129169394/RingBuffer.o ../Library/common/RingBuffer.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/UserFunctions.o: ../Library/common/UserFunctions.c  .generated_files/flags/app/d6d812b9ed950d4b3dd9d40355ec7102c7d07f8f .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d" -o ${OBJECTDIR}/_ext/1129169394/UserFunctions.o ../Library/common/UserFunctions.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1048860731/files_lite.o: ../Library/fileio/files_lite.c  .generated_files/flags/app/ac9740c384459a6321cd1f29ff12f5bd6459fcea .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/1048860731" 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o.d 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1048860731/files_lite.o.d" -o ${OBJECTDIR}/_ext/1048860731/files_lite.o ../Library/fileio/files_lite.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/127659252/Indicator.o: ../Library/indicator/Indicator.c  .generated_files/flags/app/a8293bbf8d759ddaea9a39614f957b67ea32f21b .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/127659252" 
	@${RM} ${OBJECTDIR}/_ext/127659252/Indicator.o.d 
	@${RM} ${OBJECTDIR}/_ext/127659252/Indicator.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/127659252/Indicator.o.d" -o ${OBJECTDIR}/_ext/127659252/Indicator.o ../Library/indicator/Indicator.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit.o: ../Library/kit/kit.c  .generated_files/flags/app/1fd69d49095fd7751cbb19f179d4d94123a10965 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit.o.d" -o ${OBJECTDIR}/_ext/436516243/kit.o ../Library/kit/kit.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device.o: ../Library/kit/kit_usb_device.c  .generated_files/flags/app/b5b6b5029a5365f63dce1aed329603897c432b95 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device.o ../Library/kit/kit_usb_device.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o: ../Library/kit/kit_usb_device_cdc.c  .generated_files/flags/app/f62d25112e16df125cebbacf582fe379154aeb19 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o ../Library/kit/kit_usb_device_cdc.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o: ../Library/kit/kit_usb_device_msd.c  .generated_files/flags/app/8f8cda61b37fd8c75514e81f42f8e147ee41145d .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o ../Library/kit/kit_usb_device_msd.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/HexParsing.o: ../Library/programmer/HexParsing.c  .generated_files/flags/app/b0ceafd6d758696cea325447efcb9b98f8277000 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/HexParsing.o.d" -o ${OBJECTDIR}/_ext/967316345/HexParsing.o ../Library/programmer/HexParsing.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/Icsp.o: ../Library/programmer/Icsp.c  .generated_files/flags/app/d96b1f230f6588d3e3a3ba53f539508b665d32ca .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/Icsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/Icsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/Icsp.o.d" -o ${OBJECTDIR}/_ext/967316345/Icsp.o ../Library/programmer/Icsp.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o: ../Library/programmer/ICSP_FileIO.c  .generated_files/flags/app/62c46c92a54df9b097a59236cd60d1eb6826a7e1 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o.d" -o ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o ../Library/programmer/ICSP_FileIO.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o: ../Library/programmer/ICSP_PIC16F188XX.c  .generated_files/flags/app/c5ac4cd097cac113c6322e281d3f50d39bf11737 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o.d" -o ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o ../Library/programmer/ICSP_PIC16F188XX.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TaskManager.o: ../Library/system/TaskManager.c  .generated_files/flags/app/7e09fbb87d59ce719276df0311a86c59f0835ccb .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TaskManager.o.d" -o ${OBJECTDIR}/_ext/661682606/TaskManager.o ../Library/system/TaskManager.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TickCounter.o: ../Library/system/TickCounter.c  .generated_files/flags/app/8f59ea8f9c53e40c342d765766a40a7fd0dadff7 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickCounter.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickCounter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TickCounter.o.d" -o ${OBJECTDIR}/_ext/661682606/TickCounter.o ../Library/system/TickCounter.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TickTimer.o: ../Library/system/TickTimer.c  .generated_files/flags/app/69dc184e37d705537cc9d208ddf1561e38819920 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TickTimer.o.d" -o ${OBJECTDIR}/_ext/661682606/TickTimer.o ../Library/system/TickTimer.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/Wdt.o: ../Library/system/Wdt.c  .generated_files/flags/app/90aeffbd916a1a7074246653b4413004ab0306f .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/Wdt.o.d" -o ${OBJECTDIR}/_ext/661682606/Wdt.o ../Library/system/Wdt.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_cdc.o: ../Library/usb/usb_device_cdc.c  .generated_files/flags/app/15092264753ba088b22147cf419b09e2c6c90018 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o ../Library/usb/usb_device_cdc.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_msd.o: ../Library/usb/usb_device_msd.c  .generated_files/flags/app/f2c9942627543c24c93b1497a76dd58eba54c64d .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_msd.o ../Library/usb/usb_device_msd.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/user_usb_device_events.o: ../Library/usb/user_usb_device_events.c  .generated_files/flags/app/4c2bb7ff148a1192fc3635a815fd48b593ed998e .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d" -o ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o ../Library/usb/user_usb_device_events.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.c  .generated_files/flags/app/75024326f680a69c1130b3cb5e1d6042c59d7091 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o mcc_generated_files/memory/flash.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/flags/app/dab2e7a24a445b924b7fe43cd8a552a973295b61 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/i2c1.o: mcc_generated_files/i2c1.c  .generated_files/flags/app/1b0e59058779509c201ab5fcef0a37b034acb182 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1.o.d" -o ${OBJECTDIR}/mcc_generated_files/i2c1.o mcc_generated_files/i2c1.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/app/4626c0974df0840abe9ac8c7ea13439a675a2ad4 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/exceptions.o: mcc_generated_files/exceptions.c  .generated_files/flags/app/d1315483e689866f8039e0f720b0c2c09f248656 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/exceptions.o.d" -o ${OBJECTDIR}/mcc_generated_files/exceptions.o mcc_generated_files/exceptions.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/flags/app/c303edd7085d3c9698228f5ad0ad96b711699697 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart2.o mcc_generated_files/uart2.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/app/f8bfe68433c9b332552520b8d257a97b372a7fc1 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/coretimer.o: mcc_generated_files/coretimer.c  .generated_files/flags/app/8dd91b9293b016fe91aa4caa30127851ef52bc84 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/coretimer.o.d" -o ${OBJECTDIR}/mcc_generated_files/coretimer.o mcc_generated_files/coretimer.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/app/e3884bd5515f0bd78965f03c9b846d008a4ed7da .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/app/25b6f54707eb403c71c463132f059bbb2dc4971e .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/app/6b3cc206116c9b88bc1b4d631b636c26885a8c21 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/user/app/SRAM_Emulator.o: user/app/SRAM_Emulator.c  .generated_files/flags/app/bebf9eb6eed164a000c4598a1b21c8f287c473be .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/user/app" 
	@${RM} ${OBJECTDIR}/user/app/SRAM_Emulator.o.d 
	@${RM} ${OBJECTDIR}/user/app/SRAM_Emulator.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/user/app/SRAM_Emulator.o.d" -o ${OBJECTDIR}/user/app/SRAM_Emulator.o user/app/SRAM_Emulator.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/user/app/libcomp.o: user/app/libcomp.c  .generated_files/flags/app/94ac12747af4ab9f08dc66288b37dd27416ff7b8 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/user/app" 
	@${RM} ${OBJECTDIR}/user/app/libcomp.o.d 
	@${RM} ${OBJECTDIR}/user/app/libcomp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/user/app/libcomp.o.d" -o ${OBJECTDIR}/user/app/libcomp.o user/app/libcomp.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/user/app/AppMain.o: user/app/AppMain.c  .generated_files/flags/app/d5e3e31b9c48603c491c112fa9ac0d7f4b5ff651 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/user/app" 
	@${RM} ${OBJECTDIR}/user/app/AppMain.o.d 
	@${RM} ${OBJECTDIR}/user/app/AppMain.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/user/app/AppMain.o.d" -o ${OBJECTDIR}/user/app/AppMain.o user/app/AppMain.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/app/5bf54d599153df74f9c701f00f7813dc88cc01a .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/cfg/app/user_usb_device_descriptors.o: cfg/app/user_usb_device_descriptors.c  .generated_files/flags/app/2f34186316069e46d10a35e9ea7d5f5ac6d3c0f8 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/cfg/app" 
	@${RM} ${OBJECTDIR}/cfg/app/user_usb_device_descriptors.o.d 
	@${RM} ${OBJECTDIR}/cfg/app/user_usb_device_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/cfg/app/user_usb_device_descriptors.o.d" -o ${OBJECTDIR}/cfg/app/user_usb_device_descriptors.o cfg/app/user_usb_device_descriptors.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1353568322/ButtonApi.o: ../Library/buttons/ButtonApi.c  .generated_files/flags/app/8950af43307f3ffcdfca9e4dff981aeb654c4e17 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/1353568322" 
	@${RM} ${OBJECTDIR}/_ext/1353568322/ButtonApi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1353568322/ButtonApi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1353568322/ButtonApi.o.d" -o ${OBJECTDIR}/_ext/1353568322/ButtonApi.o ../Library/buttons/ButtonApi.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1353568322/Buttons.o: ../Library/buttons/Buttons.c  .generated_files/flags/app/818f507aa1eb8160672c6ca509a9350af2d033a0 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/1353568322" 
	@${RM} ${OBJECTDIR}/_ext/1353568322/Buttons.o.d 
	@${RM} ${OBJECTDIR}/_ext/1353568322/Buttons.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1353568322/Buttons.o.d" -o ${OBJECTDIR}/_ext/1353568322/Buttons.o ../Library/buttons/Buttons.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/RingBuffer.o: ../Library/common/RingBuffer.c  .generated_files/flags/app/a49e691c1fe76b56108dae5dad2f26c24d8a0f2a .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/RingBuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/RingBuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/RingBuffer.o.d" -o ${OBJECTDIR}/_ext/1129169394/RingBuffer.o ../Library/common/RingBuffer.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/UserFunctions.o: ../Library/common/UserFunctions.c  .generated_files/flags/app/1238c256ff63df414ef3d9e904e165d1a74210f6 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d" -o ${OBJECTDIR}/_ext/1129169394/UserFunctions.o ../Library/common/UserFunctions.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1048860731/files_lite.o: ../Library/fileio/files_lite.c  .generated_files/flags/app/2e1237a7a66519c05c229a0eeecacb04428f3e68 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/1048860731" 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o.d 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1048860731/files_lite.o.d" -o ${OBJECTDIR}/_ext/1048860731/files_lite.o ../Library/fileio/files_lite.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/127659252/Indicator.o: ../Library/indicator/Indicator.c  .generated_files/flags/app/f187cd53bb6e5992f14e603683daa8e288abe864 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/127659252" 
	@${RM} ${OBJECTDIR}/_ext/127659252/Indicator.o.d 
	@${RM} ${OBJECTDIR}/_ext/127659252/Indicator.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/127659252/Indicator.o.d" -o ${OBJECTDIR}/_ext/127659252/Indicator.o ../Library/indicator/Indicator.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit.o: ../Library/kit/kit.c  .generated_files/flags/app/6b64a8a87c356a7d5e0dd4155e3486faee03743e .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit.o.d" -o ${OBJECTDIR}/_ext/436516243/kit.o ../Library/kit/kit.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device.o: ../Library/kit/kit_usb_device.c  .generated_files/flags/app/e74c78f733bda6d23fe5da2a71f0feb7c5551787 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device.o ../Library/kit/kit_usb_device.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o: ../Library/kit/kit_usb_device_cdc.c  .generated_files/flags/app/d426c00e2bfb188e63835cbec921558faeb23ac5 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o ../Library/kit/kit_usb_device_cdc.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o: ../Library/kit/kit_usb_device_msd.c  .generated_files/flags/app/b93c239bbf4c1815b22cc8923612828ac9f6cabc .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o ../Library/kit/kit_usb_device_msd.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/HexParsing.o: ../Library/programmer/HexParsing.c  .generated_files/flags/app/228f3ddef4c173aaab71435bc252448be529b5e6 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/HexParsing.o.d" -o ${OBJECTDIR}/_ext/967316345/HexParsing.o ../Library/programmer/HexParsing.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/Icsp.o: ../Library/programmer/Icsp.c  .generated_files/flags/app/ecb54bf6d0c8ea811c0d8a97589f6bc0c9789a7a .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/Icsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/Icsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/Icsp.o.d" -o ${OBJECTDIR}/_ext/967316345/Icsp.o ../Library/programmer/Icsp.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o: ../Library/programmer/ICSP_FileIO.c  .generated_files/flags/app/a33d5069b0cb4eed1b6abc8a165c6813bc65d76a .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o.d" -o ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o ../Library/programmer/ICSP_FileIO.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o: ../Library/programmer/ICSP_PIC16F188XX.c  .generated_files/flags/app/16842b25986b0e240f1af59e81e3058dabc2a743 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o.d" -o ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o ../Library/programmer/ICSP_PIC16F188XX.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TaskManager.o: ../Library/system/TaskManager.c  .generated_files/flags/app/2145df64e39a4656a43b6087c2258832fa99d5d7 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TaskManager.o.d" -o ${OBJECTDIR}/_ext/661682606/TaskManager.o ../Library/system/TaskManager.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TickCounter.o: ../Library/system/TickCounter.c  .generated_files/flags/app/19a9fcd218706f980155fa83d822154e6fb4e4c0 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickCounter.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickCounter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TickCounter.o.d" -o ${OBJECTDIR}/_ext/661682606/TickCounter.o ../Library/system/TickCounter.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TickTimer.o: ../Library/system/TickTimer.c  .generated_files/flags/app/d98145eda1fbf3630b96c5421674b3fd34e33bff .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TickTimer.o.d" -o ${OBJECTDIR}/_ext/661682606/TickTimer.o ../Library/system/TickTimer.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/Wdt.o: ../Library/system/Wdt.c  .generated_files/flags/app/3fee65c18d22923a8ed8b9d6a3d70187580095b2 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/Wdt.o.d" -o ${OBJECTDIR}/_ext/661682606/Wdt.o ../Library/system/Wdt.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_cdc.o: ../Library/usb/usb_device_cdc.c  .generated_files/flags/app/f2c51cbdfab61bd2b3a7cada108f64247dfd32a4 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o ../Library/usb/usb_device_cdc.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_msd.o: ../Library/usb/usb_device_msd.c  .generated_files/flags/app/ee21ceb7aefa715629926c47d2ca145ad0d26551 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_msd.o ../Library/usb/usb_device_msd.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/user_usb_device_events.o: ../Library/usb/user_usb_device_events.c  .generated_files/flags/app/2a14b2d5d40a46eaf07995e9c1228ff2507fc30d .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d" -o ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o ../Library/usb/user_usb_device_events.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.c  .generated_files/flags/app/c375ee5c474aa1892bf61122ffe7ecb08cd084c .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o mcc_generated_files/memory/flash.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/flags/app/f67abcb7d6139a2ffe7f39f54dd61b2da78d6b49 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/i2c1.o: mcc_generated_files/i2c1.c  .generated_files/flags/app/c51bc4b5d80aa79882381aadf1a40b374536af64 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1.o.d" -o ${OBJECTDIR}/mcc_generated_files/i2c1.o mcc_generated_files/i2c1.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/app/6e37d866b5d3d0a80ef68d3aa79f5fa738c1ec2 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/exceptions.o: mcc_generated_files/exceptions.c  .generated_files/flags/app/a173aa82e38a1ca7fbc4c5e508985f5b1fb6ece1 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/exceptions.o.d" -o ${OBJECTDIR}/mcc_generated_files/exceptions.o mcc_generated_files/exceptions.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/flags/app/e52ed1a84832dd066fc8bb7ce5e17383bcd9a40 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart2.o mcc_generated_files/uart2.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/app/7a74ee18f8cbfef030b09116c9893e6d364c3191 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/coretimer.o: mcc_generated_files/coretimer.c  .generated_files/flags/app/7dcdc93fc860d9f2ed6cecb1c51aaf2f65207fe5 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/coretimer.o.d" -o ${OBJECTDIR}/mcc_generated_files/coretimer.o mcc_generated_files/coretimer.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/app/d4ebaf94098bcdb9721c393696aa06f4f1de95dd .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/app/6e6d81c9535f4fc1e57db70de0f2d522ef08e995 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/app/55c857369458f873d8be685bf6fec91131d5213f .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/user/app/SRAM_Emulator.o: user/app/SRAM_Emulator.c  .generated_files/flags/app/4b0981358ae4606960201bc55bf633c1d8251553 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/user/app" 
	@${RM} ${OBJECTDIR}/user/app/SRAM_Emulator.o.d 
	@${RM} ${OBJECTDIR}/user/app/SRAM_Emulator.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/user/app/SRAM_Emulator.o.d" -o ${OBJECTDIR}/user/app/SRAM_Emulator.o user/app/SRAM_Emulator.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/user/app/libcomp.o: user/app/libcomp.c  .generated_files/flags/app/f5c00c22b56cb73005d2e31fd5b404a14895c674 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/user/app" 
	@${RM} ${OBJECTDIR}/user/app/libcomp.o.d 
	@${RM} ${OBJECTDIR}/user/app/libcomp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/user/app/libcomp.o.d" -o ${OBJECTDIR}/user/app/libcomp.o user/app/libcomp.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/user/app/AppMain.o: user/app/AppMain.c  .generated_files/flags/app/14224f1d0644bcc117f387cee7b1e71a6f393368 .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
	@${MKDIR} "${OBJECTDIR}/user/app" 
	@${RM} ${OBJECTDIR}/user/app/AppMain.o.d 
	@${RM} ${OBJECTDIR}/user/app/AppMain.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/user/app/AppMain.o.d" -o ${OBJECTDIR}/user/app/AppMain.o user/app/AppMain.c    -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/app/3e2834cca6e3cecd98cc04b8d7807d1011de0f3f .generated_files/flags/app/8b8147b2c6f573564be26c315874735fd7adbda7
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
dist/${CND_CONF}/${IMAGE_TYPE}/PG_v2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../Library/bootloader/Linker/p32MM0064GPM028/App.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/PG_v2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC00490:0x1FC016FF -mreserve=boot@0x1FC00490:0x1FC00BEF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--cref,--warn-section-align,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/PG_v2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../Library/bootloader/Linker/p32MM0064GPM028/App.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/PG_v2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_app=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--cref,--warn-section-align,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/PG_v2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
	@echo Normalizing hex file
	@"C:/Program Files/Microchip/MPLABX/v5.50/mplab_platform/platform/../mplab_ide/modules/../../bin/hexmate" --edf="C:/Program Files/Microchip/MPLABX/v5.50/mplab_platform/platform/../mplab_ide/modules/../../dat/en_msgs.txt" dist/${CND_CONF}/${IMAGE_TYPE}/PG_v2.X.${IMAGE_TYPE}.hex -odist/${CND_CONF}/${IMAGE_TYPE}/PG_v2.X.${IMAGE_TYPE}.hex

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
