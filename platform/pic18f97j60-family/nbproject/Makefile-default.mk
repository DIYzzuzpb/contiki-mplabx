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
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/pic18f97j60-family.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/pic18f97j60-family.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1644922371/etimer.p1 ${OBJECTDIR}/_ext/1644922371/timer.p1 ${OBJECTDIR}/_ext/545456498/autostart.p1 ${OBJECTDIR}/_ext/545456498/process.p1 ${OBJECTDIR}/_ext/545456498/procinit.p1 ${OBJECTDIR}/clock.p1 ${OBJECTDIR}/contiki-main.p1 ${OBJECTDIR}/empty.p1 ${OBJECTDIR}/configuration-bits.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1644922371/etimer.p1.d ${OBJECTDIR}/_ext/1644922371/timer.p1.d ${OBJECTDIR}/_ext/545456498/autostart.p1.d ${OBJECTDIR}/_ext/545456498/process.p1.d ${OBJECTDIR}/_ext/545456498/procinit.p1.d ${OBJECTDIR}/clock.p1.d ${OBJECTDIR}/contiki-main.p1.d ${OBJECTDIR}/empty.p1.d ${OBJECTDIR}/configuration-bits.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1644922371/etimer.p1 ${OBJECTDIR}/_ext/1644922371/timer.p1 ${OBJECTDIR}/_ext/545456498/autostart.p1 ${OBJECTDIR}/_ext/545456498/process.p1 ${OBJECTDIR}/_ext/545456498/procinit.p1 ${OBJECTDIR}/clock.p1 ${OBJECTDIR}/contiki-main.p1 ${OBJECTDIR}/empty.p1 ${OBJECTDIR}/configuration-bits.p1


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/pic18f97j60-family.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F97J60
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1644922371/etimer.p1: ../../core/sys/etimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1644922371 
	@${RM} ${OBJECTDIR}/_ext/1644922371/etimer.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore --mode=pro -P -N255 -I"./." -I"../../cpu/microchip-mplabx" -I"../../core" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1644922371/etimer.p1  ../../core/sys/etimer.c 
	@-${MV} ${OBJECTDIR}/_ext/1644922371/etimer.d ${OBJECTDIR}/_ext/1644922371/etimer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1644922371/etimer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1644922371/timer.p1: ../../core/sys/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1644922371 
	@${RM} ${OBJECTDIR}/_ext/1644922371/timer.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore --mode=pro -P -N255 -I"./." -I"../../cpu/microchip-mplabx" -I"../../core" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1644922371/timer.p1  ../../core/sys/timer.c 
	@-${MV} ${OBJECTDIR}/_ext/1644922371/timer.d ${OBJECTDIR}/_ext/1644922371/timer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1644922371/timer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/545456498/autostart.p1: ../../cpu/microchip-mplabx/xc8/sys/autostart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/545456498 
	@${RM} ${OBJECTDIR}/_ext/545456498/autostart.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore --mode=pro -P -N255 -I"./." -I"../../cpu/microchip-mplabx" -I"../../core" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/545456498/autostart.p1  ../../cpu/microchip-mplabx/xc8/sys/autostart.c 
	@-${MV} ${OBJECTDIR}/_ext/545456498/autostart.d ${OBJECTDIR}/_ext/545456498/autostart.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/545456498/autostart.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/545456498/process.p1: ../../cpu/microchip-mplabx/xc8/sys/process.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/545456498 
	@${RM} ${OBJECTDIR}/_ext/545456498/process.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore --mode=pro -P -N255 -I"./." -I"../../cpu/microchip-mplabx" -I"../../core" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/545456498/process.p1  ../../cpu/microchip-mplabx/xc8/sys/process.c 
	@-${MV} ${OBJECTDIR}/_ext/545456498/process.d ${OBJECTDIR}/_ext/545456498/process.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/545456498/process.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/545456498/procinit.p1: ../../cpu/microchip-mplabx/xc8/sys/procinit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/545456498 
	@${RM} ${OBJECTDIR}/_ext/545456498/procinit.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore --mode=pro -P -N255 -I"./." -I"../../cpu/microchip-mplabx" -I"../../core" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/545456498/procinit.p1  ../../cpu/microchip-mplabx/xc8/sys/procinit.c 
	@-${MV} ${OBJECTDIR}/_ext/545456498/procinit.d ${OBJECTDIR}/_ext/545456498/procinit.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/545456498/procinit.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/clock.p1: clock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/clock.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore --mode=pro -P -N255 -I"./." -I"../../cpu/microchip-mplabx" -I"../../core" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/clock.p1  clock.c 
	@-${MV} ${OBJECTDIR}/clock.d ${OBJECTDIR}/clock.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/clock.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/contiki-main.p1: contiki-main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/contiki-main.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore --mode=pro -P -N255 -I"./." -I"../../cpu/microchip-mplabx" -I"../../core" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/contiki-main.p1  contiki-main.c 
	@-${MV} ${OBJECTDIR}/contiki-main.d ${OBJECTDIR}/contiki-main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/contiki-main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/empty.p1: empty.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/empty.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore --mode=pro -P -N255 -I"./." -I"../../cpu/microchip-mplabx" -I"../../core" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/empty.p1  empty.c 
	@-${MV} ${OBJECTDIR}/empty.d ${OBJECTDIR}/empty.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/empty.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/configuration-bits.p1: configuration-bits.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/configuration-bits.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore --mode=pro -P -N255 -I"./." -I"../../cpu/microchip-mplabx" -I"../../core" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/configuration-bits.p1  configuration-bits.c 
	@-${MV} ${OBJECTDIR}/configuration-bits.d ${OBJECTDIR}/configuration-bits.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/configuration-bits.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1644922371/etimer.p1: ../../core/sys/etimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1644922371 
	@${RM} ${OBJECTDIR}/_ext/1644922371/etimer.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore --mode=pro -P -N255 -I"./." -I"../../cpu/microchip-mplabx" -I"../../core" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1644922371/etimer.p1  ../../core/sys/etimer.c 
	@-${MV} ${OBJECTDIR}/_ext/1644922371/etimer.d ${OBJECTDIR}/_ext/1644922371/etimer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1644922371/etimer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1644922371/timer.p1: ../../core/sys/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1644922371 
	@${RM} ${OBJECTDIR}/_ext/1644922371/timer.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore --mode=pro -P -N255 -I"./." -I"../../cpu/microchip-mplabx" -I"../../core" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1644922371/timer.p1  ../../core/sys/timer.c 
	@-${MV} ${OBJECTDIR}/_ext/1644922371/timer.d ${OBJECTDIR}/_ext/1644922371/timer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1644922371/timer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/545456498/autostart.p1: ../../cpu/microchip-mplabx/xc8/sys/autostart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/545456498 
	@${RM} ${OBJECTDIR}/_ext/545456498/autostart.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore --mode=pro -P -N255 -I"./." -I"../../cpu/microchip-mplabx" -I"../../core" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/545456498/autostart.p1  ../../cpu/microchip-mplabx/xc8/sys/autostart.c 
	@-${MV} ${OBJECTDIR}/_ext/545456498/autostart.d ${OBJECTDIR}/_ext/545456498/autostart.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/545456498/autostart.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/545456498/process.p1: ../../cpu/microchip-mplabx/xc8/sys/process.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/545456498 
	@${RM} ${OBJECTDIR}/_ext/545456498/process.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore --mode=pro -P -N255 -I"./." -I"../../cpu/microchip-mplabx" -I"../../core" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/545456498/process.p1  ../../cpu/microchip-mplabx/xc8/sys/process.c 
	@-${MV} ${OBJECTDIR}/_ext/545456498/process.d ${OBJECTDIR}/_ext/545456498/process.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/545456498/process.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/545456498/procinit.p1: ../../cpu/microchip-mplabx/xc8/sys/procinit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/545456498 
	@${RM} ${OBJECTDIR}/_ext/545456498/procinit.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore --mode=pro -P -N255 -I"./." -I"../../cpu/microchip-mplabx" -I"../../core" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/545456498/procinit.p1  ../../cpu/microchip-mplabx/xc8/sys/procinit.c 
	@-${MV} ${OBJECTDIR}/_ext/545456498/procinit.d ${OBJECTDIR}/_ext/545456498/procinit.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/545456498/procinit.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/clock.p1: clock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/clock.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore --mode=pro -P -N255 -I"./." -I"../../cpu/microchip-mplabx" -I"../../core" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/clock.p1  clock.c 
	@-${MV} ${OBJECTDIR}/clock.d ${OBJECTDIR}/clock.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/clock.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/contiki-main.p1: contiki-main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/contiki-main.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore --mode=pro -P -N255 -I"./." -I"../../cpu/microchip-mplabx" -I"../../core" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/contiki-main.p1  contiki-main.c 
	@-${MV} ${OBJECTDIR}/contiki-main.d ${OBJECTDIR}/contiki-main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/contiki-main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/empty.p1: empty.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/empty.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore --mode=pro -P -N255 -I"./." -I"../../cpu/microchip-mplabx" -I"../../core" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/empty.p1  empty.c 
	@-${MV} ${OBJECTDIR}/empty.d ${OBJECTDIR}/empty.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/empty.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/configuration-bits.p1: configuration-bits.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/configuration-bits.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore --mode=pro -P -N255 -I"./." -I"../../cpu/microchip-mplabx" -I"../../core" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/configuration-bits.p1  configuration-bits.c 
	@-${MV} ${OBJECTDIR}/configuration-bits.d ${OBJECTDIR}/configuration-bits.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/configuration-bits.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/pic18f97j60-family.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G --asmlist -mdist/${CND_CONF}/${IMAGE_TYPE}/pic18f97j60-family.${IMAGE_TYPE}.map  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore --mode=pro -P -N255 -I"./." -I"../../cpu/microchip-mplabx" -I"../../core" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"      -odist/${CND_CONF}/${IMAGE_TYPE}/pic18f97j60-family.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/pic18f97j60-family.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/pic18f97j60-family.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G --asmlist -mdist/${CND_CONF}/${IMAGE_TYPE}/pic18f97j60-family.${IMAGE_TYPE}.map  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore --mode=pro -P -N255 -I"./." -I"../../cpu/microchip-mplabx" -I"../../core" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"   -odist/${CND_CONF}/${IMAGE_TYPE}/pic18f97j60-family.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
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

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
