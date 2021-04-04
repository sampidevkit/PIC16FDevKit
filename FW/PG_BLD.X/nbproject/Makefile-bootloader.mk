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
ifeq "$(wildcard nbproject/Makefile-local-bootloader.mk)" "nbproject/Makefile-local-bootloader.mk"
include nbproject/Makefile-local-bootloader.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=bootloader
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PG_BLD.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PG_BLD.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=app/libcomp.c app/AppMain.c config/user_usb_device_descriptors.c ../Library/bootloader/BLD_FileIO.c ../Library/bootloader/BLD_Nvm.c ../Library/bootloader/Bootloader.c ../Library/bootloader/asm.S ../Library/common/UserFunctions.c ../Library/fileio/files_lite.c ../Library/kit/kit.c ../Library/kit/kit_usb_device.c ../Library/kit/kit_usb_device_msd.c ../Library/programmer/HexParsing.c ../Library/system/TaskManager.c ../Library/system/TickTimer.c ../Library/system/Wdt.c ../Library/usb/usb_device_msd.c ../Library/usb/user_usb_device_events.c mcc_generated_files/memory/flash.c mcc_generated_files/usb/usb_device.c mcc_generated_files/mcc.c mcc_generated_files/system.c mcc_generated_files/pin_manager.c mcc_generated_files/clock.c mcc_generated_files/interrupt_manager.c mcc_generated_files/coretimer.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/app/libcomp.o ${OBJECTDIR}/app/AppMain.o ${OBJECTDIR}/config/user_usb_device_descriptors.o ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o ${OBJECTDIR}/_ext/955631576/Bootloader.o ${OBJECTDIR}/_ext/955631576/asm.o ${OBJECTDIR}/_ext/1129169394/UserFunctions.o ${OBJECTDIR}/_ext/1048860731/files_lite.o ${OBJECTDIR}/_ext/436516243/kit.o ${OBJECTDIR}/_ext/436516243/kit_usb_device.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o ${OBJECTDIR}/_ext/967316345/HexParsing.o ${OBJECTDIR}/_ext/661682606/TaskManager.o ${OBJECTDIR}/_ext/661682606/TickTimer.o ${OBJECTDIR}/_ext/661682606/Wdt.o ${OBJECTDIR}/_ext/436526145/usb_device_msd.o ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o ${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/coretimer.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/app/libcomp.o.d ${OBJECTDIR}/app/AppMain.o.d ${OBJECTDIR}/config/user_usb_device_descriptors.o.d ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o.d ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o.d ${OBJECTDIR}/_ext/955631576/Bootloader.o.d ${OBJECTDIR}/_ext/955631576/asm.o.d ${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d ${OBJECTDIR}/_ext/1048860731/files_lite.o.d ${OBJECTDIR}/_ext/436516243/kit.o.d ${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d ${OBJECTDIR}/_ext/967316345/HexParsing.o.d ${OBJECTDIR}/_ext/661682606/TaskManager.o.d ${OBJECTDIR}/_ext/661682606/TickTimer.o.d ${OBJECTDIR}/_ext/661682606/Wdt.o.d ${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/coretimer.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/app/libcomp.o ${OBJECTDIR}/app/AppMain.o ${OBJECTDIR}/config/user_usb_device_descriptors.o ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o ${OBJECTDIR}/_ext/955631576/Bootloader.o ${OBJECTDIR}/_ext/955631576/asm.o ${OBJECTDIR}/_ext/1129169394/UserFunctions.o ${OBJECTDIR}/_ext/1048860731/files_lite.o ${OBJECTDIR}/_ext/436516243/kit.o ${OBJECTDIR}/_ext/436516243/kit_usb_device.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o ${OBJECTDIR}/_ext/967316345/HexParsing.o ${OBJECTDIR}/_ext/661682606/TaskManager.o ${OBJECTDIR}/_ext/661682606/TickTimer.o ${OBJECTDIR}/_ext/661682606/Wdt.o ${OBJECTDIR}/_ext/436526145/usb_device_msd.o ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o ${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/coretimer.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=app/libcomp.c app/AppMain.c config/user_usb_device_descriptors.c ../Library/bootloader/BLD_FileIO.c ../Library/bootloader/BLD_Nvm.c ../Library/bootloader/Bootloader.c ../Library/bootloader/asm.S ../Library/common/UserFunctions.c ../Library/fileio/files_lite.c ../Library/kit/kit.c ../Library/kit/kit_usb_device.c ../Library/kit/kit_usb_device_msd.c ../Library/programmer/HexParsing.c ../Library/system/TaskManager.c ../Library/system/TickTimer.c ../Library/system/Wdt.c ../Library/usb/usb_device_msd.c ../Library/usb/user_usb_device_events.c mcc_generated_files/memory/flash.c mcc_generated_files/usb/usb_device.c mcc_generated_files/mcc.c mcc_generated_files/system.c mcc_generated_files/pin_manager.c mcc_generated_files/clock.c mcc_generated_files/interrupt_manager.c mcc_generated_files/coretimer.c main.c



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
ProjectDir="F:\Github\SAMPIDevKit\PIC16DevKit\PIC16F1887x\FW\PG_BLD.X"
ProjectName=PG_BLD
ConfName=bootloader
ImagePath="dist\bootloader\${IMAGE_TYPE}\PG_BLD.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="dist\bootloader\${IMAGE_TYPE}"
ImageName="PG_BLD.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-bootloader.mk dist/${CND_CONF}/${IMAGE_TYPE}/PG_BLD.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
	@echo "--------------------------------------"
	@echo "User defined post-build step: [copy ${ImagePath} "./Bootloader.${OUTPUT_SUFFIX}"]"
	@copy ${ImagePath} "./Bootloader.${OUTPUT_SUFFIX}"
	@echo "--------------------------------------"

MP_PROCESSOR_OPTION=32MM0064GPM028
MP_LINKER_FILE_OPTION=,--script="..\Library\bootloader\Linker\p32MM0064GPM028\Bld.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/955631576/asm.o: ../Library/bootloader/asm.S  .generated_files/b08df5eabcd371b0f5bea75befa9407f5a8afa0c.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/955631576" 
	@${RM} ${OBJECTDIR}/_ext/955631576/asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/955631576/asm.o 
	@${RM} ${OBJECTDIR}/_ext/955631576/asm.o.ok ${OBJECTDIR}/_ext/955631576/asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/955631576/asm.o.d"  -o ${OBJECTDIR}/_ext/955631576/asm.o ../Library/bootloader/asm.S  -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/955631576/asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/955631576/asm.o.d" "${OBJECTDIR}/_ext/955631576/asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/955631576/asm.o: ../Library/bootloader/asm.S  .generated_files/558cfa42bddbad083aa73d5b38170e80f3484863.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/955631576" 
	@${RM} ${OBJECTDIR}/_ext/955631576/asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/955631576/asm.o 
	@${RM} ${OBJECTDIR}/_ext/955631576/asm.o.ok ${OBJECTDIR}/_ext/955631576/asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/955631576/asm.o.d"  -o ${OBJECTDIR}/_ext/955631576/asm.o ../Library/bootloader/asm.S  -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/955631576/asm.o.asm.d",--gdwarf-2 -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/955631576/asm.o.d" "${OBJECTDIR}/_ext/955631576/asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/app/libcomp.o: app/libcomp.c  .generated_files/4bb1a2638e877728304e891cc5acfdd297c747b4.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/libcomp.o.d 
	@${RM} ${OBJECTDIR}/app/libcomp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/app/libcomp.o.d" -o ${OBJECTDIR}/app/libcomp.o app/libcomp.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/AppMain.o: app/AppMain.c  .generated_files/7e45fb3c510ae903e278a51b9a6d1cf36d5418b1.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/AppMain.o.d 
	@${RM} ${OBJECTDIR}/app/AppMain.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/app/AppMain.o.d" -o ${OBJECTDIR}/app/AppMain.o app/AppMain.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/config/user_usb_device_descriptors.o: config/user_usb_device_descriptors.c  .generated_files/7d3c5668427c5a41c9505b41a813ca9c1dc2c313.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/config" 
	@${RM} ${OBJECTDIR}/config/user_usb_device_descriptors.o.d 
	@${RM} ${OBJECTDIR}/config/user_usb_device_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/config/user_usb_device_descriptors.o.d" -o ${OBJECTDIR}/config/user_usb_device_descriptors.o config/user_usb_device_descriptors.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/955631576/BLD_FileIO.o: ../Library/bootloader/BLD_FileIO.c  .generated_files/ee81c36808ab7bc7875d2ea82a407fa3caaa5de0.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/955631576" 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/955631576/BLD_FileIO.o.d" -o ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o ../Library/bootloader/BLD_FileIO.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/955631576/BLD_Nvm.o: ../Library/bootloader/BLD_Nvm.c  .generated_files/2f19d0d9866fda035ef945a71336a578aaec8ad0.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/955631576" 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/955631576/BLD_Nvm.o.d" -o ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o ../Library/bootloader/BLD_Nvm.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/955631576/Bootloader.o: ../Library/bootloader/Bootloader.c  .generated_files/7d7e93d9a9b557d56202dcdc7a699f562be80323.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/955631576" 
	@${RM} ${OBJECTDIR}/_ext/955631576/Bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/955631576/Bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/955631576/Bootloader.o.d" -o ${OBJECTDIR}/_ext/955631576/Bootloader.o ../Library/bootloader/Bootloader.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/UserFunctions.o: ../Library/common/UserFunctions.c  .generated_files/5c9845b722877789c82475f0e91488f84d71044c.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d" -o ${OBJECTDIR}/_ext/1129169394/UserFunctions.o ../Library/common/UserFunctions.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1048860731/files_lite.o: ../Library/fileio/files_lite.c  .generated_files/e386617026ce8c1214f867dcb8114a81a0af7706.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1048860731" 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o.d 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1048860731/files_lite.o.d" -o ${OBJECTDIR}/_ext/1048860731/files_lite.o ../Library/fileio/files_lite.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit.o: ../Library/kit/kit.c  .generated_files/5e5b9e4ace77bd30e3a085ed9077b131fef50ceb.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit.o.d" -o ${OBJECTDIR}/_ext/436516243/kit.o ../Library/kit/kit.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device.o: ../Library/kit/kit_usb_device.c  .generated_files/6766569ce82feabda3202cf1d40a6436f75cd117.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device.o ../Library/kit/kit_usb_device.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o: ../Library/kit/kit_usb_device_msd.c  .generated_files/d12cc22ed594a57c23b575f92465f542ebf54638.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o ../Library/kit/kit_usb_device_msd.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/HexParsing.o: ../Library/programmer/HexParsing.c  .generated_files/f0d662c42a26462a108acd36b71e358b33b68989.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/HexParsing.o.d" -o ${OBJECTDIR}/_ext/967316345/HexParsing.o ../Library/programmer/HexParsing.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TaskManager.o: ../Library/system/TaskManager.c  .generated_files/90d5a46c877997227f254a5bb1c3a2d2bcfc1d45.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TaskManager.o.d" -o ${OBJECTDIR}/_ext/661682606/TaskManager.o ../Library/system/TaskManager.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TickTimer.o: ../Library/system/TickTimer.c  .generated_files/860cf7d6ba8a186989bc425b69f5467c3b03ef3a.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TickTimer.o.d" -o ${OBJECTDIR}/_ext/661682606/TickTimer.o ../Library/system/TickTimer.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/Wdt.o: ../Library/system/Wdt.c  .generated_files/d117a7422007958ed5d886d5c30eb36430040b56.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/Wdt.o.d" -o ${OBJECTDIR}/_ext/661682606/Wdt.o ../Library/system/Wdt.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_msd.o: ../Library/usb/usb_device_msd.c  .generated_files/7acace46262cf6333e7410895493aef9f6e01dc4.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_msd.o ../Library/usb/usb_device_msd.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/user_usb_device_events.o: ../Library/usb/user_usb_device_events.c  .generated_files/4693ef95719762f8c30fa0d851590b586ae9d9c5.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d" -o ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o ../Library/usb/user_usb_device_events.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.c  .generated_files/c05cbb6a83c297e145744fc56eda79c6af40aed7.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o mcc_generated_files/memory/flash.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/1d4ac24b27d05a9ddd69b74630a89fc9db3437ff.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/2e0315ce56917d017f47c514609e980da6f83734.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/908f0829a457ac4188e4d12c0a22d4ed9018b8f9.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/9062902357519a3f7a5547a8c48925f288465bae.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/5818407258a0fb6b4ae3f191d7d5a283d75a5992.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/10b66b13aadccd0cedb189952b2c446dbb87a417.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/coretimer.o: mcc_generated_files/coretimer.c  .generated_files/14ff3b43182eb3fc29cb827ffb28384d3d1623f2.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/coretimer.o.d" -o ${OBJECTDIR}/mcc_generated_files/coretimer.o mcc_generated_files/coretimer.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/24c7d1d8d2f5dae29031e1c0f7dd29d8db8c421d.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/app/libcomp.o: app/libcomp.c  .generated_files/b8b5aa294a0f87191c60de9d3c95f6951f2bac20.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/libcomp.o.d 
	@${RM} ${OBJECTDIR}/app/libcomp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/app/libcomp.o.d" -o ${OBJECTDIR}/app/libcomp.o app/libcomp.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/AppMain.o: app/AppMain.c  .generated_files/f8e69f25af678e3a14a7fe4881be01318941f3e7.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/AppMain.o.d 
	@${RM} ${OBJECTDIR}/app/AppMain.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/app/AppMain.o.d" -o ${OBJECTDIR}/app/AppMain.o app/AppMain.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/config/user_usb_device_descriptors.o: config/user_usb_device_descriptors.c  .generated_files/28076dae833168c74e147a2458e894f6679ed13b.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/config" 
	@${RM} ${OBJECTDIR}/config/user_usb_device_descriptors.o.d 
	@${RM} ${OBJECTDIR}/config/user_usb_device_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/config/user_usb_device_descriptors.o.d" -o ${OBJECTDIR}/config/user_usb_device_descriptors.o config/user_usb_device_descriptors.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/955631576/BLD_FileIO.o: ../Library/bootloader/BLD_FileIO.c  .generated_files/b11458772b550aae8245aacec3dfe31d3b34125f.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/955631576" 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/955631576/BLD_FileIO.o.d" -o ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o ../Library/bootloader/BLD_FileIO.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/955631576/BLD_Nvm.o: ../Library/bootloader/BLD_Nvm.c  .generated_files/fcd4f82411333e1dccd6b0651d2373b19d738bba.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/955631576" 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/955631576/BLD_Nvm.o.d" -o ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o ../Library/bootloader/BLD_Nvm.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/955631576/Bootloader.o: ../Library/bootloader/Bootloader.c  .generated_files/6292a2dd250ab81607ec671fdd515acbb94d11c9.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/955631576" 
	@${RM} ${OBJECTDIR}/_ext/955631576/Bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/955631576/Bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/955631576/Bootloader.o.d" -o ${OBJECTDIR}/_ext/955631576/Bootloader.o ../Library/bootloader/Bootloader.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/UserFunctions.o: ../Library/common/UserFunctions.c  .generated_files/94c17c80a99a3054fafb30e92fa4cecc5ce09d7e.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d" -o ${OBJECTDIR}/_ext/1129169394/UserFunctions.o ../Library/common/UserFunctions.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1048860731/files_lite.o: ../Library/fileio/files_lite.c  .generated_files/868eb43a6b7599892352cc1926d3cb0c02501a66.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1048860731" 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o.d 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/1048860731/files_lite.o.d" -o ${OBJECTDIR}/_ext/1048860731/files_lite.o ../Library/fileio/files_lite.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit.o: ../Library/kit/kit.c  .generated_files/d55b5fb6fc6521bb3ee6513e7115465e182ec31a.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit.o.d" -o ${OBJECTDIR}/_ext/436516243/kit.o ../Library/kit/kit.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device.o: ../Library/kit/kit_usb_device.c  .generated_files/5e2bba6ac3f67b60c3c5ea56dc0fb84501c5c8b6.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device.o ../Library/kit/kit_usb_device.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o: ../Library/kit/kit_usb_device_msd.c  .generated_files/1593caf66e0c966ff0080c7ccf15d21a040b943d.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o ../Library/kit/kit_usb_device_msd.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/HexParsing.o: ../Library/programmer/HexParsing.c  .generated_files/4888854e439943e0d1179a28bcd674d1e739d931.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/HexParsing.o.d" -o ${OBJECTDIR}/_ext/967316345/HexParsing.o ../Library/programmer/HexParsing.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TaskManager.o: ../Library/system/TaskManager.c  .generated_files/880a48d7d36d446a1bd320b8e6c64ac8ddef9a6d.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TaskManager.o.d" -o ${OBJECTDIR}/_ext/661682606/TaskManager.o ../Library/system/TaskManager.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TickTimer.o: ../Library/system/TickTimer.c  .generated_files/d55bff652a31fed148aa144f12f9c9bda7bc9ada.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TickTimer.o.d" -o ${OBJECTDIR}/_ext/661682606/TickTimer.o ../Library/system/TickTimer.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/Wdt.o: ../Library/system/Wdt.c  .generated_files/436f74a86cc5ee99d75e01b71af240e45943b476.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/Wdt.o.d" -o ${OBJECTDIR}/_ext/661682606/Wdt.o ../Library/system/Wdt.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_msd.o: ../Library/usb/usb_device_msd.c  .generated_files/1bcd509656bc3c39098b8dea9e75c869356494f1.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_msd.o ../Library/usb/usb_device_msd.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/user_usb_device_events.o: ../Library/usb/user_usb_device_events.c  .generated_files/19d7a729f97469c5111643dc5303211103d11ec6.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d" -o ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o ../Library/usb/user_usb_device_events.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.c  .generated_files/2bb3eb6f5b632c02fae21f0cf14a32cf48ef6e79.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o mcc_generated_files/memory/flash.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/9563a5cfe2cfaa55b89b312c7e9518658820a45f.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/a5ae6ce602d9ea28eb1d33145c866d6630fc1797.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/e15b0862ab9b75261b48d8369897d61c3dc09eea.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/fe1b4db6bb6ffd72f83438e77e405a4947141222.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/a5e5a5b13234b0060b95ac4cdd8ae0a3c9f8e2cf.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/aef670b27a23f1c1f61e2d0b210e1b0a5ea815a7.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/coretimer.o: mcc_generated_files/coretimer.c  .generated_files/8ffc92ac8508aa601a5cd62441d4d7bddc461956.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/coretimer.o.d" -o ${OBJECTDIR}/mcc_generated_files/coretimer.o mcc_generated_files/coretimer.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/b7de9b2c6221be18b26cf41280d1892a27a07a5a.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/PG_BLD.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../Library/bootloader/Linker/p32MM0064GPM028/Bld.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -O2 -o dist/${CND_CONF}/${IMAGE_TYPE}/PG_BLD.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC00490:0x1FC016FF -mreserve=boot@0x1FC00490:0x1FC00BEF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--cref,--warn-section-align,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/PG_BLD.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../Library/bootloader/Linker/p32MM0064GPM028/Bld.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -O2 -o dist/${CND_CONF}/${IMAGE_TYPE}/PG_BLD.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_bootloader=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--cref,--warn-section-align,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/PG_BLD.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
	@echo Normalizing hex file
	@"C:/Program Files/Microchip/MPLABX/v5.45/mplab_platform/platform/../mplab_ide/modules/../../bin/hexmate" --edf="C:/Program Files/Microchip/MPLABX/v5.45/mplab_platform/platform/../mplab_ide/modules/../../dat/en_msgs.txt" dist/${CND_CONF}/${IMAGE_TYPE}/PG_BLD.X.${IMAGE_TYPE}.hex -odist/${CND_CONF}/${IMAGE_TYPE}/PG_BLD.X.${IMAGE_TYPE}.hex

endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/bootloader
	${RM} -r dist/bootloader

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
