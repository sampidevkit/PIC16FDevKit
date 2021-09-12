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
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=null
DEBUGGABLE_SUFFIX=null
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PG.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=null
DEBUGGABLE_SUFFIX=null
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
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/usb/usb_descriptors.c mcc_generated_files/device_config.c mcc_generated_files/usb/usb_device_events.c mcc_generated_files/eusart.c mcc_generated_files/usb/usb_device_generic.c mcc_generated_files/interrupt_manager.c mcc_generated_files/pin_manager.c mcc_generated_files/mcc.c main.c mcc_generated_files/usb/usb_device.c mcc_generated_files/tmr1.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.${OUTPUT_EXTENSION_C} ${OBJECTDIR}/mcc_generated_files/device_config.${OUTPUT_EXTENSION_C} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.${OUTPUT_EXTENSION_C} ${OBJECTDIR}/mcc_generated_files/eusart.${OUTPUT_EXTENSION_C} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.${OUTPUT_EXTENSION_C} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.${OUTPUT_EXTENSION_C} ${OBJECTDIR}/mcc_generated_files/pin_manager.${OUTPUT_EXTENSION_C} ${OBJECTDIR}/mcc_generated_files/mcc.${OUTPUT_EXTENSION_C} ${OBJECTDIR}/main.${OUTPUT_EXTENSION_C} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.${OUTPUT_EXTENSION_C} ${OBJECTDIR}/mcc_generated_files/tmr1.${OUTPUT_EXTENSION_C}
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.${OUTPUT_EXTENSION_C}.d ${OBJECTDIR}/mcc_generated_files/device_config.${OUTPUT_EXTENSION_C}.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.${OUTPUT_EXTENSION_C}.d ${OBJECTDIR}/mcc_generated_files/eusart.${OUTPUT_EXTENSION_C}.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.${OUTPUT_EXTENSION_C}.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.${OUTPUT_EXTENSION_C}.d ${OBJECTDIR}/mcc_generated_files/pin_manager.${OUTPUT_EXTENSION_C}.d ${OBJECTDIR}/mcc_generated_files/mcc.${OUTPUT_EXTENSION_C}.d ${OBJECTDIR}/main.${OUTPUT_EXTENSION_C}.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device.${OUTPUT_EXTENSION_C}.d ${OBJECTDIR}/mcc_generated_files/tmr1.${OUTPUT_EXTENSION_C}.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.${OUTPUT_EXTENSION_C} ${OBJECTDIR}/mcc_generated_files/device_config.${OUTPUT_EXTENSION_C} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.${OUTPUT_EXTENSION_C} ${OBJECTDIR}/mcc_generated_files/eusart.${OUTPUT_EXTENSION_C} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.${OUTPUT_EXTENSION_C} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.${OUTPUT_EXTENSION_C} ${OBJECTDIR}/mcc_generated_files/pin_manager.${OUTPUT_EXTENSION_C} ${OBJECTDIR}/mcc_generated_files/mcc.${OUTPUT_EXTENSION_C} ${OBJECTDIR}/main.${OUTPUT_EXTENSION_C} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.${OUTPUT_EXTENSION_C} ${OBJECTDIR}/mcc_generated_files/tmr1.${OUTPUT_EXTENSION_C}

# Source Files
SOURCEFILES=mcc_generated_files/usb/usb_descriptors.c mcc_generated_files/device_config.c mcc_generated_files/usb/usb_device_events.c mcc_generated_files/eusart.c mcc_generated_files/usb/usb_device_generic.c mcc_generated_files/interrupt_manager.c mcc_generated_files/pin_manager.c mcc_generated_files/mcc.c main.c mcc_generated_files/usb/usb_device.c mcc_generated_files/tmr1.c



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

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/PG.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.${OUTPUT_EXTENSION_C}: mcc_generated_files/usb/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.${OUTPUT_EXTENSION_C}.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.${OUTPUT_EXTENSION_C} 
	 -D__DEBUG=1    -fno-short-double -fno-short-float ${code-model-external.prefix}wordwrite ${optimization-options.prefix}${disable-optimizations.true} ${what-to-do.prefix}ignore ${preprocess-assembler.trueemission} -N255 ${warn-level.prefix}-3 ${asmlist.true} -D=$(CND_CONF)  ${linker-report-options.prefix}-psect${linker-report-options.separator}-class${linker-report-options.separator}+mem${linker-report-options.separator}-hex${linker-report-options.separator}-file ${ld-extra.prefix}${ld-extra.false} ${linker-runtime-options.prefix}+clear${linker-runtime-options.separator}${initialize-data.true}${linker-runtime-options.separator}${keep-generated-startup.as.false}${linker-runtime-options.separator}${opt-xc8-linker-link_startup.false}${linker-runtime-options.separator}${calibrate-oscillator.false}${linker-runtime-options.separator}${backup-reset-condition-flags.false}${linker-runtime-options.separator}${format-hex-file-for-download.false}${linker-runtime-options.separator}${managed-stack.false}${linker-runtime-options.separator}${program-the-device-with-default-config-words.true}${linker-runtime-options.separator}-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs ${stack-options.prefix}compiled    mcc_generated_files/usb/usb_descriptors.c 
	
${OBJECTDIR}/mcc_generated_files/device_config.${OUTPUT_EXTENSION_C}: mcc_generated_files/device_config.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.${OUTPUT_EXTENSION_C}.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.${OUTPUT_EXTENSION_C} 
	 -D__DEBUG=1    -fno-short-double -fno-short-float ${code-model-external.prefix}wordwrite ${optimization-options.prefix}${disable-optimizations.true} ${what-to-do.prefix}ignore ${preprocess-assembler.trueemission} -N255 ${warn-level.prefix}-3 ${asmlist.true} -D=$(CND_CONF)  ${linker-report-options.prefix}-psect${linker-report-options.separator}-class${linker-report-options.separator}+mem${linker-report-options.separator}-hex${linker-report-options.separator}-file ${ld-extra.prefix}${ld-extra.false} ${linker-runtime-options.prefix}+clear${linker-runtime-options.separator}${initialize-data.true}${linker-runtime-options.separator}${keep-generated-startup.as.false}${linker-runtime-options.separator}${opt-xc8-linker-link_startup.false}${linker-runtime-options.separator}${calibrate-oscillator.false}${linker-runtime-options.separator}${backup-reset-condition-flags.false}${linker-runtime-options.separator}${format-hex-file-for-download.false}${linker-runtime-options.separator}${managed-stack.false}${linker-runtime-options.separator}${program-the-device-with-default-config-words.true}${linker-runtime-options.separator}-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs ${stack-options.prefix}compiled    mcc_generated_files/device_config.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.${OUTPUT_EXTENSION_C}: mcc_generated_files/usb/usb_device_events.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.${OUTPUT_EXTENSION_C}.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.${OUTPUT_EXTENSION_C} 
	 -D__DEBUG=1    -fno-short-double -fno-short-float ${code-model-external.prefix}wordwrite ${optimization-options.prefix}${disable-optimizations.true} ${what-to-do.prefix}ignore ${preprocess-assembler.trueemission} -N255 ${warn-level.prefix}-3 ${asmlist.true} -D=$(CND_CONF)  ${linker-report-options.prefix}-psect${linker-report-options.separator}-class${linker-report-options.separator}+mem${linker-report-options.separator}-hex${linker-report-options.separator}-file ${ld-extra.prefix}${ld-extra.false} ${linker-runtime-options.prefix}+clear${linker-runtime-options.separator}${initialize-data.true}${linker-runtime-options.separator}${keep-generated-startup.as.false}${linker-runtime-options.separator}${opt-xc8-linker-link_startup.false}${linker-runtime-options.separator}${calibrate-oscillator.false}${linker-runtime-options.separator}${backup-reset-condition-flags.false}${linker-runtime-options.separator}${format-hex-file-for-download.false}${linker-runtime-options.separator}${managed-stack.false}${linker-runtime-options.separator}${program-the-device-with-default-config-words.true}${linker-runtime-options.separator}-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs ${stack-options.prefix}compiled    mcc_generated_files/usb/usb_device_events.c 
	
${OBJECTDIR}/mcc_generated_files/eusart.${OUTPUT_EXTENSION_C}: mcc_generated_files/eusart.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/eusart.${OUTPUT_EXTENSION_C}.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/eusart.${OUTPUT_EXTENSION_C} 
	 -D__DEBUG=1    -fno-short-double -fno-short-float ${code-model-external.prefix}wordwrite ${optimization-options.prefix}${disable-optimizations.true} ${what-to-do.prefix}ignore ${preprocess-assembler.trueemission} -N255 ${warn-level.prefix}-3 ${asmlist.true} -D=$(CND_CONF)  ${linker-report-options.prefix}-psect${linker-report-options.separator}-class${linker-report-options.separator}+mem${linker-report-options.separator}-hex${linker-report-options.separator}-file ${ld-extra.prefix}${ld-extra.false} ${linker-runtime-options.prefix}+clear${linker-runtime-options.separator}${initialize-data.true}${linker-runtime-options.separator}${keep-generated-startup.as.false}${linker-runtime-options.separator}${opt-xc8-linker-link_startup.false}${linker-runtime-options.separator}${calibrate-oscillator.false}${linker-runtime-options.separator}${backup-reset-condition-flags.false}${linker-runtime-options.separator}${format-hex-file-for-download.false}${linker-runtime-options.separator}${managed-stack.false}${linker-runtime-options.separator}${program-the-device-with-default-config-words.true}${linker-runtime-options.separator}-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs ${stack-options.prefix}compiled    mcc_generated_files/eusart.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.${OUTPUT_EXTENSION_C}: mcc_generated_files/usb/usb_device_generic.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.${OUTPUT_EXTENSION_C}.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.${OUTPUT_EXTENSION_C} 
	 -D__DEBUG=1    -fno-short-double -fno-short-float ${code-model-external.prefix}wordwrite ${optimization-options.prefix}${disable-optimizations.true} ${what-to-do.prefix}ignore ${preprocess-assembler.trueemission} -N255 ${warn-level.prefix}-3 ${asmlist.true} -D=$(CND_CONF)  ${linker-report-options.prefix}-psect${linker-report-options.separator}-class${linker-report-options.separator}+mem${linker-report-options.separator}-hex${linker-report-options.separator}-file ${ld-extra.prefix}${ld-extra.false} ${linker-runtime-options.prefix}+clear${linker-runtime-options.separator}${initialize-data.true}${linker-runtime-options.separator}${keep-generated-startup.as.false}${linker-runtime-options.separator}${opt-xc8-linker-link_startup.false}${linker-runtime-options.separator}${calibrate-oscillator.false}${linker-runtime-options.separator}${backup-reset-condition-flags.false}${linker-runtime-options.separator}${format-hex-file-for-download.false}${linker-runtime-options.separator}${managed-stack.false}${linker-runtime-options.separator}${program-the-device-with-default-config-words.true}${linker-runtime-options.separator}-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs ${stack-options.prefix}compiled    mcc_generated_files/usb/usb_device_generic.c 
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.${OUTPUT_EXTENSION_C}: mcc_generated_files/interrupt_manager.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.${OUTPUT_EXTENSION_C}.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.${OUTPUT_EXTENSION_C} 
	 -D__DEBUG=1    -fno-short-double -fno-short-float ${code-model-external.prefix}wordwrite ${optimization-options.prefix}${disable-optimizations.true} ${what-to-do.prefix}ignore ${preprocess-assembler.trueemission} -N255 ${warn-level.prefix}-3 ${asmlist.true} -D=$(CND_CONF)  ${linker-report-options.prefix}-psect${linker-report-options.separator}-class${linker-report-options.separator}+mem${linker-report-options.separator}-hex${linker-report-options.separator}-file ${ld-extra.prefix}${ld-extra.false} ${linker-runtime-options.prefix}+clear${linker-runtime-options.separator}${initialize-data.true}${linker-runtime-options.separator}${keep-generated-startup.as.false}${linker-runtime-options.separator}${opt-xc8-linker-link_startup.false}${linker-runtime-options.separator}${calibrate-oscillator.false}${linker-runtime-options.separator}${backup-reset-condition-flags.false}${linker-runtime-options.separator}${format-hex-file-for-download.false}${linker-runtime-options.separator}${managed-stack.false}${linker-runtime-options.separator}${program-the-device-with-default-config-words.true}${linker-runtime-options.separator}-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs ${stack-options.prefix}compiled    mcc_generated_files/interrupt_manager.c 
	
${OBJECTDIR}/mcc_generated_files/pin_manager.${OUTPUT_EXTENSION_C}: mcc_generated_files/pin_manager.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.${OUTPUT_EXTENSION_C}.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.${OUTPUT_EXTENSION_C} 
	 -D__DEBUG=1    -fno-short-double -fno-short-float ${code-model-external.prefix}wordwrite ${optimization-options.prefix}${disable-optimizations.true} ${what-to-do.prefix}ignore ${preprocess-assembler.trueemission} -N255 ${warn-level.prefix}-3 ${asmlist.true} -D=$(CND_CONF)  ${linker-report-options.prefix}-psect${linker-report-options.separator}-class${linker-report-options.separator}+mem${linker-report-options.separator}-hex${linker-report-options.separator}-file ${ld-extra.prefix}${ld-extra.false} ${linker-runtime-options.prefix}+clear${linker-runtime-options.separator}${initialize-data.true}${linker-runtime-options.separator}${keep-generated-startup.as.false}${linker-runtime-options.separator}${opt-xc8-linker-link_startup.false}${linker-runtime-options.separator}${calibrate-oscillator.false}${linker-runtime-options.separator}${backup-reset-condition-flags.false}${linker-runtime-options.separator}${format-hex-file-for-download.false}${linker-runtime-options.separator}${managed-stack.false}${linker-runtime-options.separator}${program-the-device-with-default-config-words.true}${linker-runtime-options.separator}-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs ${stack-options.prefix}compiled    mcc_generated_files/pin_manager.c 
	
${OBJECTDIR}/mcc_generated_files/mcc.${OUTPUT_EXTENSION_C}: mcc_generated_files/mcc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.${OUTPUT_EXTENSION_C}.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.${OUTPUT_EXTENSION_C} 
	 -D__DEBUG=1    -fno-short-double -fno-short-float ${code-model-external.prefix}wordwrite ${optimization-options.prefix}${disable-optimizations.true} ${what-to-do.prefix}ignore ${preprocess-assembler.trueemission} -N255 ${warn-level.prefix}-3 ${asmlist.true} -D=$(CND_CONF)  ${linker-report-options.prefix}-psect${linker-report-options.separator}-class${linker-report-options.separator}+mem${linker-report-options.separator}-hex${linker-report-options.separator}-file ${ld-extra.prefix}${ld-extra.false} ${linker-runtime-options.prefix}+clear${linker-runtime-options.separator}${initialize-data.true}${linker-runtime-options.separator}${keep-generated-startup.as.false}${linker-runtime-options.separator}${opt-xc8-linker-link_startup.false}${linker-runtime-options.separator}${calibrate-oscillator.false}${linker-runtime-options.separator}${backup-reset-condition-flags.false}${linker-runtime-options.separator}${format-hex-file-for-download.false}${linker-runtime-options.separator}${managed-stack.false}${linker-runtime-options.separator}${program-the-device-with-default-config-words.true}${linker-runtime-options.separator}-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs ${stack-options.prefix}compiled    mcc_generated_files/mcc.c 
	
${OBJECTDIR}/main.${OUTPUT_EXTENSION_C}: main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.${OUTPUT_EXTENSION_C}.d 
	@${RM} ${OBJECTDIR}/main.${OUTPUT_EXTENSION_C} 
	 -D__DEBUG=1    -fno-short-double -fno-short-float ${code-model-external.prefix}wordwrite ${optimization-options.prefix}${disable-optimizations.true} ${what-to-do.prefix}ignore ${preprocess-assembler.trueemission} -N255 ${warn-level.prefix}-3 ${asmlist.true} -D=$(CND_CONF)  ${linker-report-options.prefix}-psect${linker-report-options.separator}-class${linker-report-options.separator}+mem${linker-report-options.separator}-hex${linker-report-options.separator}-file ${ld-extra.prefix}${ld-extra.false} ${linker-runtime-options.prefix}+clear${linker-runtime-options.separator}${initialize-data.true}${linker-runtime-options.separator}${keep-generated-startup.as.false}${linker-runtime-options.separator}${opt-xc8-linker-link_startup.false}${linker-runtime-options.separator}${calibrate-oscillator.false}${linker-runtime-options.separator}${backup-reset-condition-flags.false}${linker-runtime-options.separator}${format-hex-file-for-download.false}${linker-runtime-options.separator}${managed-stack.false}${linker-runtime-options.separator}${program-the-device-with-default-config-words.true}${linker-runtime-options.separator}-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs ${stack-options.prefix}compiled    main.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.${OUTPUT_EXTENSION_C}: mcc_generated_files/usb/usb_device.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.${OUTPUT_EXTENSION_C}.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.${OUTPUT_EXTENSION_C} 
	 -D__DEBUG=1    -fno-short-double -fno-short-float ${code-model-external.prefix}wordwrite ${optimization-options.prefix}${disable-optimizations.true} ${what-to-do.prefix}ignore ${preprocess-assembler.trueemission} -N255 ${warn-level.prefix}-3 ${asmlist.true} -D=$(CND_CONF)  ${linker-report-options.prefix}-psect${linker-report-options.separator}-class${linker-report-options.separator}+mem${linker-report-options.separator}-hex${linker-report-options.separator}-file ${ld-extra.prefix}${ld-extra.false} ${linker-runtime-options.prefix}+clear${linker-runtime-options.separator}${initialize-data.true}${linker-runtime-options.separator}${keep-generated-startup.as.false}${linker-runtime-options.separator}${opt-xc8-linker-link_startup.false}${linker-runtime-options.separator}${calibrate-oscillator.false}${linker-runtime-options.separator}${backup-reset-condition-flags.false}${linker-runtime-options.separator}${format-hex-file-for-download.false}${linker-runtime-options.separator}${managed-stack.false}${linker-runtime-options.separator}${program-the-device-with-default-config-words.true}${linker-runtime-options.separator}-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs ${stack-options.prefix}compiled    mcc_generated_files/usb/usb_device.c 
	
${OBJECTDIR}/mcc_generated_files/tmr1.${OUTPUT_EXTENSION_C}: mcc_generated_files/tmr1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.${OUTPUT_EXTENSION_C}.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.${OUTPUT_EXTENSION_C} 
	 -D__DEBUG=1    -fno-short-double -fno-short-float ${code-model-external.prefix}wordwrite ${optimization-options.prefix}${disable-optimizations.true} ${what-to-do.prefix}ignore ${preprocess-assembler.trueemission} -N255 ${warn-level.prefix}-3 ${asmlist.true} -D=$(CND_CONF)  ${linker-report-options.prefix}-psect${linker-report-options.separator}-class${linker-report-options.separator}+mem${linker-report-options.separator}-hex${linker-report-options.separator}-file ${ld-extra.prefix}${ld-extra.false} ${linker-runtime-options.prefix}+clear${linker-runtime-options.separator}${initialize-data.true}${linker-runtime-options.separator}${keep-generated-startup.as.false}${linker-runtime-options.separator}${opt-xc8-linker-link_startup.false}${linker-runtime-options.separator}${calibrate-oscillator.false}${linker-runtime-options.separator}${backup-reset-condition-flags.false}${linker-runtime-options.separator}${format-hex-file-for-download.false}${linker-runtime-options.separator}${managed-stack.false}${linker-runtime-options.separator}${program-the-device-with-default-config-words.true}${linker-runtime-options.separator}-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs ${stack-options.prefix}compiled    mcc_generated_files/tmr1.c 
	
else
${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.${OUTPUT_EXTENSION_C}: mcc_generated_files/usb/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.${OUTPUT_EXTENSION_C}.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.${OUTPUT_EXTENSION_C} 
	   -fno-short-double -fno-short-float ${code-model-external.prefix}wordwrite ${optimization-options.prefix}${disable-optimizations.true} ${what-to-do.prefix}ignore ${preprocess-assembler.trueemission} -N255 ${warn-level.prefix}-3 ${asmlist.true} -D=$(CND_CONF)  ${linker-report-options.prefix}-psect${linker-report-options.separator}-class${linker-report-options.separator}+mem${linker-report-options.separator}-hex${linker-report-options.separator}-file ${ld-extra.prefix}${ld-extra.false} ${linker-runtime-options.prefix}+clear${linker-runtime-options.separator}${initialize-data.true}${linker-runtime-options.separator}${keep-generated-startup.as.false}${linker-runtime-options.separator}${opt-xc8-linker-link_startup.false}${linker-runtime-options.separator}${calibrate-oscillator.false}${linker-runtime-options.separator}${backup-reset-condition-flags.false}${linker-runtime-options.separator}${format-hex-file-for-download.false}${linker-runtime-options.separator}${managed-stack.false}${linker-runtime-options.separator}${program-the-device-with-default-config-words.true}${linker-runtime-options.separator}-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs ${stack-options.prefix}compiled    mcc_generated_files/usb/usb_descriptors.c 
	
${OBJECTDIR}/mcc_generated_files/device_config.${OUTPUT_EXTENSION_C}: mcc_generated_files/device_config.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.${OUTPUT_EXTENSION_C}.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.${OUTPUT_EXTENSION_C} 
	   -fno-short-double -fno-short-float ${code-model-external.prefix}wordwrite ${optimization-options.prefix}${disable-optimizations.true} ${what-to-do.prefix}ignore ${preprocess-assembler.trueemission} -N255 ${warn-level.prefix}-3 ${asmlist.true} -D=$(CND_CONF)  ${linker-report-options.prefix}-psect${linker-report-options.separator}-class${linker-report-options.separator}+mem${linker-report-options.separator}-hex${linker-report-options.separator}-file ${ld-extra.prefix}${ld-extra.false} ${linker-runtime-options.prefix}+clear${linker-runtime-options.separator}${initialize-data.true}${linker-runtime-options.separator}${keep-generated-startup.as.false}${linker-runtime-options.separator}${opt-xc8-linker-link_startup.false}${linker-runtime-options.separator}${calibrate-oscillator.false}${linker-runtime-options.separator}${backup-reset-condition-flags.false}${linker-runtime-options.separator}${format-hex-file-for-download.false}${linker-runtime-options.separator}${managed-stack.false}${linker-runtime-options.separator}${program-the-device-with-default-config-words.true}${linker-runtime-options.separator}-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs ${stack-options.prefix}compiled    mcc_generated_files/device_config.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.${OUTPUT_EXTENSION_C}: mcc_generated_files/usb/usb_device_events.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.${OUTPUT_EXTENSION_C}.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.${OUTPUT_EXTENSION_C} 
	   -fno-short-double -fno-short-float ${code-model-external.prefix}wordwrite ${optimization-options.prefix}${disable-optimizations.true} ${what-to-do.prefix}ignore ${preprocess-assembler.trueemission} -N255 ${warn-level.prefix}-3 ${asmlist.true} -D=$(CND_CONF)  ${linker-report-options.prefix}-psect${linker-report-options.separator}-class${linker-report-options.separator}+mem${linker-report-options.separator}-hex${linker-report-options.separator}-file ${ld-extra.prefix}${ld-extra.false} ${linker-runtime-options.prefix}+clear${linker-runtime-options.separator}${initialize-data.true}${linker-runtime-options.separator}${keep-generated-startup.as.false}${linker-runtime-options.separator}${opt-xc8-linker-link_startup.false}${linker-runtime-options.separator}${calibrate-oscillator.false}${linker-runtime-options.separator}${backup-reset-condition-flags.false}${linker-runtime-options.separator}${format-hex-file-for-download.false}${linker-runtime-options.separator}${managed-stack.false}${linker-runtime-options.separator}${program-the-device-with-default-config-words.true}${linker-runtime-options.separator}-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs ${stack-options.prefix}compiled    mcc_generated_files/usb/usb_device_events.c 
	
${OBJECTDIR}/mcc_generated_files/eusart.${OUTPUT_EXTENSION_C}: mcc_generated_files/eusart.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/eusart.${OUTPUT_EXTENSION_C}.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/eusart.${OUTPUT_EXTENSION_C} 
	   -fno-short-double -fno-short-float ${code-model-external.prefix}wordwrite ${optimization-options.prefix}${disable-optimizations.true} ${what-to-do.prefix}ignore ${preprocess-assembler.trueemission} -N255 ${warn-level.prefix}-3 ${asmlist.true} -D=$(CND_CONF)  ${linker-report-options.prefix}-psect${linker-report-options.separator}-class${linker-report-options.separator}+mem${linker-report-options.separator}-hex${linker-report-options.separator}-file ${ld-extra.prefix}${ld-extra.false} ${linker-runtime-options.prefix}+clear${linker-runtime-options.separator}${initialize-data.true}${linker-runtime-options.separator}${keep-generated-startup.as.false}${linker-runtime-options.separator}${opt-xc8-linker-link_startup.false}${linker-runtime-options.separator}${calibrate-oscillator.false}${linker-runtime-options.separator}${backup-reset-condition-flags.false}${linker-runtime-options.separator}${format-hex-file-for-download.false}${linker-runtime-options.separator}${managed-stack.false}${linker-runtime-options.separator}${program-the-device-with-default-config-words.true}${linker-runtime-options.separator}-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs ${stack-options.prefix}compiled    mcc_generated_files/eusart.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.${OUTPUT_EXTENSION_C}: mcc_generated_files/usb/usb_device_generic.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.${OUTPUT_EXTENSION_C}.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.${OUTPUT_EXTENSION_C} 
	   -fno-short-double -fno-short-float ${code-model-external.prefix}wordwrite ${optimization-options.prefix}${disable-optimizations.true} ${what-to-do.prefix}ignore ${preprocess-assembler.trueemission} -N255 ${warn-level.prefix}-3 ${asmlist.true} -D=$(CND_CONF)  ${linker-report-options.prefix}-psect${linker-report-options.separator}-class${linker-report-options.separator}+mem${linker-report-options.separator}-hex${linker-report-options.separator}-file ${ld-extra.prefix}${ld-extra.false} ${linker-runtime-options.prefix}+clear${linker-runtime-options.separator}${initialize-data.true}${linker-runtime-options.separator}${keep-generated-startup.as.false}${linker-runtime-options.separator}${opt-xc8-linker-link_startup.false}${linker-runtime-options.separator}${calibrate-oscillator.false}${linker-runtime-options.separator}${backup-reset-condition-flags.false}${linker-runtime-options.separator}${format-hex-file-for-download.false}${linker-runtime-options.separator}${managed-stack.false}${linker-runtime-options.separator}${program-the-device-with-default-config-words.true}${linker-runtime-options.separator}-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs ${stack-options.prefix}compiled    mcc_generated_files/usb/usb_device_generic.c 
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.${OUTPUT_EXTENSION_C}: mcc_generated_files/interrupt_manager.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.${OUTPUT_EXTENSION_C}.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.${OUTPUT_EXTENSION_C} 
	   -fno-short-double -fno-short-float ${code-model-external.prefix}wordwrite ${optimization-options.prefix}${disable-optimizations.true} ${what-to-do.prefix}ignore ${preprocess-assembler.trueemission} -N255 ${warn-level.prefix}-3 ${asmlist.true} -D=$(CND_CONF)  ${linker-report-options.prefix}-psect${linker-report-options.separator}-class${linker-report-options.separator}+mem${linker-report-options.separator}-hex${linker-report-options.separator}-file ${ld-extra.prefix}${ld-extra.false} ${linker-runtime-options.prefix}+clear${linker-runtime-options.separator}${initialize-data.true}${linker-runtime-options.separator}${keep-generated-startup.as.false}${linker-runtime-options.separator}${opt-xc8-linker-link_startup.false}${linker-runtime-options.separator}${calibrate-oscillator.false}${linker-runtime-options.separator}${backup-reset-condition-flags.false}${linker-runtime-options.separator}${format-hex-file-for-download.false}${linker-runtime-options.separator}${managed-stack.false}${linker-runtime-options.separator}${program-the-device-with-default-config-words.true}${linker-runtime-options.separator}-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs ${stack-options.prefix}compiled    mcc_generated_files/interrupt_manager.c 
	
${OBJECTDIR}/mcc_generated_files/pin_manager.${OUTPUT_EXTENSION_C}: mcc_generated_files/pin_manager.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.${OUTPUT_EXTENSION_C}.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.${OUTPUT_EXTENSION_C} 
	   -fno-short-double -fno-short-float ${code-model-external.prefix}wordwrite ${optimization-options.prefix}${disable-optimizations.true} ${what-to-do.prefix}ignore ${preprocess-assembler.trueemission} -N255 ${warn-level.prefix}-3 ${asmlist.true} -D=$(CND_CONF)  ${linker-report-options.prefix}-psect${linker-report-options.separator}-class${linker-report-options.separator}+mem${linker-report-options.separator}-hex${linker-report-options.separator}-file ${ld-extra.prefix}${ld-extra.false} ${linker-runtime-options.prefix}+clear${linker-runtime-options.separator}${initialize-data.true}${linker-runtime-options.separator}${keep-generated-startup.as.false}${linker-runtime-options.separator}${opt-xc8-linker-link_startup.false}${linker-runtime-options.separator}${calibrate-oscillator.false}${linker-runtime-options.separator}${backup-reset-condition-flags.false}${linker-runtime-options.separator}${format-hex-file-for-download.false}${linker-runtime-options.separator}${managed-stack.false}${linker-runtime-options.separator}${program-the-device-with-default-config-words.true}${linker-runtime-options.separator}-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs ${stack-options.prefix}compiled    mcc_generated_files/pin_manager.c 
	
${OBJECTDIR}/mcc_generated_files/mcc.${OUTPUT_EXTENSION_C}: mcc_generated_files/mcc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.${OUTPUT_EXTENSION_C}.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.${OUTPUT_EXTENSION_C} 
	   -fno-short-double -fno-short-float ${code-model-external.prefix}wordwrite ${optimization-options.prefix}${disable-optimizations.true} ${what-to-do.prefix}ignore ${preprocess-assembler.trueemission} -N255 ${warn-level.prefix}-3 ${asmlist.true} -D=$(CND_CONF)  ${linker-report-options.prefix}-psect${linker-report-options.separator}-class${linker-report-options.separator}+mem${linker-report-options.separator}-hex${linker-report-options.separator}-file ${ld-extra.prefix}${ld-extra.false} ${linker-runtime-options.prefix}+clear${linker-runtime-options.separator}${initialize-data.true}${linker-runtime-options.separator}${keep-generated-startup.as.false}${linker-runtime-options.separator}${opt-xc8-linker-link_startup.false}${linker-runtime-options.separator}${calibrate-oscillator.false}${linker-runtime-options.separator}${backup-reset-condition-flags.false}${linker-runtime-options.separator}${format-hex-file-for-download.false}${linker-runtime-options.separator}${managed-stack.false}${linker-runtime-options.separator}${program-the-device-with-default-config-words.true}${linker-runtime-options.separator}-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs ${stack-options.prefix}compiled    mcc_generated_files/mcc.c 
	
${OBJECTDIR}/main.${OUTPUT_EXTENSION_C}: main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.${OUTPUT_EXTENSION_C}.d 
	@${RM} ${OBJECTDIR}/main.${OUTPUT_EXTENSION_C} 
	   -fno-short-double -fno-short-float ${code-model-external.prefix}wordwrite ${optimization-options.prefix}${disable-optimizations.true} ${what-to-do.prefix}ignore ${preprocess-assembler.trueemission} -N255 ${warn-level.prefix}-3 ${asmlist.true} -D=$(CND_CONF)  ${linker-report-options.prefix}-psect${linker-report-options.separator}-class${linker-report-options.separator}+mem${linker-report-options.separator}-hex${linker-report-options.separator}-file ${ld-extra.prefix}${ld-extra.false} ${linker-runtime-options.prefix}+clear${linker-runtime-options.separator}${initialize-data.true}${linker-runtime-options.separator}${keep-generated-startup.as.false}${linker-runtime-options.separator}${opt-xc8-linker-link_startup.false}${linker-runtime-options.separator}${calibrate-oscillator.false}${linker-runtime-options.separator}${backup-reset-condition-flags.false}${linker-runtime-options.separator}${format-hex-file-for-download.false}${linker-runtime-options.separator}${managed-stack.false}${linker-runtime-options.separator}${program-the-device-with-default-config-words.true}${linker-runtime-options.separator}-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs ${stack-options.prefix}compiled    main.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.${OUTPUT_EXTENSION_C}: mcc_generated_files/usb/usb_device.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.${OUTPUT_EXTENSION_C}.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.${OUTPUT_EXTENSION_C} 
	   -fno-short-double -fno-short-float ${code-model-external.prefix}wordwrite ${optimization-options.prefix}${disable-optimizations.true} ${what-to-do.prefix}ignore ${preprocess-assembler.trueemission} -N255 ${warn-level.prefix}-3 ${asmlist.true} -D=$(CND_CONF)  ${linker-report-options.prefix}-psect${linker-report-options.separator}-class${linker-report-options.separator}+mem${linker-report-options.separator}-hex${linker-report-options.separator}-file ${ld-extra.prefix}${ld-extra.false} ${linker-runtime-options.prefix}+clear${linker-runtime-options.separator}${initialize-data.true}${linker-runtime-options.separator}${keep-generated-startup.as.false}${linker-runtime-options.separator}${opt-xc8-linker-link_startup.false}${linker-runtime-options.separator}${calibrate-oscillator.false}${linker-runtime-options.separator}${backup-reset-condition-flags.false}${linker-runtime-options.separator}${format-hex-file-for-download.false}${linker-runtime-options.separator}${managed-stack.false}${linker-runtime-options.separator}${program-the-device-with-default-config-words.true}${linker-runtime-options.separator}-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs ${stack-options.prefix}compiled    mcc_generated_files/usb/usb_device.c 
	
${OBJECTDIR}/mcc_generated_files/tmr1.${OUTPUT_EXTENSION_C}: mcc_generated_files/tmr1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.${OUTPUT_EXTENSION_C}.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.${OUTPUT_EXTENSION_C} 
	   -fno-short-double -fno-short-float ${code-model-external.prefix}wordwrite ${optimization-options.prefix}${disable-optimizations.true} ${what-to-do.prefix}ignore ${preprocess-assembler.trueemission} -N255 ${warn-level.prefix}-3 ${asmlist.true} -D=$(CND_CONF)  ${linker-report-options.prefix}-psect${linker-report-options.separator}-class${linker-report-options.separator}+mem${linker-report-options.separator}-hex${linker-report-options.separator}-file ${ld-extra.prefix}${ld-extra.false} ${linker-runtime-options.prefix}+clear${linker-runtime-options.separator}${initialize-data.true}${linker-runtime-options.separator}${keep-generated-startup.as.false}${linker-runtime-options.separator}${opt-xc8-linker-link_startup.false}${linker-runtime-options.separator}${calibrate-oscillator.false}${linker-runtime-options.separator}${backup-reset-condition-flags.false}${linker-runtime-options.separator}${format-hex-file-for-download.false}${linker-runtime-options.separator}${managed-stack.false}${linker-runtime-options.separator}${program-the-device-with-default-config-words.true}${linker-runtime-options.separator}-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs ${stack-options.prefix}compiled    mcc_generated_files/tmr1.c 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
