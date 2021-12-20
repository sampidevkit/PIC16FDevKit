#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=MinGW-Windows
CND_DLIB_EXT=dll
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/_ext/bcb23e0e/UserFunctions.o \
	${OBJECTDIR}/_ext/39a81379/HexParsing.o \
	${OBJECTDIR}/main.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/deviceinfoeditor.exe

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/deviceinfoeditor.exe: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.c} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/deviceinfoeditor ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/_ext/bcb23e0e/UserFunctions.o: ../Library/common/UserFunctions.c
	${MKDIR} -p ${OBJECTDIR}/_ext/bcb23e0e
	${RM} "$@.d"
	$(COMPILE.c) -g -Icfg -I../Library -std=c99 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/bcb23e0e/UserFunctions.o ../Library/common/UserFunctions.c

${OBJECTDIR}/_ext/39a81379/HexParsing.o: ../Library/programmer/HexParsing.c
	${MKDIR} -p ${OBJECTDIR}/_ext/39a81379
	${RM} "$@.d"
	$(COMPILE.c) -g -Icfg -I../Library -std=c99 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/39a81379/HexParsing.o ../Library/programmer/HexParsing.c

${OBJECTDIR}/main.o: main.c
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -g -Icfg -I../Library -std=c99 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/main.o main.c

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
