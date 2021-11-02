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
ProjectDir="F:\Git\SAMPI\P16DK\P16F1887x\FW\PG.X"
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
${OBJECTDIR}/_ext/955631576/asm.o: ../Library/bootloader/asm.S  .generated_files/flags/bld/37f9c476a38f31b8c5869bd26428010c7151ef63 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/955631576" 
	@${RM} ${OBJECTDIR}/_ext/955631576/asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/955631576/asm.o 
	@${RM} ${OBJECTDIR}/_ext/955631576/asm.o.ok ${OBJECTDIR}/_ext/955631576/asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/955631576/asm.o.d"  -o ${OBJECTDIR}/_ext/955631576/asm.o ../Library/bootloader/asm.S  -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/955631576/asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/955631576/asm.o.d" "${OBJECTDIR}/_ext/955631576/asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/955631576/asm.o: ../Library/bootloader/asm.S  .generated_files/flags/bld/d5ec04d8bbc72129170d8b83537181d09e6886c0 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
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
${OBJECTDIR}/cfg/bld/user_usb_device_descriptors.o: cfg/bld/user_usb_device_descriptors.c  .generated_files/flags/bld/e5f5ac9990ff3bd2d1a5f16a0a9f698c72584961 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/cfg/bld" 
	@${RM} ${OBJECTDIR}/cfg/bld/user_usb_device_descriptors.o.d 
	@${RM} ${OBJECTDIR}/cfg/bld/user_usb_device_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/cfg/bld/user_usb_device_descriptors.o.d" -o ${OBJECTDIR}/cfg/bld/user_usb_device_descriptors.o cfg/bld/user_usb_device_descriptors.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/955631576/BLD_FileIO.o: ../Library/bootloader/BLD_FileIO.c  .generated_files/flags/bld/7811deaae65d04b09be244f121934553c6840eca .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/955631576" 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/955631576/BLD_FileIO.o.d" -o ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o ../Library/bootloader/BLD_FileIO.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/955631576/BLD_Nvm.o: ../Library/bootloader/BLD_Nvm.c  .generated_files/flags/bld/b1009bb9a111a2fd0f0a75a41d08e856eeae53e7 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/955631576" 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/955631576/BLD_Nvm.o.d" -o ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o ../Library/bootloader/BLD_Nvm.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/955631576/Bootloader.o: ../Library/bootloader/Bootloader.c  .generated_files/flags/bld/29a07173f491fd981e388442fb5a3a3fdaed7d89 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/955631576" 
	@${RM} ${OBJECTDIR}/_ext/955631576/Bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/955631576/Bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/955631576/Bootloader.o.d" -o ${OBJECTDIR}/_ext/955631576/Bootloader.o ../Library/bootloader/Bootloader.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/UserFunctions.o: ../Library/common/UserFunctions.c  .generated_files/flags/bld/98b636fb80ca8e34ccf0c68e33ee1e32e2ad14a4 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d" -o ${OBJECTDIR}/_ext/1129169394/UserFunctions.o ../Library/common/UserFunctions.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1048860731/files_lite.o: ../Library/fileio/files_lite.c  .generated_files/flags/bld/e73c4d5c2519a2414e977aad3696d7f718b22a7 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/1048860731" 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o.d 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/1048860731/files_lite.o.d" -o ${OBJECTDIR}/_ext/1048860731/files_lite.o ../Library/fileio/files_lite.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit.o: ../Library/kit/kit.c  .generated_files/flags/bld/fcda4e4241ed76064e18e6360a4b85a31d1dc8f2 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit.o.d" -o ${OBJECTDIR}/_ext/436516243/kit.o ../Library/kit/kit.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device.o: ../Library/kit/kit_usb_device.c  .generated_files/flags/bld/28b7ee3ed030fa26ea96cf664dc79532f7651691 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device.o ../Library/kit/kit_usb_device.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o: ../Library/kit/kit_usb_device_msd.c  .generated_files/flags/bld/4090572fcb288f2f1bad9e49b395b47d5e03fbb4 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o ../Library/kit/kit_usb_device_msd.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/HexParsing.o: ../Library/programmer/HexParsing.c  .generated_files/flags/bld/166eeb750b26daa6678b1bfb373cbf5a30d8ff15 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/HexParsing.o.d" -o ${OBJECTDIR}/_ext/967316345/HexParsing.o ../Library/programmer/HexParsing.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TaskManager.o: ../Library/system/TaskManager.c  .generated_files/flags/bld/31e9c8d20f917e98ceb5059011362c3e352644f9 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TaskManager.o.d" -o ${OBJECTDIR}/_ext/661682606/TaskManager.o ../Library/system/TaskManager.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TickTimer.o: ../Library/system/TickTimer.c  .generated_files/flags/bld/1fd6e1cf2a03d9d019a272a97eb1ece44435cdd9 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TickTimer.o.d" -o ${OBJECTDIR}/_ext/661682606/TickTimer.o ../Library/system/TickTimer.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/Wdt.o: ../Library/system/Wdt.c  .generated_files/flags/bld/248ad613c2b1bb41fc5125f03137b7a696826068 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/Wdt.o.d" -o ${OBJECTDIR}/_ext/661682606/Wdt.o ../Library/system/Wdt.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_msd.o: ../Library/usb/usb_device_msd.c  .generated_files/flags/bld/5689c717deb5d8892a2ac431d67086033f4b3845 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_msd.o ../Library/usb/usb_device_msd.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/user_usb_device_events.o: ../Library/usb/user_usb_device_events.c  .generated_files/flags/bld/bd9252e525ec4361555a7e5101518ba78978aa66 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d" -o ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o ../Library/usb/user_usb_device_events.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.c  .generated_files/flags/bld/2463fff710e5976d15ae918cd5acba24310e8c59 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o mcc_generated_files/memory/flash.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/flags/bld/59d2f6841420d18d333e0ba19a31adc07feef8ca .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/bld/36145b7ae14ef9fd8c242af44381b68170ac5ec8 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/bld/30ab3bc19dce5b1d40602785797042ccc78d0be8 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/bld/c1a80d3ae6ec72ff37ac75f3a7d40c4f2525b4c6 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/coretimer.o: mcc_generated_files/coretimer.c  .generated_files/flags/bld/b51f6e4bba531d49a4b23a94e23678828eed5a8a .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/coretimer.o.d" -o ${OBJECTDIR}/mcc_generated_files/coretimer.o mcc_generated_files/coretimer.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/bld/edee5a4d02d8b75400f9edb9b7d90e6bfd12c873 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/bld/5c64a80ce539eaa6f3c6637d537b33d32bfac8b7 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/user/bld/libcomp.o: user/bld/libcomp.c  .generated_files/flags/bld/8edcccb09db91db629c3281dfae1e0668a420a62 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/user/bld" 
	@${RM} ${OBJECTDIR}/user/bld/libcomp.o.d 
	@${RM} ${OBJECTDIR}/user/bld/libcomp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/user/bld/libcomp.o.d" -o ${OBJECTDIR}/user/bld/libcomp.o user/bld/libcomp.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/user/bld/AppMain.o: user/bld/AppMain.c  .generated_files/flags/bld/a5dc3f82f3c67a6148c3a2424e3b73f972a74a04 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/user/bld" 
	@${RM} ${OBJECTDIR}/user/bld/AppMain.o.d 
	@${RM} ${OBJECTDIR}/user/bld/AppMain.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/user/bld/AppMain.o.d" -o ${OBJECTDIR}/user/bld/AppMain.o user/bld/AppMain.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/bld/eb4ad34bdfa02f4a23169304640b64ef3d1c3f0a .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/cfg/bld/user_usb_device_descriptors.o: cfg/bld/user_usb_device_descriptors.c  .generated_files/flags/bld/d58aee15b781d1acbb1bb2011bd5fb4337963e0a .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/cfg/bld" 
	@${RM} ${OBJECTDIR}/cfg/bld/user_usb_device_descriptors.o.d 
	@${RM} ${OBJECTDIR}/cfg/bld/user_usb_device_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/cfg/bld/user_usb_device_descriptors.o.d" -o ${OBJECTDIR}/cfg/bld/user_usb_device_descriptors.o cfg/bld/user_usb_device_descriptors.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/955631576/BLD_FileIO.o: ../Library/bootloader/BLD_FileIO.c  .generated_files/flags/bld/2ff3c2cdf0dc063facc087801369d887b49eba60 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/955631576" 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/955631576/BLD_FileIO.o.d" -o ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o ../Library/bootloader/BLD_FileIO.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/955631576/BLD_Nvm.o: ../Library/bootloader/BLD_Nvm.c  .generated_files/flags/bld/4f521a8e30b09315249b7a1704c9490c44c4db56 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/955631576" 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/955631576/BLD_Nvm.o.d" -o ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o ../Library/bootloader/BLD_Nvm.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/955631576/Bootloader.o: ../Library/bootloader/Bootloader.c  .generated_files/flags/bld/39250c78a6647b8521e13b0a4fc03db3e8b110e9 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/955631576" 
	@${RM} ${OBJECTDIR}/_ext/955631576/Bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/955631576/Bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/955631576/Bootloader.o.d" -o ${OBJECTDIR}/_ext/955631576/Bootloader.o ../Library/bootloader/Bootloader.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/UserFunctions.o: ../Library/common/UserFunctions.c  .generated_files/flags/bld/67c1914cda9d3d8bd96ec67d0e7b064186415595 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d" -o ${OBJECTDIR}/_ext/1129169394/UserFunctions.o ../Library/common/UserFunctions.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1048860731/files_lite.o: ../Library/fileio/files_lite.c  .generated_files/flags/bld/baa76f44037272e09cb64a12369e281413cd31a3 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/1048860731" 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o.d 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/1048860731/files_lite.o.d" -o ${OBJECTDIR}/_ext/1048860731/files_lite.o ../Library/fileio/files_lite.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit.o: ../Library/kit/kit.c  .generated_files/flags/bld/baa1e1327e4d5f50324ef798040e77d91d34aa3f .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit.o.d" -o ${OBJECTDIR}/_ext/436516243/kit.o ../Library/kit/kit.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device.o: ../Library/kit/kit_usb_device.c  .generated_files/flags/bld/24e98d9cfd0d083a6e0c71fc31c5ca7346192aaa .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device.o ../Library/kit/kit_usb_device.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o: ../Library/kit/kit_usb_device_msd.c  .generated_files/flags/bld/b053dbc796e93618f5d9e3108f90500f56d7945e .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o ../Library/kit/kit_usb_device_msd.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/HexParsing.o: ../Library/programmer/HexParsing.c  .generated_files/flags/bld/39d381c654a4f0eb79815ddb446ff18ff1b7d109 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/HexParsing.o.d" -o ${OBJECTDIR}/_ext/967316345/HexParsing.o ../Library/programmer/HexParsing.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TaskManager.o: ../Library/system/TaskManager.c  .generated_files/flags/bld/3a2514f6304fc72878605fb879dbbdc85c64b993 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TaskManager.o.d" -o ${OBJECTDIR}/_ext/661682606/TaskManager.o ../Library/system/TaskManager.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TickTimer.o: ../Library/system/TickTimer.c  .generated_files/flags/bld/95eef9c6fd34473fc611f0c1c53e639879bf6577 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TickTimer.o.d" -o ${OBJECTDIR}/_ext/661682606/TickTimer.o ../Library/system/TickTimer.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/Wdt.o: ../Library/system/Wdt.c  .generated_files/flags/bld/ed7bb21a4a3afcf7dae34739f474f9d054fb82 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/Wdt.o.d" -o ${OBJECTDIR}/_ext/661682606/Wdt.o ../Library/system/Wdt.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_msd.o: ../Library/usb/usb_device_msd.c  .generated_files/flags/bld/fc2534e952ab828c2e696b43cb1d55b70a9d1e3b .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_msd.o ../Library/usb/usb_device_msd.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/user_usb_device_events.o: ../Library/usb/user_usb_device_events.c  .generated_files/flags/bld/7363265699b46b986f68164556ce337a66b46a81 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d" -o ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o ../Library/usb/user_usb_device_events.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.c  .generated_files/flags/bld/b172161a0fdef7944f78dce8003fa52d6085fa0d .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o mcc_generated_files/memory/flash.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/flags/bld/98a6d3342eb21b710f212d3f09466b6be75990a4 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/bld/c6062de265ab5171f906c2e6c241c4e65f5c5947 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/bld/94131a51945e136eee65ec2b93f8f2dea97776e .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/bld/9c68e5c8fda62ad17cf66c0bf858d7d7ac9ff4da .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/coretimer.o: mcc_generated_files/coretimer.c  .generated_files/flags/bld/dffa936a984ddce1f70c4018d93985c528ec6e17 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/coretimer.o.d" -o ${OBJECTDIR}/mcc_generated_files/coretimer.o mcc_generated_files/coretimer.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/bld/ac4bcc1d389c22a1772251d38cb4ba2156ec624 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/bld/b1d15143c5e07cac28892b6596cd410cf3913f2 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/user/bld/libcomp.o: user/bld/libcomp.c  .generated_files/flags/bld/73e9d247cd2a3d04fd568ebebd73d514b7f26cc8 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/user/bld" 
	@${RM} ${OBJECTDIR}/user/bld/libcomp.o.d 
	@${RM} ${OBJECTDIR}/user/bld/libcomp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/user/bld/libcomp.o.d" -o ${OBJECTDIR}/user/bld/libcomp.o user/bld/libcomp.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/user/bld/AppMain.o: user/bld/AppMain.c  .generated_files/flags/bld/3768fd3a4a942ab3e624e09a83db63e235aee184 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
	@${MKDIR} "${OBJECTDIR}/user/bld" 
	@${RM} ${OBJECTDIR}/user/bld/AppMain.o.d 
	@${RM} ${OBJECTDIR}/user/bld/AppMain.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"cfg/bld" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"user/bld" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DCOMMON_LIB_CFG -DUSBGEN_H -DUSBCFG_H -D__USB_DESCRIPTORS_C -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/user/bld/AppMain.o.d" -o ${OBJECTDIR}/user/bld/AppMain.o user/bld/AppMain.c    -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/bld/cf3cf966a4bcf47ce7b18892806ccd504db2a827 .generated_files/flags/bld/5ef9415e1d36cc844a9a54db0dd68d3a003c2aef
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/PG.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_bld=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--cref,--warn-section-align,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
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
