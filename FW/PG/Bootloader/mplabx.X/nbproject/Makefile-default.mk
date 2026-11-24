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
FINAL_IMAGE=${DISTDIR}/mplabx.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/mplabx.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../cfg/system_tick_cfg.c ../../../CLib/misc/util.c ../../../CLib/system/system_tick.c ../../../CLib/system/task_manager.c ../config.mcc/mcc_generated_files/nvm/src/nvm.c ../config.mcc/mcc_generated_files/power/src/power.c ../config.mcc/mcc_generated_files/reset/src/rstctrl.c ../config.mcc/mcc_generated_files/system/src/clock.c ../config.mcc/mcc_generated_files/system/src/config_bits.c ../config.mcc/mcc_generated_files/system/src/interrupt.c ../config.mcc/mcc_generated_files/system/src/pins.c ../config.mcc/mcc_generated_files/system/src/syscfg.c ../config.mcc/mcc_generated_files/system/src/system.c ../config.mcc/mcc_generated_files/system/src/protected_io.S ../config.mcc/mcc_generated_files/timer/src/rtc.c ../config.mcc/mcc_generated_files/usb/src/usb0.c ../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer/circular_buffer.c ../config.mcc/mcc_generated_files/usb/usb_cdc/usb_cdc.c ../config.mcc/mcc_generated_files/usb/usb_cdc/usb_cdc_virtual_serial_port.c ../config.mcc/mcc_generated_files/usb/usb_common/usb_core.c ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_descriptors.c ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_events.c ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_requests.c ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_requests_device.c ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.c ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_requests_interface.c ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_transfer.c ../config.mcc/mcc_generated_files/usb/usb_peripheral/usb_peripheral.c ../config.mcc/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.c ../config.mcc/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.c ../config.mcc/mcc_generated_files/usb/usb_descriptors.c ../config.mcc/mcc_generated_files/usb/usb_device.c ../user/internal_memory_maps.c ../user/vcp.c ../config.mcc/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1360921493/system_tick_cfg.o ${OBJECTDIR}/_ext/1114738774/util.o ${OBJECTDIR}/_ext/1630534291/system_tick.o ${OBJECTDIR}/_ext/1630534291/task_manager.o ${OBJECTDIR}/_ext/201542785/nvm.o ${OBJECTDIR}/_ext/692415455/power.o ${OBJECTDIR}/_ext/486208363/rstctrl.o ${OBJECTDIR}/_ext/255143069/clock.o ${OBJECTDIR}/_ext/255143069/config_bits.o ${OBJECTDIR}/_ext/255143069/interrupt.o ${OBJECTDIR}/_ext/255143069/pins.o ${OBJECTDIR}/_ext/255143069/syscfg.o ${OBJECTDIR}/_ext/255143069/system.o ${OBJECTDIR}/_ext/255143069/protected_io.o ${OBJECTDIR}/_ext/1484328351/rtc.o ${OBJECTDIR}/_ext/2023055072/usb0.o ${OBJECTDIR}/_ext/341371468/circular_buffer.o ${OBJECTDIR}/_ext/894773789/usb_cdc.o ${OBJECTDIR}/_ext/894773789/usb_cdc_virtual_serial_port.o ${OBJECTDIR}/_ext/1628344182/usb_core.o ${OBJECTDIR}/_ext/1628344182/usb_core_descriptors.o ${OBJECTDIR}/_ext/1628344182/usb_core_events.o ${OBJECTDIR}/_ext/1628344182/usb_core_requests.o ${OBJECTDIR}/_ext/1628344182/usb_core_requests_device.o ${OBJECTDIR}/_ext/1628344182/usb_core_requests_endpoint.o ${OBJECTDIR}/_ext/1628344182/usb_core_requests_interface.o ${OBJECTDIR}/_ext/1628344182/usb_core_transfer.o ${OBJECTDIR}/_ext/1027775333/usb_peripheral.o ${OBJECTDIR}/_ext/1027775333/usb_peripheral_endpoint.o ${OBJECTDIR}/_ext/1027775333/usb_peripheral_read_write.o ${OBJECTDIR}/_ext/1515470581/usb_descriptors.o ${OBJECTDIR}/_ext/1515470581/usb_device.o ${OBJECTDIR}/_ext/760557894/internal_memory_maps.o ${OBJECTDIR}/_ext/760557894/vcp.o ${OBJECTDIR}/_ext/990751600/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1360921493/system_tick_cfg.o.d ${OBJECTDIR}/_ext/1114738774/util.o.d ${OBJECTDIR}/_ext/1630534291/system_tick.o.d ${OBJECTDIR}/_ext/1630534291/task_manager.o.d ${OBJECTDIR}/_ext/201542785/nvm.o.d ${OBJECTDIR}/_ext/692415455/power.o.d ${OBJECTDIR}/_ext/486208363/rstctrl.o.d ${OBJECTDIR}/_ext/255143069/clock.o.d ${OBJECTDIR}/_ext/255143069/config_bits.o.d ${OBJECTDIR}/_ext/255143069/interrupt.o.d ${OBJECTDIR}/_ext/255143069/pins.o.d ${OBJECTDIR}/_ext/255143069/syscfg.o.d ${OBJECTDIR}/_ext/255143069/system.o.d ${OBJECTDIR}/_ext/255143069/protected_io.o.d ${OBJECTDIR}/_ext/1484328351/rtc.o.d ${OBJECTDIR}/_ext/2023055072/usb0.o.d ${OBJECTDIR}/_ext/341371468/circular_buffer.o.d ${OBJECTDIR}/_ext/894773789/usb_cdc.o.d ${OBJECTDIR}/_ext/894773789/usb_cdc_virtual_serial_port.o.d ${OBJECTDIR}/_ext/1628344182/usb_core.o.d ${OBJECTDIR}/_ext/1628344182/usb_core_descriptors.o.d ${OBJECTDIR}/_ext/1628344182/usb_core_events.o.d ${OBJECTDIR}/_ext/1628344182/usb_core_requests.o.d ${OBJECTDIR}/_ext/1628344182/usb_core_requests_device.o.d ${OBJECTDIR}/_ext/1628344182/usb_core_requests_endpoint.o.d ${OBJECTDIR}/_ext/1628344182/usb_core_requests_interface.o.d ${OBJECTDIR}/_ext/1628344182/usb_core_transfer.o.d ${OBJECTDIR}/_ext/1027775333/usb_peripheral.o.d ${OBJECTDIR}/_ext/1027775333/usb_peripheral_endpoint.o.d ${OBJECTDIR}/_ext/1027775333/usb_peripheral_read_write.o.d ${OBJECTDIR}/_ext/1515470581/usb_descriptors.o.d ${OBJECTDIR}/_ext/1515470581/usb_device.o.d ${OBJECTDIR}/_ext/760557894/internal_memory_maps.o.d ${OBJECTDIR}/_ext/760557894/vcp.o.d ${OBJECTDIR}/_ext/990751600/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1360921493/system_tick_cfg.o ${OBJECTDIR}/_ext/1114738774/util.o ${OBJECTDIR}/_ext/1630534291/system_tick.o ${OBJECTDIR}/_ext/1630534291/task_manager.o ${OBJECTDIR}/_ext/201542785/nvm.o ${OBJECTDIR}/_ext/692415455/power.o ${OBJECTDIR}/_ext/486208363/rstctrl.o ${OBJECTDIR}/_ext/255143069/clock.o ${OBJECTDIR}/_ext/255143069/config_bits.o ${OBJECTDIR}/_ext/255143069/interrupt.o ${OBJECTDIR}/_ext/255143069/pins.o ${OBJECTDIR}/_ext/255143069/syscfg.o ${OBJECTDIR}/_ext/255143069/system.o ${OBJECTDIR}/_ext/255143069/protected_io.o ${OBJECTDIR}/_ext/1484328351/rtc.o ${OBJECTDIR}/_ext/2023055072/usb0.o ${OBJECTDIR}/_ext/341371468/circular_buffer.o ${OBJECTDIR}/_ext/894773789/usb_cdc.o ${OBJECTDIR}/_ext/894773789/usb_cdc_virtual_serial_port.o ${OBJECTDIR}/_ext/1628344182/usb_core.o ${OBJECTDIR}/_ext/1628344182/usb_core_descriptors.o ${OBJECTDIR}/_ext/1628344182/usb_core_events.o ${OBJECTDIR}/_ext/1628344182/usb_core_requests.o ${OBJECTDIR}/_ext/1628344182/usb_core_requests_device.o ${OBJECTDIR}/_ext/1628344182/usb_core_requests_endpoint.o ${OBJECTDIR}/_ext/1628344182/usb_core_requests_interface.o ${OBJECTDIR}/_ext/1628344182/usb_core_transfer.o ${OBJECTDIR}/_ext/1027775333/usb_peripheral.o ${OBJECTDIR}/_ext/1027775333/usb_peripheral_endpoint.o ${OBJECTDIR}/_ext/1027775333/usb_peripheral_read_write.o ${OBJECTDIR}/_ext/1515470581/usb_descriptors.o ${OBJECTDIR}/_ext/1515470581/usb_device.o ${OBJECTDIR}/_ext/760557894/internal_memory_maps.o ${OBJECTDIR}/_ext/760557894/vcp.o ${OBJECTDIR}/_ext/990751600/main.o

# Source Files
SOURCEFILES=../cfg/system_tick_cfg.c ../../../CLib/misc/util.c ../../../CLib/system/system_tick.c ../../../CLib/system/task_manager.c ../config.mcc/mcc_generated_files/nvm/src/nvm.c ../config.mcc/mcc_generated_files/power/src/power.c ../config.mcc/mcc_generated_files/reset/src/rstctrl.c ../config.mcc/mcc_generated_files/system/src/clock.c ../config.mcc/mcc_generated_files/system/src/config_bits.c ../config.mcc/mcc_generated_files/system/src/interrupt.c ../config.mcc/mcc_generated_files/system/src/pins.c ../config.mcc/mcc_generated_files/system/src/syscfg.c ../config.mcc/mcc_generated_files/system/src/system.c ../config.mcc/mcc_generated_files/system/src/protected_io.S ../config.mcc/mcc_generated_files/timer/src/rtc.c ../config.mcc/mcc_generated_files/usb/src/usb0.c ../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer/circular_buffer.c ../config.mcc/mcc_generated_files/usb/usb_cdc/usb_cdc.c ../config.mcc/mcc_generated_files/usb/usb_cdc/usb_cdc_virtual_serial_port.c ../config.mcc/mcc_generated_files/usb/usb_common/usb_core.c ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_descriptors.c ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_events.c ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_requests.c ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_requests_device.c ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.c ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_requests_interface.c ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_transfer.c ../config.mcc/mcc_generated_files/usb/usb_peripheral/usb_peripheral.c ../config.mcc/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.c ../config.mcc/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.c ../config.mcc/mcc_generated_files/usb/usb_descriptors.c ../config.mcc/mcc_generated_files/usb/usb_device.c ../user/internal_memory_maps.c ../user/vcp.c ../config.mcc/main.c



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
ProjectDir="D:\Github\PIC16FDevKit\p16f877a\FW\PG\Bootloader\mplabx.X"
ProjectName=mplabx
ConfName=default
ImagePath="dist\default\${IMAGE_TYPE}\mplabx.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="dist\default\${IMAGE_TYPE}"
ImageName="mplabx.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif
MDFUHostPath="C:\Program Files\Microchip\MPLABX\v6.35\mplab_platform\mplab-pymdfu\bin\windows\pymdfu-bin.exe"
PYFWImageBuilderPath="C:\Program Files\Microchip\MPLABX\v6.35\mplab_platform\mplab-pymdfu\bin\windows\pyfwimagebuilder-bin.exe"

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/mplabx.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
	@echo "--------------------------------------"
	@echo "User defined post-build step: [copy ${ImagePath} ".\LastBuild.${OUTPUT_SUFFIX}"]"
	@copy ${ImagePath} ".\LastBuild.${OUTPUT_SUFFIX}"
	@echo "--------------------------------------"

MP_PROCESSOR_OPTION=AVR64DU28
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1360921493/system_tick_cfg.o: ../cfg/system_tick_cfg.c  .generated_files/flags/default/368084f33c4ec9634ac4e27ad16723a2b85cb439 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360921493" 
	@${RM} ${OBJECTDIR}/_ext/1360921493/system_tick_cfg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360921493/system_tick_cfg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_PK4=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1360921493/system_tick_cfg.o.d" -MT "${OBJECTDIR}/_ext/1360921493/system_tick_cfg.o.d" -MT ${OBJECTDIR}/_ext/1360921493/system_tick_cfg.o -o ${OBJECTDIR}/_ext/1360921493/system_tick_cfg.o ../cfg/system_tick_cfg.c 
	
${OBJECTDIR}/_ext/1114738774/util.o: ../../../CLib/misc/util.c  .generated_files/flags/default/a8be7d43126d9c4432285368cbeff6841e5f9547 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1114738774" 
	@${RM} ${OBJECTDIR}/_ext/1114738774/util.o.d 
	@${RM} ${OBJECTDIR}/_ext/1114738774/util.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_PK4=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1114738774/util.o.d" -MT "${OBJECTDIR}/_ext/1114738774/util.o.d" -MT ${OBJECTDIR}/_ext/1114738774/util.o -o ${OBJECTDIR}/_ext/1114738774/util.o ../../../CLib/misc/util.c 
	
${OBJECTDIR}/_ext/1630534291/system_tick.o: ../../../CLib/system/system_tick.c  .generated_files/flags/default/900a8d91e699ea7d05a61825e3cee05fc0d57e63 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1630534291" 
	@${RM} ${OBJECTDIR}/_ext/1630534291/system_tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1630534291/system_tick.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_PK4=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1630534291/system_tick.o.d" -MT "${OBJECTDIR}/_ext/1630534291/system_tick.o.d" -MT ${OBJECTDIR}/_ext/1630534291/system_tick.o -o ${OBJECTDIR}/_ext/1630534291/system_tick.o ../../../CLib/system/system_tick.c 
	
${OBJECTDIR}/_ext/1630534291/task_manager.o: ../../../CLib/system/task_manager.c  .generated_files/flags/default/df5d80bb97cd4d842983da0610ad7749af68ae93 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1630534291" 
	@${RM} ${OBJECTDIR}/_ext/1630534291/task_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1630534291/task_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_PK4=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1630534291/task_manager.o.d" -MT "${OBJECTDIR}/_ext/1630534291/task_manager.o.d" -MT ${OBJECTDIR}/_ext/1630534291/task_manager.o -o ${OBJECTDIR}/_ext/1630534291/task_manager.o ../../../CLib/system/task_manager.c 
	
${OBJECTDIR}/_ext/201542785/nvm.o: ../config.mcc/mcc_generated_files/nvm/src/nvm.c  .generated_files/flags/default/bd93bb935beada3eed6151a86446f51db0770344 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/201542785" 
	@${RM} ${OBJECTDIR}/_ext/201542785/nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/201542785/nvm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_PK4=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/201542785/nvm.o.d" -MT "${OBJECTDIR}/_ext/201542785/nvm.o.d" -MT ${OBJECTDIR}/_ext/201542785/nvm.o -o ${OBJECTDIR}/_ext/201542785/nvm.o ../config.mcc/mcc_generated_files/nvm/src/nvm.c 
	
${OBJECTDIR}/_ext/692415455/power.o: ../config.mcc/mcc_generated_files/power/src/power.c  .generated_files/flags/default/26aa0ba2a60951d8df7853d3c41fcf8aab2f6e2f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/692415455" 
	@${RM} ${OBJECTDIR}/_ext/692415455/power.o.d 
	@${RM} ${OBJECTDIR}/_ext/692415455/power.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_PK4=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/692415455/power.o.d" -MT "${OBJECTDIR}/_ext/692415455/power.o.d" -MT ${OBJECTDIR}/_ext/692415455/power.o -o ${OBJECTDIR}/_ext/692415455/power.o ../config.mcc/mcc_generated_files/power/src/power.c 
	
${OBJECTDIR}/_ext/486208363/rstctrl.o: ../config.mcc/mcc_generated_files/reset/src/rstctrl.c  .generated_files/flags/default/b43c2f78b3ef8a8bcacc017442f2bc3f1e28a6ef .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/486208363" 
	@${RM} ${OBJECTDIR}/_ext/486208363/rstctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/486208363/rstctrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_PK4=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/486208363/rstctrl.o.d" -MT "${OBJECTDIR}/_ext/486208363/rstctrl.o.d" -MT ${OBJECTDIR}/_ext/486208363/rstctrl.o -o ${OBJECTDIR}/_ext/486208363/rstctrl.o ../config.mcc/mcc_generated_files/reset/src/rstctrl.c 
	
${OBJECTDIR}/_ext/255143069/clock.o: ../config.mcc/mcc_generated_files/system/src/clock.c  .generated_files/flags/default/e864233d689aafc27d07f27f24f8cc0ee9e919c3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/255143069" 
	@${RM} ${OBJECTDIR}/_ext/255143069/clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/255143069/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_PK4=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/255143069/clock.o.d" -MT "${OBJECTDIR}/_ext/255143069/clock.o.d" -MT ${OBJECTDIR}/_ext/255143069/clock.o -o ${OBJECTDIR}/_ext/255143069/clock.o ../config.mcc/mcc_generated_files/system/src/clock.c 
	
${OBJECTDIR}/_ext/255143069/config_bits.o: ../config.mcc/mcc_generated_files/system/src/config_bits.c  .generated_files/flags/default/144bce732c8249ba382b5077fc914e799c9bc090 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/255143069" 
	@${RM} ${OBJECTDIR}/_ext/255143069/config_bits.o.d 
	@${RM} ${OBJECTDIR}/_ext/255143069/config_bits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_PK4=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/255143069/config_bits.o.d" -MT "${OBJECTDIR}/_ext/255143069/config_bits.o.d" -MT ${OBJECTDIR}/_ext/255143069/config_bits.o -o ${OBJECTDIR}/_ext/255143069/config_bits.o ../config.mcc/mcc_generated_files/system/src/config_bits.c 
	
${OBJECTDIR}/_ext/255143069/interrupt.o: ../config.mcc/mcc_generated_files/system/src/interrupt.c  .generated_files/flags/default/15848c4578eec87985aae87a411be72705ae9903 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/255143069" 
	@${RM} ${OBJECTDIR}/_ext/255143069/interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/255143069/interrupt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_PK4=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/255143069/interrupt.o.d" -MT "${OBJECTDIR}/_ext/255143069/interrupt.o.d" -MT ${OBJECTDIR}/_ext/255143069/interrupt.o -o ${OBJECTDIR}/_ext/255143069/interrupt.o ../config.mcc/mcc_generated_files/system/src/interrupt.c 
	
${OBJECTDIR}/_ext/255143069/pins.o: ../config.mcc/mcc_generated_files/system/src/pins.c  .generated_files/flags/default/a325780e6d85af2c3da96e96a76097cf20876db1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/255143069" 
	@${RM} ${OBJECTDIR}/_ext/255143069/pins.o.d 
	@${RM} ${OBJECTDIR}/_ext/255143069/pins.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_PK4=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/255143069/pins.o.d" -MT "${OBJECTDIR}/_ext/255143069/pins.o.d" -MT ${OBJECTDIR}/_ext/255143069/pins.o -o ${OBJECTDIR}/_ext/255143069/pins.o ../config.mcc/mcc_generated_files/system/src/pins.c 
	
${OBJECTDIR}/_ext/255143069/syscfg.o: ../config.mcc/mcc_generated_files/system/src/syscfg.c  .generated_files/flags/default/2fc14c2032d8e30bbe4f571ac4df0084cd555444 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/255143069" 
	@${RM} ${OBJECTDIR}/_ext/255143069/syscfg.o.d 
	@${RM} ${OBJECTDIR}/_ext/255143069/syscfg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_PK4=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/255143069/syscfg.o.d" -MT "${OBJECTDIR}/_ext/255143069/syscfg.o.d" -MT ${OBJECTDIR}/_ext/255143069/syscfg.o -o ${OBJECTDIR}/_ext/255143069/syscfg.o ../config.mcc/mcc_generated_files/system/src/syscfg.c 
	
${OBJECTDIR}/_ext/255143069/system.o: ../config.mcc/mcc_generated_files/system/src/system.c  .generated_files/flags/default/f89faaab8ab8a49fd7a7850b7f6d2f752a5fb448 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/255143069" 
	@${RM} ${OBJECTDIR}/_ext/255143069/system.o.d 
	@${RM} ${OBJECTDIR}/_ext/255143069/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_PK4=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/255143069/system.o.d" -MT "${OBJECTDIR}/_ext/255143069/system.o.d" -MT ${OBJECTDIR}/_ext/255143069/system.o -o ${OBJECTDIR}/_ext/255143069/system.o ../config.mcc/mcc_generated_files/system/src/system.c 
	
${OBJECTDIR}/_ext/1484328351/rtc.o: ../config.mcc/mcc_generated_files/timer/src/rtc.c  .generated_files/flags/default/35b6e812fa084ab8d9effe5d7508b9d528e7e97a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1484328351" 
	@${RM} ${OBJECTDIR}/_ext/1484328351/rtc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1484328351/rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_PK4=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1484328351/rtc.o.d" -MT "${OBJECTDIR}/_ext/1484328351/rtc.o.d" -MT ${OBJECTDIR}/_ext/1484328351/rtc.o -o ${OBJECTDIR}/_ext/1484328351/rtc.o ../config.mcc/mcc_generated_files/timer/src/rtc.c 
	
${OBJECTDIR}/_ext/2023055072/usb0.o: ../config.mcc/mcc_generated_files/usb/src/usb0.c  .generated_files/flags/default/83b635b92c6f7680acdd5eacb53b7c1996e054d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2023055072" 
	@${RM} ${OBJECTDIR}/_ext/2023055072/usb0.o.d 
	@${RM} ${OBJECTDIR}/_ext/2023055072/usb0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_PK4=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/2023055072/usb0.o.d" -MT "${OBJECTDIR}/_ext/2023055072/usb0.o.d" -MT ${OBJECTDIR}/_ext/2023055072/usb0.o -o ${OBJECTDIR}/_ext/2023055072/usb0.o ../config.mcc/mcc_generated_files/usb/src/usb0.c 
	
${OBJECTDIR}/_ext/341371468/circular_buffer.o: ../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer/circular_buffer.c  .generated_files/flags/default/3cf9cf9049baf806511ef9f21cecab17e3592aa7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/341371468" 
	@${RM} ${OBJECTDIR}/_ext/341371468/circular_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/341371468/circular_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_PK4=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/341371468/circular_buffer.o.d" -MT "${OBJECTDIR}/_ext/341371468/circular_buffer.o.d" -MT ${OBJECTDIR}/_ext/341371468/circular_buffer.o -o ${OBJECTDIR}/_ext/341371468/circular_buffer.o ../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer/circular_buffer.c 
	
${OBJECTDIR}/_ext/894773789/usb_cdc.o: ../config.mcc/mcc_generated_files/usb/usb_cdc/usb_cdc.c  .generated_files/flags/default/58504dad7ae8e887a0193fa17d427e3e8bdf7249 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/894773789" 
	@${RM} ${OBJECTDIR}/_ext/894773789/usb_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/894773789/usb_cdc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_PK4=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/894773789/usb_cdc.o.d" -MT "${OBJECTDIR}/_ext/894773789/usb_cdc.o.d" -MT ${OBJECTDIR}/_ext/894773789/usb_cdc.o -o ${OBJECTDIR}/_ext/894773789/usb_cdc.o ../config.mcc/mcc_generated_files/usb/usb_cdc/usb_cdc.c 
	
${OBJECTDIR}/_ext/894773789/usb_cdc_virtual_serial_port.o: ../config.mcc/mcc_generated_files/usb/usb_cdc/usb_cdc_virtual_serial_port.c  .generated_files/flags/default/1cea1edde3808732cfded301d2fdbdf7699947ae .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/894773789" 
	@${RM} ${OBJECTDIR}/_ext/894773789/usb_cdc_virtual_serial_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/894773789/usb_cdc_virtual_serial_port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_PK4=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/894773789/usb_cdc_virtual_serial_port.o.d" -MT "${OBJECTDIR}/_ext/894773789/usb_cdc_virtual_serial_port.o.d" -MT ${OBJECTDIR}/_ext/894773789/usb_cdc_virtual_serial_port.o -o ${OBJECTDIR}/_ext/894773789/usb_cdc_virtual_serial_port.o ../config.mcc/mcc_generated_files/usb/usb_cdc/usb_cdc_virtual_serial_port.c 
	
${OBJECTDIR}/_ext/1628344182/usb_core.o: ../config.mcc/mcc_generated_files/usb/usb_common/usb_core.c  .generated_files/flags/default/645dfd50eea90027b4f7839b8e5f66d408245eaf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1628344182" 
	@${RM} ${OBJECTDIR}/_ext/1628344182/usb_core.o.d 
	@${RM} ${OBJECTDIR}/_ext/1628344182/usb_core.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_PK4=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1628344182/usb_core.o.d" -MT "${OBJECTDIR}/_ext/1628344182/usb_core.o.d" -MT ${OBJECTDIR}/_ext/1628344182/usb_core.o -o ${OBJECTDIR}/_ext/1628344182/usb_core.o ../config.mcc/mcc_generated_files/usb/usb_common/usb_core.c 
	
${OBJECTDIR}/_ext/1628344182/usb_core_descriptors.o: ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_descriptors.c  .generated_files/flags/default/a564f47b5d6ef48f059eebc2408807e141185b50 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1628344182" 
	@${RM} ${OBJECTDIR}/_ext/1628344182/usb_core_descriptors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1628344182/usb_core_descriptors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_PK4=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1628344182/usb_core_descriptors.o.d" -MT "${OBJECTDIR}/_ext/1628344182/usb_core_descriptors.o.d" -MT ${OBJECTDIR}/_ext/1628344182/usb_core_descriptors.o -o ${OBJECTDIR}/_ext/1628344182/usb_core_descriptors.o ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_descriptors.c 
	
${OBJECTDIR}/_ext/1628344182/usb_core_events.o: ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_events.c  .generated_files/flags/default/dfd6041bd5f93d7067140e08d7614e42c6f78b50 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1628344182" 
	@${RM} ${OBJECTDIR}/_ext/1628344182/usb_core_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/1628344182/usb_core_events.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_PK4=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1628344182/usb_core_events.o.d" -MT "${OBJECTDIR}/_ext/1628344182/usb_core_events.o.d" -MT ${OBJECTDIR}/_ext/1628344182/usb_core_events.o -o ${OBJECTDIR}/_ext/1628344182/usb_core_events.o ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_events.c 
	
${OBJECTDIR}/_ext/1628344182/usb_core_requests.o: ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_requests.c  .generated_files/flags/default/a2d10d6657a660da1e6e7141da1b8ca87aa5bc33 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1628344182" 
	@${RM} ${OBJECTDIR}/_ext/1628344182/usb_core_requests.o.d 
	@${RM} ${OBJECTDIR}/_ext/1628344182/usb_core_requests.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_PK4=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1628344182/usb_core_requests.o.d" -MT "${OBJECTDIR}/_ext/1628344182/usb_core_requests.o.d" -MT ${OBJECTDIR}/_ext/1628344182/usb_core_requests.o -o ${OBJECTDIR}/_ext/1628344182/usb_core_requests.o ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_requests.c 
	
${OBJECTDIR}/_ext/1628344182/usb_core_requests_device.o: ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_requests_device.c  .generated_files/flags/default/451b49f1633b29b5c8dd8838c6b797cd0eff9da6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1628344182" 
	@${RM} ${OBJECTDIR}/_ext/1628344182/usb_core_requests_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1628344182/usb_core_requests_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_PK4=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1628344182/usb_core_requests_device.o.d" -MT "${OBJECTDIR}/_ext/1628344182/usb_core_requests_device.o.d" -MT ${OBJECTDIR}/_ext/1628344182/usb_core_requests_device.o -o ${OBJECTDIR}/_ext/1628344182/usb_core_requests_device.o ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_requests_device.c 
	
${OBJECTDIR}/_ext/1628344182/usb_core_requests_endpoint.o: ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.c  .generated_files/flags/default/26036dbe5b1bbd8d78b0e96c8d98222d6b09f234 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1628344182" 
	@${RM} ${OBJECTDIR}/_ext/1628344182/usb_core_requests_endpoint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1628344182/usb_core_requests_endpoint.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_PK4=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1628344182/usb_core_requests_endpoint.o.d" -MT "${OBJECTDIR}/_ext/1628344182/usb_core_requests_endpoint.o.d" -MT ${OBJECTDIR}/_ext/1628344182/usb_core_requests_endpoint.o -o ${OBJECTDIR}/_ext/1628344182/usb_core_requests_endpoint.o ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.c 
	
${OBJECTDIR}/_ext/1628344182/usb_core_requests_interface.o: ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_requests_interface.c  .generated_files/flags/default/8de413103561b2b4d8427f7bd36749a58c95bd12 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1628344182" 
	@${RM} ${OBJECTDIR}/_ext/1628344182/usb_core_requests_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1628344182/usb_core_requests_interface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_PK4=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1628344182/usb_core_requests_interface.o.d" -MT "${OBJECTDIR}/_ext/1628344182/usb_core_requests_interface.o.d" -MT ${OBJECTDIR}/_ext/1628344182/usb_core_requests_interface.o -o ${OBJECTDIR}/_ext/1628344182/usb_core_requests_interface.o ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_requests_interface.c 
	
${OBJECTDIR}/_ext/1628344182/usb_core_transfer.o: ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_transfer.c  .generated_files/flags/default/2eb550cd089dce1fc3e7eb0062299a01903319fa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1628344182" 
	@${RM} ${OBJECTDIR}/_ext/1628344182/usb_core_transfer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1628344182/usb_core_transfer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_PK4=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1628344182/usb_core_transfer.o.d" -MT "${OBJECTDIR}/_ext/1628344182/usb_core_transfer.o.d" -MT ${OBJECTDIR}/_ext/1628344182/usb_core_transfer.o -o ${OBJECTDIR}/_ext/1628344182/usb_core_transfer.o ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_transfer.c 
	
${OBJECTDIR}/_ext/1027775333/usb_peripheral.o: ../config.mcc/mcc_generated_files/usb/usb_peripheral/usb_peripheral.c  .generated_files/flags/default/acba1340c80c7a2b2c8f43f2c350b41ed3ea2da4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1027775333" 
	@${RM} ${OBJECTDIR}/_ext/1027775333/usb_peripheral.o.d 
	@${RM} ${OBJECTDIR}/_ext/1027775333/usb_peripheral.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_PK4=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1027775333/usb_peripheral.o.d" -MT "${OBJECTDIR}/_ext/1027775333/usb_peripheral.o.d" -MT ${OBJECTDIR}/_ext/1027775333/usb_peripheral.o -o ${OBJECTDIR}/_ext/1027775333/usb_peripheral.o ../config.mcc/mcc_generated_files/usb/usb_peripheral/usb_peripheral.c 
	
${OBJECTDIR}/_ext/1027775333/usb_peripheral_endpoint.o: ../config.mcc/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.c  .generated_files/flags/default/10f24f6f544138c13ec61e47f2474f13b1963d8c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1027775333" 
	@${RM} ${OBJECTDIR}/_ext/1027775333/usb_peripheral_endpoint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1027775333/usb_peripheral_endpoint.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_PK4=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1027775333/usb_peripheral_endpoint.o.d" -MT "${OBJECTDIR}/_ext/1027775333/usb_peripheral_endpoint.o.d" -MT ${OBJECTDIR}/_ext/1027775333/usb_peripheral_endpoint.o -o ${OBJECTDIR}/_ext/1027775333/usb_peripheral_endpoint.o ../config.mcc/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.c 
	
${OBJECTDIR}/_ext/1027775333/usb_peripheral_read_write.o: ../config.mcc/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.c  .generated_files/flags/default/1da1956be0b2ce418cf29c02acf154a3f446d018 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1027775333" 
	@${RM} ${OBJECTDIR}/_ext/1027775333/usb_peripheral_read_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/1027775333/usb_peripheral_read_write.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_PK4=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1027775333/usb_peripheral_read_write.o.d" -MT "${OBJECTDIR}/_ext/1027775333/usb_peripheral_read_write.o.d" -MT ${OBJECTDIR}/_ext/1027775333/usb_peripheral_read_write.o -o ${OBJECTDIR}/_ext/1027775333/usb_peripheral_read_write.o ../config.mcc/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.c 
	
${OBJECTDIR}/_ext/1515470581/usb_descriptors.o: ../config.mcc/mcc_generated_files/usb/usb_descriptors.c  .generated_files/flags/default/dc8ee064b588f1d0d14c5e5c0427710893f7bb2e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1515470581" 
	@${RM} ${OBJECTDIR}/_ext/1515470581/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1515470581/usb_descriptors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_PK4=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1515470581/usb_descriptors.o.d" -MT "${OBJECTDIR}/_ext/1515470581/usb_descriptors.o.d" -MT ${OBJECTDIR}/_ext/1515470581/usb_descriptors.o -o ${OBJECTDIR}/_ext/1515470581/usb_descriptors.o ../config.mcc/mcc_generated_files/usb/usb_descriptors.c 
	
${OBJECTDIR}/_ext/1515470581/usb_device.o: ../config.mcc/mcc_generated_files/usb/usb_device.c  .generated_files/flags/default/d0b3eba2fe58c97bc8101760bb65c509a79c1634 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1515470581" 
	@${RM} ${OBJECTDIR}/_ext/1515470581/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1515470581/usb_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_PK4=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1515470581/usb_device.o.d" -MT "${OBJECTDIR}/_ext/1515470581/usb_device.o.d" -MT ${OBJECTDIR}/_ext/1515470581/usb_device.o -o ${OBJECTDIR}/_ext/1515470581/usb_device.o ../config.mcc/mcc_generated_files/usb/usb_device.c 
	
${OBJECTDIR}/_ext/760557894/internal_memory_maps.o: ../user/internal_memory_maps.c  .generated_files/flags/default/cfb31dafcced4f43535ce2e255e490c4b66cef17 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/760557894" 
	@${RM} ${OBJECTDIR}/_ext/760557894/internal_memory_maps.o.d 
	@${RM} ${OBJECTDIR}/_ext/760557894/internal_memory_maps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_PK4=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/760557894/internal_memory_maps.o.d" -MT "${OBJECTDIR}/_ext/760557894/internal_memory_maps.o.d" -MT ${OBJECTDIR}/_ext/760557894/internal_memory_maps.o -o ${OBJECTDIR}/_ext/760557894/internal_memory_maps.o ../user/internal_memory_maps.c 
	
${OBJECTDIR}/_ext/760557894/vcp.o: ../user/vcp.c  .generated_files/flags/default/6e1379c6d8f36cc84835bc3be9fae77ade93f759 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/760557894" 
	@${RM} ${OBJECTDIR}/_ext/760557894/vcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/760557894/vcp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_PK4=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/760557894/vcp.o.d" -MT "${OBJECTDIR}/_ext/760557894/vcp.o.d" -MT ${OBJECTDIR}/_ext/760557894/vcp.o -o ${OBJECTDIR}/_ext/760557894/vcp.o ../user/vcp.c 
	
${OBJECTDIR}/_ext/990751600/main.o: ../config.mcc/main.c  .generated_files/flags/default/9a18092c9bdb12fb0d49346af987f7fbe825b5c7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/990751600" 
	@${RM} ${OBJECTDIR}/_ext/990751600/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/990751600/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_PK4=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/990751600/main.o.d" -MT "${OBJECTDIR}/_ext/990751600/main.o.d" -MT ${OBJECTDIR}/_ext/990751600/main.o -o ${OBJECTDIR}/_ext/990751600/main.o ../config.mcc/main.c 
	
else
${OBJECTDIR}/_ext/1360921493/system_tick_cfg.o: ../cfg/system_tick_cfg.c  .generated_files/flags/default/5300689bc480b7e58013850c6f1d526db728b116 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360921493" 
	@${RM} ${OBJECTDIR}/_ext/1360921493/system_tick_cfg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360921493/system_tick_cfg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1360921493/system_tick_cfg.o.d" -MT "${OBJECTDIR}/_ext/1360921493/system_tick_cfg.o.d" -MT ${OBJECTDIR}/_ext/1360921493/system_tick_cfg.o -o ${OBJECTDIR}/_ext/1360921493/system_tick_cfg.o ../cfg/system_tick_cfg.c 
	
${OBJECTDIR}/_ext/1114738774/util.o: ../../../CLib/misc/util.c  .generated_files/flags/default/c30ba92f85eaecb07a5ce1dd75ef0cb4eb21047d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1114738774" 
	@${RM} ${OBJECTDIR}/_ext/1114738774/util.o.d 
	@${RM} ${OBJECTDIR}/_ext/1114738774/util.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1114738774/util.o.d" -MT "${OBJECTDIR}/_ext/1114738774/util.o.d" -MT ${OBJECTDIR}/_ext/1114738774/util.o -o ${OBJECTDIR}/_ext/1114738774/util.o ../../../CLib/misc/util.c 
	
${OBJECTDIR}/_ext/1630534291/system_tick.o: ../../../CLib/system/system_tick.c  .generated_files/flags/default/dcc2563a3f7acee767a1c1754920c30b7d8ca3e9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1630534291" 
	@${RM} ${OBJECTDIR}/_ext/1630534291/system_tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1630534291/system_tick.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1630534291/system_tick.o.d" -MT "${OBJECTDIR}/_ext/1630534291/system_tick.o.d" -MT ${OBJECTDIR}/_ext/1630534291/system_tick.o -o ${OBJECTDIR}/_ext/1630534291/system_tick.o ../../../CLib/system/system_tick.c 
	
${OBJECTDIR}/_ext/1630534291/task_manager.o: ../../../CLib/system/task_manager.c  .generated_files/flags/default/99cfa9846aa27c89e35408b44d2c7288ea550d04 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1630534291" 
	@${RM} ${OBJECTDIR}/_ext/1630534291/task_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1630534291/task_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1630534291/task_manager.o.d" -MT "${OBJECTDIR}/_ext/1630534291/task_manager.o.d" -MT ${OBJECTDIR}/_ext/1630534291/task_manager.o -o ${OBJECTDIR}/_ext/1630534291/task_manager.o ../../../CLib/system/task_manager.c 
	
${OBJECTDIR}/_ext/201542785/nvm.o: ../config.mcc/mcc_generated_files/nvm/src/nvm.c  .generated_files/flags/default/dd4beeef7ab773aec6563790af8a6b71bfbbf330 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/201542785" 
	@${RM} ${OBJECTDIR}/_ext/201542785/nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/201542785/nvm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/201542785/nvm.o.d" -MT "${OBJECTDIR}/_ext/201542785/nvm.o.d" -MT ${OBJECTDIR}/_ext/201542785/nvm.o -o ${OBJECTDIR}/_ext/201542785/nvm.o ../config.mcc/mcc_generated_files/nvm/src/nvm.c 
	
${OBJECTDIR}/_ext/692415455/power.o: ../config.mcc/mcc_generated_files/power/src/power.c  .generated_files/flags/default/b6d4d754135a81aa8e81b8ae09b90bf4544cf95d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/692415455" 
	@${RM} ${OBJECTDIR}/_ext/692415455/power.o.d 
	@${RM} ${OBJECTDIR}/_ext/692415455/power.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/692415455/power.o.d" -MT "${OBJECTDIR}/_ext/692415455/power.o.d" -MT ${OBJECTDIR}/_ext/692415455/power.o -o ${OBJECTDIR}/_ext/692415455/power.o ../config.mcc/mcc_generated_files/power/src/power.c 
	
${OBJECTDIR}/_ext/486208363/rstctrl.o: ../config.mcc/mcc_generated_files/reset/src/rstctrl.c  .generated_files/flags/default/7c1c083a3a111df2330152d35d4c648dba3a1f60 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/486208363" 
	@${RM} ${OBJECTDIR}/_ext/486208363/rstctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/486208363/rstctrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/486208363/rstctrl.o.d" -MT "${OBJECTDIR}/_ext/486208363/rstctrl.o.d" -MT ${OBJECTDIR}/_ext/486208363/rstctrl.o -o ${OBJECTDIR}/_ext/486208363/rstctrl.o ../config.mcc/mcc_generated_files/reset/src/rstctrl.c 
	
${OBJECTDIR}/_ext/255143069/clock.o: ../config.mcc/mcc_generated_files/system/src/clock.c  .generated_files/flags/default/75115be22f605d6164410213986b57fd394495f3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/255143069" 
	@${RM} ${OBJECTDIR}/_ext/255143069/clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/255143069/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/255143069/clock.o.d" -MT "${OBJECTDIR}/_ext/255143069/clock.o.d" -MT ${OBJECTDIR}/_ext/255143069/clock.o -o ${OBJECTDIR}/_ext/255143069/clock.o ../config.mcc/mcc_generated_files/system/src/clock.c 
	
${OBJECTDIR}/_ext/255143069/config_bits.o: ../config.mcc/mcc_generated_files/system/src/config_bits.c  .generated_files/flags/default/e8936380f90681a6a8be12c40acbbb276d205120 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/255143069" 
	@${RM} ${OBJECTDIR}/_ext/255143069/config_bits.o.d 
	@${RM} ${OBJECTDIR}/_ext/255143069/config_bits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/255143069/config_bits.o.d" -MT "${OBJECTDIR}/_ext/255143069/config_bits.o.d" -MT ${OBJECTDIR}/_ext/255143069/config_bits.o -o ${OBJECTDIR}/_ext/255143069/config_bits.o ../config.mcc/mcc_generated_files/system/src/config_bits.c 
	
${OBJECTDIR}/_ext/255143069/interrupt.o: ../config.mcc/mcc_generated_files/system/src/interrupt.c  .generated_files/flags/default/af88b278e0fb27d317067a26bd9567ea337a63ae .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/255143069" 
	@${RM} ${OBJECTDIR}/_ext/255143069/interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/255143069/interrupt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/255143069/interrupt.o.d" -MT "${OBJECTDIR}/_ext/255143069/interrupt.o.d" -MT ${OBJECTDIR}/_ext/255143069/interrupt.o -o ${OBJECTDIR}/_ext/255143069/interrupt.o ../config.mcc/mcc_generated_files/system/src/interrupt.c 
	
${OBJECTDIR}/_ext/255143069/pins.o: ../config.mcc/mcc_generated_files/system/src/pins.c  .generated_files/flags/default/8fe8a4917394970ad325241c2b24bdf11ea9c384 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/255143069" 
	@${RM} ${OBJECTDIR}/_ext/255143069/pins.o.d 
	@${RM} ${OBJECTDIR}/_ext/255143069/pins.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/255143069/pins.o.d" -MT "${OBJECTDIR}/_ext/255143069/pins.o.d" -MT ${OBJECTDIR}/_ext/255143069/pins.o -o ${OBJECTDIR}/_ext/255143069/pins.o ../config.mcc/mcc_generated_files/system/src/pins.c 
	
${OBJECTDIR}/_ext/255143069/syscfg.o: ../config.mcc/mcc_generated_files/system/src/syscfg.c  .generated_files/flags/default/c635e4f06a0edb63eaa9f260954f1aceb30a62a5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/255143069" 
	@${RM} ${OBJECTDIR}/_ext/255143069/syscfg.o.d 
	@${RM} ${OBJECTDIR}/_ext/255143069/syscfg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/255143069/syscfg.o.d" -MT "${OBJECTDIR}/_ext/255143069/syscfg.o.d" -MT ${OBJECTDIR}/_ext/255143069/syscfg.o -o ${OBJECTDIR}/_ext/255143069/syscfg.o ../config.mcc/mcc_generated_files/system/src/syscfg.c 
	
${OBJECTDIR}/_ext/255143069/system.o: ../config.mcc/mcc_generated_files/system/src/system.c  .generated_files/flags/default/65a53fc4cef9fda497f0cbf454b264fa7e38efff .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/255143069" 
	@${RM} ${OBJECTDIR}/_ext/255143069/system.o.d 
	@${RM} ${OBJECTDIR}/_ext/255143069/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/255143069/system.o.d" -MT "${OBJECTDIR}/_ext/255143069/system.o.d" -MT ${OBJECTDIR}/_ext/255143069/system.o -o ${OBJECTDIR}/_ext/255143069/system.o ../config.mcc/mcc_generated_files/system/src/system.c 
	
${OBJECTDIR}/_ext/1484328351/rtc.o: ../config.mcc/mcc_generated_files/timer/src/rtc.c  .generated_files/flags/default/77ce6efe41986c2a0b9e52ed8f314f0841fcaadf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1484328351" 
	@${RM} ${OBJECTDIR}/_ext/1484328351/rtc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1484328351/rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1484328351/rtc.o.d" -MT "${OBJECTDIR}/_ext/1484328351/rtc.o.d" -MT ${OBJECTDIR}/_ext/1484328351/rtc.o -o ${OBJECTDIR}/_ext/1484328351/rtc.o ../config.mcc/mcc_generated_files/timer/src/rtc.c 
	
${OBJECTDIR}/_ext/2023055072/usb0.o: ../config.mcc/mcc_generated_files/usb/src/usb0.c  .generated_files/flags/default/d21162b329fdf405882db93ec403654252a00e15 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2023055072" 
	@${RM} ${OBJECTDIR}/_ext/2023055072/usb0.o.d 
	@${RM} ${OBJECTDIR}/_ext/2023055072/usb0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/2023055072/usb0.o.d" -MT "${OBJECTDIR}/_ext/2023055072/usb0.o.d" -MT ${OBJECTDIR}/_ext/2023055072/usb0.o -o ${OBJECTDIR}/_ext/2023055072/usb0.o ../config.mcc/mcc_generated_files/usb/src/usb0.c 
	
${OBJECTDIR}/_ext/341371468/circular_buffer.o: ../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer/circular_buffer.c  .generated_files/flags/default/c1da92933f621c6cc4ec7367268c7750882ca85b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/341371468" 
	@${RM} ${OBJECTDIR}/_ext/341371468/circular_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/341371468/circular_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/341371468/circular_buffer.o.d" -MT "${OBJECTDIR}/_ext/341371468/circular_buffer.o.d" -MT ${OBJECTDIR}/_ext/341371468/circular_buffer.o -o ${OBJECTDIR}/_ext/341371468/circular_buffer.o ../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer/circular_buffer.c 
	
${OBJECTDIR}/_ext/894773789/usb_cdc.o: ../config.mcc/mcc_generated_files/usb/usb_cdc/usb_cdc.c  .generated_files/flags/default/335ec867ba647f9038146a376294c03deb8562dc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/894773789" 
	@${RM} ${OBJECTDIR}/_ext/894773789/usb_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/894773789/usb_cdc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/894773789/usb_cdc.o.d" -MT "${OBJECTDIR}/_ext/894773789/usb_cdc.o.d" -MT ${OBJECTDIR}/_ext/894773789/usb_cdc.o -o ${OBJECTDIR}/_ext/894773789/usb_cdc.o ../config.mcc/mcc_generated_files/usb/usb_cdc/usb_cdc.c 
	
${OBJECTDIR}/_ext/894773789/usb_cdc_virtual_serial_port.o: ../config.mcc/mcc_generated_files/usb/usb_cdc/usb_cdc_virtual_serial_port.c  .generated_files/flags/default/d5ed68e8e2b5d2576659e71d5c7ce6a19ffb10de .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/894773789" 
	@${RM} ${OBJECTDIR}/_ext/894773789/usb_cdc_virtual_serial_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/894773789/usb_cdc_virtual_serial_port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/894773789/usb_cdc_virtual_serial_port.o.d" -MT "${OBJECTDIR}/_ext/894773789/usb_cdc_virtual_serial_port.o.d" -MT ${OBJECTDIR}/_ext/894773789/usb_cdc_virtual_serial_port.o -o ${OBJECTDIR}/_ext/894773789/usb_cdc_virtual_serial_port.o ../config.mcc/mcc_generated_files/usb/usb_cdc/usb_cdc_virtual_serial_port.c 
	
${OBJECTDIR}/_ext/1628344182/usb_core.o: ../config.mcc/mcc_generated_files/usb/usb_common/usb_core.c  .generated_files/flags/default/12c996f599a80b8f8863f1e0151ddd7dadacad3f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1628344182" 
	@${RM} ${OBJECTDIR}/_ext/1628344182/usb_core.o.d 
	@${RM} ${OBJECTDIR}/_ext/1628344182/usb_core.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1628344182/usb_core.o.d" -MT "${OBJECTDIR}/_ext/1628344182/usb_core.o.d" -MT ${OBJECTDIR}/_ext/1628344182/usb_core.o -o ${OBJECTDIR}/_ext/1628344182/usb_core.o ../config.mcc/mcc_generated_files/usb/usb_common/usb_core.c 
	
${OBJECTDIR}/_ext/1628344182/usb_core_descriptors.o: ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_descriptors.c  .generated_files/flags/default/2147ddffaec8320074617ffb0526eb1ebbdfb504 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1628344182" 
	@${RM} ${OBJECTDIR}/_ext/1628344182/usb_core_descriptors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1628344182/usb_core_descriptors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1628344182/usb_core_descriptors.o.d" -MT "${OBJECTDIR}/_ext/1628344182/usb_core_descriptors.o.d" -MT ${OBJECTDIR}/_ext/1628344182/usb_core_descriptors.o -o ${OBJECTDIR}/_ext/1628344182/usb_core_descriptors.o ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_descriptors.c 
	
${OBJECTDIR}/_ext/1628344182/usb_core_events.o: ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_events.c  .generated_files/flags/default/e17bb24ed248ab02833b9a08302587100e0e6915 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1628344182" 
	@${RM} ${OBJECTDIR}/_ext/1628344182/usb_core_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/1628344182/usb_core_events.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1628344182/usb_core_events.o.d" -MT "${OBJECTDIR}/_ext/1628344182/usb_core_events.o.d" -MT ${OBJECTDIR}/_ext/1628344182/usb_core_events.o -o ${OBJECTDIR}/_ext/1628344182/usb_core_events.o ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_events.c 
	
${OBJECTDIR}/_ext/1628344182/usb_core_requests.o: ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_requests.c  .generated_files/flags/default/c6c81f23a6a320e522f72fe09c39c8471f2cee87 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1628344182" 
	@${RM} ${OBJECTDIR}/_ext/1628344182/usb_core_requests.o.d 
	@${RM} ${OBJECTDIR}/_ext/1628344182/usb_core_requests.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1628344182/usb_core_requests.o.d" -MT "${OBJECTDIR}/_ext/1628344182/usb_core_requests.o.d" -MT ${OBJECTDIR}/_ext/1628344182/usb_core_requests.o -o ${OBJECTDIR}/_ext/1628344182/usb_core_requests.o ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_requests.c 
	
${OBJECTDIR}/_ext/1628344182/usb_core_requests_device.o: ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_requests_device.c  .generated_files/flags/default/314cf826c398d46efc2332e8a0ee1057b301f693 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1628344182" 
	@${RM} ${OBJECTDIR}/_ext/1628344182/usb_core_requests_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1628344182/usb_core_requests_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1628344182/usb_core_requests_device.o.d" -MT "${OBJECTDIR}/_ext/1628344182/usb_core_requests_device.o.d" -MT ${OBJECTDIR}/_ext/1628344182/usb_core_requests_device.o -o ${OBJECTDIR}/_ext/1628344182/usb_core_requests_device.o ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_requests_device.c 
	
${OBJECTDIR}/_ext/1628344182/usb_core_requests_endpoint.o: ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.c  .generated_files/flags/default/f14744a26c257b18018e20b0755b6c9876939dbd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1628344182" 
	@${RM} ${OBJECTDIR}/_ext/1628344182/usb_core_requests_endpoint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1628344182/usb_core_requests_endpoint.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1628344182/usb_core_requests_endpoint.o.d" -MT "${OBJECTDIR}/_ext/1628344182/usb_core_requests_endpoint.o.d" -MT ${OBJECTDIR}/_ext/1628344182/usb_core_requests_endpoint.o -o ${OBJECTDIR}/_ext/1628344182/usb_core_requests_endpoint.o ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.c 
	
${OBJECTDIR}/_ext/1628344182/usb_core_requests_interface.o: ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_requests_interface.c  .generated_files/flags/default/8b14242012e8761e2c1439271ffe7422857a7370 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1628344182" 
	@${RM} ${OBJECTDIR}/_ext/1628344182/usb_core_requests_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1628344182/usb_core_requests_interface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1628344182/usb_core_requests_interface.o.d" -MT "${OBJECTDIR}/_ext/1628344182/usb_core_requests_interface.o.d" -MT ${OBJECTDIR}/_ext/1628344182/usb_core_requests_interface.o -o ${OBJECTDIR}/_ext/1628344182/usb_core_requests_interface.o ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_requests_interface.c 
	
${OBJECTDIR}/_ext/1628344182/usb_core_transfer.o: ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_transfer.c  .generated_files/flags/default/402aa7fc31fd8e16d50e3ab112a0f47e2ee0762d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1628344182" 
	@${RM} ${OBJECTDIR}/_ext/1628344182/usb_core_transfer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1628344182/usb_core_transfer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1628344182/usb_core_transfer.o.d" -MT "${OBJECTDIR}/_ext/1628344182/usb_core_transfer.o.d" -MT ${OBJECTDIR}/_ext/1628344182/usb_core_transfer.o -o ${OBJECTDIR}/_ext/1628344182/usb_core_transfer.o ../config.mcc/mcc_generated_files/usb/usb_common/usb_core_transfer.c 
	
${OBJECTDIR}/_ext/1027775333/usb_peripheral.o: ../config.mcc/mcc_generated_files/usb/usb_peripheral/usb_peripheral.c  .generated_files/flags/default/1aeadd78bb185045c0002fc43d0e6cf39324e4a5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1027775333" 
	@${RM} ${OBJECTDIR}/_ext/1027775333/usb_peripheral.o.d 
	@${RM} ${OBJECTDIR}/_ext/1027775333/usb_peripheral.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1027775333/usb_peripheral.o.d" -MT "${OBJECTDIR}/_ext/1027775333/usb_peripheral.o.d" -MT ${OBJECTDIR}/_ext/1027775333/usb_peripheral.o -o ${OBJECTDIR}/_ext/1027775333/usb_peripheral.o ../config.mcc/mcc_generated_files/usb/usb_peripheral/usb_peripheral.c 
	
${OBJECTDIR}/_ext/1027775333/usb_peripheral_endpoint.o: ../config.mcc/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.c  .generated_files/flags/default/b0fbe04d4687d6ac04b3464abbc12237e6189e71 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1027775333" 
	@${RM} ${OBJECTDIR}/_ext/1027775333/usb_peripheral_endpoint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1027775333/usb_peripheral_endpoint.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1027775333/usb_peripheral_endpoint.o.d" -MT "${OBJECTDIR}/_ext/1027775333/usb_peripheral_endpoint.o.d" -MT ${OBJECTDIR}/_ext/1027775333/usb_peripheral_endpoint.o -o ${OBJECTDIR}/_ext/1027775333/usb_peripheral_endpoint.o ../config.mcc/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.c 
	
${OBJECTDIR}/_ext/1027775333/usb_peripheral_read_write.o: ../config.mcc/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.c  .generated_files/flags/default/76e2e383be501644e2fe63c756f6864f0fd2dec .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1027775333" 
	@${RM} ${OBJECTDIR}/_ext/1027775333/usb_peripheral_read_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/1027775333/usb_peripheral_read_write.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1027775333/usb_peripheral_read_write.o.d" -MT "${OBJECTDIR}/_ext/1027775333/usb_peripheral_read_write.o.d" -MT ${OBJECTDIR}/_ext/1027775333/usb_peripheral_read_write.o -o ${OBJECTDIR}/_ext/1027775333/usb_peripheral_read_write.o ../config.mcc/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.c 
	
${OBJECTDIR}/_ext/1515470581/usb_descriptors.o: ../config.mcc/mcc_generated_files/usb/usb_descriptors.c  .generated_files/flags/default/619c0aba6c7b3e61a3967d7a352cce1bc7d80c59 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1515470581" 
	@${RM} ${OBJECTDIR}/_ext/1515470581/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1515470581/usb_descriptors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1515470581/usb_descriptors.o.d" -MT "${OBJECTDIR}/_ext/1515470581/usb_descriptors.o.d" -MT ${OBJECTDIR}/_ext/1515470581/usb_descriptors.o -o ${OBJECTDIR}/_ext/1515470581/usb_descriptors.o ../config.mcc/mcc_generated_files/usb/usb_descriptors.c 
	
${OBJECTDIR}/_ext/1515470581/usb_device.o: ../config.mcc/mcc_generated_files/usb/usb_device.c  .generated_files/flags/default/807ff26d6f9de9a77ae3a9b43b957439c4b9255a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1515470581" 
	@${RM} ${OBJECTDIR}/_ext/1515470581/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1515470581/usb_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1515470581/usb_device.o.d" -MT "${OBJECTDIR}/_ext/1515470581/usb_device.o.d" -MT ${OBJECTDIR}/_ext/1515470581/usb_device.o -o ${OBJECTDIR}/_ext/1515470581/usb_device.o ../config.mcc/mcc_generated_files/usb/usb_device.c 
	
${OBJECTDIR}/_ext/760557894/internal_memory_maps.o: ../user/internal_memory_maps.c  .generated_files/flags/default/35b776dd1ec19ed4482f766a43cacca86a398559 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/760557894" 
	@${RM} ${OBJECTDIR}/_ext/760557894/internal_memory_maps.o.d 
	@${RM} ${OBJECTDIR}/_ext/760557894/internal_memory_maps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/760557894/internal_memory_maps.o.d" -MT "${OBJECTDIR}/_ext/760557894/internal_memory_maps.o.d" -MT ${OBJECTDIR}/_ext/760557894/internal_memory_maps.o -o ${OBJECTDIR}/_ext/760557894/internal_memory_maps.o ../user/internal_memory_maps.c 
	
${OBJECTDIR}/_ext/760557894/vcp.o: ../user/vcp.c  .generated_files/flags/default/c252ef62f5e6cfc1776485ff25ed72decba48ad8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/760557894" 
	@${RM} ${OBJECTDIR}/_ext/760557894/vcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/760557894/vcp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/760557894/vcp.o.d" -MT "${OBJECTDIR}/_ext/760557894/vcp.o.d" -MT ${OBJECTDIR}/_ext/760557894/vcp.o -o ${OBJECTDIR}/_ext/760557894/vcp.o ../user/vcp.c 
	
${OBJECTDIR}/_ext/990751600/main.o: ../config.mcc/main.c  .generated_files/flags/default/bb23fadeb33ab6f32e2ae4b89cbfba5e8ab7e1ef .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/990751600" 
	@${RM} ${OBJECTDIR}/_ext/990751600/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/990751600/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/990751600/main.o.d" -MT "${OBJECTDIR}/_ext/990751600/main.o.d" -MT ${OBJECTDIR}/_ext/990751600/main.o -o ${OBJECTDIR}/_ext/990751600/main.o ../config.mcc/main.c 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/255143069/protected_io.o: ../config.mcc/mcc_generated_files/system/src/protected_io.S  .generated_files/flags/default/e320aeb5762b241725618732045d84250c63b6f8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/255143069" 
	@${RM} ${OBJECTDIR}/_ext/255143069/protected_io.o.d 
	@${RM} ${OBJECTDIR}/_ext/255143069/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_PK4=1 -gdwarf-2  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem -Wa,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK4=1   -MD -MP -MF "${OBJECTDIR}/_ext/255143069/protected_io.o.d" -MT "${OBJECTDIR}/_ext/255143069/protected_io.o.d" -MT ${OBJECTDIR}/_ext/255143069/protected_io.o -o ${OBJECTDIR}/_ext/255143069/protected_io.o  ../config.mcc/mcc_generated_files/system/src/protected_io.S 
	
else
${OBJECTDIR}/_ext/255143069/protected_io.o: ../config.mcc/mcc_generated_files/system/src/protected_io.S  .generated_files/flags/default/d770ee80c2b4defccb2b570b55d2e08d87ed2951 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/255143069" 
	@${RM} ${OBJECTDIR}/_ext/255143069/protected_io.o.d 
	@${RM} ${OBJECTDIR}/_ext/255143069/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -DXPRJ_default=$(CND_CONF)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem -Wa,--defsym=__MPLAB_BUILD=1   -MD -MP -MF "${OBJECTDIR}/_ext/255143069/protected_io.o.d" -MT "${OBJECTDIR}/_ext/255143069/protected_io.o.d" -MT ${OBJECTDIR}/_ext/255143069/protected_io.o -o ${OBJECTDIR}/_ext/255143069/protected_io.o  ../config.mcc/mcc_generated_files/system/src/protected_io.S 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/mplabx.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/mplabx.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -D__MPLAB_DEBUGGER_PK4=1 -gdwarf-2 -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/mplabx.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/mplabx.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK4=1
	@${RM} ${DISTDIR}/mplabx.X.${IMAGE_TYPE}.hex 
	
	
else
${DISTDIR}/mplabx.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/mplabx.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -Os -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"../config.mcc" -I"../config.mcc/mcc_generated_files" -I"../config.mcc/mcc_generated_files/usb" -I"../config.mcc/mcc_generated_files/usb/usb_cdc" -I"../config.mcc/mcc_generated_files/usb/usb_cdc/circular_buffer" -I"../config.mcc/mcc_generated_files/usb/usb_common" -I"../config.mcc/mcc_generated_files/usb/usb_peripheral" -I"../cfg" -I"../user" -I"../../../CLib" -mext=cci -Wall -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/mplabx.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/mplabx.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "${DISTDIR}/mplabx.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/mplabx.X.${IMAGE_TYPE}.hex"
	
	@echo Normalizing hex file
	@"C:/Program Files/Microchip/MPLABX/v6.35/mplab_platform/platform/../mplab_ide/modules/../../bin/hexmate" --edf="C:/Program Files/Microchip/MPLABX/v6.35/mplab_platform/platform/../mplab_ide/modules/../../dat/en_msgs.txt" ${DISTDIR}/mplabx.X.${IMAGE_TYPE}.hex -o${DISTDIR}/mplabx.X.${IMAGE_TYPE}.hex

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
