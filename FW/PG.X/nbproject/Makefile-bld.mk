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
ifeq "$(wildcard nbproject/Makefile-local-bld.mk)" "nbproject/Makefile-local-bld.mk"
include nbproject/Makefile-local-bld.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=bld
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PG.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PG.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=cfg/bld/user_usb_device_descriptors.c ../Library/bootloader/BLD_FileIO.c ../Library/bootloader/BLD_Nvm.c ../Library/bootloader/Bootloader.c ../Library/bootloader/asm.S ../Library/common/UserFunctions.c ../Library/fileio/files_lite.c ../Library/kit/kit.c ../Library/kit/kit_usb_device.c ../Library/kit/kit_usb_device_msd.c ../Library/programmer/HexParsing.c ../Library/system/TaskManager.c ../Library/system/TickTimer.c ../Library/system/Wdt.c ../Library/usb/usb_device_msd.c ../Library/usb/user_usb_device_events.c mcc_generated_files/memory/flash.c mcc_generated_files/usb/usb_device.c mcc_generated_files/pin_manager.c mcc_generated_files/interrupt_manager.c mcc_generated_files/clock.c mcc_generated_files/coretimer.c mcc_generated_files/mcc.c mcc_generated_files/system.c user/bld/libcomp.c user/bld/AppMain.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/cfg/bld/user_usb_device_descriptors.o ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o ${OBJECTDIR}/_ext/955631576/Bootloader.o ${OBJECTDIR}/_ext/955631576/asm.o ${OBJECTDIR}/_ext/1129169394/UserFunctions.o ${OBJECTDIR}/_ext/1048860731/files_lite.o ${OBJECTDIR}/_ext/436516243/kit.o ${OBJECTDIR}/_ext/436516243/kit_usb_device.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o ${OBJECTDIR}/_ext/967316345/HexParsing.o ${OBJECTDIR}/_ext/661682606/TaskManager.o ${OBJECTDIR}/_ext/661682606/TickTimer.o ${OBJECTDIR}/_ext/661682606/Wdt.o ${OBJECTDIR}/_ext/436526145/usb_device_msd.o ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o ${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/coretimer.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/user/bld/libcomp.o ${OBJECTDIR}/user/bld/AppMain.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/cfg/bld/user_usb_device_descriptors.o.d ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o.d ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o.d ${OBJECTDIR}/_ext/955631576/Bootloader.o.d ${OBJECTDIR}/_ext/955631576/asm.o.d ${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d ${OBJECTDIR}/_ext/1048860731/files_lite.o.d ${OBJECTDIR}/_ext/436516243/kit.o.d ${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d ${OBJECTDIR}/_ext/967316345/HexParsing.o.d ${OBJECTDIR}/_ext/661682606/TaskManager.o.d ${OBJECTDIR}/_ext/661682606/TickTimer.o.d ${OBJECTDIR}/_ext/661682606/Wdt.o.d ${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/coretimer.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/user/bld/libcomp.o.d ${OBJECTDIR}/user/bld/AppMain.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/cfg/bld/user_usb_device_descriptors.o ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o ${OBJECTDIR}/_ext/955631576/Bootloader.o ${OBJECTDIR}/_ext/955631576/asm.o ${OBJECTDIR}/_ext/1129169394/UserFunctions.o ${OBJECTDIR}/_ext/1048860731/files_lite.o ${OBJECTDIR}/_ext/436516243/kit.o ${OBJECTDIR}/_ext/436516243/kit_usb_device.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o ${OBJECTDIR}/_ext/967316345/HexParsing.o ${OBJECTDIR}/_ext/661682606/TaskManager.o ${OBJECTDIR}/_ext/661682606/TickTimer.o ${OBJECTDIR}/_ext/661682606/Wdt.o ${OBJECTDIR}/_ext/436526145/usb_device_msd.o ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o ${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/coretimer.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/user/bld/libcomp.o ${OBJECTDIR}/user/bld/AppMain.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=cfg/bld/user_usb_device_descriptors.c ../Library/bootloader/BLD_FileIO.c ../Library/bootloader/BLD_Nvm.c ../Library/bootloader/Bootloader.c ../Library/bootloader/asm.S ../Library/common/UserFunctions.c ../Library/fileio/files_lite.c ../Library/kit/kit.c ../Library/kit/kit_usb_device.c ../Library/kit/kit_usb_device_msd.c ../Library/programmer/HexParsing.c ../Library/system/TaskManager.c ../Library/system/TickTimer.c ../Library/system/Wdt.c ../Library/usb/usb_device_msd.c ../Library/usb/user_usb_device_events.c mcc_generated_files/memory/flash.c mcc_generated_files/usb/usb_device.c mcc_generated_files/pin_manager.c mcc_generated_files/interrupt_manager.c mcc_generated_files/clock.c mcc_generated_files/coretimer.c mcc_generated_files/mcc.c mcc_generated_files/system.c user/bld/libcomp.c user/bld/AppMain.c main.c



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
ProjectDir="F:\Github\SAMPIDevKit\PIC16DevKit\PIC16F1887x\FW\PG.X"
ProjectName=PG
ConfName=bld
ImagePath="dist\bld\${IMAGE_TYPE}\PG.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="dist\bld\${IMAGE_TYPE}"
ImageName="PG.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-bld.mk dist/${CND_CONF}/${IMAGE_TYPE}/PG.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
	@echo "--------------------------------------"
	@echo "User defined post-build step: [copy ${ImagePath} ".\bld.${OUTPUT_SUFFIX}"]"
	@copy ${ImagePath} ".\bld.${OUTPUT_SUFFIX}"
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
${OBJECTDIR}/_ext/955631576/asm.o: ../Library/bootloader/asm.S  .generated_files/flags/bld/75025794c15c190a99a99e836404af3d26baf442 .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/_ext/955631576" 
	@${RM} ${OBJECTDIR}/_ext/955631576/asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/955631576/asm.o 
	@${RM} ${OBJECTDIR}/_ext/955631576/asm.o.ok ${OBJECTDIR}/_ext/955631576/asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/955631576/asm.o.d"  -o ${OBJECTDIR}/_ext/955631576/asm.o ../Library/bootloader/asm.S  -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/955631576/asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/955631576/asm.o.d" "${OBJECTDIR}/_ext/955631576/asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/955631576/asm.o: ../Library/bootloader/asm.S  .generated_files/flags/bld/287cb1874f33eb2aa1836779f7e6ee6b9cc25981 .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/_ext/955631576" 
	@${RM} ${OBJECTDIR}/_ext/955631576/asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/955631576/asm.o 
	@${RM} ${OBJECTDIR}/_ext/955631576/asm.o.ok ${OBJECTDIR}/_ext/955631576/asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/955631576/asm.o.d"  -o ${OBJECTDIR}/_ext/955631576/asm.o ../Library/bootloader/asm.S  -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/955631576/asm.o.asm.d",--gdwarf-2 -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/955631576/asm.o.d" "${OBJECTDIR}/_ext/955631576/asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/cfg/bld/user_usb_device_descriptors.o: cfg/bld/user_usb_device_descriptors.c  .generated_files/flags/bld/26dfa87d440f4dd3b79ee98f6acd146a7fc40c8d .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/cfg/bld" 
	@${RM} ${OBJECTDIR}/cfg/bld/user_usb_device_descriptors.o.d 
	@${RM} ${OBJECTDIR}/cfg/bld/user_usb_device_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/cfg/bld/user_usb_device_descriptors.o.d" -o ${OBJECTDIR}/cfg/bld/user_usb_device_descriptors.o cfg/bld/user_usb_device_descriptors.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/955631576/BLD_FileIO.o: ../Library/bootloader/BLD_FileIO.c  .generated_files/flags/bld/c686f568b6cf828eddb325a97886cf073617bed5 .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/_ext/955631576" 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/955631576/BLD_FileIO.o.d" -o ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o ../Library/bootloader/BLD_FileIO.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/955631576/BLD_Nvm.o: ../Library/bootloader/BLD_Nvm.c  .generated_files/flags/bld/e2a127516378ce4947c29557972642e8f868fa88 .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/_ext/955631576" 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/955631576/BLD_Nvm.o.d" -o ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o ../Library/bootloader/BLD_Nvm.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/955631576/Bootloader.o: ../Library/bootloader/Bootloader.c  .generated_files/flags/bld/706a3463dac93c69a1a6099ca0e0d8bd399b8d85 .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/_ext/955631576" 
	@${RM} ${OBJECTDIR}/_ext/955631576/Bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/955631576/Bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/955631576/Bootloader.o.d" -o ${OBJECTDIR}/_ext/955631576/Bootloader.o ../Library/bootloader/Bootloader.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/UserFunctions.o: ../Library/common/UserFunctions.c  .generated_files/flags/bld/fcb16ee360fbda1f056bff58554f11e2454d4305 .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d" -o ${OBJECTDIR}/_ext/1129169394/UserFunctions.o ../Library/common/UserFunctions.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1048860731/files_lite.o: ../Library/fileio/files_lite.c  .generated_files/flags/bld/d92f81d95b580c5d46fb573862343e7c2451498d .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/_ext/1048860731" 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o.d 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/1048860731/files_lite.o.d" -o ${OBJECTDIR}/_ext/1048860731/files_lite.o ../Library/fileio/files_lite.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit.o: ../Library/kit/kit.c  .generated_files/flags/bld/b2ac1001f77a145bdb08d1f0d955daf79e612e4 .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit.o.d" -o ${OBJECTDIR}/_ext/436516243/kit.o ../Library/kit/kit.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device.o: ../Library/kit/kit_usb_device.c  .generated_files/flags/bld/b4c5dce8e90e08b245ec4bde56e6872f8b4f9c7e .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device.o ../Library/kit/kit_usb_device.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o: ../Library/kit/kit_usb_device_msd.c  .generated_files/flags/bld/6cb93ad1c5b458c3f776e79e747e8ba7fb32821c .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o ../Library/kit/kit_usb_device_msd.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/HexParsing.o: ../Library/programmer/HexParsing.c  .generated_files/flags/bld/e2798e6bacf6d6db9558924ca180b9d7b8a35aa6 .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/HexParsing.o.d" -o ${OBJECTDIR}/_ext/967316345/HexParsing.o ../Library/programmer/HexParsing.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TaskManager.o: ../Library/system/TaskManager.c  .generated_files/flags/bld/db91390a538fb55856f32b0298f80ab8551a6892 .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TaskManager.o.d" -o ${OBJECTDIR}/_ext/661682606/TaskManager.o ../Library/system/TaskManager.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TickTimer.o: ../Library/system/TickTimer.c  .generated_files/flags/bld/4f11101c7d14a4a632a11c3f55efec37bc71ed79 .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TickTimer.o.d" -o ${OBJECTDIR}/_ext/661682606/TickTimer.o ../Library/system/TickTimer.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/Wdt.o: ../Library/system/Wdt.c  .generated_files/flags/bld/99bf66b6dfb47f67cb711d3c7fda451263808f .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/Wdt.o.d" -o ${OBJECTDIR}/_ext/661682606/Wdt.o ../Library/system/Wdt.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_msd.o: ../Library/usb/usb_device_msd.c  .generated_files/flags/bld/dd1947791c19f5cbbf221ce075bb0c8eb2003829 .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_msd.o ../Library/usb/usb_device_msd.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/user_usb_device_events.o: ../Library/usb/user_usb_device_events.c  .generated_files/flags/bld/f66bb7c53f841c117abd8f7842a9f36e4d71124c .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d" -o ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o ../Library/usb/user_usb_device_events.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.c  .generated_files/flags/bld/3f8addda13d1937fbdfa3030789bf04e52f9ab3a .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o mcc_generated_files/memory/flash.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/flags/bld/a01d102adff088fce025a324b6a0841bcea6d391 .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/bld/e46de5a5aaf224a325aa1dfdfc32d437f971cd1a .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/bld/67ff36bc620cea4d7e1774fae13f133630c82e35 .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/bld/346f46001480c3202577201ff5fcab60bec1ccdc .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/coretimer.o: mcc_generated_files/coretimer.c  .generated_files/flags/bld/115e511380296bac890ecc834a3cdfa14774e378 .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/coretimer.o.d" -o ${OBJECTDIR}/mcc_generated_files/coretimer.o mcc_generated_files/coretimer.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/bld/57a2c5bc3ff54b195995eadb2b8c547316c682c2 .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/bld/6409fe2b1312aa29fb2eaf704a8045eeac9009b2 .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/user/bld/libcomp.o: user/bld/libcomp.c  .generated_files/flags/bld/e18315115e92ff977ffc514a1a2b52c033e9dea2 .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/user/bld" 
	@${RM} ${OBJECTDIR}/user/bld/libcomp.o.d 
	@${RM} ${OBJECTDIR}/user/bld/libcomp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/user/bld/libcomp.o.d" -o ${OBJECTDIR}/user/bld/libcomp.o user/bld/libcomp.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/user/bld/AppMain.o: user/bld/AppMain.c  .generated_files/flags/bld/613e13d3b2e76401dece0dc7fa870862035c159b .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/user/bld" 
	@${RM} ${OBJECTDIR}/user/bld/AppMain.o.d 
	@${RM} ${OBJECTDIR}/user/bld/AppMain.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/user/bld/AppMain.o.d" -o ${OBJECTDIR}/user/bld/AppMain.o user/bld/AppMain.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/bld/18543bd0c4ce4f4601cc6c7c7ffd39f5aa4dc9d2 .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/cfg/bld/user_usb_device_descriptors.o: cfg/bld/user_usb_device_descriptors.c  .generated_files/flags/bld/8c858a0bab7fcfa9b19c624e04198eaef18044bb .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/cfg/bld" 
	@${RM} ${OBJECTDIR}/cfg/bld/user_usb_device_descriptors.o.d 
	@${RM} ${OBJECTDIR}/cfg/bld/user_usb_device_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/cfg/bld/user_usb_device_descriptors.o.d" -o ${OBJECTDIR}/cfg/bld/user_usb_device_descriptors.o cfg/bld/user_usb_device_descriptors.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/955631576/BLD_FileIO.o: ../Library/bootloader/BLD_FileIO.c  .generated_files/flags/bld/71b5abdf7e69a8353fefc66cf37f8123499ea170 .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/_ext/955631576" 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/955631576/BLD_FileIO.o.d" -o ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o ../Library/bootloader/BLD_FileIO.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/955631576/BLD_Nvm.o: ../Library/bootloader/BLD_Nvm.c  .generated_files/flags/bld/5b5ca2183d36d8a7f9b47e829662b4d7614401af .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/_ext/955631576" 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/955631576/BLD_Nvm.o.d" -o ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o ../Library/bootloader/BLD_Nvm.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/955631576/Bootloader.o: ../Library/bootloader/Bootloader.c  .generated_files/flags/bld/563403445b1f4d0c60497428e7c0a80ad5b3c5f4 .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/_ext/955631576" 
	@${RM} ${OBJECTDIR}/_ext/955631576/Bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/955631576/Bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/955631576/Bootloader.o.d" -o ${OBJECTDIR}/_ext/955631576/Bootloader.o ../Library/bootloader/Bootloader.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/UserFunctions.o: ../Library/common/UserFunctions.c  .generated_files/flags/bld/315917f51ee2688132ff58466a8c2bef757c2ad .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d" -o ${OBJECTDIR}/_ext/1129169394/UserFunctions.o ../Library/common/UserFunctions.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1048860731/files_lite.o: ../Library/fileio/files_lite.c  .generated_files/flags/bld/dc464547353c8317abed32e07538e61708547d2d .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/_ext/1048860731" 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o.d 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/1048860731/files_lite.o.d" -o ${OBJECTDIR}/_ext/1048860731/files_lite.o ../Library/fileio/files_lite.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit.o: ../Library/kit/kit.c  .generated_files/flags/bld/24891760a18fcb7761b6b1652bc421c14ed19333 .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit.o.d" -o ${OBJECTDIR}/_ext/436516243/kit.o ../Library/kit/kit.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device.o: ../Library/kit/kit_usb_device.c  .generated_files/flags/bld/ba7fd7c9cb88f0b6510441bd4f29bac7de6db995 .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device.o ../Library/kit/kit_usb_device.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o: ../Library/kit/kit_usb_device_msd.c  .generated_files/flags/bld/5fc6e7271b8f0c123a84a6526ece6addc43476c .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o ../Library/kit/kit_usb_device_msd.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/HexParsing.o: ../Library/programmer/HexParsing.c  .generated_files/flags/bld/14a91ed821821c491825552e3cd05d89e34aee2f .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/HexParsing.o.d" -o ${OBJECTDIR}/_ext/967316345/HexParsing.o ../Library/programmer/HexParsing.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TaskManager.o: ../Library/system/TaskManager.c  .generated_files/flags/bld/75c2fa02e3c979d714de898103a3a5e923a4b18a .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TaskManager.o.d" -o ${OBJECTDIR}/_ext/661682606/TaskManager.o ../Library/system/TaskManager.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TickTimer.o: ../Library/system/TickTimer.c  .generated_files/flags/bld/6682d564fdf2b59e52a18898ed29566e4647042e .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TickTimer.o.d" -o ${OBJECTDIR}/_ext/661682606/TickTimer.o ../Library/system/TickTimer.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/Wdt.o: ../Library/system/Wdt.c  .generated_files/flags/bld/63a5042c59141648b048e7163321e83caddfc2f3 .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/Wdt.o.d" -o ${OBJECTDIR}/_ext/661682606/Wdt.o ../Library/system/Wdt.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_msd.o: ../Library/usb/usb_device_msd.c  .generated_files/flags/bld/81c48925f96b78f2132c59b128a72b1b3fd76b39 .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_msd.o ../Library/usb/usb_device_msd.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/user_usb_device_events.o: ../Library/usb/user_usb_device_events.c  .generated_files/flags/bld/1c6d2454387bb58dbf20bae02f814f061c7b3ce1 .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d" -o ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o ../Library/usb/user_usb_device_events.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.c  .generated_files/flags/bld/1efb75adda2048e2641afb3879073ce26c539818 .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o mcc_generated_files/memory/flash.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/flags/bld/29bade52b8c30b8260b684a79de59bc4da68321 .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/bld/aa2e264ad4cfa8115c09b5f574a5e1bfc1d607c5 .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/bld/951d04797224b48984cffb195df6250ea6407b00 .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/bld/621e5ba999ee744234e2bddf14811c0f2e573e3f .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/coretimer.o: mcc_generated_files/coretimer.c  .generated_files/flags/bld/2e812da90cdf256cc875a1c74b0611b937a81e37 .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/coretimer.o.d" -o ${OBJECTDIR}/mcc_generated_files/coretimer.o mcc_generated_files/coretimer.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/bld/7311006d3d8bd0160426fa264094315206b90099 .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/bld/61e9e0a59857edbce645e8646c692c4f9eb4f8da .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/user/bld/libcomp.o: user/bld/libcomp.c  .generated_files/flags/bld/a1a9cc9cfee1b900c46211268f6c8a17431effe2 .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/user/bld" 
	@${RM} ${OBJECTDIR}/user/bld/libcomp.o.d 
	@${RM} ${OBJECTDIR}/user/bld/libcomp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/user/bld/libcomp.o.d" -o ${OBJECTDIR}/user/bld/libcomp.o user/bld/libcomp.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/user/bld/AppMain.o: user/bld/AppMain.c  .generated_files/flags/bld/580efdcd270a2d8416555dc9997c0ad8b758e020 .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}/user/bld" 
	@${RM} ${OBJECTDIR}/user/bld/AppMain.o.d 
	@${RM} ${OBJECTDIR}/user/bld/AppMain.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/user/bld/AppMain.o.d" -o ${OBJECTDIR}/user/bld/AppMain.o user/bld/AppMain.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/bld/963ef91fce88a43f823f76b01fc48e5975749cb8 .generated_files/flags/bld/11b4d79b4b2276b8620d4f700419d4bd705a852a
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/PG.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../Library/bootloader/Linker/p32MM0064GPM028/Bld.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/PG.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC00490:0x1FC016FF -mreserve=boot@0x1FC00490:0x1FC00BEF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--cref,--warn-section-align,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/PG.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../Library/bootloader/Linker/p32MM0064GPM028/Bld.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/PG.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--cref,--warn-section-align,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/PG.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
	@echo Normalizing hex file
	@"C:/Program Files/Microchip/MPLABX/v5.50/mplab_platform/platform/../mplab_ide/modules/../../bin/hexmate" --edf="C:/Program Files/Microchip/MPLABX/v5.50/mplab_platform/platform/../mplab_ide/modules/../../dat/en_msgs.txt" dist/${CND_CONF}/${IMAGE_TYPE}/PG.X.${IMAGE_TYPE}.hex -odist/${CND_CONF}/${IMAGE_TYPE}/PG.X.${IMAGE_TYPE}.hex

endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/bld
	${RM} -r dist/bld

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
