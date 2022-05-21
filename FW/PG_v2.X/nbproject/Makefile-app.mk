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
FINAL_IMAGE=${DISTDIR}/PG_v2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/PG_v2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=cfg/app/user_usb_device_descriptors.c cfg/app/Buttons_cfg.c cfg/app/Icsp_Cfg.c cfg/app/Indicator_Cfg.c cfg/app/ICSP_FileIO_Cfg.c ../Library/buttons/ButtonApi.c ../Library/buttons/Buttons.c ../Library/common/RingBuffer.c ../Library/common/UserFunctions.c ../Library/fileio/files_lite.c ../Library/indicator/Indicator.c ../Library/kit/kit.c ../Library/kit/kit_usb_device.c ../Library/kit/kit_usb_device_cdc.c ../Library/kit/kit_usb_device_msd.c ../Library/programmer/HexParsing.c ../Library/programmer/Icsp.c ../Library/programmer/ICSP_FileIO.c ../Library/programmer/ICSP_PIC16F188XX.c ../Library/system/TaskManager.c ../Library/system/TickCounter.c ../Library/system/TickTimer.c ../Library/system/Wdt.c ../Library/usb/usb_device_cdc.c ../Library/usb/usb_device_msd.c ../Library/usb/user_usb_device_events.c mcc_generated_files/memory/flash.c mcc_generated_files/usb/usb_device.c mcc_generated_files/i2c1.c mcc_generated_files/interrupt_manager.c mcc_generated_files/exceptions.c mcc_generated_files/uart2.c mcc_generated_files/clock.c mcc_generated_files/coretimer.c mcc_generated_files/mcc.c mcc_generated_files/system.c mcc_generated_files/pin_manager.c user/app/SRAM_Emulator.c user/app/libcomp.c user/app/AppMain.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/cfg/app/user_usb_device_descriptors.o ${OBJECTDIR}/cfg/app/Buttons_cfg.o ${OBJECTDIR}/cfg/app/Icsp_Cfg.o ${OBJECTDIR}/cfg/app/Indicator_Cfg.o ${OBJECTDIR}/cfg/app/ICSP_FileIO_Cfg.o ${OBJECTDIR}/_ext/1353568322/ButtonApi.o ${OBJECTDIR}/_ext/1353568322/Buttons.o ${OBJECTDIR}/_ext/1129169394/RingBuffer.o ${OBJECTDIR}/_ext/1129169394/UserFunctions.o ${OBJECTDIR}/_ext/1048860731/files_lite.o ${OBJECTDIR}/_ext/127659252/Indicator.o ${OBJECTDIR}/_ext/436516243/kit.o ${OBJECTDIR}/_ext/436516243/kit_usb_device.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o ${OBJECTDIR}/_ext/967316345/HexParsing.o ${OBJECTDIR}/_ext/967316345/Icsp.o ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o ${OBJECTDIR}/_ext/661682606/TaskManager.o ${OBJECTDIR}/_ext/661682606/TickCounter.o ${OBJECTDIR}/_ext/661682606/TickTimer.o ${OBJECTDIR}/_ext/661682606/Wdt.o ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o ${OBJECTDIR}/_ext/436526145/usb_device_msd.o ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o ${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/i2c1.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/exceptions.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/coretimer.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/user/app/SRAM_Emulator.o ${OBJECTDIR}/user/app/libcomp.o ${OBJECTDIR}/user/app/AppMain.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/cfg/app/user_usb_device_descriptors.o.d ${OBJECTDIR}/cfg/app/Buttons_cfg.o.d ${OBJECTDIR}/cfg/app/Icsp_Cfg.o.d ${OBJECTDIR}/cfg/app/Indicator_Cfg.o.d ${OBJECTDIR}/cfg/app/ICSP_FileIO_Cfg.o.d ${OBJECTDIR}/_ext/1353568322/ButtonApi.o.d ${OBJECTDIR}/_ext/1353568322/Buttons.o.d ${OBJECTDIR}/_ext/1129169394/RingBuffer.o.d ${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d ${OBJECTDIR}/_ext/1048860731/files_lite.o.d ${OBJECTDIR}/_ext/127659252/Indicator.o.d ${OBJECTDIR}/_ext/436516243/kit.o.d ${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o.d ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d ${OBJECTDIR}/_ext/967316345/HexParsing.o.d ${OBJECTDIR}/_ext/967316345/Icsp.o.d ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o.d ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o.d ${OBJECTDIR}/_ext/661682606/TaskManager.o.d ${OBJECTDIR}/_ext/661682606/TickCounter.o.d ${OBJECTDIR}/_ext/661682606/TickTimer.o.d ${OBJECTDIR}/_ext/661682606/Wdt.o.d ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o.d ${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d ${OBJECTDIR}/mcc_generated_files/i2c1.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/exceptions.o.d ${OBJECTDIR}/mcc_generated_files/uart2.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/coretimer.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/user/app/SRAM_Emulator.o.d ${OBJECTDIR}/user/app/libcomp.o.d ${OBJECTDIR}/user/app/AppMain.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/cfg/app/user_usb_device_descriptors.o ${OBJECTDIR}/cfg/app/Buttons_cfg.o ${OBJECTDIR}/cfg/app/Icsp_Cfg.o ${OBJECTDIR}/cfg/app/Indicator_Cfg.o ${OBJECTDIR}/cfg/app/ICSP_FileIO_Cfg.o ${OBJECTDIR}/_ext/1353568322/ButtonApi.o ${OBJECTDIR}/_ext/1353568322/Buttons.o ${OBJECTDIR}/_ext/1129169394/RingBuffer.o ${OBJECTDIR}/_ext/1129169394/UserFunctions.o ${OBJECTDIR}/_ext/1048860731/files_lite.o ${OBJECTDIR}/_ext/127659252/Indicator.o ${OBJECTDIR}/_ext/436516243/kit.o ${OBJECTDIR}/_ext/436516243/kit_usb_device.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o ${OBJECTDIR}/_ext/967316345/HexParsing.o ${OBJECTDIR}/_ext/967316345/Icsp.o ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o ${OBJECTDIR}/_ext/661682606/TaskManager.o ${OBJECTDIR}/_ext/661682606/TickCounter.o ${OBJECTDIR}/_ext/661682606/TickTimer.o ${OBJECTDIR}/_ext/661682606/Wdt.o ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o ${OBJECTDIR}/_ext/436526145/usb_device_msd.o ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o ${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/i2c1.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/exceptions.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/coretimer.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/user/app/SRAM_Emulator.o ${OBJECTDIR}/user/app/libcomp.o ${OBJECTDIR}/user/app/AppMain.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=cfg/app/user_usb_device_descriptors.c cfg/app/Buttons_cfg.c cfg/app/Icsp_Cfg.c cfg/app/Indicator_Cfg.c cfg/app/ICSP_FileIO_Cfg.c ../Library/buttons/ButtonApi.c ../Library/buttons/Buttons.c ../Library/common/RingBuffer.c ../Library/common/UserFunctions.c ../Library/fileio/files_lite.c ../Library/indicator/Indicator.c ../Library/kit/kit.c ../Library/kit/kit_usb_device.c ../Library/kit/kit_usb_device_cdc.c ../Library/kit/kit_usb_device_msd.c ../Library/programmer/HexParsing.c ../Library/programmer/Icsp.c ../Library/programmer/ICSP_FileIO.c ../Library/programmer/ICSP_PIC16F188XX.c ../Library/system/TaskManager.c ../Library/system/TickCounter.c ../Library/system/TickTimer.c ../Library/system/Wdt.c ../Library/usb/usb_device_cdc.c ../Library/usb/usb_device_msd.c ../Library/usb/user_usb_device_events.c mcc_generated_files/memory/flash.c mcc_generated_files/usb/usb_device.c mcc_generated_files/i2c1.c mcc_generated_files/interrupt_manager.c mcc_generated_files/exceptions.c mcc_generated_files/uart2.c mcc_generated_files/clock.c mcc_generated_files/coretimer.c mcc_generated_files/mcc.c mcc_generated_files/system.c mcc_generated_files/pin_manager.c user/app/SRAM_Emulator.c user/app/libcomp.c user/app/AppMain.c main.c



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
ImagePath="${DISTDIR}\PG_v2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="${DISTDIR}"
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
	${MAKE}  -f nbproject/Makefile-app.mk ${DISTDIR}/PG_v2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
${OBJECTDIR}/cfg/app/user_usb_device_descriptors.o: cfg/app/user_usb_device_descriptors.c  .generated_files/flags/app/4107ad30325ccef4a4ec321b359a1036c52cd37e .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/cfg/app" 
	@${RM} ${OBJECTDIR}/cfg/app/user_usb_device_descriptors.o.d 
	@${RM} ${OBJECTDIR}/cfg/app/user_usb_device_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/cfg/app/user_usb_device_descriptors.o.d" -o ${OBJECTDIR}/cfg/app/user_usb_device_descriptors.o cfg/app/user_usb_device_descriptors.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/cfg/app/Buttons_cfg.o: cfg/app/Buttons_cfg.c  .generated_files/flags/app/2f8c5680a0e25b9dc73868507526a1a4d8ce22f6 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/cfg/app" 
	@${RM} ${OBJECTDIR}/cfg/app/Buttons_cfg.o.d 
	@${RM} ${OBJECTDIR}/cfg/app/Buttons_cfg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/cfg/app/Buttons_cfg.o.d" -o ${OBJECTDIR}/cfg/app/Buttons_cfg.o cfg/app/Buttons_cfg.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/cfg/app/Icsp_Cfg.o: cfg/app/Icsp_Cfg.c  .generated_files/flags/app/d2b5b0e5f61f1d7ee1146b95ea78377b92beb227 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/cfg/app" 
	@${RM} ${OBJECTDIR}/cfg/app/Icsp_Cfg.o.d 
	@${RM} ${OBJECTDIR}/cfg/app/Icsp_Cfg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/cfg/app/Icsp_Cfg.o.d" -o ${OBJECTDIR}/cfg/app/Icsp_Cfg.o cfg/app/Icsp_Cfg.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/cfg/app/Indicator_Cfg.o: cfg/app/Indicator_Cfg.c  .generated_files/flags/app/2d6c921b854f62a4e70888995bc023e3a8bd06b2 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/cfg/app" 
	@${RM} ${OBJECTDIR}/cfg/app/Indicator_Cfg.o.d 
	@${RM} ${OBJECTDIR}/cfg/app/Indicator_Cfg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/cfg/app/Indicator_Cfg.o.d" -o ${OBJECTDIR}/cfg/app/Indicator_Cfg.o cfg/app/Indicator_Cfg.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/cfg/app/ICSP_FileIO_Cfg.o: cfg/app/ICSP_FileIO_Cfg.c  .generated_files/flags/app/246efbebe90db3a215c2be4b9190dab27a8c008d .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/cfg/app" 
	@${RM} ${OBJECTDIR}/cfg/app/ICSP_FileIO_Cfg.o.d 
	@${RM} ${OBJECTDIR}/cfg/app/ICSP_FileIO_Cfg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/cfg/app/ICSP_FileIO_Cfg.o.d" -o ${OBJECTDIR}/cfg/app/ICSP_FileIO_Cfg.o cfg/app/ICSP_FileIO_Cfg.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1353568322/ButtonApi.o: ../Library/buttons/ButtonApi.c  .generated_files/flags/app/ccab32001f5b5ab2f333397d25e66375ba3c2ee .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/1353568322" 
	@${RM} ${OBJECTDIR}/_ext/1353568322/ButtonApi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1353568322/ButtonApi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1353568322/ButtonApi.o.d" -o ${OBJECTDIR}/_ext/1353568322/ButtonApi.o ../Library/buttons/ButtonApi.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1353568322/Buttons.o: ../Library/buttons/Buttons.c  .generated_files/flags/app/19845bf48ee9d135934c0aa3a856109d724f27d9 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/1353568322" 
	@${RM} ${OBJECTDIR}/_ext/1353568322/Buttons.o.d 
	@${RM} ${OBJECTDIR}/_ext/1353568322/Buttons.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1353568322/Buttons.o.d" -o ${OBJECTDIR}/_ext/1353568322/Buttons.o ../Library/buttons/Buttons.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/RingBuffer.o: ../Library/common/RingBuffer.c  .generated_files/flags/app/41c88ee79fd9c032fff4b0053f5c92f6e22ec9c6 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/RingBuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/RingBuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/RingBuffer.o.d" -o ${OBJECTDIR}/_ext/1129169394/RingBuffer.o ../Library/common/RingBuffer.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/UserFunctions.o: ../Library/common/UserFunctions.c  .generated_files/flags/app/b13b739a24ec666476d348726ae09cf3425f2ab7 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d" -o ${OBJECTDIR}/_ext/1129169394/UserFunctions.o ../Library/common/UserFunctions.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1048860731/files_lite.o: ../Library/fileio/files_lite.c  .generated_files/flags/app/db5e10848ca93fb31190655fdd8776ec159de59a .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/1048860731" 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o.d 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1048860731/files_lite.o.d" -o ${OBJECTDIR}/_ext/1048860731/files_lite.o ../Library/fileio/files_lite.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/127659252/Indicator.o: ../Library/indicator/Indicator.c  .generated_files/flags/app/66b137892ac185a78b81db4f7db85723e30322f8 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/127659252" 
	@${RM} ${OBJECTDIR}/_ext/127659252/Indicator.o.d 
	@${RM} ${OBJECTDIR}/_ext/127659252/Indicator.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/127659252/Indicator.o.d" -o ${OBJECTDIR}/_ext/127659252/Indicator.o ../Library/indicator/Indicator.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit.o: ../Library/kit/kit.c  .generated_files/flags/app/faff72f62eccd2e883b00c1831837069976401d3 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit.o.d" -o ${OBJECTDIR}/_ext/436516243/kit.o ../Library/kit/kit.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device.o: ../Library/kit/kit_usb_device.c  .generated_files/flags/app/68ec9aaa7b90b1754dc25b90617507e652dfedd4 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device.o ../Library/kit/kit_usb_device.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o: ../Library/kit/kit_usb_device_cdc.c  .generated_files/flags/app/b05784ca4f431c90c98b286969ace435c9333bff .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o ../Library/kit/kit_usb_device_cdc.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o: ../Library/kit/kit_usb_device_msd.c  .generated_files/flags/app/68762e58fb0be70c59aad6bef2694d3168f3a1c2 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o ../Library/kit/kit_usb_device_msd.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/HexParsing.o: ../Library/programmer/HexParsing.c  .generated_files/flags/app/468fdf67bf19cb66d5dfad17e9ba212277672f66 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/HexParsing.o.d" -o ${OBJECTDIR}/_ext/967316345/HexParsing.o ../Library/programmer/HexParsing.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/Icsp.o: ../Library/programmer/Icsp.c  .generated_files/flags/app/4f4df9afcdede191b1dd1b818a4593d69bd65218 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/Icsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/Icsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/Icsp.o.d" -o ${OBJECTDIR}/_ext/967316345/Icsp.o ../Library/programmer/Icsp.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o: ../Library/programmer/ICSP_FileIO.c  .generated_files/flags/app/4a0d80b59b261c304a3e113fbddff2c6d0802442 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o.d" -o ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o ../Library/programmer/ICSP_FileIO.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o: ../Library/programmer/ICSP_PIC16F188XX.c  .generated_files/flags/app/4a17c94bef962ca2c9038647eb81055703d20abc .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o.d" -o ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o ../Library/programmer/ICSP_PIC16F188XX.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TaskManager.o: ../Library/system/TaskManager.c  .generated_files/flags/app/28c9b0414e1ef2c889df5050a028cb5f90d5202e .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TaskManager.o.d" -o ${OBJECTDIR}/_ext/661682606/TaskManager.o ../Library/system/TaskManager.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TickCounter.o: ../Library/system/TickCounter.c  .generated_files/flags/app/1bc40803b3de9382df94196bc56e32d216405bbb .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickCounter.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickCounter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TickCounter.o.d" -o ${OBJECTDIR}/_ext/661682606/TickCounter.o ../Library/system/TickCounter.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TickTimer.o: ../Library/system/TickTimer.c  .generated_files/flags/app/ee277860f1543e14d72a54c52a4476030651de02 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TickTimer.o.d" -o ${OBJECTDIR}/_ext/661682606/TickTimer.o ../Library/system/TickTimer.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/Wdt.o: ../Library/system/Wdt.c  .generated_files/flags/app/27ee22b80ee3e115a7734bb901862c3d6f38c470 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/Wdt.o.d" -o ${OBJECTDIR}/_ext/661682606/Wdt.o ../Library/system/Wdt.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_cdc.o: ../Library/usb/usb_device_cdc.c  .generated_files/flags/app/e31f0e08d061cba6979d9a6e8184d4bc8aa40ff6 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o ../Library/usb/usb_device_cdc.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_msd.o: ../Library/usb/usb_device_msd.c  .generated_files/flags/app/cec3c99b94551318d97210995925c3702872dece .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_msd.o ../Library/usb/usb_device_msd.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/user_usb_device_events.o: ../Library/usb/user_usb_device_events.c  .generated_files/flags/app/3b6bee52e55234930444407a74285697e5badb28 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d" -o ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o ../Library/usb/user_usb_device_events.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.c  .generated_files/flags/app/2b99a5575cbe6c40a3d2de3654b8fff1743ae6b2 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o mcc_generated_files/memory/flash.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/flags/app/6edd5f053062d537d58331475c4aee76d661ddee .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/i2c1.o: mcc_generated_files/i2c1.c  .generated_files/flags/app/6a791142ecd83d11106e3e7575e5f8c29fbc43ea .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1.o.d" -o ${OBJECTDIR}/mcc_generated_files/i2c1.o mcc_generated_files/i2c1.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/app/27a8fb2b1b7313740f735dac019a8cb4a045a587 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/exceptions.o: mcc_generated_files/exceptions.c  .generated_files/flags/app/34b29a4b1d0662fd8894796f35f60b32a1221b5c .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/exceptions.o.d" -o ${OBJECTDIR}/mcc_generated_files/exceptions.o mcc_generated_files/exceptions.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/flags/app/d6d0950a4f2c2f52e5708d9dbb1233c26b7ac403 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart2.o mcc_generated_files/uart2.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/app/3e60c6a8421c7dbabc13263ca9f5a29c694d06d0 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/coretimer.o: mcc_generated_files/coretimer.c  .generated_files/flags/app/6c51a119deb9fcd552aa7923dec66fcc9c176739 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/coretimer.o.d" -o ${OBJECTDIR}/mcc_generated_files/coretimer.o mcc_generated_files/coretimer.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/app/85888dd59873b3da4ef49889827000dd81d96088 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/app/a17616378dcfe94fdf34df18fb117018ad2fb85f .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/app/c1ee8009a7334165675644df05cfbafbe2340fc .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/user/app/SRAM_Emulator.o: user/app/SRAM_Emulator.c  .generated_files/flags/app/22e88b3574e414b75739b06be0cf8e9057a558e3 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/user/app" 
	@${RM} ${OBJECTDIR}/user/app/SRAM_Emulator.o.d 
	@${RM} ${OBJECTDIR}/user/app/SRAM_Emulator.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/user/app/SRAM_Emulator.o.d" -o ${OBJECTDIR}/user/app/SRAM_Emulator.o user/app/SRAM_Emulator.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/user/app/libcomp.o: user/app/libcomp.c  .generated_files/flags/app/6b2e093dd3b22813829f874e81a6e477614dd0bd .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/user/app" 
	@${RM} ${OBJECTDIR}/user/app/libcomp.o.d 
	@${RM} ${OBJECTDIR}/user/app/libcomp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/user/app/libcomp.o.d" -o ${OBJECTDIR}/user/app/libcomp.o user/app/libcomp.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/user/app/AppMain.o: user/app/AppMain.c  .generated_files/flags/app/71d9a66b6f1f900379726ac6bbcb280326f9ff64 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/user/app" 
	@${RM} ${OBJECTDIR}/user/app/AppMain.o.d 
	@${RM} ${OBJECTDIR}/user/app/AppMain.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/user/app/AppMain.o.d" -o ${OBJECTDIR}/user/app/AppMain.o user/app/AppMain.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/app/e144a1f48fe74d35f92bcec50ad032cb751d9713 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/cfg/app/user_usb_device_descriptors.o: cfg/app/user_usb_device_descriptors.c  .generated_files/flags/app/361bd55717bc5c32a3d28a4edc3eaf4ffbffa6e8 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/cfg/app" 
	@${RM} ${OBJECTDIR}/cfg/app/user_usb_device_descriptors.o.d 
	@${RM} ${OBJECTDIR}/cfg/app/user_usb_device_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/cfg/app/user_usb_device_descriptors.o.d" -o ${OBJECTDIR}/cfg/app/user_usb_device_descriptors.o cfg/app/user_usb_device_descriptors.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/cfg/app/Buttons_cfg.o: cfg/app/Buttons_cfg.c  .generated_files/flags/app/d6b13e30f53ec8e1b54ba4611a036eadb8483bdb .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/cfg/app" 
	@${RM} ${OBJECTDIR}/cfg/app/Buttons_cfg.o.d 
	@${RM} ${OBJECTDIR}/cfg/app/Buttons_cfg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/cfg/app/Buttons_cfg.o.d" -o ${OBJECTDIR}/cfg/app/Buttons_cfg.o cfg/app/Buttons_cfg.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/cfg/app/Icsp_Cfg.o: cfg/app/Icsp_Cfg.c  .generated_files/flags/app/81b12302a9aff27c8e14181b5475161799df6748 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/cfg/app" 
	@${RM} ${OBJECTDIR}/cfg/app/Icsp_Cfg.o.d 
	@${RM} ${OBJECTDIR}/cfg/app/Icsp_Cfg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/cfg/app/Icsp_Cfg.o.d" -o ${OBJECTDIR}/cfg/app/Icsp_Cfg.o cfg/app/Icsp_Cfg.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/cfg/app/Indicator_Cfg.o: cfg/app/Indicator_Cfg.c  .generated_files/flags/app/2bfac2d798e98a9eb24c7576131a273604dae986 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/cfg/app" 
	@${RM} ${OBJECTDIR}/cfg/app/Indicator_Cfg.o.d 
	@${RM} ${OBJECTDIR}/cfg/app/Indicator_Cfg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/cfg/app/Indicator_Cfg.o.d" -o ${OBJECTDIR}/cfg/app/Indicator_Cfg.o cfg/app/Indicator_Cfg.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/cfg/app/ICSP_FileIO_Cfg.o: cfg/app/ICSP_FileIO_Cfg.c  .generated_files/flags/app/1bfba023ab61d5954dd210130271137b7caa19ff .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/cfg/app" 
	@${RM} ${OBJECTDIR}/cfg/app/ICSP_FileIO_Cfg.o.d 
	@${RM} ${OBJECTDIR}/cfg/app/ICSP_FileIO_Cfg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/cfg/app/ICSP_FileIO_Cfg.o.d" -o ${OBJECTDIR}/cfg/app/ICSP_FileIO_Cfg.o cfg/app/ICSP_FileIO_Cfg.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1353568322/ButtonApi.o: ../Library/buttons/ButtonApi.c  .generated_files/flags/app/6f7093404e1cacda385cb58ff4621c7329fb3d2e .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/1353568322" 
	@${RM} ${OBJECTDIR}/_ext/1353568322/ButtonApi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1353568322/ButtonApi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1353568322/ButtonApi.o.d" -o ${OBJECTDIR}/_ext/1353568322/ButtonApi.o ../Library/buttons/ButtonApi.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1353568322/Buttons.o: ../Library/buttons/Buttons.c  .generated_files/flags/app/b5c0a37a6ba2fd7855f350493f3e66a4216775a5 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/1353568322" 
	@${RM} ${OBJECTDIR}/_ext/1353568322/Buttons.o.d 
	@${RM} ${OBJECTDIR}/_ext/1353568322/Buttons.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1353568322/Buttons.o.d" -o ${OBJECTDIR}/_ext/1353568322/Buttons.o ../Library/buttons/Buttons.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/RingBuffer.o: ../Library/common/RingBuffer.c  .generated_files/flags/app/d8dacd361b6dc03944ec0480d87198efe6f8db9d .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/RingBuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/RingBuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/RingBuffer.o.d" -o ${OBJECTDIR}/_ext/1129169394/RingBuffer.o ../Library/common/RingBuffer.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/UserFunctions.o: ../Library/common/UserFunctions.c  .generated_files/flags/app/2cf9507963ac64d4c165c51adf6e49a9f645c1c6 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d" -o ${OBJECTDIR}/_ext/1129169394/UserFunctions.o ../Library/common/UserFunctions.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1048860731/files_lite.o: ../Library/fileio/files_lite.c  .generated_files/flags/app/257e8dee3b39cc39898936853f79d20e0536cec1 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/1048860731" 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o.d 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1048860731/files_lite.o.d" -o ${OBJECTDIR}/_ext/1048860731/files_lite.o ../Library/fileio/files_lite.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/127659252/Indicator.o: ../Library/indicator/Indicator.c  .generated_files/flags/app/39bb0462768fe773555c90049f9d05d1fdbf0661 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/127659252" 
	@${RM} ${OBJECTDIR}/_ext/127659252/Indicator.o.d 
	@${RM} ${OBJECTDIR}/_ext/127659252/Indicator.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/127659252/Indicator.o.d" -o ${OBJECTDIR}/_ext/127659252/Indicator.o ../Library/indicator/Indicator.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit.o: ../Library/kit/kit.c  .generated_files/flags/app/b0c88bb384d8696b2a9275235265d9b2089eda49 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit.o.d" -o ${OBJECTDIR}/_ext/436516243/kit.o ../Library/kit/kit.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device.o: ../Library/kit/kit_usb_device.c  .generated_files/flags/app/18a57fe157fe6c238bd854acc53b3b50c438c795 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device.o ../Library/kit/kit_usb_device.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o: ../Library/kit/kit_usb_device_cdc.c  .generated_files/flags/app/ef95e26279bc3d73bba072dae927a6bb9f24d6dd .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o ../Library/kit/kit_usb_device_cdc.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o: ../Library/kit/kit_usb_device_msd.c  .generated_files/flags/app/4662387c0fdc30db262118e0ed9a7ae4538165c8 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o ../Library/kit/kit_usb_device_msd.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/HexParsing.o: ../Library/programmer/HexParsing.c  .generated_files/flags/app/56f2f6a9e086c67f67ee614e3f4bf413883fc341 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/HexParsing.o.d" -o ${OBJECTDIR}/_ext/967316345/HexParsing.o ../Library/programmer/HexParsing.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/Icsp.o: ../Library/programmer/Icsp.c  .generated_files/flags/app/6eef19355e3b157c532699c78d6f4aad6fc465d7 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/Icsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/Icsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/Icsp.o.d" -o ${OBJECTDIR}/_ext/967316345/Icsp.o ../Library/programmer/Icsp.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o: ../Library/programmer/ICSP_FileIO.c  .generated_files/flags/app/852be6cbfdf4f279f9eabe1ea00099ed9991c7c5 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o.d" -o ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o ../Library/programmer/ICSP_FileIO.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o: ../Library/programmer/ICSP_PIC16F188XX.c  .generated_files/flags/app/b460fef07d15ab973e83494b1e6c03bbefc099f2 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o.d" -o ${OBJECTDIR}/_ext/967316345/ICSP_PIC16F188XX.o ../Library/programmer/ICSP_PIC16F188XX.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TaskManager.o: ../Library/system/TaskManager.c  .generated_files/flags/app/ee90a0a9945e6642927119acb0bc096c382aae6e .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TaskManager.o.d" -o ${OBJECTDIR}/_ext/661682606/TaskManager.o ../Library/system/TaskManager.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TickCounter.o: ../Library/system/TickCounter.c  .generated_files/flags/app/908005ee69e581aaccc0d7073c378aa9ab4cacd5 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickCounter.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickCounter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TickCounter.o.d" -o ${OBJECTDIR}/_ext/661682606/TickCounter.o ../Library/system/TickCounter.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TickTimer.o: ../Library/system/TickTimer.c  .generated_files/flags/app/f0e69bf885d47b6baa3eb792a4f346e074ed5d5a .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TickTimer.o.d" -o ${OBJECTDIR}/_ext/661682606/TickTimer.o ../Library/system/TickTimer.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/Wdt.o: ../Library/system/Wdt.c  .generated_files/flags/app/39a1107c563845b08d6f4369b9fe48a50d0d99a2 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/Wdt.o.d" -o ${OBJECTDIR}/_ext/661682606/Wdt.o ../Library/system/Wdt.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_cdc.o: ../Library/usb/usb_device_cdc.c  .generated_files/flags/app/8fb49702c67d96dd6aa12ec243fdffc99cb21bd6 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o ../Library/usb/usb_device_cdc.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_msd.o: ../Library/usb/usb_device_msd.c  .generated_files/flags/app/6a418f06d87b761cb72f9976a54fa4afd989cba4 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_msd.o ../Library/usb/usb_device_msd.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/user_usb_device_events.o: ../Library/usb/user_usb_device_events.c  .generated_files/flags/app/128b69942703bf6bb91a1e2f61a7b3c83466e130 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d" -o ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o ../Library/usb/user_usb_device_events.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.c  .generated_files/flags/app/9a91b5c151d25d7ffc9211f580e36010c1a71075 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o mcc_generated_files/memory/flash.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/flags/app/888d00bc5bbd361f26a16d5f52fd1c09ff4e4da3 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/i2c1.o: mcc_generated_files/i2c1.c  .generated_files/flags/app/48fb6585a71b30b26ccce8ca4801ea9da3220220 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1.o.d" -o ${OBJECTDIR}/mcc_generated_files/i2c1.o mcc_generated_files/i2c1.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/app/69badb0ca653cf7a25e02a8e4f6ba34acc0c8332 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/exceptions.o: mcc_generated_files/exceptions.c  .generated_files/flags/app/a5b8bad5ddb5bda79ec7fd4ee60f911b371df107 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/exceptions.o.d" -o ${OBJECTDIR}/mcc_generated_files/exceptions.o mcc_generated_files/exceptions.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/flags/app/9d4e0dfb26463fd4a33832d4114ce0e7df804ff7 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart2.o mcc_generated_files/uart2.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/app/d7d3e7e7a27525e0f2d4e029090e1cd90af53013 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/coretimer.o: mcc_generated_files/coretimer.c  .generated_files/flags/app/860f265c2d9def4a9fc58c9e2b6b2b9ad93422db .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/coretimer.o.d" -o ${OBJECTDIR}/mcc_generated_files/coretimer.o mcc_generated_files/coretimer.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/app/3b197ac6bda33682c954cd9b457e19dd50730a5d .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/app/f48d4249150ca98222a0fb09049b30783926e3d6 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/app/2c4f87feac1f50b5cd9f01d4ee8964372ceb840 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/user/app/SRAM_Emulator.o: user/app/SRAM_Emulator.c  .generated_files/flags/app/d1a5a5fa32185e963de3dd2ccc3ec2ccf1ba5a99 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/user/app" 
	@${RM} ${OBJECTDIR}/user/app/SRAM_Emulator.o.d 
	@${RM} ${OBJECTDIR}/user/app/SRAM_Emulator.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/user/app/SRAM_Emulator.o.d" -o ${OBJECTDIR}/user/app/SRAM_Emulator.o user/app/SRAM_Emulator.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/user/app/libcomp.o: user/app/libcomp.c  .generated_files/flags/app/a78ca50ddcb810e5e8c732cb3af5e47ea432dae3 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/user/app" 
	@${RM} ${OBJECTDIR}/user/app/libcomp.o.d 
	@${RM} ${OBJECTDIR}/user/app/libcomp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/user/app/libcomp.o.d" -o ${OBJECTDIR}/user/app/libcomp.o user/app/libcomp.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/user/app/AppMain.o: user/app/AppMain.c  .generated_files/flags/app/7923a99645ee78ecf48af8c3065e4dd8dba3a205 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/user/app" 
	@${RM} ${OBJECTDIR}/user/app/AppMain.o.d 
	@${RM} ${OBJECTDIR}/user/app/AppMain.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/user/app/AppMain.o.d" -o ${OBJECTDIR}/user/app/AppMain.o user/app/AppMain.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/app/d565187bcbcdfab58a74c7bcdd9fb394f9c42192 .generated_files/flags/app/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"cfg/app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/app" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/PG_v2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../Library/bootloader/Linker/p32MM0064GPM028/App.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/PG_v2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=4096,--defsym=_min_stack_size=2048,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--cref,--warn-section-align,--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/PG_v2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../Library/bootloader/Linker/p32MM0064GPM028/App.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/PG_v2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_app=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=4096,--defsym=_min_stack_size=2048,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--cref,--warn-section-align,--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/PG_v2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
	@echo Normalizing hex file
	@"C:/Program Files/Microchip/MPLABX/v6.00/mplab_platform/platform/../mplab_ide/modules/../../bin/hexmate" --edf="C:/Program Files/Microchip/MPLABX/v6.00/mplab_platform/platform/../mplab_ide/modules/../../dat/en_msgs.txt" ${DISTDIR}/PG_v2.X.${IMAGE_TYPE}.hex -o${DISTDIR}/PG_v2.X.${IMAGE_TYPE}.hex

endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
