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
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1195374541/ctk.p1 ${OBJECTDIR}/_ext/1195374034/nullradio.p1 ${OBJECTDIR}/_ext/1195366242/memb.p1 ${OBJECTDIR}/_ext/1195366242/crc16.p1 ${OBJECTDIR}/_ext/1195366242/strncasecmp.p1 ${OBJECTDIR}/_ext/1195366242/list.p1 ${OBJECTDIR}/_ext/1195366242/random.p1 ${OBJECTDIR}/_ext/1195366242/ringbuf.p1 ${OBJECTDIR}/_ext/1195366242/checkpoint.p1 ${OBJECTDIR}/_ext/1195366242/mmem.p1 ${OBJECTDIR}/_ext/1195366242/print-stats.p1 ${OBJECTDIR}/_ext/1576253606/elfloader.p1 ${OBJECTDIR}/_ext/1195359002/compower.p1 ${OBJECTDIR}/_ext/1195359002/timetable.p1 ${OBJECTDIR}/_ext/1195359002/profile.p1 ${OBJECTDIR}/_ext/1195359002/autostart.p1 ${OBJECTDIR}/_ext/1195359002/etimer.p1 ${OBJECTDIR}/_ext/1195359002/process.p1 ${OBJECTDIR}/_ext/1195359002/procinit.p1 ${OBJECTDIR}/_ext/1195359002/stimer.p1 ${OBJECTDIR}/_ext/1195359002/mt.p1 ${OBJECTDIR}/_ext/1195359002/timer.p1 ${OBJECTDIR}/_ext/1195359002/rtimer.p1 ${OBJECTDIR}/_ext/1195359002/timetable-aggregate.p1 ${OBJECTDIR}/_ext/1195359002/ctimer.p1 ${OBJECTDIR}/_ext/1195359002/profile-aggregates.p1 ${OBJECTDIR}/_ext/1195359002/energest.p1 ${OBJECTDIR}/_ext/1464538521/ETH97J60.p1 ${OBJECTDIR}/dev/pir-sensor.p1 ${OBJECTDIR}/dev/beep.p1 ${OBJECTDIR}/dev/vib-sensor.p1 ${OBJECTDIR}/dev/eeprom.p1 ${OBJECTDIR}/dev/button-sensor.p1 ${OBJECTDIR}/dev/irq.p1 ${OBJECTDIR}/dev/dummy-sensors.p1 ${OBJECTDIR}/dev/leds-arch.p1 ${OBJECTDIR}/configuration-bits.p1 ${OBJECTDIR}/clock.p1 ${OBJECTDIR}/contiki-main.p1 ${OBJECTDIR}/interrupts.p1 ${OBJECTDIR}/empty.p1 ${OBJECTDIR}/dummy.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1195374541/ctk.p1.d ${OBJECTDIR}/_ext/1195374034/nullradio.p1.d ${OBJECTDIR}/_ext/1195366242/memb.p1.d ${OBJECTDIR}/_ext/1195366242/crc16.p1.d ${OBJECTDIR}/_ext/1195366242/strncasecmp.p1.d ${OBJECTDIR}/_ext/1195366242/list.p1.d ${OBJECTDIR}/_ext/1195366242/random.p1.d ${OBJECTDIR}/_ext/1195366242/ringbuf.p1.d ${OBJECTDIR}/_ext/1195366242/checkpoint.p1.d ${OBJECTDIR}/_ext/1195366242/mmem.p1.d ${OBJECTDIR}/_ext/1195366242/print-stats.p1.d ${OBJECTDIR}/_ext/1576253606/elfloader.p1.d ${OBJECTDIR}/_ext/1195359002/compower.p1.d ${OBJECTDIR}/_ext/1195359002/timetable.p1.d ${OBJECTDIR}/_ext/1195359002/profile.p1.d ${OBJECTDIR}/_ext/1195359002/autostart.p1.d ${OBJECTDIR}/_ext/1195359002/etimer.p1.d ${OBJECTDIR}/_ext/1195359002/process.p1.d ${OBJECTDIR}/_ext/1195359002/procinit.p1.d ${OBJECTDIR}/_ext/1195359002/stimer.p1.d ${OBJECTDIR}/_ext/1195359002/mt.p1.d ${OBJECTDIR}/_ext/1195359002/timer.p1.d ${OBJECTDIR}/_ext/1195359002/rtimer.p1.d ${OBJECTDIR}/_ext/1195359002/timetable-aggregate.p1.d ${OBJECTDIR}/_ext/1195359002/ctimer.p1.d ${OBJECTDIR}/_ext/1195359002/profile-aggregates.p1.d ${OBJECTDIR}/_ext/1195359002/energest.p1.d ${OBJECTDIR}/_ext/1464538521/ETH97J60.p1.d ${OBJECTDIR}/dev/pir-sensor.p1.d ${OBJECTDIR}/dev/beep.p1.d ${OBJECTDIR}/dev/vib-sensor.p1.d ${OBJECTDIR}/dev/eeprom.p1.d ${OBJECTDIR}/dev/button-sensor.p1.d ${OBJECTDIR}/dev/irq.p1.d ${OBJECTDIR}/dev/dummy-sensors.p1.d ${OBJECTDIR}/dev/leds-arch.p1.d ${OBJECTDIR}/configuration-bits.p1.d ${OBJECTDIR}/clock.p1.d ${OBJECTDIR}/contiki-main.p1.d ${OBJECTDIR}/interrupts.p1.d ${OBJECTDIR}/empty.p1.d ${OBJECTDIR}/dummy.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1195374541/ctk.p1 ${OBJECTDIR}/_ext/1195374034/nullradio.p1 ${OBJECTDIR}/_ext/1195366242/memb.p1 ${OBJECTDIR}/_ext/1195366242/crc16.p1 ${OBJECTDIR}/_ext/1195366242/strncasecmp.p1 ${OBJECTDIR}/_ext/1195366242/list.p1 ${OBJECTDIR}/_ext/1195366242/random.p1 ${OBJECTDIR}/_ext/1195366242/ringbuf.p1 ${OBJECTDIR}/_ext/1195366242/checkpoint.p1 ${OBJECTDIR}/_ext/1195366242/mmem.p1 ${OBJECTDIR}/_ext/1195366242/print-stats.p1 ${OBJECTDIR}/_ext/1576253606/elfloader.p1 ${OBJECTDIR}/_ext/1195359002/compower.p1 ${OBJECTDIR}/_ext/1195359002/timetable.p1 ${OBJECTDIR}/_ext/1195359002/profile.p1 ${OBJECTDIR}/_ext/1195359002/autostart.p1 ${OBJECTDIR}/_ext/1195359002/etimer.p1 ${OBJECTDIR}/_ext/1195359002/process.p1 ${OBJECTDIR}/_ext/1195359002/procinit.p1 ${OBJECTDIR}/_ext/1195359002/stimer.p1 ${OBJECTDIR}/_ext/1195359002/mt.p1 ${OBJECTDIR}/_ext/1195359002/timer.p1 ${OBJECTDIR}/_ext/1195359002/rtimer.p1 ${OBJECTDIR}/_ext/1195359002/timetable-aggregate.p1 ${OBJECTDIR}/_ext/1195359002/ctimer.p1 ${OBJECTDIR}/_ext/1195359002/profile-aggregates.p1 ${OBJECTDIR}/_ext/1195359002/energest.p1 ${OBJECTDIR}/_ext/1464538521/ETH97J60.p1 ${OBJECTDIR}/dev/pir-sensor.p1 ${OBJECTDIR}/dev/beep.p1 ${OBJECTDIR}/dev/vib-sensor.p1 ${OBJECTDIR}/dev/eeprom.p1 ${OBJECTDIR}/dev/button-sensor.p1 ${OBJECTDIR}/dev/irq.p1 ${OBJECTDIR}/dev/dummy-sensors.p1 ${OBJECTDIR}/dev/leds-arch.p1 ${OBJECTDIR}/configuration-bits.p1 ${OBJECTDIR}/clock.p1 ${OBJECTDIR}/contiki-main.p1 ${OBJECTDIR}/interrupts.p1 ${OBJECTDIR}/empty.p1 ${OBJECTDIR}/dummy.p1


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
	${MAKE} ${MAKE_OPTIONS} -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/pic18f97j60-family.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F97J60
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1195374541/ctk.p1: ../../../contiki/core/ctk/ctk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195374541 
	@${RM} ${OBJECTDIR}/_ext/1195374541/ctk.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195374541/ctk.p1  ../../../contiki/core/ctk/ctk.c 
	@-${MV} ${OBJECTDIR}/_ext/1195374541/ctk.d ${OBJECTDIR}/_ext/1195374541/ctk.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195374541/ctk.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195374034/nullradio.p1: ../../../contiki/core/dev/nullradio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195374034 
	@${RM} ${OBJECTDIR}/_ext/1195374034/nullradio.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195374034/nullradio.p1  ../../../contiki/core/dev/nullradio.c 
	@-${MV} ${OBJECTDIR}/_ext/1195374034/nullradio.d ${OBJECTDIR}/_ext/1195374034/nullradio.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195374034/nullradio.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/memb.p1: ../../../contiki/core/lib/memb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/memb.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195366242/memb.p1  ../../../contiki/core/lib/memb.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/memb.d ${OBJECTDIR}/_ext/1195366242/memb.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/memb.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/crc16.p1: ../../../contiki/core/lib/crc16.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/crc16.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195366242/crc16.p1  ../../../contiki/core/lib/crc16.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/crc16.d ${OBJECTDIR}/_ext/1195366242/crc16.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/crc16.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/strncasecmp.p1: ../../../contiki/core/lib/strncasecmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/strncasecmp.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195366242/strncasecmp.p1  ../../../contiki/core/lib/strncasecmp.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/strncasecmp.d ${OBJECTDIR}/_ext/1195366242/strncasecmp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/strncasecmp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/list.p1: ../../../contiki/core/lib/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/list.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195366242/list.p1  ../../../contiki/core/lib/list.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/list.d ${OBJECTDIR}/_ext/1195366242/list.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/list.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/random.p1: ../../../contiki/core/lib/random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/random.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195366242/random.p1  ../../../contiki/core/lib/random.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/random.d ${OBJECTDIR}/_ext/1195366242/random.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/random.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/ringbuf.p1: ../../../contiki/core/lib/ringbuf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/ringbuf.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195366242/ringbuf.p1  ../../../contiki/core/lib/ringbuf.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/ringbuf.d ${OBJECTDIR}/_ext/1195366242/ringbuf.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/ringbuf.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/checkpoint.p1: ../../../contiki/core/lib/checkpoint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/checkpoint.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195366242/checkpoint.p1  ../../../contiki/core/lib/checkpoint.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/checkpoint.d ${OBJECTDIR}/_ext/1195366242/checkpoint.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/checkpoint.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/mmem.p1: ../../../contiki/core/lib/mmem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/mmem.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195366242/mmem.p1  ../../../contiki/core/lib/mmem.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/mmem.d ${OBJECTDIR}/_ext/1195366242/mmem.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/mmem.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/print-stats.p1: ../../../contiki/core/lib/print-stats.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/print-stats.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195366242/print-stats.p1  ../../../contiki/core/lib/print-stats.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/print-stats.d ${OBJECTDIR}/_ext/1195366242/print-stats.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/print-stats.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1576253606/elfloader.p1: ../../../contiki/core/loader/elfloader.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1576253606 
	@${RM} ${OBJECTDIR}/_ext/1576253606/elfloader.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1576253606/elfloader.p1  ../../../contiki/core/loader/elfloader.c 
	@-${MV} ${OBJECTDIR}/_ext/1576253606/elfloader.d ${OBJECTDIR}/_ext/1576253606/elfloader.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1576253606/elfloader.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/compower.p1: ../../../contiki/core/sys/compower.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/compower.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195359002/compower.p1  ../../../contiki/core/sys/compower.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/compower.d ${OBJECTDIR}/_ext/1195359002/compower.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/compower.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/timetable.p1: ../../../contiki/core/sys/timetable.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/timetable.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195359002/timetable.p1  ../../../contiki/core/sys/timetable.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/timetable.d ${OBJECTDIR}/_ext/1195359002/timetable.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/timetable.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/profile.p1: ../../../contiki/core/sys/profile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/profile.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195359002/profile.p1  ../../../contiki/core/sys/profile.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/profile.d ${OBJECTDIR}/_ext/1195359002/profile.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/profile.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/autostart.p1: ../../../contiki/core/sys/autostart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/autostart.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195359002/autostart.p1  ../../../contiki/core/sys/autostart.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/autostart.d ${OBJECTDIR}/_ext/1195359002/autostart.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/autostart.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/etimer.p1: ../../../contiki/core/sys/etimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/etimer.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195359002/etimer.p1  ../../../contiki/core/sys/etimer.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/etimer.d ${OBJECTDIR}/_ext/1195359002/etimer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/etimer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/process.p1: ../../../contiki/core/sys/process.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/process.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195359002/process.p1  ../../../contiki/core/sys/process.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/process.d ${OBJECTDIR}/_ext/1195359002/process.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/process.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/procinit.p1: ../../../contiki/core/sys/procinit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/procinit.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195359002/procinit.p1  ../../../contiki/core/sys/procinit.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/procinit.d ${OBJECTDIR}/_ext/1195359002/procinit.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/procinit.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/stimer.p1: ../../../contiki/core/sys/stimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/stimer.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195359002/stimer.p1  ../../../contiki/core/sys/stimer.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/stimer.d ${OBJECTDIR}/_ext/1195359002/stimer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/stimer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/mt.p1: ../../../contiki/core/sys/mt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/mt.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195359002/mt.p1  ../../../contiki/core/sys/mt.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/mt.d ${OBJECTDIR}/_ext/1195359002/mt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/mt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/timer.p1: ../../../contiki/core/sys/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/timer.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195359002/timer.p1  ../../../contiki/core/sys/timer.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/timer.d ${OBJECTDIR}/_ext/1195359002/timer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/timer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/rtimer.p1: ../../../contiki/core/sys/rtimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/rtimer.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195359002/rtimer.p1  ../../../contiki/core/sys/rtimer.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/rtimer.d ${OBJECTDIR}/_ext/1195359002/rtimer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/rtimer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/timetable-aggregate.p1: ../../../contiki/core/sys/timetable-aggregate.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/timetable-aggregate.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195359002/timetable-aggregate.p1  ../../../contiki/core/sys/timetable-aggregate.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/timetable-aggregate.d ${OBJECTDIR}/_ext/1195359002/timetable-aggregate.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/timetable-aggregate.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/ctimer.p1: ../../../contiki/core/sys/ctimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/ctimer.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195359002/ctimer.p1  ../../../contiki/core/sys/ctimer.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/ctimer.d ${OBJECTDIR}/_ext/1195359002/ctimer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/ctimer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/profile-aggregates.p1: ../../../contiki/core/sys/profile-aggregates.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/profile-aggregates.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195359002/profile-aggregates.p1  ../../../contiki/core/sys/profile-aggregates.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/profile-aggregates.d ${OBJECTDIR}/_ext/1195359002/profile-aggregates.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/profile-aggregates.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/energest.p1: ../../../contiki/core/sys/energest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/energest.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195359002/energest.p1  ../../../contiki/core/sys/energest.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/energest.d ${OBJECTDIR}/_ext/1195359002/energest.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/energest.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1464538521/ETH97J60.p1: ../../../contiki-mplabx/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ETH97J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1464538521 
	@${RM} ${OBJECTDIR}/_ext/1464538521/ETH97J60.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1464538521/ETH97J60.p1  ../../../contiki-mplabx/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ETH97J60.c 
	@-${MV} ${OBJECTDIR}/_ext/1464538521/ETH97J60.d ${OBJECTDIR}/_ext/1464538521/ETH97J60.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1464538521/ETH97J60.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/dev/pir-sensor.p1: dev/pir-sensor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/dev 
	@${RM} ${OBJECTDIR}/dev/pir-sensor.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/dev/pir-sensor.p1  dev/pir-sensor.c 
	@-${MV} ${OBJECTDIR}/dev/pir-sensor.d ${OBJECTDIR}/dev/pir-sensor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/dev/pir-sensor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/dev/beep.p1: dev/beep.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/dev 
	@${RM} ${OBJECTDIR}/dev/beep.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/dev/beep.p1  dev/beep.c 
	@-${MV} ${OBJECTDIR}/dev/beep.d ${OBJECTDIR}/dev/beep.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/dev/beep.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/dev/vib-sensor.p1: dev/vib-sensor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/dev 
	@${RM} ${OBJECTDIR}/dev/vib-sensor.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/dev/vib-sensor.p1  dev/vib-sensor.c 
	@-${MV} ${OBJECTDIR}/dev/vib-sensor.d ${OBJECTDIR}/dev/vib-sensor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/dev/vib-sensor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/dev/eeprom.p1: dev/eeprom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/dev 
	@${RM} ${OBJECTDIR}/dev/eeprom.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/dev/eeprom.p1  dev/eeprom.c 
	@-${MV} ${OBJECTDIR}/dev/eeprom.d ${OBJECTDIR}/dev/eeprom.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/dev/eeprom.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/dev/button-sensor.p1: dev/button-sensor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/dev 
	@${RM} ${OBJECTDIR}/dev/button-sensor.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/dev/button-sensor.p1  dev/button-sensor.c 
	@-${MV} ${OBJECTDIR}/dev/button-sensor.d ${OBJECTDIR}/dev/button-sensor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/dev/button-sensor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/dev/irq.p1: dev/irq.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/dev 
	@${RM} ${OBJECTDIR}/dev/irq.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/dev/irq.p1  dev/irq.c 
	@-${MV} ${OBJECTDIR}/dev/irq.d ${OBJECTDIR}/dev/irq.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/dev/irq.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/dev/dummy-sensors.p1: dev/dummy-sensors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/dev 
	@${RM} ${OBJECTDIR}/dev/dummy-sensors.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/dev/dummy-sensors.p1  dev/dummy-sensors.c 
	@-${MV} ${OBJECTDIR}/dev/dummy-sensors.d ${OBJECTDIR}/dev/dummy-sensors.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/dev/dummy-sensors.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/dev/leds-arch.p1: dev/leds-arch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/dev 
	@${RM} ${OBJECTDIR}/dev/leds-arch.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/dev/leds-arch.p1  dev/leds-arch.c 
	@-${MV} ${OBJECTDIR}/dev/leds-arch.d ${OBJECTDIR}/dev/leds-arch.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/dev/leds-arch.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/configuration-bits.p1: configuration-bits.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/configuration-bits.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/configuration-bits.p1  configuration-bits.c 
	@-${MV} ${OBJECTDIR}/configuration-bits.d ${OBJECTDIR}/configuration-bits.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/configuration-bits.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/clock.p1: clock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/clock.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/clock.p1  clock.c 
	@-${MV} ${OBJECTDIR}/clock.d ${OBJECTDIR}/clock.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/clock.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/contiki-main.p1: contiki-main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/contiki-main.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/contiki-main.p1  contiki-main.c 
	@-${MV} ${OBJECTDIR}/contiki-main.d ${OBJECTDIR}/contiki-main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/contiki-main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/interrupts.p1: interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/interrupts.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/interrupts.p1  interrupts.c 
	@-${MV} ${OBJECTDIR}/interrupts.d ${OBJECTDIR}/interrupts.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/interrupts.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/empty.p1: empty.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/empty.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/empty.p1  empty.c 
	@-${MV} ${OBJECTDIR}/empty.d ${OBJECTDIR}/empty.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/empty.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/dummy.p1: dummy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/dummy.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/dummy.p1  dummy.c 
	@-${MV} ${OBJECTDIR}/dummy.d ${OBJECTDIR}/dummy.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/dummy.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1195374541/ctk.p1: ../../../contiki/core/ctk/ctk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195374541 
	@${RM} ${OBJECTDIR}/_ext/1195374541/ctk.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195374541/ctk.p1  ../../../contiki/core/ctk/ctk.c 
	@-${MV} ${OBJECTDIR}/_ext/1195374541/ctk.d ${OBJECTDIR}/_ext/1195374541/ctk.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195374541/ctk.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195374034/nullradio.p1: ../../../contiki/core/dev/nullradio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195374034 
	@${RM} ${OBJECTDIR}/_ext/1195374034/nullradio.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195374034/nullradio.p1  ../../../contiki/core/dev/nullradio.c 
	@-${MV} ${OBJECTDIR}/_ext/1195374034/nullradio.d ${OBJECTDIR}/_ext/1195374034/nullradio.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195374034/nullradio.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/memb.p1: ../../../contiki/core/lib/memb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/memb.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195366242/memb.p1  ../../../contiki/core/lib/memb.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/memb.d ${OBJECTDIR}/_ext/1195366242/memb.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/memb.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/crc16.p1: ../../../contiki/core/lib/crc16.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/crc16.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195366242/crc16.p1  ../../../contiki/core/lib/crc16.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/crc16.d ${OBJECTDIR}/_ext/1195366242/crc16.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/crc16.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/strncasecmp.p1: ../../../contiki/core/lib/strncasecmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/strncasecmp.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195366242/strncasecmp.p1  ../../../contiki/core/lib/strncasecmp.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/strncasecmp.d ${OBJECTDIR}/_ext/1195366242/strncasecmp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/strncasecmp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/list.p1: ../../../contiki/core/lib/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/list.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195366242/list.p1  ../../../contiki/core/lib/list.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/list.d ${OBJECTDIR}/_ext/1195366242/list.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/list.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/random.p1: ../../../contiki/core/lib/random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/random.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195366242/random.p1  ../../../contiki/core/lib/random.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/random.d ${OBJECTDIR}/_ext/1195366242/random.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/random.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/ringbuf.p1: ../../../contiki/core/lib/ringbuf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/ringbuf.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195366242/ringbuf.p1  ../../../contiki/core/lib/ringbuf.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/ringbuf.d ${OBJECTDIR}/_ext/1195366242/ringbuf.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/ringbuf.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/checkpoint.p1: ../../../contiki/core/lib/checkpoint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/checkpoint.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195366242/checkpoint.p1  ../../../contiki/core/lib/checkpoint.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/checkpoint.d ${OBJECTDIR}/_ext/1195366242/checkpoint.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/checkpoint.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/mmem.p1: ../../../contiki/core/lib/mmem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/mmem.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195366242/mmem.p1  ../../../contiki/core/lib/mmem.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/mmem.d ${OBJECTDIR}/_ext/1195366242/mmem.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/mmem.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/print-stats.p1: ../../../contiki/core/lib/print-stats.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/print-stats.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195366242/print-stats.p1  ../../../contiki/core/lib/print-stats.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/print-stats.d ${OBJECTDIR}/_ext/1195366242/print-stats.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/print-stats.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1576253606/elfloader.p1: ../../../contiki/core/loader/elfloader.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1576253606 
	@${RM} ${OBJECTDIR}/_ext/1576253606/elfloader.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1576253606/elfloader.p1  ../../../contiki/core/loader/elfloader.c 
	@-${MV} ${OBJECTDIR}/_ext/1576253606/elfloader.d ${OBJECTDIR}/_ext/1576253606/elfloader.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1576253606/elfloader.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/compower.p1: ../../../contiki/core/sys/compower.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/compower.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195359002/compower.p1  ../../../contiki/core/sys/compower.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/compower.d ${OBJECTDIR}/_ext/1195359002/compower.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/compower.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/timetable.p1: ../../../contiki/core/sys/timetable.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/timetable.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195359002/timetable.p1  ../../../contiki/core/sys/timetable.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/timetable.d ${OBJECTDIR}/_ext/1195359002/timetable.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/timetable.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/profile.p1: ../../../contiki/core/sys/profile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/profile.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195359002/profile.p1  ../../../contiki/core/sys/profile.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/profile.d ${OBJECTDIR}/_ext/1195359002/profile.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/profile.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/autostart.p1: ../../../contiki/core/sys/autostart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/autostart.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195359002/autostart.p1  ../../../contiki/core/sys/autostart.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/autostart.d ${OBJECTDIR}/_ext/1195359002/autostart.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/autostart.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/etimer.p1: ../../../contiki/core/sys/etimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/etimer.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195359002/etimer.p1  ../../../contiki/core/sys/etimer.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/etimer.d ${OBJECTDIR}/_ext/1195359002/etimer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/etimer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/process.p1: ../../../contiki/core/sys/process.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/process.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195359002/process.p1  ../../../contiki/core/sys/process.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/process.d ${OBJECTDIR}/_ext/1195359002/process.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/process.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/procinit.p1: ../../../contiki/core/sys/procinit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/procinit.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195359002/procinit.p1  ../../../contiki/core/sys/procinit.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/procinit.d ${OBJECTDIR}/_ext/1195359002/procinit.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/procinit.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/stimer.p1: ../../../contiki/core/sys/stimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/stimer.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195359002/stimer.p1  ../../../contiki/core/sys/stimer.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/stimer.d ${OBJECTDIR}/_ext/1195359002/stimer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/stimer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/mt.p1: ../../../contiki/core/sys/mt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/mt.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195359002/mt.p1  ../../../contiki/core/sys/mt.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/mt.d ${OBJECTDIR}/_ext/1195359002/mt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/mt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/timer.p1: ../../../contiki/core/sys/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/timer.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195359002/timer.p1  ../../../contiki/core/sys/timer.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/timer.d ${OBJECTDIR}/_ext/1195359002/timer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/timer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/rtimer.p1: ../../../contiki/core/sys/rtimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/rtimer.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195359002/rtimer.p1  ../../../contiki/core/sys/rtimer.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/rtimer.d ${OBJECTDIR}/_ext/1195359002/rtimer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/rtimer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/timetable-aggregate.p1: ../../../contiki/core/sys/timetable-aggregate.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/timetable-aggregate.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195359002/timetable-aggregate.p1  ../../../contiki/core/sys/timetable-aggregate.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/timetable-aggregate.d ${OBJECTDIR}/_ext/1195359002/timetable-aggregate.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/timetable-aggregate.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/ctimer.p1: ../../../contiki/core/sys/ctimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/ctimer.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195359002/ctimer.p1  ../../../contiki/core/sys/ctimer.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/ctimer.d ${OBJECTDIR}/_ext/1195359002/ctimer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/ctimer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/profile-aggregates.p1: ../../../contiki/core/sys/profile-aggregates.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/profile-aggregates.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195359002/profile-aggregates.p1  ../../../contiki/core/sys/profile-aggregates.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/profile-aggregates.d ${OBJECTDIR}/_ext/1195359002/profile-aggregates.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/profile-aggregates.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/energest.p1: ../../../contiki/core/sys/energest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/energest.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1195359002/energest.p1  ../../../contiki/core/sys/energest.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/energest.d ${OBJECTDIR}/_ext/1195359002/energest.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/energest.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1464538521/ETH97J60.p1: ../../../contiki-mplabx/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ETH97J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1464538521 
	@${RM} ${OBJECTDIR}/_ext/1464538521/ETH97J60.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/_ext/1464538521/ETH97J60.p1  ../../../contiki-mplabx/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ETH97J60.c 
	@-${MV} ${OBJECTDIR}/_ext/1464538521/ETH97J60.d ${OBJECTDIR}/_ext/1464538521/ETH97J60.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1464538521/ETH97J60.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/dev/pir-sensor.p1: dev/pir-sensor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/dev 
	@${RM} ${OBJECTDIR}/dev/pir-sensor.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/dev/pir-sensor.p1  dev/pir-sensor.c 
	@-${MV} ${OBJECTDIR}/dev/pir-sensor.d ${OBJECTDIR}/dev/pir-sensor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/dev/pir-sensor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/dev/beep.p1: dev/beep.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/dev 
	@${RM} ${OBJECTDIR}/dev/beep.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/dev/beep.p1  dev/beep.c 
	@-${MV} ${OBJECTDIR}/dev/beep.d ${OBJECTDIR}/dev/beep.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/dev/beep.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/dev/vib-sensor.p1: dev/vib-sensor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/dev 
	@${RM} ${OBJECTDIR}/dev/vib-sensor.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/dev/vib-sensor.p1  dev/vib-sensor.c 
	@-${MV} ${OBJECTDIR}/dev/vib-sensor.d ${OBJECTDIR}/dev/vib-sensor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/dev/vib-sensor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/dev/eeprom.p1: dev/eeprom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/dev 
	@${RM} ${OBJECTDIR}/dev/eeprom.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/dev/eeprom.p1  dev/eeprom.c 
	@-${MV} ${OBJECTDIR}/dev/eeprom.d ${OBJECTDIR}/dev/eeprom.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/dev/eeprom.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/dev/button-sensor.p1: dev/button-sensor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/dev 
	@${RM} ${OBJECTDIR}/dev/button-sensor.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/dev/button-sensor.p1  dev/button-sensor.c 
	@-${MV} ${OBJECTDIR}/dev/button-sensor.d ${OBJECTDIR}/dev/button-sensor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/dev/button-sensor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/dev/irq.p1: dev/irq.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/dev 
	@${RM} ${OBJECTDIR}/dev/irq.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/dev/irq.p1  dev/irq.c 
	@-${MV} ${OBJECTDIR}/dev/irq.d ${OBJECTDIR}/dev/irq.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/dev/irq.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/dev/dummy-sensors.p1: dev/dummy-sensors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/dev 
	@${RM} ${OBJECTDIR}/dev/dummy-sensors.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/dev/dummy-sensors.p1  dev/dummy-sensors.c 
	@-${MV} ${OBJECTDIR}/dev/dummy-sensors.d ${OBJECTDIR}/dev/dummy-sensors.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/dev/dummy-sensors.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/dev/leds-arch.p1: dev/leds-arch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/dev 
	@${RM} ${OBJECTDIR}/dev/leds-arch.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/dev/leds-arch.p1  dev/leds-arch.c 
	@-${MV} ${OBJECTDIR}/dev/leds-arch.d ${OBJECTDIR}/dev/leds-arch.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/dev/leds-arch.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/configuration-bits.p1: configuration-bits.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/configuration-bits.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/configuration-bits.p1  configuration-bits.c 
	@-${MV} ${OBJECTDIR}/configuration-bits.d ${OBJECTDIR}/configuration-bits.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/configuration-bits.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/clock.p1: clock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/clock.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/clock.p1  clock.c 
	@-${MV} ${OBJECTDIR}/clock.d ${OBJECTDIR}/clock.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/clock.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/contiki-main.p1: contiki-main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/contiki-main.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/contiki-main.p1  contiki-main.c 
	@-${MV} ${OBJECTDIR}/contiki-main.d ${OBJECTDIR}/contiki-main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/contiki-main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/interrupts.p1: interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/interrupts.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/interrupts.p1  interrupts.c 
	@-${MV} ${OBJECTDIR}/interrupts.d ${OBJECTDIR}/interrupts.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/interrupts.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/empty.p1: empty.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/empty.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/empty.p1  empty.c 
	@-${MV} ${OBJECTDIR}/empty.d ${OBJECTDIR}/empty.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/empty.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/dummy.p1: dummy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/dummy.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"  -o${OBJECTDIR}/dummy.p1  dummy.c 
	@-${MV} ${OBJECTDIR}/dummy.d ${OBJECTDIR}/dummy.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/dummy.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G --asmlist -mdist/${CND_CONF}/${IMAGE_TYPE}/pic18f97j60-family.${IMAGE_TYPE}.map  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"      -odist/${CND_CONF}/${IMAGE_TYPE}/pic18f97j60-family.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/pic18f97j60-family.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/pic18f97j60-family.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G --asmlist -mdist/${CND_CONF}/${IMAGE_TYPE}/pic18f97j60-family.${IMAGE_TYPE}.map  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: %%s" "--msgformat=%%f:%%l: advisory: %%s"   -odist/${CND_CONF}/${IMAGE_TYPE}/pic18f97j60-family.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
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
