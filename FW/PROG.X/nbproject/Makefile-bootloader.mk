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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PROG.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PROG.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/usb/usb_device_generic.c mcc_generated_files/usb/usb_device_events.c mcc_generated_files/usb/usb_device.c mcc_generated_files/usb/usb_descriptors.c mcc_generated_files/uart2.c mcc_generated_files/uart3.c mcc_generated_files/clock.c mcc_generated_files/coretimer.c mcc_generated_files/interrupt_manager.c mcc_generated_files/spi2.c mcc_generated_files/exceptions.c mcc_generated_files/system.c mcc_generated_files/pin_manager.c mcc_generated_files/adc1.c mcc_generated_files/mcc.c main.c ../Library/bootloader/BLD_FileIO.c ../Library/bootloader/BLD_Nvm.c ../Library/bootloader/Bootloader.c ../Library/buttons/ButtonApi.c ../Library/buttons/Buttons.c ../Library/common/Debug.c ../Library/common/RingBuffer.c ../Library/common/UserFunctions.c ../Library/fileio/fileio.c ../Library/fileio/fileio_lfn.c ../Library/fileio/files_lite.c ../Library/indicator/Indicator.c ../Library/indicator/Led7Seg.c ../Library/indicator/LedMatrix.c ../Library/indicator/RGB_Led.c ../Library/kit/kit.c ../Library/kit/kit_rs232_win32.c ../Library/kit/kit_usb_device.c ../Library/kit/kit_usb_device_cdc.c ../Library/kit/kit_usb_device_generic.c ../Library/kit/kit_usb_device_hid.c ../Library/kit/kit_usb_device_msd.c ../Library/memory/AT21CS01.c ../Library/memory/ee24aa.c ../Library/memory/sd_spi.c ../Library/memory/sd_spi_fileio.c ../Library/memory/SST25xx.c ../Library/memory/SSTFileIO.c ../Library/programmer/HexParsing.c ../Library/programmer/Icsp.c ../Library/programmer/ICSP_FileIO.c ../Library/programmer/ICSP_PIC32MM.c ../Library/system/TaskManager.c ../Library/system/TickCounter.c ../Library/system/TickTimer.c ../Library/system/Wdt.c ../Library/usb/usb_device_audio.c ../Library/usb/usb_device_ccid.c ../Library/usb/usb_device_cdc.c ../Library/usb/usb_device_generic.c ../Library/usb/usb_device_hid.c ../Library/usb/usb_device_msd.c ../Library/usb/usb_device_msd_multi_sector.c ../Library/usb/usb_device_phdc.c ../Library/usb/usb_device_phdc_com_model.c ../Library/usb/user_usb_device_events.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/mcc_generated_files/uart3.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/coretimer.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/spi2.o ${OBJECTDIR}/mcc_generated_files/exceptions.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/main.o ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o ${OBJECTDIR}/_ext/955631576/Bootloader.o ${OBJECTDIR}/_ext/1353568322/ButtonApi.o ${OBJECTDIR}/_ext/1353568322/Buttons.o ${OBJECTDIR}/_ext/1129169394/Debug.o ${OBJECTDIR}/_ext/1129169394/RingBuffer.o ${OBJECTDIR}/_ext/1129169394/UserFunctions.o ${OBJECTDIR}/_ext/1048860731/fileio.o ${OBJECTDIR}/_ext/1048860731/fileio_lfn.o ${OBJECTDIR}/_ext/1048860731/files_lite.o ${OBJECTDIR}/_ext/127659252/Indicator.o ${OBJECTDIR}/_ext/127659252/Led7Seg.o ${OBJECTDIR}/_ext/127659252/LedMatrix.o ${OBJECTDIR}/_ext/127659252/RGB_Led.o ${OBJECTDIR}/_ext/436516243/kit.o ${OBJECTDIR}/_ext/436516243/kit_rs232_win32.o ${OBJECTDIR}/_ext/436516243/kit_usb_device.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_generic.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_hid.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o ${OBJECTDIR}/_ext/852111068/AT21CS01.o ${OBJECTDIR}/_ext/852111068/ee24aa.o ${OBJECTDIR}/_ext/852111068/sd_spi.o ${OBJECTDIR}/_ext/852111068/sd_spi_fileio.o ${OBJECTDIR}/_ext/852111068/SST25xx.o ${OBJECTDIR}/_ext/852111068/SSTFileIO.o ${OBJECTDIR}/_ext/967316345/HexParsing.o ${OBJECTDIR}/_ext/967316345/Icsp.o ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o ${OBJECTDIR}/_ext/967316345/ICSP_PIC32MM.o ${OBJECTDIR}/_ext/661682606/TaskManager.o ${OBJECTDIR}/_ext/661682606/TickCounter.o ${OBJECTDIR}/_ext/661682606/TickTimer.o ${OBJECTDIR}/_ext/661682606/Wdt.o ${OBJECTDIR}/_ext/436526145/usb_device_audio.o ${OBJECTDIR}/_ext/436526145/usb_device_ccid.o ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o ${OBJECTDIR}/_ext/436526145/usb_device_generic.o ${OBJECTDIR}/_ext/436526145/usb_device_hid.o ${OBJECTDIR}/_ext/436526145/usb_device_msd.o ${OBJECTDIR}/_ext/436526145/usb_device_msd_multi_sector.o ${OBJECTDIR}/_ext/436526145/usb_device_phdc.o ${OBJECTDIR}/_ext/436526145/usb_device_phdc_com_model.o ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d ${OBJECTDIR}/mcc_generated_files/uart2.o.d ${OBJECTDIR}/mcc_generated_files/uart3.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/coretimer.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/spi2.o.d ${OBJECTDIR}/mcc_generated_files/exceptions.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/adc1.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o.d ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o.d ${OBJECTDIR}/_ext/955631576/Bootloader.o.d ${OBJECTDIR}/_ext/1353568322/ButtonApi.o.d ${OBJECTDIR}/_ext/1353568322/Buttons.o.d ${OBJECTDIR}/_ext/1129169394/Debug.o.d ${OBJECTDIR}/_ext/1129169394/RingBuffer.o.d ${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d ${OBJECTDIR}/_ext/1048860731/fileio.o.d ${OBJECTDIR}/_ext/1048860731/fileio_lfn.o.d ${OBJECTDIR}/_ext/1048860731/files_lite.o.d ${OBJECTDIR}/_ext/127659252/Indicator.o.d ${OBJECTDIR}/_ext/127659252/Led7Seg.o.d ${OBJECTDIR}/_ext/127659252/LedMatrix.o.d ${OBJECTDIR}/_ext/127659252/RGB_Led.o.d ${OBJECTDIR}/_ext/436516243/kit.o.d ${OBJECTDIR}/_ext/436516243/kit_rs232_win32.o.d ${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o.d ${OBJECTDIR}/_ext/436516243/kit_usb_device_generic.o.d ${OBJECTDIR}/_ext/436516243/kit_usb_device_hid.o.d ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d ${OBJECTDIR}/_ext/852111068/AT21CS01.o.d ${OBJECTDIR}/_ext/852111068/ee24aa.o.d ${OBJECTDIR}/_ext/852111068/sd_spi.o.d ${OBJECTDIR}/_ext/852111068/sd_spi_fileio.o.d ${OBJECTDIR}/_ext/852111068/SST25xx.o.d ${OBJECTDIR}/_ext/852111068/SSTFileIO.o.d ${OBJECTDIR}/_ext/967316345/HexParsing.o.d ${OBJECTDIR}/_ext/967316345/Icsp.o.d ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o.d ${OBJECTDIR}/_ext/967316345/ICSP_PIC32MM.o.d ${OBJECTDIR}/_ext/661682606/TaskManager.o.d ${OBJECTDIR}/_ext/661682606/TickCounter.o.d ${OBJECTDIR}/_ext/661682606/TickTimer.o.d ${OBJECTDIR}/_ext/661682606/Wdt.o.d ${OBJECTDIR}/_ext/436526145/usb_device_audio.o.d ${OBJECTDIR}/_ext/436526145/usb_device_ccid.o.d ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o.d ${OBJECTDIR}/_ext/436526145/usb_device_generic.o.d ${OBJECTDIR}/_ext/436526145/usb_device_hid.o.d ${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d ${OBJECTDIR}/_ext/436526145/usb_device_msd_multi_sector.o.d ${OBJECTDIR}/_ext/436526145/usb_device_phdc.o.d ${OBJECTDIR}/_ext/436526145/usb_device_phdc_com_model.o.d ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/mcc_generated_files/uart3.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/coretimer.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/spi2.o ${OBJECTDIR}/mcc_generated_files/exceptions.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/main.o ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o ${OBJECTDIR}/_ext/955631576/Bootloader.o ${OBJECTDIR}/_ext/1353568322/ButtonApi.o ${OBJECTDIR}/_ext/1353568322/Buttons.o ${OBJECTDIR}/_ext/1129169394/Debug.o ${OBJECTDIR}/_ext/1129169394/RingBuffer.o ${OBJECTDIR}/_ext/1129169394/UserFunctions.o ${OBJECTDIR}/_ext/1048860731/fileio.o ${OBJECTDIR}/_ext/1048860731/fileio_lfn.o ${OBJECTDIR}/_ext/1048860731/files_lite.o ${OBJECTDIR}/_ext/127659252/Indicator.o ${OBJECTDIR}/_ext/127659252/Led7Seg.o ${OBJECTDIR}/_ext/127659252/LedMatrix.o ${OBJECTDIR}/_ext/127659252/RGB_Led.o ${OBJECTDIR}/_ext/436516243/kit.o ${OBJECTDIR}/_ext/436516243/kit_rs232_win32.o ${OBJECTDIR}/_ext/436516243/kit_usb_device.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_generic.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_hid.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o ${OBJECTDIR}/_ext/852111068/AT21CS01.o ${OBJECTDIR}/_ext/852111068/ee24aa.o ${OBJECTDIR}/_ext/852111068/sd_spi.o ${OBJECTDIR}/_ext/852111068/sd_spi_fileio.o ${OBJECTDIR}/_ext/852111068/SST25xx.o ${OBJECTDIR}/_ext/852111068/SSTFileIO.o ${OBJECTDIR}/_ext/967316345/HexParsing.o ${OBJECTDIR}/_ext/967316345/Icsp.o ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o ${OBJECTDIR}/_ext/967316345/ICSP_PIC32MM.o ${OBJECTDIR}/_ext/661682606/TaskManager.o ${OBJECTDIR}/_ext/661682606/TickCounter.o ${OBJECTDIR}/_ext/661682606/TickTimer.o ${OBJECTDIR}/_ext/661682606/Wdt.o ${OBJECTDIR}/_ext/436526145/usb_device_audio.o ${OBJECTDIR}/_ext/436526145/usb_device_ccid.o ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o ${OBJECTDIR}/_ext/436526145/usb_device_generic.o ${OBJECTDIR}/_ext/436526145/usb_device_hid.o ${OBJECTDIR}/_ext/436526145/usb_device_msd.o ${OBJECTDIR}/_ext/436526145/usb_device_msd_multi_sector.o ${OBJECTDIR}/_ext/436526145/usb_device_phdc.o ${OBJECTDIR}/_ext/436526145/usb_device_phdc_com_model.o ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o

# Source Files
SOURCEFILES=mcc_generated_files/usb/usb_device_generic.c mcc_generated_files/usb/usb_device_events.c mcc_generated_files/usb/usb_device.c mcc_generated_files/usb/usb_descriptors.c mcc_generated_files/uart2.c mcc_generated_files/uart3.c mcc_generated_files/clock.c mcc_generated_files/coretimer.c mcc_generated_files/interrupt_manager.c mcc_generated_files/spi2.c mcc_generated_files/exceptions.c mcc_generated_files/system.c mcc_generated_files/pin_manager.c mcc_generated_files/adc1.c mcc_generated_files/mcc.c main.c ../Library/bootloader/BLD_FileIO.c ../Library/bootloader/BLD_Nvm.c ../Library/bootloader/Bootloader.c ../Library/buttons/ButtonApi.c ../Library/buttons/Buttons.c ../Library/common/Debug.c ../Library/common/RingBuffer.c ../Library/common/UserFunctions.c ../Library/fileio/fileio.c ../Library/fileio/fileio_lfn.c ../Library/fileio/files_lite.c ../Library/indicator/Indicator.c ../Library/indicator/Led7Seg.c ../Library/indicator/LedMatrix.c ../Library/indicator/RGB_Led.c ../Library/kit/kit.c ../Library/kit/kit_rs232_win32.c ../Library/kit/kit_usb_device.c ../Library/kit/kit_usb_device_cdc.c ../Library/kit/kit_usb_device_generic.c ../Library/kit/kit_usb_device_hid.c ../Library/kit/kit_usb_device_msd.c ../Library/memory/AT21CS01.c ../Library/memory/ee24aa.c ../Library/memory/sd_spi.c ../Library/memory/sd_spi_fileio.c ../Library/memory/SST25xx.c ../Library/memory/SSTFileIO.c ../Library/programmer/HexParsing.c ../Library/programmer/Icsp.c ../Library/programmer/ICSP_FileIO.c ../Library/programmer/ICSP_PIC32MM.c ../Library/system/TaskManager.c ../Library/system/TickCounter.c ../Library/system/TickTimer.c ../Library/system/Wdt.c ../Library/usb/usb_device_audio.c ../Library/usb/usb_device_ccid.c ../Library/usb/usb_device_cdc.c ../Library/usb/usb_device_generic.c ../Library/usb/usb_device_hid.c ../Library/usb/usb_device_msd.c ../Library/usb/usb_device_msd_multi_sector.c ../Library/usb/usb_device_phdc.c ../Library/usb/usb_device_phdc_com_model.c ../Library/usb/user_usb_device_events.c



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
	${MAKE}  -f nbproject/Makefile-bootloader.mk dist/${CND_CONF}/${IMAGE_TYPE}/PROG.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o: mcc_generated_files/usb/usb_device_generic.c  .generated_files/11592ec409ba6b4b8c35e393cf37058fbbf6c8e3.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o mcc_generated_files/usb/usb_device_generic.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o: mcc_generated_files/usb/usb_device_events.c  .generated_files/56c0922391f4faedfbff71ce18098969897d08d0.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o mcc_generated_files/usb/usb_device_events.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/37832a8ab978a7374a98b23bc2e4b96ea56e728e.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o: mcc_generated_files/usb/usb_descriptors.c  .generated_files/32fe9cf07a22d554f1259d75a22baa3636d94a4e.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o mcc_generated_files/usb/usb_descriptors.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/bcd8dca455c91004bac5c8e1c7e98b0f39e739de.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart2.o mcc_generated_files/uart2.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart3.o: mcc_generated_files/uart3.c  .generated_files/fe6c9b9c2c2f0565aa9873879edf28c225afec9.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart3.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart3.o mcc_generated_files/uart3.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/4026e319ed421a641224b90957edb357e6659552.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/coretimer.o: mcc_generated_files/coretimer.c  .generated_files/9570ed8339bd8da716833e8e22f31e2bd4df5309.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/coretimer.o.d" -o ${OBJECTDIR}/mcc_generated_files/coretimer.o mcc_generated_files/coretimer.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/3e0bbc4dba67091476ceb62ed55400fb686448d.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/spi2.o: mcc_generated_files/spi2.c  .generated_files/ff7cc439f26162fd7adbc349a981fbf43ccaa2d1.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi2.o.d" -o ${OBJECTDIR}/mcc_generated_files/spi2.o mcc_generated_files/spi2.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/exceptions.o: mcc_generated_files/exceptions.c  .generated_files/7305aa80ab0f747e3a413fc90168469b274fd5d0.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/exceptions.o.d" -o ${OBJECTDIR}/mcc_generated_files/exceptions.o mcc_generated_files/exceptions.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/f89b9a7dbfa60885803022c5083fdb15c2a3f503.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/89c9e87309af62ee21f409f4e724469c3bd939bf.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  .generated_files/ab5d590569bcf6fb3f42c6c6b8012dce5c2baebb.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d" -o ${OBJECTDIR}/mcc_generated_files/adc1.o mcc_generated_files/adc1.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/78d8579fccdae2340aee3be701301ca0ac81f9e9.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/ec43ee5fc70798d2f3116442945c31df8e2f0ff9.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/955631576/BLD_FileIO.o: ../Library/bootloader/BLD_FileIO.c  .generated_files/81cf5cf38b119276a3928c48af5033d400e5fbab.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/955631576" 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/955631576/BLD_FileIO.o.d" -o ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o ../Library/bootloader/BLD_FileIO.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/955631576/BLD_Nvm.o: ../Library/bootloader/BLD_Nvm.c  .generated_files/62f16e7338e0bceabc7bf515941d2387d1e8c299.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/955631576" 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/955631576/BLD_Nvm.o.d" -o ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o ../Library/bootloader/BLD_Nvm.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/955631576/Bootloader.o: ../Library/bootloader/Bootloader.c  .generated_files/dc169820cd83d7c214cc551a389ade9fb994f04f.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/955631576" 
	@${RM} ${OBJECTDIR}/_ext/955631576/Bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/955631576/Bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/955631576/Bootloader.o.d" -o ${OBJECTDIR}/_ext/955631576/Bootloader.o ../Library/bootloader/Bootloader.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1353568322/ButtonApi.o: ../Library/buttons/ButtonApi.c  .generated_files/8838b065c95c2949e4fe549e86e3a8147bfd86d5.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1353568322" 
	@${RM} ${OBJECTDIR}/_ext/1353568322/ButtonApi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1353568322/ButtonApi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/1353568322/ButtonApi.o.d" -o ${OBJECTDIR}/_ext/1353568322/ButtonApi.o ../Library/buttons/ButtonApi.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1353568322/Buttons.o: ../Library/buttons/Buttons.c  .generated_files/65ab537a9639434d925685777e757a0cce24ce23.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1353568322" 
	@${RM} ${OBJECTDIR}/_ext/1353568322/Buttons.o.d 
	@${RM} ${OBJECTDIR}/_ext/1353568322/Buttons.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/1353568322/Buttons.o.d" -o ${OBJECTDIR}/_ext/1353568322/Buttons.o ../Library/buttons/Buttons.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/Debug.o: ../Library/common/Debug.c  .generated_files/a2993f42e1e9b4b27b3c03c843ba588ea8651676.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/Debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/Debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/Debug.o.d" -o ${OBJECTDIR}/_ext/1129169394/Debug.o ../Library/common/Debug.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/RingBuffer.o: ../Library/common/RingBuffer.c  .generated_files/29d770df8e54a478c83476a44a82f95fab87d27d.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/RingBuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/RingBuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/RingBuffer.o.d" -o ${OBJECTDIR}/_ext/1129169394/RingBuffer.o ../Library/common/RingBuffer.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/UserFunctions.o: ../Library/common/UserFunctions.c  .generated_files/200355450825b91bc35d6e929fc52b9e9b06b522.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d" -o ${OBJECTDIR}/_ext/1129169394/UserFunctions.o ../Library/common/UserFunctions.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1048860731/fileio.o: ../Library/fileio/fileio.c  .generated_files/a53919a0152c27004abc05b840b24c6c9205728.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1048860731" 
	@${RM} ${OBJECTDIR}/_ext/1048860731/fileio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1048860731/fileio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/1048860731/fileio.o.d" -o ${OBJECTDIR}/_ext/1048860731/fileio.o ../Library/fileio/fileio.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1048860731/fileio_lfn.o: ../Library/fileio/fileio_lfn.c  .generated_files/c8fa4959781a72e11f7bc0d1793567c0bec76e76.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1048860731" 
	@${RM} ${OBJECTDIR}/_ext/1048860731/fileio_lfn.o.d 
	@${RM} ${OBJECTDIR}/_ext/1048860731/fileio_lfn.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/1048860731/fileio_lfn.o.d" -o ${OBJECTDIR}/_ext/1048860731/fileio_lfn.o ../Library/fileio/fileio_lfn.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1048860731/files_lite.o: ../Library/fileio/files_lite.c  .generated_files/2068ed9181d29b52139a1a5029f6628d96299f61.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1048860731" 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o.d 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/1048860731/files_lite.o.d" -o ${OBJECTDIR}/_ext/1048860731/files_lite.o ../Library/fileio/files_lite.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/127659252/Indicator.o: ../Library/indicator/Indicator.c  .generated_files/56375da4c9ef8b7f3413247d0d44e831d7ad190a.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/127659252" 
	@${RM} ${OBJECTDIR}/_ext/127659252/Indicator.o.d 
	@${RM} ${OBJECTDIR}/_ext/127659252/Indicator.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/127659252/Indicator.o.d" -o ${OBJECTDIR}/_ext/127659252/Indicator.o ../Library/indicator/Indicator.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/127659252/Led7Seg.o: ../Library/indicator/Led7Seg.c  .generated_files/4f69357cf6449e3fc2c451ae28d53460122e1c5a.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/127659252" 
	@${RM} ${OBJECTDIR}/_ext/127659252/Led7Seg.o.d 
	@${RM} ${OBJECTDIR}/_ext/127659252/Led7Seg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/127659252/Led7Seg.o.d" -o ${OBJECTDIR}/_ext/127659252/Led7Seg.o ../Library/indicator/Led7Seg.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/127659252/LedMatrix.o: ../Library/indicator/LedMatrix.c  .generated_files/4eb5a2a976f605ced27046f564381f6a987408f1.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/127659252" 
	@${RM} ${OBJECTDIR}/_ext/127659252/LedMatrix.o.d 
	@${RM} ${OBJECTDIR}/_ext/127659252/LedMatrix.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/127659252/LedMatrix.o.d" -o ${OBJECTDIR}/_ext/127659252/LedMatrix.o ../Library/indicator/LedMatrix.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/127659252/RGB_Led.o: ../Library/indicator/RGB_Led.c  .generated_files/7a542863421094e7ad2958e753ad13b05cf21638.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/127659252" 
	@${RM} ${OBJECTDIR}/_ext/127659252/RGB_Led.o.d 
	@${RM} ${OBJECTDIR}/_ext/127659252/RGB_Led.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/127659252/RGB_Led.o.d" -o ${OBJECTDIR}/_ext/127659252/RGB_Led.o ../Library/indicator/RGB_Led.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit.o: ../Library/kit/kit.c  .generated_files/3c3f7afba4a0dec9332ce67b350bf5a60484dfdf.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit.o.d" -o ${OBJECTDIR}/_ext/436516243/kit.o ../Library/kit/kit.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_rs232_win32.o: ../Library/kit/kit_rs232_win32.c  .generated_files/983859d2c80fe0699a312fbf0b43896eb9f63868.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_rs232_win32.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_rs232_win32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_rs232_win32.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_rs232_win32.o ../Library/kit/kit_rs232_win32.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device.o: ../Library/kit/kit_usb_device.c  .generated_files/e9ae81d5a7e1b2e36620cbbf0a1e095944e8146d.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device.o ../Library/kit/kit_usb_device.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o: ../Library/kit/kit_usb_device_cdc.c  .generated_files/241445a6b187a8a63e7a9bfb74a384e30aae9c2b.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o ../Library/kit/kit_usb_device_cdc.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_generic.o: ../Library/kit/kit_usb_device_generic.c  .generated_files/947846150b15df16fb3dfa8ad4c4f249a36bd468.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_generic.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_generic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_generic.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_generic.o ../Library/kit/kit_usb_device_generic.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_hid.o: ../Library/kit/kit_usb_device_hid.c  .generated_files/7f6dd86b9e44456ba27102d88eb4c6f712222834.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_hid.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_hid.o ../Library/kit/kit_usb_device_hid.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o: ../Library/kit/kit_usb_device_msd.c  .generated_files/9d284120f6bab6b8ef7e32fbdcbc0ca710844f0a.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o ../Library/kit/kit_usb_device_msd.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/852111068/AT21CS01.o: ../Library/memory/AT21CS01.c  .generated_files/7e98f4a78e48fb8b29168eebca51d0b2f0f59e9f.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/852111068" 
	@${RM} ${OBJECTDIR}/_ext/852111068/AT21CS01.o.d 
	@${RM} ${OBJECTDIR}/_ext/852111068/AT21CS01.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/852111068/AT21CS01.o.d" -o ${OBJECTDIR}/_ext/852111068/AT21CS01.o ../Library/memory/AT21CS01.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/852111068/ee24aa.o: ../Library/memory/ee24aa.c  .generated_files/a8bc507d8acf2207c43510b4256b8a65bfb9bfa6.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/852111068" 
	@${RM} ${OBJECTDIR}/_ext/852111068/ee24aa.o.d 
	@${RM} ${OBJECTDIR}/_ext/852111068/ee24aa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/852111068/ee24aa.o.d" -o ${OBJECTDIR}/_ext/852111068/ee24aa.o ../Library/memory/ee24aa.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/852111068/sd_spi.o: ../Library/memory/sd_spi.c  .generated_files/3cc4beaa2a90531284b5663954e792a12a7d3263.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/852111068" 
	@${RM} ${OBJECTDIR}/_ext/852111068/sd_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/852111068/sd_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/852111068/sd_spi.o.d" -o ${OBJECTDIR}/_ext/852111068/sd_spi.o ../Library/memory/sd_spi.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/852111068/sd_spi_fileio.o: ../Library/memory/sd_spi_fileio.c  .generated_files/3f0c9d837b4f79709e63f99977f67f4535e97a6b.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/852111068" 
	@${RM} ${OBJECTDIR}/_ext/852111068/sd_spi_fileio.o.d 
	@${RM} ${OBJECTDIR}/_ext/852111068/sd_spi_fileio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/852111068/sd_spi_fileio.o.d" -o ${OBJECTDIR}/_ext/852111068/sd_spi_fileio.o ../Library/memory/sd_spi_fileio.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/852111068/SST25xx.o: ../Library/memory/SST25xx.c  .generated_files/c1e205d958d1a542874523266caa10f98aaa49e1.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/852111068" 
	@${RM} ${OBJECTDIR}/_ext/852111068/SST25xx.o.d 
	@${RM} ${OBJECTDIR}/_ext/852111068/SST25xx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/852111068/SST25xx.o.d" -o ${OBJECTDIR}/_ext/852111068/SST25xx.o ../Library/memory/SST25xx.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/852111068/SSTFileIO.o: ../Library/memory/SSTFileIO.c  .generated_files/66216c3652325b183c3e9bb82dc67bb95d828438.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/852111068" 
	@${RM} ${OBJECTDIR}/_ext/852111068/SSTFileIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/852111068/SSTFileIO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/852111068/SSTFileIO.o.d" -o ${OBJECTDIR}/_ext/852111068/SSTFileIO.o ../Library/memory/SSTFileIO.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/HexParsing.o: ../Library/programmer/HexParsing.c  .generated_files/83bd16b8e0ff20f593e6da790ad051a485d8d7b9.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/HexParsing.o.d" -o ${OBJECTDIR}/_ext/967316345/HexParsing.o ../Library/programmer/HexParsing.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/Icsp.o: ../Library/programmer/Icsp.c  .generated_files/f351d76bd6aae422397a0566dbeea3591b16dc12.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/Icsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/Icsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/Icsp.o.d" -o ${OBJECTDIR}/_ext/967316345/Icsp.o ../Library/programmer/Icsp.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o: ../Library/programmer/ICSP_FileIO.c  .generated_files/26eb35912e148bbb0ad704c56f9a75e7250e51b5.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o.d" -o ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o ../Library/programmer/ICSP_FileIO.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/ICSP_PIC32MM.o: ../Library/programmer/ICSP_PIC32MM.c  .generated_files/f444a222f10fdf052e9085eccb288526cfa8eb7b.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_PIC32MM.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_PIC32MM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/ICSP_PIC32MM.o.d" -o ${OBJECTDIR}/_ext/967316345/ICSP_PIC32MM.o ../Library/programmer/ICSP_PIC32MM.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TaskManager.o: ../Library/system/TaskManager.c  .generated_files/a0ba4b3b10832539a67149eb46e0e564bce68f3b.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TaskManager.o.d" -o ${OBJECTDIR}/_ext/661682606/TaskManager.o ../Library/system/TaskManager.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TickCounter.o: ../Library/system/TickCounter.c  .generated_files/5a071b5fe2ff32f1ccdf87d0b0597df13aa85544.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickCounter.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickCounter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TickCounter.o.d" -o ${OBJECTDIR}/_ext/661682606/TickCounter.o ../Library/system/TickCounter.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TickTimer.o: ../Library/system/TickTimer.c  .generated_files/8002c2bb5e668b85d21d19f92d54b6d614ca4d58.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TickTimer.o.d" -o ${OBJECTDIR}/_ext/661682606/TickTimer.o ../Library/system/TickTimer.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/Wdt.o: ../Library/system/Wdt.c  .generated_files/d60168aa4e69207d8387ebd808a204d1b0b4e43d.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/Wdt.o.d" -o ${OBJECTDIR}/_ext/661682606/Wdt.o ../Library/system/Wdt.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_audio.o: ../Library/usb/usb_device_audio.c  .generated_files/ace0e54b8a039b2cbf26d312ccba73441c090bac.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_audio.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_audio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_audio.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_audio.o ../Library/usb/usb_device_audio.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_ccid.o: ../Library/usb/usb_device_ccid.c  .generated_files/83db846fd2a8109c01af075a7e2204e58262a2ce.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_ccid.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_ccid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_ccid.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_ccid.o ../Library/usb/usb_device_ccid.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_cdc.o: ../Library/usb/usb_device_cdc.c  .generated_files/59250a17ba36b40a4b1dd3a1bb8b23f10c6c1f84.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o ../Library/usb/usb_device_cdc.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_generic.o: ../Library/usb/usb_device_generic.c  .generated_files/8dc3b9d07df35ed1cf00e468436d20b159140bba.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_generic.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_generic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_generic.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_generic.o ../Library/usb/usb_device_generic.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_hid.o: ../Library/usb/usb_device_hid.c  .generated_files/e175ebff205306919c6ab4c9d7386ee5e6a420f7.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_hid.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_hid.o ../Library/usb/usb_device_hid.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_msd.o: ../Library/usb/usb_device_msd.c  .generated_files/fcc2cfff03a51098ce5dd117071c48bc0831f555.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_msd.o ../Library/usb/usb_device_msd.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_msd_multi_sector.o: ../Library/usb/usb_device_msd_multi_sector.c  .generated_files/6b711daed0df1f39290d1807b05944a609d60588.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd_multi_sector.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd_multi_sector.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_msd_multi_sector.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_msd_multi_sector.o ../Library/usb/usb_device_msd_multi_sector.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_phdc.o: ../Library/usb/usb_device_phdc.c  .generated_files/11bf0e5c330b94c1c3e2966fce6b224f7f394934.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_phdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_phdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_phdc.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_phdc.o ../Library/usb/usb_device_phdc.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_phdc_com_model.o: ../Library/usb/usb_device_phdc_com_model.c  .generated_files/76558317f74a2400b1f888d7ec1b4139f6d30d06.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_phdc_com_model.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_phdc_com_model.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_phdc_com_model.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_phdc_com_model.o ../Library/usb/usb_device_phdc_com_model.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/user_usb_device_events.o: ../Library/usb/user_usb_device_events.c  .generated_files/e59061df815dd2a21b82d4b38ee7d0bfa0fdc2f4.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d" -o ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o ../Library/usb/user_usb_device_events.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o: mcc_generated_files/usb/usb_device_generic.c  .generated_files/db64901d52b19b0886a4bb6e66050f50ad93831b.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o mcc_generated_files/usb/usb_device_generic.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o: mcc_generated_files/usb/usb_device_events.c  .generated_files/bc5f7a1c0c97bf3eddb94446cecda00013b95d7e.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o mcc_generated_files/usb/usb_device_events.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/8a03626c0ce088094e9cc03b891245b29a51a1a.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o: mcc_generated_files/usb/usb_descriptors.c  .generated_files/f2ace5835eec090c2cdc16e7b922343f36231910.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o mcc_generated_files/usb/usb_descriptors.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/bd2dd2ac3e1a635c8bf45e39a72288565230625f.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart2.o mcc_generated_files/uart2.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart3.o: mcc_generated_files/uart3.c  .generated_files/5cf3ce969fef9a9d4b1da25ea19a376bb975febb.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart3.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart3.o mcc_generated_files/uart3.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/3adf8c60875b3e3addab9a6584efbfac229ca792.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/coretimer.o: mcc_generated_files/coretimer.c  .generated_files/90b3caef4fc454885895b5de5ef0a583ec0e4538.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/coretimer.o.d" -o ${OBJECTDIR}/mcc_generated_files/coretimer.o mcc_generated_files/coretimer.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/13080ca9e21188b916f82cc658946453572da5ac.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/spi2.o: mcc_generated_files/spi2.c  .generated_files/1872752cac0c6f185aab284fdd445a690152df15.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi2.o.d" -o ${OBJECTDIR}/mcc_generated_files/spi2.o mcc_generated_files/spi2.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/exceptions.o: mcc_generated_files/exceptions.c  .generated_files/368c632b2d5954cf9b0f91d998e9355e7925002f.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/exceptions.o.d" -o ${OBJECTDIR}/mcc_generated_files/exceptions.o mcc_generated_files/exceptions.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/5ad8503a1ce84dacd8fd6dd5918b601c079f5172.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/c36593d749b45c94e2bb15f36b6632c398deff88.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  .generated_files/5873045dbdb75e5aefb0ead2eb553a01223f5740.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d" -o ${OBJECTDIR}/mcc_generated_files/adc1.o mcc_generated_files/adc1.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/84d084fb4a1999b0201666f1aa209093483be7ce.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/7c54b1a3aa8136d1f80b44fd8c4ceeae84fbc3b9.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/955631576/BLD_FileIO.o: ../Library/bootloader/BLD_FileIO.c  .generated_files/91700ca702dbc5ea978f5c79bf9a0e6eff538742.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/955631576" 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/955631576/BLD_FileIO.o.d" -o ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o ../Library/bootloader/BLD_FileIO.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/955631576/BLD_Nvm.o: ../Library/bootloader/BLD_Nvm.c  .generated_files/4b257fb3c137fecf369123e60d89ed28df9c5de8.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/955631576" 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/955631576/BLD_Nvm.o.d" -o ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o ../Library/bootloader/BLD_Nvm.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/955631576/Bootloader.o: ../Library/bootloader/Bootloader.c  .generated_files/8d2c49ddd3bec09a7c4f45d79f12d4fafb9fe2e8.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/955631576" 
	@${RM} ${OBJECTDIR}/_ext/955631576/Bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/955631576/Bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/955631576/Bootloader.o.d" -o ${OBJECTDIR}/_ext/955631576/Bootloader.o ../Library/bootloader/Bootloader.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1353568322/ButtonApi.o: ../Library/buttons/ButtonApi.c  .generated_files/3efe7b6420aba3c38d4e04d6d01b2c64e8ad61f0.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1353568322" 
	@${RM} ${OBJECTDIR}/_ext/1353568322/ButtonApi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1353568322/ButtonApi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/1353568322/ButtonApi.o.d" -o ${OBJECTDIR}/_ext/1353568322/ButtonApi.o ../Library/buttons/ButtonApi.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1353568322/Buttons.o: ../Library/buttons/Buttons.c  .generated_files/782e83d9adae3ee74af76a4bc66cd1c2f03c6ee0.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1353568322" 
	@${RM} ${OBJECTDIR}/_ext/1353568322/Buttons.o.d 
	@${RM} ${OBJECTDIR}/_ext/1353568322/Buttons.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/1353568322/Buttons.o.d" -o ${OBJECTDIR}/_ext/1353568322/Buttons.o ../Library/buttons/Buttons.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/Debug.o: ../Library/common/Debug.c  .generated_files/b53dc3d79b97933d2e342802ffb2b55cd75b6cb.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/Debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/Debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/Debug.o.d" -o ${OBJECTDIR}/_ext/1129169394/Debug.o ../Library/common/Debug.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/RingBuffer.o: ../Library/common/RingBuffer.c  .generated_files/db010b4044a7295fc9cf8a9d6212b821ee15c531.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/RingBuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/RingBuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/RingBuffer.o.d" -o ${OBJECTDIR}/_ext/1129169394/RingBuffer.o ../Library/common/RingBuffer.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/UserFunctions.o: ../Library/common/UserFunctions.c  .generated_files/5cd3ca561726ae45f35c00610a1ba981eb5b7e72.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d" -o ${OBJECTDIR}/_ext/1129169394/UserFunctions.o ../Library/common/UserFunctions.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1048860731/fileio.o: ../Library/fileio/fileio.c  .generated_files/9a451c27800c1c7deeee94fd154bca412ac984a9.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1048860731" 
	@${RM} ${OBJECTDIR}/_ext/1048860731/fileio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1048860731/fileio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/1048860731/fileio.o.d" -o ${OBJECTDIR}/_ext/1048860731/fileio.o ../Library/fileio/fileio.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1048860731/fileio_lfn.o: ../Library/fileio/fileio_lfn.c  .generated_files/327f58630e9908755f44aaf1c6e9b8fe8f4b7408.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1048860731" 
	@${RM} ${OBJECTDIR}/_ext/1048860731/fileio_lfn.o.d 
	@${RM} ${OBJECTDIR}/_ext/1048860731/fileio_lfn.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/1048860731/fileio_lfn.o.d" -o ${OBJECTDIR}/_ext/1048860731/fileio_lfn.o ../Library/fileio/fileio_lfn.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1048860731/files_lite.o: ../Library/fileio/files_lite.c  .generated_files/b37287fc9d1dafdc3572e7ed47167f15a74020c2.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1048860731" 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o.d 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/1048860731/files_lite.o.d" -o ${OBJECTDIR}/_ext/1048860731/files_lite.o ../Library/fileio/files_lite.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/127659252/Indicator.o: ../Library/indicator/Indicator.c  .generated_files/f5f8d30cbe0669a7fab00c3fbcffcc47b238c198.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/127659252" 
	@${RM} ${OBJECTDIR}/_ext/127659252/Indicator.o.d 
	@${RM} ${OBJECTDIR}/_ext/127659252/Indicator.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/127659252/Indicator.o.d" -o ${OBJECTDIR}/_ext/127659252/Indicator.o ../Library/indicator/Indicator.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/127659252/Led7Seg.o: ../Library/indicator/Led7Seg.c  .generated_files/a303c16bdde948ae25f2d35ff75792a71f7e3244.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/127659252" 
	@${RM} ${OBJECTDIR}/_ext/127659252/Led7Seg.o.d 
	@${RM} ${OBJECTDIR}/_ext/127659252/Led7Seg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/127659252/Led7Seg.o.d" -o ${OBJECTDIR}/_ext/127659252/Led7Seg.o ../Library/indicator/Led7Seg.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/127659252/LedMatrix.o: ../Library/indicator/LedMatrix.c  .generated_files/706bb5476fd43fd669daf3f6bfeec7bbc0db4fe5.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/127659252" 
	@${RM} ${OBJECTDIR}/_ext/127659252/LedMatrix.o.d 
	@${RM} ${OBJECTDIR}/_ext/127659252/LedMatrix.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/127659252/LedMatrix.o.d" -o ${OBJECTDIR}/_ext/127659252/LedMatrix.o ../Library/indicator/LedMatrix.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/127659252/RGB_Led.o: ../Library/indicator/RGB_Led.c  .generated_files/5c5a15214b7ec69e0dea4ade27b25ffbd4a8fc68.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/127659252" 
	@${RM} ${OBJECTDIR}/_ext/127659252/RGB_Led.o.d 
	@${RM} ${OBJECTDIR}/_ext/127659252/RGB_Led.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/127659252/RGB_Led.o.d" -o ${OBJECTDIR}/_ext/127659252/RGB_Led.o ../Library/indicator/RGB_Led.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit.o: ../Library/kit/kit.c  .generated_files/4bf559b620872a179483cd961615f7256b57dc02.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit.o.d" -o ${OBJECTDIR}/_ext/436516243/kit.o ../Library/kit/kit.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_rs232_win32.o: ../Library/kit/kit_rs232_win32.c  .generated_files/c67f9457947c3fcb76fd21afa05a40389009dd72.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_rs232_win32.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_rs232_win32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_rs232_win32.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_rs232_win32.o ../Library/kit/kit_rs232_win32.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device.o: ../Library/kit/kit_usb_device.c  .generated_files/313ee9e89c698b35d3544d08ee8985d5f269ae15.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device.o ../Library/kit/kit_usb_device.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o: ../Library/kit/kit_usb_device_cdc.c  .generated_files/bdb8215b830305e23c3c6a3941ecd649a3799698.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o ../Library/kit/kit_usb_device_cdc.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_generic.o: ../Library/kit/kit_usb_device_generic.c  .generated_files/d287f211e98b9274f49014987188797a3a87eb4d.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_generic.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_generic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_generic.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_generic.o ../Library/kit/kit_usb_device_generic.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_hid.o: ../Library/kit/kit_usb_device_hid.c  .generated_files/3fee96aa32196a59900329d3eef2cdde040731e4.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_hid.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_hid.o ../Library/kit/kit_usb_device_hid.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o: ../Library/kit/kit_usb_device_msd.c  .generated_files/64c6d1c6bd03841c1ffcb4ec2192cda5faa82b7c.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o ../Library/kit/kit_usb_device_msd.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/852111068/AT21CS01.o: ../Library/memory/AT21CS01.c  .generated_files/71542f126698c717b7dec76ce83a50cd1a628f01.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/852111068" 
	@${RM} ${OBJECTDIR}/_ext/852111068/AT21CS01.o.d 
	@${RM} ${OBJECTDIR}/_ext/852111068/AT21CS01.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/852111068/AT21CS01.o.d" -o ${OBJECTDIR}/_ext/852111068/AT21CS01.o ../Library/memory/AT21CS01.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/852111068/ee24aa.o: ../Library/memory/ee24aa.c  .generated_files/dc700e4b51ea0be544ef078351a6de2ea6317561.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/852111068" 
	@${RM} ${OBJECTDIR}/_ext/852111068/ee24aa.o.d 
	@${RM} ${OBJECTDIR}/_ext/852111068/ee24aa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/852111068/ee24aa.o.d" -o ${OBJECTDIR}/_ext/852111068/ee24aa.o ../Library/memory/ee24aa.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/852111068/sd_spi.o: ../Library/memory/sd_spi.c  .generated_files/c3ac74c3a2baf193cdb571668fc2e51b2779a1ef.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/852111068" 
	@${RM} ${OBJECTDIR}/_ext/852111068/sd_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/852111068/sd_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/852111068/sd_spi.o.d" -o ${OBJECTDIR}/_ext/852111068/sd_spi.o ../Library/memory/sd_spi.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/852111068/sd_spi_fileio.o: ../Library/memory/sd_spi_fileio.c  .generated_files/5cbf49717122f40778d2a457ac49d347eff67a9.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/852111068" 
	@${RM} ${OBJECTDIR}/_ext/852111068/sd_spi_fileio.o.d 
	@${RM} ${OBJECTDIR}/_ext/852111068/sd_spi_fileio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/852111068/sd_spi_fileio.o.d" -o ${OBJECTDIR}/_ext/852111068/sd_spi_fileio.o ../Library/memory/sd_spi_fileio.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/852111068/SST25xx.o: ../Library/memory/SST25xx.c  .generated_files/c795e112aaafb1b3e742f25fb739c25d3a1b8e8b.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/852111068" 
	@${RM} ${OBJECTDIR}/_ext/852111068/SST25xx.o.d 
	@${RM} ${OBJECTDIR}/_ext/852111068/SST25xx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/852111068/SST25xx.o.d" -o ${OBJECTDIR}/_ext/852111068/SST25xx.o ../Library/memory/SST25xx.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/852111068/SSTFileIO.o: ../Library/memory/SSTFileIO.c  .generated_files/640e3cb3a3ee36a4042b2553233681b34231ec90.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/852111068" 
	@${RM} ${OBJECTDIR}/_ext/852111068/SSTFileIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/852111068/SSTFileIO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/852111068/SSTFileIO.o.d" -o ${OBJECTDIR}/_ext/852111068/SSTFileIO.o ../Library/memory/SSTFileIO.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/HexParsing.o: ../Library/programmer/HexParsing.c  .generated_files/730b0fcdc6c625264e8502df705c4daff6b0fa9.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/HexParsing.o.d" -o ${OBJECTDIR}/_ext/967316345/HexParsing.o ../Library/programmer/HexParsing.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/Icsp.o: ../Library/programmer/Icsp.c  .generated_files/84e9390b0680547b6b2a98c2e53163cd2431a9cc.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/Icsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/Icsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/Icsp.o.d" -o ${OBJECTDIR}/_ext/967316345/Icsp.o ../Library/programmer/Icsp.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o: ../Library/programmer/ICSP_FileIO.c  .generated_files/b88fc747c594da2f3b8c61eacfab91462777ddee.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o.d" -o ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o ../Library/programmer/ICSP_FileIO.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/ICSP_PIC32MM.o: ../Library/programmer/ICSP_PIC32MM.c  .generated_files/938f09c45dbb73d5148a592b84bca4f708c2826e.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_PIC32MM.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_PIC32MM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/ICSP_PIC32MM.o.d" -o ${OBJECTDIR}/_ext/967316345/ICSP_PIC32MM.o ../Library/programmer/ICSP_PIC32MM.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TaskManager.o: ../Library/system/TaskManager.c  .generated_files/1fcff0625cd6528e96b849350251d34b53dda1a2.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TaskManager.o.d" -o ${OBJECTDIR}/_ext/661682606/TaskManager.o ../Library/system/TaskManager.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TickCounter.o: ../Library/system/TickCounter.c  .generated_files/afaed405d2f2519b78bd94f912bdce3195bca8b8.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickCounter.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickCounter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TickCounter.o.d" -o ${OBJECTDIR}/_ext/661682606/TickCounter.o ../Library/system/TickCounter.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TickTimer.o: ../Library/system/TickTimer.c  .generated_files/1b3510bc3f9cb803b83dd9c68c56c1b5af80c189.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TickTimer.o.d" -o ${OBJECTDIR}/_ext/661682606/TickTimer.o ../Library/system/TickTimer.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/Wdt.o: ../Library/system/Wdt.c  .generated_files/659991076f5e3017491d7f5c90e4cee02c725a29.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/Wdt.o.d" -o ${OBJECTDIR}/_ext/661682606/Wdt.o ../Library/system/Wdt.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_audio.o: ../Library/usb/usb_device_audio.c  .generated_files/7e9b8d4c5b81e367cf4d49b9c4d70d950cf76ca5.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_audio.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_audio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_audio.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_audio.o ../Library/usb/usb_device_audio.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_ccid.o: ../Library/usb/usb_device_ccid.c  .generated_files/461c1757d840ca2a2e1534db45479a8f98739d95.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_ccid.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_ccid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_ccid.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_ccid.o ../Library/usb/usb_device_ccid.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_cdc.o: ../Library/usb/usb_device_cdc.c  .generated_files/91b5ab8255e5f949e9784d69240f5fa91504186d.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o ../Library/usb/usb_device_cdc.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_generic.o: ../Library/usb/usb_device_generic.c  .generated_files/ef1b4cccda087f29f3eda18a36344af6d09171b2.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_generic.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_generic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_generic.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_generic.o ../Library/usb/usb_device_generic.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_hid.o: ../Library/usb/usb_device_hid.c  .generated_files/ad9ab6822308a8fe9339933d759f355f4d39ed2c.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_hid.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_hid.o ../Library/usb/usb_device_hid.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_msd.o: ../Library/usb/usb_device_msd.c  .generated_files/969ca3a440ea70d5edca31ded7488b4cbbbd91d8.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_msd.o ../Library/usb/usb_device_msd.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_msd_multi_sector.o: ../Library/usb/usb_device_msd_multi_sector.c  .generated_files/7c783091980f653a76852cbda54c4f8dc59fd1de.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd_multi_sector.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd_multi_sector.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_msd_multi_sector.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_msd_multi_sector.o ../Library/usb/usb_device_msd_multi_sector.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_phdc.o: ../Library/usb/usb_device_phdc.c  .generated_files/c3c0921cd3884e147d80f8678769681600dc67f7.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_phdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_phdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_phdc.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_phdc.o ../Library/usb/usb_device_phdc.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_phdc_com_model.o: ../Library/usb/usb_device_phdc_com_model.c  .generated_files/2a5aa63aa9f6e9d72b083b3549c84ec09c5b0d15.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_phdc_com_model.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_phdc_com_model.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_phdc_com_model.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_phdc_com_model.o ../Library/usb/usb_device_phdc_com_model.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/user_usb_device_events.o: ../Library/usb/user_usb_device_events.c  .generated_files/a5459fd0ea31fecacbff96e55cf203fc6f5e35c6.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__BOOTLOADER__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d" -o ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o ../Library/usb/user_usb_device_events.c    -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/PROG.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../Library/bootloader/Linker/p32MM0064GPM028/Bld.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/PROG.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/PROG.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../Library/bootloader/Linker/p32MM0064GPM028/Bld.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/PROG.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_bootloader=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/PROG.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
	@echo Normalizing hex file
	@"C:/Program Files/Microchip/MPLABX/v5.45/mplab_platform/platform/../mplab_ide/modules/../../bin/hexmate" --edf="C:/Program Files/Microchip/MPLABX/v5.45/mplab_platform/platform/../mplab_ide/modules/../../dat/en_msgs.txt" dist/${CND_CONF}/${IMAGE_TYPE}/PROG.X.${IMAGE_TYPE}.hex -odist/${CND_CONF}/${IMAGE_TYPE}/PROG.X.${IMAGE_TYPE}.hex

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
