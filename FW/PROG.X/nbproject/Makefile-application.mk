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
ifeq "$(wildcard nbproject/Makefile-local-application.mk)" "nbproject/Makefile-local-application.mk"
include nbproject/Makefile-local-application.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=application
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
SOURCEFILES_QUOTED_IF_SPACED=app/AppMain.c app/libcomp.c config/user_usb_device_descriptors.c ../Library/bootloader/BLD_FileIO.c ../Library/bootloader/BLD_Nvm.c ../Library/bootloader/Bootloader.c ../Library/buttons/ButtonApi.c ../Library/buttons/Buttons.c ../Library/common/Debug.c ../Library/common/RingBuffer.c ../Library/common/UserFunctions.c ../Library/fileio/fileio.c ../Library/fileio/fileio_lfn.c ../Library/fileio/files_lite.c ../Library/indicator/Indicator.c ../Library/indicator/Led7Seg.c ../Library/indicator/LedMatrix.c ../Library/indicator/RGB_Led.c ../Library/kit/kit.c ../Library/kit/kit_rs232_win32.c ../Library/kit/kit_usb_device.c ../Library/kit/kit_usb_device_cdc.c ../Library/kit/kit_usb_device_generic.c ../Library/kit/kit_usb_device_hid.c ../Library/kit/kit_usb_device_msd.c ../Library/memory/AT21CS01.c ../Library/memory/ee24aa.c ../Library/memory/sd_spi.c ../Library/memory/sd_spi_fileio.c ../Library/memory/SST25xx.c ../Library/memory/SSTFileIO.c ../Library/programmer/HexParsing.c ../Library/programmer/Icsp.c ../Library/programmer/ICSP_FileIO.c ../Library/programmer/ICSP_PIC32MM.c ../Library/system/TaskManager.c ../Library/system/TickCounter.c ../Library/system/TickTimer.c ../Library/system/Wdt.c ../Library/usb/usb_device_audio.c ../Library/usb/usb_device_ccid.c ../Library/usb/usb_device_cdc.c ../Library/usb/usb_device_generic.c ../Library/usb/usb_device_hid.c ../Library/usb/usb_device_msd.c ../Library/usb/usb_device_msd_multi_sector.c ../Library/usb/usb_device_phdc.c ../Library/usb/usb_device_phdc_com_model.c ../Library/usb/user_usb_device_events.c mcc_generated_files/usb/usb_device_generic.c mcc_generated_files/usb/usb_device_events.c mcc_generated_files/usb/usb_device.c mcc_generated_files/usb/usb_descriptors.c mcc_generated_files/uart2.c mcc_generated_files/uart3.c mcc_generated_files/clock.c mcc_generated_files/coretimer.c mcc_generated_files/interrupt_manager.c mcc_generated_files/spi2.c mcc_generated_files/exceptions.c mcc_generated_files/system.c mcc_generated_files/pin_manager.c mcc_generated_files/adc1.c mcc_generated_files/mcc.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/app/AppMain.o ${OBJECTDIR}/app/libcomp.o ${OBJECTDIR}/config/user_usb_device_descriptors.o ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o ${OBJECTDIR}/_ext/955631576/Bootloader.o ${OBJECTDIR}/_ext/1353568322/ButtonApi.o ${OBJECTDIR}/_ext/1353568322/Buttons.o ${OBJECTDIR}/_ext/1129169394/Debug.o ${OBJECTDIR}/_ext/1129169394/RingBuffer.o ${OBJECTDIR}/_ext/1129169394/UserFunctions.o ${OBJECTDIR}/_ext/1048860731/fileio.o ${OBJECTDIR}/_ext/1048860731/fileio_lfn.o ${OBJECTDIR}/_ext/1048860731/files_lite.o ${OBJECTDIR}/_ext/127659252/Indicator.o ${OBJECTDIR}/_ext/127659252/Led7Seg.o ${OBJECTDIR}/_ext/127659252/LedMatrix.o ${OBJECTDIR}/_ext/127659252/RGB_Led.o ${OBJECTDIR}/_ext/436516243/kit.o ${OBJECTDIR}/_ext/436516243/kit_rs232_win32.o ${OBJECTDIR}/_ext/436516243/kit_usb_device.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_generic.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_hid.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o ${OBJECTDIR}/_ext/852111068/AT21CS01.o ${OBJECTDIR}/_ext/852111068/ee24aa.o ${OBJECTDIR}/_ext/852111068/sd_spi.o ${OBJECTDIR}/_ext/852111068/sd_spi_fileio.o ${OBJECTDIR}/_ext/852111068/SST25xx.o ${OBJECTDIR}/_ext/852111068/SSTFileIO.o ${OBJECTDIR}/_ext/967316345/HexParsing.o ${OBJECTDIR}/_ext/967316345/Icsp.o ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o ${OBJECTDIR}/_ext/967316345/ICSP_PIC32MM.o ${OBJECTDIR}/_ext/661682606/TaskManager.o ${OBJECTDIR}/_ext/661682606/TickCounter.o ${OBJECTDIR}/_ext/661682606/TickTimer.o ${OBJECTDIR}/_ext/661682606/Wdt.o ${OBJECTDIR}/_ext/436526145/usb_device_audio.o ${OBJECTDIR}/_ext/436526145/usb_device_ccid.o ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o ${OBJECTDIR}/_ext/436526145/usb_device_generic.o ${OBJECTDIR}/_ext/436526145/usb_device_hid.o ${OBJECTDIR}/_ext/436526145/usb_device_msd.o ${OBJECTDIR}/_ext/436526145/usb_device_msd_multi_sector.o ${OBJECTDIR}/_ext/436526145/usb_device_phdc.o ${OBJECTDIR}/_ext/436526145/usb_device_phdc_com_model.o ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/mcc_generated_files/uart3.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/coretimer.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/spi2.o ${OBJECTDIR}/mcc_generated_files/exceptions.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/app/AppMain.o.d ${OBJECTDIR}/app/libcomp.o.d ${OBJECTDIR}/config/user_usb_device_descriptors.o.d ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o.d ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o.d ${OBJECTDIR}/_ext/955631576/Bootloader.o.d ${OBJECTDIR}/_ext/1353568322/ButtonApi.o.d ${OBJECTDIR}/_ext/1353568322/Buttons.o.d ${OBJECTDIR}/_ext/1129169394/Debug.o.d ${OBJECTDIR}/_ext/1129169394/RingBuffer.o.d ${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d ${OBJECTDIR}/_ext/1048860731/fileio.o.d ${OBJECTDIR}/_ext/1048860731/fileio_lfn.o.d ${OBJECTDIR}/_ext/1048860731/files_lite.o.d ${OBJECTDIR}/_ext/127659252/Indicator.o.d ${OBJECTDIR}/_ext/127659252/Led7Seg.o.d ${OBJECTDIR}/_ext/127659252/LedMatrix.o.d ${OBJECTDIR}/_ext/127659252/RGB_Led.o.d ${OBJECTDIR}/_ext/436516243/kit.o.d ${OBJECTDIR}/_ext/436516243/kit_rs232_win32.o.d ${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o.d ${OBJECTDIR}/_ext/436516243/kit_usb_device_generic.o.d ${OBJECTDIR}/_ext/436516243/kit_usb_device_hid.o.d ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d ${OBJECTDIR}/_ext/852111068/AT21CS01.o.d ${OBJECTDIR}/_ext/852111068/ee24aa.o.d ${OBJECTDIR}/_ext/852111068/sd_spi.o.d ${OBJECTDIR}/_ext/852111068/sd_spi_fileio.o.d ${OBJECTDIR}/_ext/852111068/SST25xx.o.d ${OBJECTDIR}/_ext/852111068/SSTFileIO.o.d ${OBJECTDIR}/_ext/967316345/HexParsing.o.d ${OBJECTDIR}/_ext/967316345/Icsp.o.d ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o.d ${OBJECTDIR}/_ext/967316345/ICSP_PIC32MM.o.d ${OBJECTDIR}/_ext/661682606/TaskManager.o.d ${OBJECTDIR}/_ext/661682606/TickCounter.o.d ${OBJECTDIR}/_ext/661682606/TickTimer.o.d ${OBJECTDIR}/_ext/661682606/Wdt.o.d ${OBJECTDIR}/_ext/436526145/usb_device_audio.o.d ${OBJECTDIR}/_ext/436526145/usb_device_ccid.o.d ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o.d ${OBJECTDIR}/_ext/436526145/usb_device_generic.o.d ${OBJECTDIR}/_ext/436526145/usb_device_hid.o.d ${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d ${OBJECTDIR}/_ext/436526145/usb_device_msd_multi_sector.o.d ${OBJECTDIR}/_ext/436526145/usb_device_phdc.o.d ${OBJECTDIR}/_ext/436526145/usb_device_phdc_com_model.o.d ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d ${OBJECTDIR}/mcc_generated_files/uart2.o.d ${OBJECTDIR}/mcc_generated_files/uart3.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/coretimer.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/spi2.o.d ${OBJECTDIR}/mcc_generated_files/exceptions.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/adc1.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/app/AppMain.o ${OBJECTDIR}/app/libcomp.o ${OBJECTDIR}/config/user_usb_device_descriptors.o ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o ${OBJECTDIR}/_ext/955631576/Bootloader.o ${OBJECTDIR}/_ext/1353568322/ButtonApi.o ${OBJECTDIR}/_ext/1353568322/Buttons.o ${OBJECTDIR}/_ext/1129169394/Debug.o ${OBJECTDIR}/_ext/1129169394/RingBuffer.o ${OBJECTDIR}/_ext/1129169394/UserFunctions.o ${OBJECTDIR}/_ext/1048860731/fileio.o ${OBJECTDIR}/_ext/1048860731/fileio_lfn.o ${OBJECTDIR}/_ext/1048860731/files_lite.o ${OBJECTDIR}/_ext/127659252/Indicator.o ${OBJECTDIR}/_ext/127659252/Led7Seg.o ${OBJECTDIR}/_ext/127659252/LedMatrix.o ${OBJECTDIR}/_ext/127659252/RGB_Led.o ${OBJECTDIR}/_ext/436516243/kit.o ${OBJECTDIR}/_ext/436516243/kit_rs232_win32.o ${OBJECTDIR}/_ext/436516243/kit_usb_device.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_generic.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_hid.o ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o ${OBJECTDIR}/_ext/852111068/AT21CS01.o ${OBJECTDIR}/_ext/852111068/ee24aa.o ${OBJECTDIR}/_ext/852111068/sd_spi.o ${OBJECTDIR}/_ext/852111068/sd_spi_fileio.o ${OBJECTDIR}/_ext/852111068/SST25xx.o ${OBJECTDIR}/_ext/852111068/SSTFileIO.o ${OBJECTDIR}/_ext/967316345/HexParsing.o ${OBJECTDIR}/_ext/967316345/Icsp.o ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o ${OBJECTDIR}/_ext/967316345/ICSP_PIC32MM.o ${OBJECTDIR}/_ext/661682606/TaskManager.o ${OBJECTDIR}/_ext/661682606/TickCounter.o ${OBJECTDIR}/_ext/661682606/TickTimer.o ${OBJECTDIR}/_ext/661682606/Wdt.o ${OBJECTDIR}/_ext/436526145/usb_device_audio.o ${OBJECTDIR}/_ext/436526145/usb_device_ccid.o ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o ${OBJECTDIR}/_ext/436526145/usb_device_generic.o ${OBJECTDIR}/_ext/436526145/usb_device_hid.o ${OBJECTDIR}/_ext/436526145/usb_device_msd.o ${OBJECTDIR}/_ext/436526145/usb_device_msd_multi_sector.o ${OBJECTDIR}/_ext/436526145/usb_device_phdc.o ${OBJECTDIR}/_ext/436526145/usb_device_phdc_com_model.o ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/mcc_generated_files/uart3.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/coretimer.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/spi2.o ${OBJECTDIR}/mcc_generated_files/exceptions.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=app/AppMain.c app/libcomp.c config/user_usb_device_descriptors.c ../Library/bootloader/BLD_FileIO.c ../Library/bootloader/BLD_Nvm.c ../Library/bootloader/Bootloader.c ../Library/buttons/ButtonApi.c ../Library/buttons/Buttons.c ../Library/common/Debug.c ../Library/common/RingBuffer.c ../Library/common/UserFunctions.c ../Library/fileio/fileio.c ../Library/fileio/fileio_lfn.c ../Library/fileio/files_lite.c ../Library/indicator/Indicator.c ../Library/indicator/Led7Seg.c ../Library/indicator/LedMatrix.c ../Library/indicator/RGB_Led.c ../Library/kit/kit.c ../Library/kit/kit_rs232_win32.c ../Library/kit/kit_usb_device.c ../Library/kit/kit_usb_device_cdc.c ../Library/kit/kit_usb_device_generic.c ../Library/kit/kit_usb_device_hid.c ../Library/kit/kit_usb_device_msd.c ../Library/memory/AT21CS01.c ../Library/memory/ee24aa.c ../Library/memory/sd_spi.c ../Library/memory/sd_spi_fileio.c ../Library/memory/SST25xx.c ../Library/memory/SSTFileIO.c ../Library/programmer/HexParsing.c ../Library/programmer/Icsp.c ../Library/programmer/ICSP_FileIO.c ../Library/programmer/ICSP_PIC32MM.c ../Library/system/TaskManager.c ../Library/system/TickCounter.c ../Library/system/TickTimer.c ../Library/system/Wdt.c ../Library/usb/usb_device_audio.c ../Library/usb/usb_device_ccid.c ../Library/usb/usb_device_cdc.c ../Library/usb/usb_device_generic.c ../Library/usb/usb_device_hid.c ../Library/usb/usb_device_msd.c ../Library/usb/usb_device_msd_multi_sector.c ../Library/usb/usb_device_phdc.c ../Library/usb/usb_device_phdc_com_model.c ../Library/usb/user_usb_device_events.c mcc_generated_files/usb/usb_device_generic.c mcc_generated_files/usb/usb_device_events.c mcc_generated_files/usb/usb_device.c mcc_generated_files/usb/usb_descriptors.c mcc_generated_files/uart2.c mcc_generated_files/uart3.c mcc_generated_files/clock.c mcc_generated_files/coretimer.c mcc_generated_files/interrupt_manager.c mcc_generated_files/spi2.c mcc_generated_files/exceptions.c mcc_generated_files/system.c mcc_generated_files/pin_manager.c mcc_generated_files/adc1.c mcc_generated_files/mcc.c main.c



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
	${MAKE}  -f nbproject/Makefile-application.mk dist/${CND_CONF}/${IMAGE_TYPE}/PROG.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/app/AppMain.o: app/AppMain.c  .generated_files/c484e47bad5717776be8f1d167059ee9e815b772.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/AppMain.o.d 
	@${RM} ${OBJECTDIR}/app/AppMain.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/app/AppMain.o.d" -o ${OBJECTDIR}/app/AppMain.o app/AppMain.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/libcomp.o: app/libcomp.c  .generated_files/d44107d9562fa4dae7a86100a0c2b59135dc0fbc.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/libcomp.o.d 
	@${RM} ${OBJECTDIR}/app/libcomp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/app/libcomp.o.d" -o ${OBJECTDIR}/app/libcomp.o app/libcomp.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/config/user_usb_device_descriptors.o: config/user_usb_device_descriptors.c  .generated_files/3e7315d7f45b999fc4a01f9c5595d8be5311ca97.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/config" 
	@${RM} ${OBJECTDIR}/config/user_usb_device_descriptors.o.d 
	@${RM} ${OBJECTDIR}/config/user_usb_device_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/config/user_usb_device_descriptors.o.d" -o ${OBJECTDIR}/config/user_usb_device_descriptors.o config/user_usb_device_descriptors.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/955631576/BLD_FileIO.o: ../Library/bootloader/BLD_FileIO.c  .generated_files/c4dbaeb40374a37282b26d4972d916945ce6d5d5.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/955631576" 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/955631576/BLD_FileIO.o.d" -o ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o ../Library/bootloader/BLD_FileIO.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/955631576/BLD_Nvm.o: ../Library/bootloader/BLD_Nvm.c  .generated_files/e22605bbe65368be7761ce75fc178a3bc6a33c48.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/955631576" 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/955631576/BLD_Nvm.o.d" -o ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o ../Library/bootloader/BLD_Nvm.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/955631576/Bootloader.o: ../Library/bootloader/Bootloader.c  .generated_files/262888306c9e4abe56f491694097b49fb161de26.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/955631576" 
	@${RM} ${OBJECTDIR}/_ext/955631576/Bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/955631576/Bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/955631576/Bootloader.o.d" -o ${OBJECTDIR}/_ext/955631576/Bootloader.o ../Library/bootloader/Bootloader.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1353568322/ButtonApi.o: ../Library/buttons/ButtonApi.c  .generated_files/3711bb6d8133c195bf55c64abd9f9569004c966d.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1353568322" 
	@${RM} ${OBJECTDIR}/_ext/1353568322/ButtonApi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1353568322/ButtonApi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/1353568322/ButtonApi.o.d" -o ${OBJECTDIR}/_ext/1353568322/ButtonApi.o ../Library/buttons/ButtonApi.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1353568322/Buttons.o: ../Library/buttons/Buttons.c  .generated_files/159defc24bed5947e2e74725800470b6be497520.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1353568322" 
	@${RM} ${OBJECTDIR}/_ext/1353568322/Buttons.o.d 
	@${RM} ${OBJECTDIR}/_ext/1353568322/Buttons.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/1353568322/Buttons.o.d" -o ${OBJECTDIR}/_ext/1353568322/Buttons.o ../Library/buttons/Buttons.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/Debug.o: ../Library/common/Debug.c  .generated_files/92423fbc5ea4680dc782d744aa60be233a376c2d.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/Debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/Debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/Debug.o.d" -o ${OBJECTDIR}/_ext/1129169394/Debug.o ../Library/common/Debug.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/RingBuffer.o: ../Library/common/RingBuffer.c  .generated_files/c7d889d57109843d03f89b9aab2e8cb9a90f236f.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/RingBuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/RingBuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/RingBuffer.o.d" -o ${OBJECTDIR}/_ext/1129169394/RingBuffer.o ../Library/common/RingBuffer.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/UserFunctions.o: ../Library/common/UserFunctions.c  .generated_files/66a44f1e59a2c4d86e3195498971bd4d1d052832.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d" -o ${OBJECTDIR}/_ext/1129169394/UserFunctions.o ../Library/common/UserFunctions.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1048860731/fileio.o: ../Library/fileio/fileio.c  .generated_files/a53c41a1a03439582cc57dcca67b8cb024993345.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1048860731" 
	@${RM} ${OBJECTDIR}/_ext/1048860731/fileio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1048860731/fileio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/1048860731/fileio.o.d" -o ${OBJECTDIR}/_ext/1048860731/fileio.o ../Library/fileio/fileio.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1048860731/fileio_lfn.o: ../Library/fileio/fileio_lfn.c  .generated_files/13b4b82336bf036868742b7df119bb980043e74c.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1048860731" 
	@${RM} ${OBJECTDIR}/_ext/1048860731/fileio_lfn.o.d 
	@${RM} ${OBJECTDIR}/_ext/1048860731/fileio_lfn.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/1048860731/fileio_lfn.o.d" -o ${OBJECTDIR}/_ext/1048860731/fileio_lfn.o ../Library/fileio/fileio_lfn.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1048860731/files_lite.o: ../Library/fileio/files_lite.c  .generated_files/ab2c5d7a8fb461da8f500bbc07801131bcab36ae.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1048860731" 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o.d 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/1048860731/files_lite.o.d" -o ${OBJECTDIR}/_ext/1048860731/files_lite.o ../Library/fileio/files_lite.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/127659252/Indicator.o: ../Library/indicator/Indicator.c  .generated_files/64c1010c09cf2284138f1f7e282fb7481d46845.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/127659252" 
	@${RM} ${OBJECTDIR}/_ext/127659252/Indicator.o.d 
	@${RM} ${OBJECTDIR}/_ext/127659252/Indicator.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/127659252/Indicator.o.d" -o ${OBJECTDIR}/_ext/127659252/Indicator.o ../Library/indicator/Indicator.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/127659252/Led7Seg.o: ../Library/indicator/Led7Seg.c  .generated_files/d3117aa73da053fd8782a00db1e9acd49434053a.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/127659252" 
	@${RM} ${OBJECTDIR}/_ext/127659252/Led7Seg.o.d 
	@${RM} ${OBJECTDIR}/_ext/127659252/Led7Seg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/127659252/Led7Seg.o.d" -o ${OBJECTDIR}/_ext/127659252/Led7Seg.o ../Library/indicator/Led7Seg.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/127659252/LedMatrix.o: ../Library/indicator/LedMatrix.c  .generated_files/c3652c39213a6e9f0a4ae1ff62ca4f07171d4cc8.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/127659252" 
	@${RM} ${OBJECTDIR}/_ext/127659252/LedMatrix.o.d 
	@${RM} ${OBJECTDIR}/_ext/127659252/LedMatrix.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/127659252/LedMatrix.o.d" -o ${OBJECTDIR}/_ext/127659252/LedMatrix.o ../Library/indicator/LedMatrix.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/127659252/RGB_Led.o: ../Library/indicator/RGB_Led.c  .generated_files/80e8c10dc9a45189a9c43ea727e4d824f8cd1474.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/127659252" 
	@${RM} ${OBJECTDIR}/_ext/127659252/RGB_Led.o.d 
	@${RM} ${OBJECTDIR}/_ext/127659252/RGB_Led.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/127659252/RGB_Led.o.d" -o ${OBJECTDIR}/_ext/127659252/RGB_Led.o ../Library/indicator/RGB_Led.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit.o: ../Library/kit/kit.c  .generated_files/c130dcfc66ac1d6409d7de258e439a22f46ad723.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit.o.d" -o ${OBJECTDIR}/_ext/436516243/kit.o ../Library/kit/kit.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_rs232_win32.o: ../Library/kit/kit_rs232_win32.c  .generated_files/f93d5bed707e9baf6603e56fb915f9070e272449.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_rs232_win32.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_rs232_win32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_rs232_win32.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_rs232_win32.o ../Library/kit/kit_rs232_win32.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device.o: ../Library/kit/kit_usb_device.c  .generated_files/68e461a4cd7fe1f73786ae96a722254279f79164.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device.o ../Library/kit/kit_usb_device.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o: ../Library/kit/kit_usb_device_cdc.c  .generated_files/59acce1c380fc2d477d3baeab9ccbbc64993eb6e.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o ../Library/kit/kit_usb_device_cdc.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_generic.o: ../Library/kit/kit_usb_device_generic.c  .generated_files/59172cbda8bfe12eedc67369467f7e7228d88eda.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_generic.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_generic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_generic.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_generic.o ../Library/kit/kit_usb_device_generic.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_hid.o: ../Library/kit/kit_usb_device_hid.c  .generated_files/511a1698fd87419204cba262bfc8296efd410964.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_hid.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_hid.o ../Library/kit/kit_usb_device_hid.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o: ../Library/kit/kit_usb_device_msd.c  .generated_files/63f4b650c6cb76024f23d0daee2683c36bec2e6a.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o ../Library/kit/kit_usb_device_msd.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/852111068/AT21CS01.o: ../Library/memory/AT21CS01.c  .generated_files/51f981b6ec51f49b1ef67bfa89c6a71ab0849ea6.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/852111068" 
	@${RM} ${OBJECTDIR}/_ext/852111068/AT21CS01.o.d 
	@${RM} ${OBJECTDIR}/_ext/852111068/AT21CS01.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/852111068/AT21CS01.o.d" -o ${OBJECTDIR}/_ext/852111068/AT21CS01.o ../Library/memory/AT21CS01.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/852111068/ee24aa.o: ../Library/memory/ee24aa.c  .generated_files/4a8f046cd8ba190a5284b2a27074caa11e26695.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/852111068" 
	@${RM} ${OBJECTDIR}/_ext/852111068/ee24aa.o.d 
	@${RM} ${OBJECTDIR}/_ext/852111068/ee24aa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/852111068/ee24aa.o.d" -o ${OBJECTDIR}/_ext/852111068/ee24aa.o ../Library/memory/ee24aa.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/852111068/sd_spi.o: ../Library/memory/sd_spi.c  .generated_files/18d1ccdad3ae1766c2a77b02371e7b0efe0d7567.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/852111068" 
	@${RM} ${OBJECTDIR}/_ext/852111068/sd_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/852111068/sd_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/852111068/sd_spi.o.d" -o ${OBJECTDIR}/_ext/852111068/sd_spi.o ../Library/memory/sd_spi.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/852111068/sd_spi_fileio.o: ../Library/memory/sd_spi_fileio.c  .generated_files/b1b9cf4eb1138b9c42df972d66ee462f910ae6a7.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/852111068" 
	@${RM} ${OBJECTDIR}/_ext/852111068/sd_spi_fileio.o.d 
	@${RM} ${OBJECTDIR}/_ext/852111068/sd_spi_fileio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/852111068/sd_spi_fileio.o.d" -o ${OBJECTDIR}/_ext/852111068/sd_spi_fileio.o ../Library/memory/sd_spi_fileio.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/852111068/SST25xx.o: ../Library/memory/SST25xx.c  .generated_files/9c6b0ddf1cd54afbb9845e8da0456fd8fa14e1e4.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/852111068" 
	@${RM} ${OBJECTDIR}/_ext/852111068/SST25xx.o.d 
	@${RM} ${OBJECTDIR}/_ext/852111068/SST25xx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/852111068/SST25xx.o.d" -o ${OBJECTDIR}/_ext/852111068/SST25xx.o ../Library/memory/SST25xx.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/852111068/SSTFileIO.o: ../Library/memory/SSTFileIO.c  .generated_files/5f319df11de0750fba9250cd7385fea9d786cc53.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/852111068" 
	@${RM} ${OBJECTDIR}/_ext/852111068/SSTFileIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/852111068/SSTFileIO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/852111068/SSTFileIO.o.d" -o ${OBJECTDIR}/_ext/852111068/SSTFileIO.o ../Library/memory/SSTFileIO.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/HexParsing.o: ../Library/programmer/HexParsing.c  .generated_files/a6bdaa5ac2f3546eba86ddb5e854f5c4e6692b0e.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/HexParsing.o.d" -o ${OBJECTDIR}/_ext/967316345/HexParsing.o ../Library/programmer/HexParsing.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/Icsp.o: ../Library/programmer/Icsp.c  .generated_files/cd7d4d7c39f715a2e097fe0c5a5afa2a74cbefaf.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/Icsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/Icsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/Icsp.o.d" -o ${OBJECTDIR}/_ext/967316345/Icsp.o ../Library/programmer/Icsp.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o: ../Library/programmer/ICSP_FileIO.c  .generated_files/8b30d31261acd27dc460fb2af8b41e944d76d56c.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o.d" -o ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o ../Library/programmer/ICSP_FileIO.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/ICSP_PIC32MM.o: ../Library/programmer/ICSP_PIC32MM.c  .generated_files/f36f4e72000f560e4e0b0b6575aa0f2655db6921.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_PIC32MM.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_PIC32MM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/ICSP_PIC32MM.o.d" -o ${OBJECTDIR}/_ext/967316345/ICSP_PIC32MM.o ../Library/programmer/ICSP_PIC32MM.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TaskManager.o: ../Library/system/TaskManager.c  .generated_files/1ede98d9bc0cd83113da79aabf9c7195d86ed8e7.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TaskManager.o.d" -o ${OBJECTDIR}/_ext/661682606/TaskManager.o ../Library/system/TaskManager.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TickCounter.o: ../Library/system/TickCounter.c  .generated_files/1014e19782b3cfaa1892b03bb1414b8feb0cec6c.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickCounter.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickCounter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TickCounter.o.d" -o ${OBJECTDIR}/_ext/661682606/TickCounter.o ../Library/system/TickCounter.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TickTimer.o: ../Library/system/TickTimer.c  .generated_files/538725e82b5269f4c1708ac255423c55faf3574d.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TickTimer.o.d" -o ${OBJECTDIR}/_ext/661682606/TickTimer.o ../Library/system/TickTimer.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/Wdt.o: ../Library/system/Wdt.c  .generated_files/bb73e0767daa2954784702731346686bb1cff0af.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/Wdt.o.d" -o ${OBJECTDIR}/_ext/661682606/Wdt.o ../Library/system/Wdt.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_audio.o: ../Library/usb/usb_device_audio.c  .generated_files/e642b34d78af7a851154dfa4f00381ff492c5357.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_audio.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_audio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_audio.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_audio.o ../Library/usb/usb_device_audio.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_ccid.o: ../Library/usb/usb_device_ccid.c  .generated_files/120569636ed7d7c3547d3ce88371aa1690a99dd8.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_ccid.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_ccid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_ccid.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_ccid.o ../Library/usb/usb_device_ccid.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_cdc.o: ../Library/usb/usb_device_cdc.c  .generated_files/ab96eb0187aaeb11921d561a973669ca0038ef8d.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o ../Library/usb/usb_device_cdc.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_generic.o: ../Library/usb/usb_device_generic.c  .generated_files/27e577c1b395aa12ca7bf4158c4f0b8793950853.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_generic.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_generic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_generic.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_generic.o ../Library/usb/usb_device_generic.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_hid.o: ../Library/usb/usb_device_hid.c  .generated_files/e28ab3f125a236f6e8718a433b7dc556a76bf1b2.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_hid.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_hid.o ../Library/usb/usb_device_hid.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_msd.o: ../Library/usb/usb_device_msd.c  .generated_files/cb3bf81645d192244b3f4efb147cfdc761a7cb61.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_msd.o ../Library/usb/usb_device_msd.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_msd_multi_sector.o: ../Library/usb/usb_device_msd_multi_sector.c  .generated_files/aa1ccaade9a173b5b3a26f115fc05c37ecbd476b.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd_multi_sector.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd_multi_sector.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_msd_multi_sector.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_msd_multi_sector.o ../Library/usb/usb_device_msd_multi_sector.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_phdc.o: ../Library/usb/usb_device_phdc.c  .generated_files/ce829eaca87194470e112a0ac66dc6d40716a5a7.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_phdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_phdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_phdc.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_phdc.o ../Library/usb/usb_device_phdc.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_phdc_com_model.o: ../Library/usb/usb_device_phdc_com_model.c  .generated_files/180dcf67e5b54bab6b7b4a179e2efee378b9969b.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_phdc_com_model.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_phdc_com_model.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_phdc_com_model.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_phdc_com_model.o ../Library/usb/usb_device_phdc_com_model.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/user_usb_device_events.o: ../Library/usb/user_usb_device_events.c  .generated_files/1276805b41ff6f8bbc523ed2f7ccd06c28b10c90.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d" -o ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o ../Library/usb/user_usb_device_events.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o: mcc_generated_files/usb/usb_device_generic.c  .generated_files/f6890b2645c90b8a57afdef0b2086238d8443331.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o mcc_generated_files/usb/usb_device_generic.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o: mcc_generated_files/usb/usb_device_events.c  .generated_files/8d172e687e7b087bdcd1c0101ee2a7edeeee6967.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o mcc_generated_files/usb/usb_device_events.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/2accdfacca8cad52781e61d25c0f59af754ba20e.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o: mcc_generated_files/usb/usb_descriptors.c  .generated_files/abf8855e16b9186784e6b929d998c7913e6a07e1.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o mcc_generated_files/usb/usb_descriptors.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/845ebe2b33d1fe50889f35dc994b770778644c9a.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart2.o mcc_generated_files/uart2.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart3.o: mcc_generated_files/uart3.c  .generated_files/13c8c115f275172d648cffff842b3d521d8376ae.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart3.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart3.o mcc_generated_files/uart3.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/104746b41009a21638e5b235695c58c65e7472e3.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/coretimer.o: mcc_generated_files/coretimer.c  .generated_files/72e83d25d6763222eb30ea1fab64ccee85401999.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/coretimer.o.d" -o ${OBJECTDIR}/mcc_generated_files/coretimer.o mcc_generated_files/coretimer.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/40db00da3cdc78e091712787dd29f3986ec11ef.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/spi2.o: mcc_generated_files/spi2.c  .generated_files/200f5be410fb81692e0089439737c4407a2b2cb1.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi2.o.d" -o ${OBJECTDIR}/mcc_generated_files/spi2.o mcc_generated_files/spi2.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/exceptions.o: mcc_generated_files/exceptions.c  .generated_files/97a3254bd810def67beaeaed6c95d040521ad57e.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/exceptions.o.d" -o ${OBJECTDIR}/mcc_generated_files/exceptions.o mcc_generated_files/exceptions.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/7b33d1d1d621995fecc6517529475ba37a2e794.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/46360b2c78c7e1825b141ec1ff1252d23700d917.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  .generated_files/52ae945ebd296ae3f8edc8acbc3c9082dd623ca8.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d" -o ${OBJECTDIR}/mcc_generated_files/adc1.o mcc_generated_files/adc1.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/833a35edb7fa8b83b8c88a6e5f40eac8a5275df3.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/ec5513a8c19f7558ccf730ecac633cd19e70f154.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/app/AppMain.o: app/AppMain.c  .generated_files/1f9503affbe91be2c090694e38e85bd95e704d31.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/AppMain.o.d 
	@${RM} ${OBJECTDIR}/app/AppMain.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/app/AppMain.o.d" -o ${OBJECTDIR}/app/AppMain.o app/AppMain.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/libcomp.o: app/libcomp.c  .generated_files/1e7fb1e1ba76ae0f581f31f36ecebe7d18e5e94b.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/libcomp.o.d 
	@${RM} ${OBJECTDIR}/app/libcomp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/app/libcomp.o.d" -o ${OBJECTDIR}/app/libcomp.o app/libcomp.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/config/user_usb_device_descriptors.o: config/user_usb_device_descriptors.c  .generated_files/52d1e4d7e1c118674dc4b387e3231dee2c8055b9.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/config" 
	@${RM} ${OBJECTDIR}/config/user_usb_device_descriptors.o.d 
	@${RM} ${OBJECTDIR}/config/user_usb_device_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/config/user_usb_device_descriptors.o.d" -o ${OBJECTDIR}/config/user_usb_device_descriptors.o config/user_usb_device_descriptors.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/955631576/BLD_FileIO.o: ../Library/bootloader/BLD_FileIO.c  .generated_files/6386bf8377f5abbad1b0fdf3c9a246581b0e5038.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/955631576" 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/955631576/BLD_FileIO.o.d" -o ${OBJECTDIR}/_ext/955631576/BLD_FileIO.o ../Library/bootloader/BLD_FileIO.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/955631576/BLD_Nvm.o: ../Library/bootloader/BLD_Nvm.c  .generated_files/b731bb68cce534b22137cd8614ae3173de18d102.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/955631576" 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/955631576/BLD_Nvm.o.d" -o ${OBJECTDIR}/_ext/955631576/BLD_Nvm.o ../Library/bootloader/BLD_Nvm.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/955631576/Bootloader.o: ../Library/bootloader/Bootloader.c  .generated_files/f2f6d7676b7168eba6b5504440f06b7f8c3c04e4.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/955631576" 
	@${RM} ${OBJECTDIR}/_ext/955631576/Bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/955631576/Bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/955631576/Bootloader.o.d" -o ${OBJECTDIR}/_ext/955631576/Bootloader.o ../Library/bootloader/Bootloader.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1353568322/ButtonApi.o: ../Library/buttons/ButtonApi.c  .generated_files/bf41906a1538a285d2171c848067a7a62c69d8aa.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1353568322" 
	@${RM} ${OBJECTDIR}/_ext/1353568322/ButtonApi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1353568322/ButtonApi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/1353568322/ButtonApi.o.d" -o ${OBJECTDIR}/_ext/1353568322/ButtonApi.o ../Library/buttons/ButtonApi.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1353568322/Buttons.o: ../Library/buttons/Buttons.c  .generated_files/fb75491bdaf834b0ced1a99caadeb22d1b67d4df.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1353568322" 
	@${RM} ${OBJECTDIR}/_ext/1353568322/Buttons.o.d 
	@${RM} ${OBJECTDIR}/_ext/1353568322/Buttons.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/1353568322/Buttons.o.d" -o ${OBJECTDIR}/_ext/1353568322/Buttons.o ../Library/buttons/Buttons.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/Debug.o: ../Library/common/Debug.c  .generated_files/e0c0635155f3f9470f7e9c6e50cef38999316ded.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/Debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/Debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/Debug.o.d" -o ${OBJECTDIR}/_ext/1129169394/Debug.o ../Library/common/Debug.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/RingBuffer.o: ../Library/common/RingBuffer.c  .generated_files/8e9900de0837592c21d250df057a1520b2cd3808.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/RingBuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/RingBuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/RingBuffer.o.d" -o ${OBJECTDIR}/_ext/1129169394/RingBuffer.o ../Library/common/RingBuffer.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1129169394/UserFunctions.o: ../Library/common/UserFunctions.c  .generated_files/174e7b1b9c163441d57a5df8ce102433a90f695e.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1129169394" 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1129169394/UserFunctions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/1129169394/UserFunctions.o.d" -o ${OBJECTDIR}/_ext/1129169394/UserFunctions.o ../Library/common/UserFunctions.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1048860731/fileio.o: ../Library/fileio/fileio.c  .generated_files/ede5c3649a422203df29f21f2da9f31d6c0f38c6.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1048860731" 
	@${RM} ${OBJECTDIR}/_ext/1048860731/fileio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1048860731/fileio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/1048860731/fileio.o.d" -o ${OBJECTDIR}/_ext/1048860731/fileio.o ../Library/fileio/fileio.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1048860731/fileio_lfn.o: ../Library/fileio/fileio_lfn.c  .generated_files/90aad15dbec6632d086e37e1af6fdc7a180b526.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1048860731" 
	@${RM} ${OBJECTDIR}/_ext/1048860731/fileio_lfn.o.d 
	@${RM} ${OBJECTDIR}/_ext/1048860731/fileio_lfn.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/1048860731/fileio_lfn.o.d" -o ${OBJECTDIR}/_ext/1048860731/fileio_lfn.o ../Library/fileio/fileio_lfn.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1048860731/files_lite.o: ../Library/fileio/files_lite.c  .generated_files/33263e045b908cc0fa2561dd16b9b9a128fcaf54.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1048860731" 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o.d 
	@${RM} ${OBJECTDIR}/_ext/1048860731/files_lite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/1048860731/files_lite.o.d" -o ${OBJECTDIR}/_ext/1048860731/files_lite.o ../Library/fileio/files_lite.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/127659252/Indicator.o: ../Library/indicator/Indicator.c  .generated_files/eceecfe6d1172df2dd7a2562b270eed6febc4cb1.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/127659252" 
	@${RM} ${OBJECTDIR}/_ext/127659252/Indicator.o.d 
	@${RM} ${OBJECTDIR}/_ext/127659252/Indicator.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/127659252/Indicator.o.d" -o ${OBJECTDIR}/_ext/127659252/Indicator.o ../Library/indicator/Indicator.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/127659252/Led7Seg.o: ../Library/indicator/Led7Seg.c  .generated_files/e0f33ed66f3502e1dbd6f1760e82801d87fc4227.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/127659252" 
	@${RM} ${OBJECTDIR}/_ext/127659252/Led7Seg.o.d 
	@${RM} ${OBJECTDIR}/_ext/127659252/Led7Seg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/127659252/Led7Seg.o.d" -o ${OBJECTDIR}/_ext/127659252/Led7Seg.o ../Library/indicator/Led7Seg.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/127659252/LedMatrix.o: ../Library/indicator/LedMatrix.c  .generated_files/268ad78560e1f77f43d7c17c29180a0b6e18b8d6.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/127659252" 
	@${RM} ${OBJECTDIR}/_ext/127659252/LedMatrix.o.d 
	@${RM} ${OBJECTDIR}/_ext/127659252/LedMatrix.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/127659252/LedMatrix.o.d" -o ${OBJECTDIR}/_ext/127659252/LedMatrix.o ../Library/indicator/LedMatrix.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/127659252/RGB_Led.o: ../Library/indicator/RGB_Led.c  .generated_files/1a52057f2b183d0b05857f96b7c9a0636fc53461.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/127659252" 
	@${RM} ${OBJECTDIR}/_ext/127659252/RGB_Led.o.d 
	@${RM} ${OBJECTDIR}/_ext/127659252/RGB_Led.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/127659252/RGB_Led.o.d" -o ${OBJECTDIR}/_ext/127659252/RGB_Led.o ../Library/indicator/RGB_Led.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit.o: ../Library/kit/kit.c  .generated_files/50bc617c4135fbb7d33f128efd1fe43e7b2adf3e.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit.o.d" -o ${OBJECTDIR}/_ext/436516243/kit.o ../Library/kit/kit.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_rs232_win32.o: ../Library/kit/kit_rs232_win32.c  .generated_files/efa3f230dee69bf8ff6773192058291153e830f8.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_rs232_win32.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_rs232_win32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_rs232_win32.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_rs232_win32.o ../Library/kit/kit_rs232_win32.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device.o: ../Library/kit/kit_usb_device.c  .generated_files/2fad9a4ec25c72d08197bfbf1ea091ec2e95f1c4.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device.o ../Library/kit/kit_usb_device.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o: ../Library/kit/kit_usb_device_cdc.c  .generated_files/c5c9e2f0415f849efb5c2e252f895ae785771e28.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_cdc.o ../Library/kit/kit_usb_device_cdc.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_generic.o: ../Library/kit/kit_usb_device_generic.c  .generated_files/46cffd9dc9aee46adf382898d186a1ed150ced9f.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_generic.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_generic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_generic.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_generic.o ../Library/kit/kit_usb_device_generic.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_hid.o: ../Library/kit/kit_usb_device_hid.c  .generated_files/de2a63bccaee7f9d7d86c4e19fca75b4a2e74d46.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_hid.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_hid.o ../Library/kit/kit_usb_device_hid.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o: ../Library/kit/kit_usb_device_msd.c  .generated_files/ea0f1c36175095c6780877aad4a7edfde8281e98.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436516243" 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436516243/kit_usb_device_msd.o ../Library/kit/kit_usb_device_msd.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/852111068/AT21CS01.o: ../Library/memory/AT21CS01.c  .generated_files/d6ce7a0b5691615105048c6224d631dcadb5c412.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/852111068" 
	@${RM} ${OBJECTDIR}/_ext/852111068/AT21CS01.o.d 
	@${RM} ${OBJECTDIR}/_ext/852111068/AT21CS01.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/852111068/AT21CS01.o.d" -o ${OBJECTDIR}/_ext/852111068/AT21CS01.o ../Library/memory/AT21CS01.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/852111068/ee24aa.o: ../Library/memory/ee24aa.c  .generated_files/773d9a3df993e83722b5ac928ece504bd1efd3d.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/852111068" 
	@${RM} ${OBJECTDIR}/_ext/852111068/ee24aa.o.d 
	@${RM} ${OBJECTDIR}/_ext/852111068/ee24aa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/852111068/ee24aa.o.d" -o ${OBJECTDIR}/_ext/852111068/ee24aa.o ../Library/memory/ee24aa.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/852111068/sd_spi.o: ../Library/memory/sd_spi.c  .generated_files/d73a2e5682ea278e2f5f70e34e2ef292ce104104.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/852111068" 
	@${RM} ${OBJECTDIR}/_ext/852111068/sd_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/852111068/sd_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/852111068/sd_spi.o.d" -o ${OBJECTDIR}/_ext/852111068/sd_spi.o ../Library/memory/sd_spi.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/852111068/sd_spi_fileio.o: ../Library/memory/sd_spi_fileio.c  .generated_files/a8f25b55e19cd0f8d798674a673ff13ec246ec4e.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/852111068" 
	@${RM} ${OBJECTDIR}/_ext/852111068/sd_spi_fileio.o.d 
	@${RM} ${OBJECTDIR}/_ext/852111068/sd_spi_fileio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/852111068/sd_spi_fileio.o.d" -o ${OBJECTDIR}/_ext/852111068/sd_spi_fileio.o ../Library/memory/sd_spi_fileio.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/852111068/SST25xx.o: ../Library/memory/SST25xx.c  .generated_files/58221db9a15e86cb78e47c474b090a6e72b0eb95.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/852111068" 
	@${RM} ${OBJECTDIR}/_ext/852111068/SST25xx.o.d 
	@${RM} ${OBJECTDIR}/_ext/852111068/SST25xx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/852111068/SST25xx.o.d" -o ${OBJECTDIR}/_ext/852111068/SST25xx.o ../Library/memory/SST25xx.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/852111068/SSTFileIO.o: ../Library/memory/SSTFileIO.c  .generated_files/9a5f2a78fcf19a336af71c72eeb6a55d25d7c51b.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/852111068" 
	@${RM} ${OBJECTDIR}/_ext/852111068/SSTFileIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/852111068/SSTFileIO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/852111068/SSTFileIO.o.d" -o ${OBJECTDIR}/_ext/852111068/SSTFileIO.o ../Library/memory/SSTFileIO.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/HexParsing.o: ../Library/programmer/HexParsing.c  .generated_files/5bf0832527929a06893ab982b95d325d6d8d0b93.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/HexParsing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/HexParsing.o.d" -o ${OBJECTDIR}/_ext/967316345/HexParsing.o ../Library/programmer/HexParsing.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/Icsp.o: ../Library/programmer/Icsp.c  .generated_files/11f2d9933c39aa11d2ff00a5bfe5f19c492257ae.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/Icsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/Icsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/Icsp.o.d" -o ${OBJECTDIR}/_ext/967316345/Icsp.o ../Library/programmer/Icsp.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o: ../Library/programmer/ICSP_FileIO.c  .generated_files/3fe3e6005491f9ccc35ac2673896d358bf423b19.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o.d" -o ${OBJECTDIR}/_ext/967316345/ICSP_FileIO.o ../Library/programmer/ICSP_FileIO.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/967316345/ICSP_PIC32MM.o: ../Library/programmer/ICSP_PIC32MM.c  .generated_files/d1fbc35b708cf0af67f85be65da2d4e322057bbc.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/967316345" 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_PIC32MM.o.d 
	@${RM} ${OBJECTDIR}/_ext/967316345/ICSP_PIC32MM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/967316345/ICSP_PIC32MM.o.d" -o ${OBJECTDIR}/_ext/967316345/ICSP_PIC32MM.o ../Library/programmer/ICSP_PIC32MM.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TaskManager.o: ../Library/system/TaskManager.c  .generated_files/a217ba49617ec0a494eda1e282f36a16ac23866e.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TaskManager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TaskManager.o.d" -o ${OBJECTDIR}/_ext/661682606/TaskManager.o ../Library/system/TaskManager.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TickCounter.o: ../Library/system/TickCounter.c  .generated_files/3505eccbf5559f8e99962ce4e815de2bb9827379.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickCounter.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickCounter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TickCounter.o.d" -o ${OBJECTDIR}/_ext/661682606/TickCounter.o ../Library/system/TickCounter.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/TickTimer.o: ../Library/system/TickTimer.c  .generated_files/50c5ce516650a8e1da7ee794faa1def930972dce.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/TickTimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/TickTimer.o.d" -o ${OBJECTDIR}/_ext/661682606/TickTimer.o ../Library/system/TickTimer.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/661682606/Wdt.o: ../Library/system/Wdt.c  .generated_files/560b7438f7f449362d946cfcf13b0e99454c3c3e.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/661682606" 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/661682606/Wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/661682606/Wdt.o.d" -o ${OBJECTDIR}/_ext/661682606/Wdt.o ../Library/system/Wdt.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_audio.o: ../Library/usb/usb_device_audio.c  .generated_files/5cd0fd42e8cab0e0db7d8818974a95dd7e888305.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_audio.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_audio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_audio.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_audio.o ../Library/usb/usb_device_audio.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_ccid.o: ../Library/usb/usb_device_ccid.c  .generated_files/7a17f4a10885b87481ff0d643a97ecdfb77abaf1.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_ccid.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_ccid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_ccid.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_ccid.o ../Library/usb/usb_device_ccid.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_cdc.o: ../Library/usb/usb_device_cdc.c  .generated_files/5901d6aa975329b8cdc6fc3263100c3aaeb554c3.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_cdc.o ../Library/usb/usb_device_cdc.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_generic.o: ../Library/usb/usb_device_generic.c  .generated_files/87980b28192b467582e767acaa1b456cdec1e31e.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_generic.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_generic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_generic.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_generic.o ../Library/usb/usb_device_generic.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_hid.o: ../Library/usb/usb_device_hid.c  .generated_files/dd2e0d3c3ed3d48bf8438897082e2529a8e95011.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_hid.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_hid.o ../Library/usb/usb_device_hid.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_msd.o: ../Library/usb/usb_device_msd.c  .generated_files/1d9b47b15b6bad9703256877e5cc62de0364bc2f.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_msd.o ../Library/usb/usb_device_msd.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_msd_multi_sector.o: ../Library/usb/usb_device_msd_multi_sector.c  .generated_files/b3cb42357a463df5dcf05864c025ad16da3f9cf6.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd_multi_sector.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_msd_multi_sector.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_msd_multi_sector.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_msd_multi_sector.o ../Library/usb/usb_device_msd_multi_sector.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_phdc.o: ../Library/usb/usb_device_phdc.c  .generated_files/1511b8f8c5dc7217ab237c20ee7055c64e5f87aa.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_phdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_phdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_phdc.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_phdc.o ../Library/usb/usb_device_phdc.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/usb_device_phdc_com_model.o: ../Library/usb/usb_device_phdc_com_model.c  .generated_files/6d6aee98b0d0d4c69e8b307bb3d8a9a95737201c.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_phdc_com_model.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/usb_device_phdc_com_model.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/usb_device_phdc_com_model.o.d" -o ${OBJECTDIR}/_ext/436526145/usb_device_phdc_com_model.o ../Library/usb/usb_device_phdc_com_model.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/436526145/user_usb_device_events.o: ../Library/usb/user_usb_device_events.c  .generated_files/cf3ff864006ae06e97574c5c1fbf960b017a05f1.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/_ext/436526145" 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/_ext/436526145/user_usb_device_events.o.d" -o ${OBJECTDIR}/_ext/436526145/user_usb_device_events.o ../Library/usb/user_usb_device_events.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o: mcc_generated_files/usb/usb_device_generic.c  .generated_files/791593c7c2a331b8c1b054fab07e61cabc7a2be8.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o mcc_generated_files/usb/usb_device_generic.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o: mcc_generated_files/usb/usb_device_events.c  .generated_files/135b7c3bc84b67f5b6d8ff2bc8cd96516fb8699d.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o mcc_generated_files/usb/usb_device_events.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/1ce9c87002eb035d612ae132d707e2aa856d95d8.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o: mcc_generated_files/usb/usb_descriptors.c  .generated_files/8053ceef20f646e1f1d1cf5a45a7003685fc84e.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o mcc_generated_files/usb/usb_descriptors.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/b44a6574d17ed713ab19ba780084ece002d4738e.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart2.o mcc_generated_files/uart2.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart3.o: mcc_generated_files/uart3.c  .generated_files/e79346fb63212f827e444b5c2fe428c06fce5fbb.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart3.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart3.o mcc_generated_files/uart3.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/6d22916e91779ee83b94ca5cf39cc6589ed9d9db.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/coretimer.o: mcc_generated_files/coretimer.c  .generated_files/fbe2f69d6407c1201dd63e6bd27988a48da31c08.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/coretimer.o.d" -o ${OBJECTDIR}/mcc_generated_files/coretimer.o mcc_generated_files/coretimer.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/e14754fdb271ff44293a6bc92751c3abc15d7fe4.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/spi2.o: mcc_generated_files/spi2.c  .generated_files/2b52b03bf23977dc62985d11406199c161a66efc.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi2.o.d" -o ${OBJECTDIR}/mcc_generated_files/spi2.o mcc_generated_files/spi2.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/exceptions.o: mcc_generated_files/exceptions.c  .generated_files/b688dd38a266e72895db4a01f1cd1f0ae9e3bef8.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/exceptions.o.d" -o ${OBJECTDIR}/mcc_generated_files/exceptions.o mcc_generated_files/exceptions.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/6642507c06d01d252a3eaa0c079b3394da67a3e5.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/dae19dcbe7011d6cd4f48a342d88040c6868f33b.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  .generated_files/cca16e516f15f98a07d16b916a4dc0c5408339ff.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d" -o ${OBJECTDIR}/mcc_generated_files/adc1.o mcc_generated_files/adc1.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/85c64738e2423d0b5bb21b38299c5c172de1e885.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/e30495269ad89e0cfe549b5c60f2f52dc71d9a04.flag .generated_files/c4fa461c4048e9dbae89eb093747324bcce1778.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../Library" -I"../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O1 -fschedule-insns -fschedule-insns2 -D__APPLICATION__ -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/PROG.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../Library/bootloader/Linker/p32MM0064GPM028/App.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/PROG.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/PROG.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../Library/bootloader/Linker/p32MM0064GPM028/App.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/PROG.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_application=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
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
	${RM} -r build/application
	${RM} -r dist/application

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
