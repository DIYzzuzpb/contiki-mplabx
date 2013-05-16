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
CND_PLATFORM=Cygwin_4.x-Windows
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
	${OBJECTDIR}/wave-xc8.o


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
LDLIBSOPTIONS=/home/jarojuda/boost/boost_1_53_0/stage/lib/libboost_filesystem.a /home/jarojuda/boost/boost_1_53_0/stage/lib/libboost_program_options.a /home/jarojuda/boost/boost_1_53_0/stage/lib/libboost_system.a /home/jarojuda/boost/boost_1_53_0/stage/lib/libboost_thread.a /home/jarojuda/boost/boost_1_53_0/stage/lib/libboost_wave.a -lpthread -lrt

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/wave-xc8.exe

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/wave-xc8.exe: /home/jarojuda/boost/boost_1_53_0/stage/lib/libboost_filesystem.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/wave-xc8.exe: /home/jarojuda/boost/boost_1_53_0/stage/lib/libboost_program_options.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/wave-xc8.exe: /home/jarojuda/boost/boost_1_53_0/stage/lib/libboost_system.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/wave-xc8.exe: /home/jarojuda/boost/boost_1_53_0/stage/lib/libboost_thread.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/wave-xc8.exe: /home/jarojuda/boost/boost_1_53_0/stage/lib/libboost_wave.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/wave-xc8.exe: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/wave-xc8 ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/wave-xc8.o: wave-xc8.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -g -I/home/jarojuda/boost/boost_1_53_0 -MMD -MP -MF $@.d -o ${OBJECTDIR}/wave-xc8.o wave-xc8.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/wave-xc8.exe

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
