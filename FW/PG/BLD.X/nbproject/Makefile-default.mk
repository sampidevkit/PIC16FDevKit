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
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/BLD.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/BLD.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/system/src/pins.c mcc_generated_files/system/src/system.c mcc_generated_files/system/src/interrupt.c mcc_generated_files/system/src/clock.c mcc_generated_files/system/src/config_bits.c mcc_generated_files/system/src/protected_io.S mcc_generated_files/system/src/syscfg.c mcc_generated_files/usb/src/usb0.c mcc_generated_files/usb/usb_cdc/circular_buffer/circular_buffer.c mcc_generated_files/usb/usb_cdc/usb_cdc_virtual_serial_port.c mcc_generated_files/usb/usb_cdc/usb_cdc.c mcc_generated_files/usb/usb_common/usb_core_requests_interface.c mcc_generated_files/usb/usb_common/usb_core.c mcc_generated_files/usb/usb_common/usb_core_requests_device.c mcc_generated_files/usb/usb_common/usb_core_events.c mcc_generated_files/usb/usb_common/usb_core_requests.c mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.c mcc_generated_files/usb/usb_common/usb_core_descriptors.c mcc_generated_files/usb/usb_common/usb_core_transfer.c mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.c mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.c mcc_generated_files/usb/usb_peripheral/usb_peripheral.c mcc_generated_files/usb/usb_device.c mcc_generated_files/usb/usb_descriptors.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/system/src/pins.o ${OBJECTDIR}/mcc_generated_files/system/src/system.o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o ${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o ${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o ${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/circular_buffer/circular_buffer.o ${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/usb_cdc_virtual_serial_port.o ${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/usb_cdc.o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d ${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o.d ${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/circular_buffer/circular_buffer.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/usb_cdc_virtual_serial_port.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/usb_cdc.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/system/src/pins.o ${OBJECTDIR}/mcc_generated_files/system/src/system.o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o ${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o ${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o ${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/circular_buffer/circular_buffer.o ${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/usb_cdc_virtual_serial_port.o ${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/usb_cdc.o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=mcc_generated_files/system/src/pins.c mcc_generated_files/system/src/system.c mcc_generated_files/system/src/interrupt.c mcc_generated_files/system/src/clock.c mcc_generated_files/system/src/config_bits.c mcc_generated_files/system/src/protected_io.S mcc_generated_files/system/src/syscfg.c mcc_generated_files/usb/src/usb0.c mcc_generated_files/usb/usb_cdc/circular_buffer/circular_buffer.c mcc_generated_files/usb/usb_cdc/usb_cdc_virtual_serial_port.c mcc_generated_files/usb/usb_cdc/usb_cdc.c mcc_generated_files/usb/usb_common/usb_core_requests_interface.c mcc_generated_files/usb/usb_common/usb_core.c mcc_generated_files/usb/usb_common/usb_core_requests_device.c mcc_generated_files/usb/usb_common/usb_core_events.c mcc_generated_files/usb/usb_common/usb_core_requests.c mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.c mcc_generated_files/usb/usb_common/usb_core_descriptors.c mcc_generated_files/usb/usb_common/usb_core_transfer.c mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.c mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.c mcc_generated_files/usb/usb_peripheral/usb_peripheral.c mcc_generated_files/usb/usb_device.c mcc_generated_files/usb/usb_descriptors.c main.c



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
Device=AVR64DU28
ProjectDir="E:\Github\PIC16FDevKit\p16f877a\FW\PG\BLD.X"
ProjectName=BLD
ConfName=default
ImagePath="dist\default\${IMAGE_TYPE}\BLD.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="dist\default\${IMAGE_TYPE}"
ImageName="BLD.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif
MDFUHostPath="C:\Program Files\Microchip\MPLABX\v6.25\mplab_platform\mplab-pymdfu\bin\windows\pymdfu-bin.exe"
PYFWImageBuilderPath="C:\Program Files\Microchip\MPLABX\v6.25\mplab_platform\mplab-pymdfu\bin\windows\pyfwimagebuilder-bin.exe"

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/BLD.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
	@echo "--------------------------------------"
	@echo "User defined post-build step: [copy ${ImagePath} ".\bld.${OUTPUT_SUFFIX}"]"
	@copy ${ImagePath} ".\bld.${OUTPUT_SUFFIX}"
	@echo "--------------------------------------"

MP_PROCESSOR_OPTION=AVR64DU28
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/system/src/pins.o: mcc_generated_files/system/src/pins.c  .generated_files/flags/default/f285b081c12140c8c2a219d862cf1f3a80cadf44 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/pins.o -o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o mcc_generated_files/system/src/pins.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/system.o: mcc_generated_files/system/src/system.c  .generated_files/flags/default/84a24c6a1669aed7e8a646ea1aa595c3c8b5323e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/system.o -o ${OBJECTDIR}/mcc_generated_files/system/src/system.o mcc_generated_files/system/src/system.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o: mcc_generated_files/system/src/interrupt.c  .generated_files/flags/default/fa784ba6305b91e00ec93c5584ee7787a2c91268 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o -o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o mcc_generated_files/system/src/interrupt.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/clock.o: mcc_generated_files/system/src/clock.c  .generated_files/flags/default/df97decdc5ebf1532114511db34c0fa43f84a277 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/clock.o -o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o mcc_generated_files/system/src/clock.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o: mcc_generated_files/system/src/config_bits.c  .generated_files/flags/default/f38f48f34a13c5506ca4728a025d6c2a4c88cf97 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o -o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o mcc_generated_files/system/src/config_bits.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o: mcc_generated_files/system/src/syscfg.c  .generated_files/flags/default/c9a9895c0f089e85743a46f9af30b56053f949be .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o -o ${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o mcc_generated_files/system/src/syscfg.c 
	
${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o: mcc_generated_files/usb/src/usb0.c  .generated_files/flags/default/5c47d095f2adb9183dddd4042d4c6dabc3f58aec .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o -o ${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o mcc_generated_files/usb/src/usb0.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/circular_buffer/circular_buffer.o: mcc_generated_files/usb/usb_cdc/circular_buffer/circular_buffer.c  .generated_files/flags/default/63c8ed067c8f447ef9ae55206aa1765996e5815d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/circular_buffer" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/circular_buffer/circular_buffer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/circular_buffer/circular_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/circular_buffer/circular_buffer.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/circular_buffer/circular_buffer.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/circular_buffer/circular_buffer.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/circular_buffer/circular_buffer.o mcc_generated_files/usb/usb_cdc/circular_buffer/circular_buffer.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/usb_cdc_virtual_serial_port.o: mcc_generated_files/usb/usb_cdc/usb_cdc_virtual_serial_port.c  .generated_files/flags/default/918d3926ceeefbd38fc388e044116b45d28fcc02 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_cdc" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/usb_cdc_virtual_serial_port.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/usb_cdc_virtual_serial_port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/usb_cdc_virtual_serial_port.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/usb_cdc_virtual_serial_port.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/usb_cdc_virtual_serial_port.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/usb_cdc_virtual_serial_port.o mcc_generated_files/usb/usb_cdc/usb_cdc_virtual_serial_port.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/usb_cdc.o: mcc_generated_files/usb/usb_cdc/usb_cdc.c  .generated_files/flags/default/a913597c5ce7aeb8f7b5b8fa09edd27530887e07 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_cdc" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/usb_cdc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/usb_cdc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/usb_cdc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/usb_cdc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/usb_cdc.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/usb_cdc.o mcc_generated_files/usb/usb_cdc/usb_cdc.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o: mcc_generated_files/usb/usb_common/usb_core_requests_interface.c  .generated_files/flags/default/6ec73a838310dfd9ab1420eda5e92d2215589bd1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o mcc_generated_files/usb/usb_common/usb_core_requests_interface.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o: mcc_generated_files/usb/usb_common/usb_core.c  .generated_files/flags/default/209063d9e1295c5b0fca1542c290a4bdf88b5275 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o mcc_generated_files/usb/usb_common/usb_core.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o: mcc_generated_files/usb/usb_common/usb_core_requests_device.c  .generated_files/flags/default/f6d5a1135f1c4ac01a2774f2c562d0c1c90ab481 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o mcc_generated_files/usb/usb_common/usb_core_requests_device.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o: mcc_generated_files/usb/usb_common/usb_core_events.c  .generated_files/flags/default/dfa2ca1d235f40137a336a0e41a4c51cae0ae17a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o mcc_generated_files/usb/usb_common/usb_core_events.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o: mcc_generated_files/usb/usb_common/usb_core_requests.c  .generated_files/flags/default/fbef264d932c8d9cc487cdc3268d9245fc330bd9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o mcc_generated_files/usb/usb_common/usb_core_requests.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o: mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.c  .generated_files/flags/default/4f7493853d2096dfbe3f34f109ff81feb3026b5f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o: mcc_generated_files/usb/usb_common/usb_core_descriptors.c  .generated_files/flags/default/400a28a866fa0b3fe9fcafd64a78fd27d5692509 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o mcc_generated_files/usb/usb_common/usb_core_descriptors.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o: mcc_generated_files/usb/usb_common/usb_core_transfer.c  .generated_files/flags/default/5f25b74e4d002addae3f3b7bd3476e567f32ac08 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o mcc_generated_files/usb/usb_common/usb_core_transfer.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o: mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.c  .generated_files/flags/default/4571dec657de7ac2538772bed3af5a3c24097e30 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o: mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.c  .generated_files/flags/default/1a1e5fa708b81235b2745c377df889e61129cf52 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o: mcc_generated_files/usb/usb_peripheral/usb_peripheral.c  .generated_files/flags/default/63d497d0b8d7350c04a9f82846e03a75d7d3ac0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o mcc_generated_files/usb/usb_peripheral/usb_peripheral.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/flags/default/81e9df32ffb55f7dfff8fb72f9a3bba3814ac4c3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o: mcc_generated_files/usb/usb_descriptors.c  .generated_files/flags/default/84efc2b1d97df4a67b93c5b8bfc4aeedb25b03d8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o mcc_generated_files/usb/usb_descriptors.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/f42113cb0466b66f5261397475fbf4d31d3e83b4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
else
${OBJECTDIR}/mcc_generated_files/system/src/pins.o: mcc_generated_files/system/src/pins.c  .generated_files/flags/default/16b0dc6f7e94cc1af39f27a8f9376eda2e556e29 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/pins.o -o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o mcc_generated_files/system/src/pins.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/system.o: mcc_generated_files/system/src/system.c  .generated_files/flags/default/64ead40ec5d874f829bb677c86be2947bd274dd9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/system.o -o ${OBJECTDIR}/mcc_generated_files/system/src/system.o mcc_generated_files/system/src/system.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o: mcc_generated_files/system/src/interrupt.c  .generated_files/flags/default/d3cd6ca9596c695ce659ddc3da0c92929b863753 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o -o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o mcc_generated_files/system/src/interrupt.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/clock.o: mcc_generated_files/system/src/clock.c  .generated_files/flags/default/f31ba9363bcc5a75eec0838b22ce55e33f85a17 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/clock.o -o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o mcc_generated_files/system/src/clock.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o: mcc_generated_files/system/src/config_bits.c  .generated_files/flags/default/14f6370b50bd2b4b1e5e0316f197cd94b98591b3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o -o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o mcc_generated_files/system/src/config_bits.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o: mcc_generated_files/system/src/syscfg.c  .generated_files/flags/default/5a4cbd5a8bf38a7325a98a916d52a28d2ed57f8f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o -o ${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o mcc_generated_files/system/src/syscfg.c 
	
${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o: mcc_generated_files/usb/src/usb0.c  .generated_files/flags/default/dabc0541e0f42399570fb8be9f775c0f22aae34c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o -o ${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o mcc_generated_files/usb/src/usb0.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/circular_buffer/circular_buffer.o: mcc_generated_files/usb/usb_cdc/circular_buffer/circular_buffer.c  .generated_files/flags/default/455365799ba45de81af1415eb6a55c427f508083 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/circular_buffer" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/circular_buffer/circular_buffer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/circular_buffer/circular_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/circular_buffer/circular_buffer.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/circular_buffer/circular_buffer.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/circular_buffer/circular_buffer.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/circular_buffer/circular_buffer.o mcc_generated_files/usb/usb_cdc/circular_buffer/circular_buffer.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/usb_cdc_virtual_serial_port.o: mcc_generated_files/usb/usb_cdc/usb_cdc_virtual_serial_port.c  .generated_files/flags/default/9f676b6fc136b7afc3a42151e3c313f35ff2c0fa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_cdc" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/usb_cdc_virtual_serial_port.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/usb_cdc_virtual_serial_port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/usb_cdc_virtual_serial_port.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/usb_cdc_virtual_serial_port.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/usb_cdc_virtual_serial_port.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/usb_cdc_virtual_serial_port.o mcc_generated_files/usb/usb_cdc/usb_cdc_virtual_serial_port.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/usb_cdc.o: mcc_generated_files/usb/usb_cdc/usb_cdc.c  .generated_files/flags/default/8711140b596303a239b2a33581f9e980f0ccdf17 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_cdc" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/usb_cdc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/usb_cdc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/usb_cdc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/usb_cdc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/usb_cdc.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_cdc/usb_cdc.o mcc_generated_files/usb/usb_cdc/usb_cdc.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o: mcc_generated_files/usb/usb_common/usb_core_requests_interface.c  .generated_files/flags/default/d42da05baf3c99d162a5caf6916da72104fdcadb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o mcc_generated_files/usb/usb_common/usb_core_requests_interface.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o: mcc_generated_files/usb/usb_common/usb_core.c  .generated_files/flags/default/7de93836594b153d5feb621227a7646ad1c3c283 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o mcc_generated_files/usb/usb_common/usb_core.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o: mcc_generated_files/usb/usb_common/usb_core_requests_device.c  .generated_files/flags/default/2e96de040ab9ece1b060a18877e04738a984e37e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o mcc_generated_files/usb/usb_common/usb_core_requests_device.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o: mcc_generated_files/usb/usb_common/usb_core_events.c  .generated_files/flags/default/9e22e25e6555bc5b52f6161227f7c601f9c563f5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o mcc_generated_files/usb/usb_common/usb_core_events.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o: mcc_generated_files/usb/usb_common/usb_core_requests.c  .generated_files/flags/default/d1a8cdbefcc925eac1c96899453edd5a46251b4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o mcc_generated_files/usb/usb_common/usb_core_requests.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o: mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.c  .generated_files/flags/default/3b9c37584c1470a3e04f4e7d24ff5b5f9a911532 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o: mcc_generated_files/usb/usb_common/usb_core_descriptors.c  .generated_files/flags/default/4c0f74b61f98ec8ee9da04c0c9a6dbe153cff0ec .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o mcc_generated_files/usb/usb_common/usb_core_descriptors.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o: mcc_generated_files/usb/usb_common/usb_core_transfer.c  .generated_files/flags/default/e14cb9da3d18429f3e1ee03ecbfa62132b40801c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o mcc_generated_files/usb/usb_common/usb_core_transfer.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o: mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.c  .generated_files/flags/default/c9ef4d466608fa0567a473d973e41c4ab410e49a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o: mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.c  .generated_files/flags/default/4c524386036a27e7d52b79e0420b22297cf06471 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o: mcc_generated_files/usb/usb_peripheral/usb_peripheral.c  .generated_files/flags/default/2b90729329d7150f15606999be9a852d279c94b1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o mcc_generated_files/usb/usb_peripheral/usb_peripheral.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/flags/default/89b4b4d7f374aa9cc03fcb4997e44810a1b8f22e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o: mcc_generated_files/usb/usb_descriptors.c  .generated_files/flags/default/7c505c0766ea85a004cdf12d2bf53f6c1137d6a4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o mcc_generated_files/usb/usb_descriptors.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/a55d374833cd2f49c0c09aa5b588299162592438 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o: mcc_generated_files/system/src/protected_io.S  .generated_files/flags/default/ac1d87b0bc77ed09e46c43796d332ccfc595738b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem -Wa,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1   -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o  mcc_generated_files/system/src/protected_io.S 
	
else
${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o: mcc_generated_files/system/src/protected_io.S  .generated_files/flags/default/4cfcb98f558288b9d8881becd0aee967e55a15cf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem -Wa,--defsym=__MPLAB_BUILD=1   -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o  mcc_generated_files/system/src/protected_io.S 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/BLD.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/BLD.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"   -gdwarf-2 -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/BLD.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/BLD.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} ${DISTDIR}/BLD.X.${IMAGE_TYPE}.hex 
	
	
else
${DISTDIR}/BLD.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/BLD.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -I"cfg" -I"../../CLib" -mext=cci -Wall -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/BLD.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/BLD.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "${DISTDIR}/BLD.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/BLD.X.${IMAGE_TYPE}.hex"
	
	@echo Normalizing hex file
	@"C:/Program Files/Microchip/MPLABX/v6.25/mplab_platform/platform/../mplab_ide/modules/../../bin/hexmate" --edf="C:/Program Files/Microchip/MPLABX/v6.25/mplab_platform/platform/../mplab_ide/modules/../../dat/en_msgs.txt" ${DISTDIR}/BLD.X.${IMAGE_TYPE}.hex -o${DISTDIR}/BLD.X.${IMAGE_TYPE}.hex

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

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
