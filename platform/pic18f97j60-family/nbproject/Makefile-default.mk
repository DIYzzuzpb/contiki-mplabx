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
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1195374034/nullradio.p1 ${OBJECTDIR}/_ext/1195366242/memb.p1 ${OBJECTDIR}/_ext/1195366242/crc16.p1 ${OBJECTDIR}/_ext/1195366242/list.p1 ${OBJECTDIR}/_ext/1195366242/random.p1 ${OBJECTDIR}/_ext/1195366242/ringbuf.p1 ${OBJECTDIR}/_ext/1195366242/checkpoint.p1 ${OBJECTDIR}/_ext/1195366242/mmem.p1 ${OBJECTDIR}/_ext/1195366242/ifft.p1 ${OBJECTDIR}/_ext/1195366242/print-stats.p1 ${OBJECTDIR}/_ext/114530442/csma.p1 ${OBJECTDIR}/_ext/114530442/nullrdc.p1 ${OBJECTDIR}/_ext/114530442/phase.p1 ${OBJECTDIR}/_ext/114530442/framer-802154.p1 ${OBJECTDIR}/_ext/114530442/xmac.p1 ${OBJECTDIR}/_ext/114530442/mac.p1 ${OBJECTDIR}/_ext/114530442/frame802154.p1 ${OBJECTDIR}/_ext/114530442/lpp.p1 ${OBJECTDIR}/_ext/114530442/contikimac.p1 ${OBJECTDIR}/_ext/114530442/nullrdc-noframer.p1 ${OBJECTDIR}/_ext/114530442/framer-nullmac.p1 ${OBJECTDIR}/_ext/114530442/cxmac.p1 ${OBJECTDIR}/_ext/114530442/sicslowmac.p1 ${OBJECTDIR}/_ext/114530442/nullmac.p1 ${OBJECTDIR}/_ext/744680648/channel.p1 ${OBJECTDIR}/_ext/744680648/chameleon-raw.p1 ${OBJECTDIR}/_ext/744680648/rimeaddr.p1 ${OBJECTDIR}/_ext/744680648/runicast.p1 ${OBJECTDIR}/_ext/744680648/collect-link-estimate.p1 ${OBJECTDIR}/_ext/744680648/rucb.p1 ${OBJECTDIR}/_ext/744680648/polite.p1 ${OBJECTDIR}/_ext/744680648/route.p1 ${OBJECTDIR}/_ext/744680648/rmh.p1 ${OBJECTDIR}/_ext/744680648/rimestats.p1 ${OBJECTDIR}/_ext/744680648/announcement.p1 ${OBJECTDIR}/_ext/744680648/route-discovery.p1 ${OBJECTDIR}/_ext/744680648/broadcast.p1 ${OBJECTDIR}/_ext/744680648/collect.p1 ${OBJECTDIR}/_ext/744680648/abc.p1 ${OBJECTDIR}/_ext/744680648/rudolph1.p1 ${OBJECTDIR}/_ext/744680648/collect-neighbor.p1 ${OBJECTDIR}/_ext/744680648/ipolite.p1 ${OBJECTDIR}/_ext/744680648/multihop.p1 ${OBJECTDIR}/_ext/744680648/neighbor-discovery.p1 ${OBJECTDIR}/_ext/744680648/rime.p1 ${OBJECTDIR}/_ext/744680648/broadcast-announcement.p1 ${OBJECTDIR}/_ext/744680648/chameleon.p1 ${OBJECTDIR}/_ext/744680648/mesh.p1 ${OBJECTDIR}/_ext/744680648/rudolph2.p1 ${OBJECTDIR}/_ext/744680648/unicast.p1 ${OBJECTDIR}/_ext/744680648/netflood.p1 ${OBJECTDIR}/_ext/744680648/stbroadcast.p1 ${OBJECTDIR}/_ext/744680648/trickle.p1 ${OBJECTDIR}/_ext/744680648/chameleon-bitopt.p1 ${OBJECTDIR}/_ext/744680648/timesynch.p1 ${OBJECTDIR}/_ext/744680648/rudolph0.p1 ${OBJECTDIR}/_ext/744680648/stunicast.p1 ${OBJECTDIR}/_ext/744680648/polite-announcement.p1 ${OBJECTDIR}/_ext/1195364426/sicslowpan.p1 ${OBJECTDIR}/_ext/1195359002/compower.p1 ${OBJECTDIR}/_ext/1195359002/profile.p1 ${OBJECTDIR}/_ext/1195359002/etimer.p1 ${OBJECTDIR}/_ext/1195359002/process.p1 ${OBJECTDIR}/_ext/1195359002/procinit.p1 ${OBJECTDIR}/_ext/1195359002/stimer.p1 ${OBJECTDIR}/_ext/1195359002/mt.p1 ${OBJECTDIR}/_ext/1195359002/timer.p1 ${OBJECTDIR}/_ext/1195359002/rtimer.p1 ${OBJECTDIR}/_ext/1195359002/ctimer.p1 ${OBJECTDIR}/_ext/1195359002/energest.p1 ${OBJECTDIR}/_ext/810075401/autostart.p1 ${OBJECTDIR}/interrupts.p1 ${OBJECTDIR}/configuration-bits.p1 ${OBJECTDIR}/fakeuip.p1 ${OBJECTDIR}/rtimer-arch.p1 ${OBJECTDIR}/clock.p1 ${OBJECTDIR}/contiki-main.p1 ${OBJECTDIR}/empty.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1195374034/nullradio.p1.d ${OBJECTDIR}/_ext/1195366242/memb.p1.d ${OBJECTDIR}/_ext/1195366242/crc16.p1.d ${OBJECTDIR}/_ext/1195366242/list.p1.d ${OBJECTDIR}/_ext/1195366242/random.p1.d ${OBJECTDIR}/_ext/1195366242/ringbuf.p1.d ${OBJECTDIR}/_ext/1195366242/checkpoint.p1.d ${OBJECTDIR}/_ext/1195366242/mmem.p1.d ${OBJECTDIR}/_ext/1195366242/ifft.p1.d ${OBJECTDIR}/_ext/1195366242/print-stats.p1.d ${OBJECTDIR}/_ext/114530442/csma.p1.d ${OBJECTDIR}/_ext/114530442/nullrdc.p1.d ${OBJECTDIR}/_ext/114530442/phase.p1.d ${OBJECTDIR}/_ext/114530442/framer-802154.p1.d ${OBJECTDIR}/_ext/114530442/xmac.p1.d ${OBJECTDIR}/_ext/114530442/mac.p1.d ${OBJECTDIR}/_ext/114530442/frame802154.p1.d ${OBJECTDIR}/_ext/114530442/lpp.p1.d ${OBJECTDIR}/_ext/114530442/contikimac.p1.d ${OBJECTDIR}/_ext/114530442/nullrdc-noframer.p1.d ${OBJECTDIR}/_ext/114530442/framer-nullmac.p1.d ${OBJECTDIR}/_ext/114530442/cxmac.p1.d ${OBJECTDIR}/_ext/114530442/sicslowmac.p1.d ${OBJECTDIR}/_ext/114530442/nullmac.p1.d ${OBJECTDIR}/_ext/744680648/channel.p1.d ${OBJECTDIR}/_ext/744680648/chameleon-raw.p1.d ${OBJECTDIR}/_ext/744680648/rimeaddr.p1.d ${OBJECTDIR}/_ext/744680648/runicast.p1.d ${OBJECTDIR}/_ext/744680648/collect-link-estimate.p1.d ${OBJECTDIR}/_ext/744680648/rucb.p1.d ${OBJECTDIR}/_ext/744680648/polite.p1.d ${OBJECTDIR}/_ext/744680648/route.p1.d ${OBJECTDIR}/_ext/744680648/rmh.p1.d ${OBJECTDIR}/_ext/744680648/rimestats.p1.d ${OBJECTDIR}/_ext/744680648/announcement.p1.d ${OBJECTDIR}/_ext/744680648/route-discovery.p1.d ${OBJECTDIR}/_ext/744680648/broadcast.p1.d ${OBJECTDIR}/_ext/744680648/collect.p1.d ${OBJECTDIR}/_ext/744680648/abc.p1.d ${OBJECTDIR}/_ext/744680648/rudolph1.p1.d ${OBJECTDIR}/_ext/744680648/collect-neighbor.p1.d ${OBJECTDIR}/_ext/744680648/ipolite.p1.d ${OBJECTDIR}/_ext/744680648/multihop.p1.d ${OBJECTDIR}/_ext/744680648/neighbor-discovery.p1.d ${OBJECTDIR}/_ext/744680648/rime.p1.d ${OBJECTDIR}/_ext/744680648/broadcast-announcement.p1.d ${OBJECTDIR}/_ext/744680648/chameleon.p1.d ${OBJECTDIR}/_ext/744680648/mesh.p1.d ${OBJECTDIR}/_ext/744680648/rudolph2.p1.d ${OBJECTDIR}/_ext/744680648/unicast.p1.d ${OBJECTDIR}/_ext/744680648/netflood.p1.d ${OBJECTDIR}/_ext/744680648/stbroadcast.p1.d ${OBJECTDIR}/_ext/744680648/trickle.p1.d ${OBJECTDIR}/_ext/744680648/chameleon-bitopt.p1.d ${OBJECTDIR}/_ext/744680648/timesynch.p1.d ${OBJECTDIR}/_ext/744680648/rudolph0.p1.d ${OBJECTDIR}/_ext/744680648/stunicast.p1.d ${OBJECTDIR}/_ext/744680648/polite-announcement.p1.d ${OBJECTDIR}/_ext/1195364426/sicslowpan.p1.d ${OBJECTDIR}/_ext/1195359002/compower.p1.d ${OBJECTDIR}/_ext/1195359002/profile.p1.d ${OBJECTDIR}/_ext/1195359002/etimer.p1.d ${OBJECTDIR}/_ext/1195359002/process.p1.d ${OBJECTDIR}/_ext/1195359002/procinit.p1.d ${OBJECTDIR}/_ext/1195359002/stimer.p1.d ${OBJECTDIR}/_ext/1195359002/mt.p1.d ${OBJECTDIR}/_ext/1195359002/timer.p1.d ${OBJECTDIR}/_ext/1195359002/rtimer.p1.d ${OBJECTDIR}/_ext/1195359002/ctimer.p1.d ${OBJECTDIR}/_ext/1195359002/energest.p1.d ${OBJECTDIR}/_ext/810075401/autostart.p1.d ${OBJECTDIR}/interrupts.p1.d ${OBJECTDIR}/configuration-bits.p1.d ${OBJECTDIR}/fakeuip.p1.d ${OBJECTDIR}/rtimer-arch.p1.d ${OBJECTDIR}/clock.p1.d ${OBJECTDIR}/contiki-main.p1.d ${OBJECTDIR}/empty.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1195374034/nullradio.p1 ${OBJECTDIR}/_ext/1195366242/memb.p1 ${OBJECTDIR}/_ext/1195366242/crc16.p1 ${OBJECTDIR}/_ext/1195366242/list.p1 ${OBJECTDIR}/_ext/1195366242/random.p1 ${OBJECTDIR}/_ext/1195366242/ringbuf.p1 ${OBJECTDIR}/_ext/1195366242/checkpoint.p1 ${OBJECTDIR}/_ext/1195366242/mmem.p1 ${OBJECTDIR}/_ext/1195366242/ifft.p1 ${OBJECTDIR}/_ext/1195366242/print-stats.p1 ${OBJECTDIR}/_ext/114530442/csma.p1 ${OBJECTDIR}/_ext/114530442/nullrdc.p1 ${OBJECTDIR}/_ext/114530442/phase.p1 ${OBJECTDIR}/_ext/114530442/framer-802154.p1 ${OBJECTDIR}/_ext/114530442/xmac.p1 ${OBJECTDIR}/_ext/114530442/mac.p1 ${OBJECTDIR}/_ext/114530442/frame802154.p1 ${OBJECTDIR}/_ext/114530442/lpp.p1 ${OBJECTDIR}/_ext/114530442/contikimac.p1 ${OBJECTDIR}/_ext/114530442/nullrdc-noframer.p1 ${OBJECTDIR}/_ext/114530442/framer-nullmac.p1 ${OBJECTDIR}/_ext/114530442/cxmac.p1 ${OBJECTDIR}/_ext/114530442/sicslowmac.p1 ${OBJECTDIR}/_ext/114530442/nullmac.p1 ${OBJECTDIR}/_ext/744680648/channel.p1 ${OBJECTDIR}/_ext/744680648/chameleon-raw.p1 ${OBJECTDIR}/_ext/744680648/rimeaddr.p1 ${OBJECTDIR}/_ext/744680648/runicast.p1 ${OBJECTDIR}/_ext/744680648/collect-link-estimate.p1 ${OBJECTDIR}/_ext/744680648/rucb.p1 ${OBJECTDIR}/_ext/744680648/polite.p1 ${OBJECTDIR}/_ext/744680648/route.p1 ${OBJECTDIR}/_ext/744680648/rmh.p1 ${OBJECTDIR}/_ext/744680648/rimestats.p1 ${OBJECTDIR}/_ext/744680648/announcement.p1 ${OBJECTDIR}/_ext/744680648/route-discovery.p1 ${OBJECTDIR}/_ext/744680648/broadcast.p1 ${OBJECTDIR}/_ext/744680648/collect.p1 ${OBJECTDIR}/_ext/744680648/abc.p1 ${OBJECTDIR}/_ext/744680648/rudolph1.p1 ${OBJECTDIR}/_ext/744680648/collect-neighbor.p1 ${OBJECTDIR}/_ext/744680648/ipolite.p1 ${OBJECTDIR}/_ext/744680648/multihop.p1 ${OBJECTDIR}/_ext/744680648/neighbor-discovery.p1 ${OBJECTDIR}/_ext/744680648/rime.p1 ${OBJECTDIR}/_ext/744680648/broadcast-announcement.p1 ${OBJECTDIR}/_ext/744680648/chameleon.p1 ${OBJECTDIR}/_ext/744680648/mesh.p1 ${OBJECTDIR}/_ext/744680648/rudolph2.p1 ${OBJECTDIR}/_ext/744680648/unicast.p1 ${OBJECTDIR}/_ext/744680648/netflood.p1 ${OBJECTDIR}/_ext/744680648/stbroadcast.p1 ${OBJECTDIR}/_ext/744680648/trickle.p1 ${OBJECTDIR}/_ext/744680648/chameleon-bitopt.p1 ${OBJECTDIR}/_ext/744680648/timesynch.p1 ${OBJECTDIR}/_ext/744680648/rudolph0.p1 ${OBJECTDIR}/_ext/744680648/stunicast.p1 ${OBJECTDIR}/_ext/744680648/polite-announcement.p1 ${OBJECTDIR}/_ext/1195364426/sicslowpan.p1 ${OBJECTDIR}/_ext/1195359002/compower.p1 ${OBJECTDIR}/_ext/1195359002/profile.p1 ${OBJECTDIR}/_ext/1195359002/etimer.p1 ${OBJECTDIR}/_ext/1195359002/process.p1 ${OBJECTDIR}/_ext/1195359002/procinit.p1 ${OBJECTDIR}/_ext/1195359002/stimer.p1 ${OBJECTDIR}/_ext/1195359002/mt.p1 ${OBJECTDIR}/_ext/1195359002/timer.p1 ${OBJECTDIR}/_ext/1195359002/rtimer.p1 ${OBJECTDIR}/_ext/1195359002/ctimer.p1 ${OBJECTDIR}/_ext/1195359002/energest.p1 ${OBJECTDIR}/_ext/810075401/autostart.p1 ${OBJECTDIR}/interrupts.p1 ${OBJECTDIR}/configuration-bits.p1 ${OBJECTDIR}/fakeuip.p1 ${OBJECTDIR}/rtimer-arch.p1 ${OBJECTDIR}/clock.p1 ${OBJECTDIR}/contiki-main.p1 ${OBJECTDIR}/empty.p1


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
${OBJECTDIR}/_ext/1195374034/nullradio.p1: ../../../contiki/core/dev/nullradio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195374034 
	@${RM} ${OBJECTDIR}/_ext/1195374034/nullradio.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195374034/nullradio.p1  ../../../contiki/core/dev/nullradio.c 
	@-${MV} ${OBJECTDIR}/_ext/1195374034/nullradio.d ${OBJECTDIR}/_ext/1195374034/nullradio.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195374034/nullradio.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/memb.p1: ../../../contiki/core/lib/memb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/memb.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195366242/memb.p1  ../../../contiki/core/lib/memb.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/memb.d ${OBJECTDIR}/_ext/1195366242/memb.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/memb.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/crc16.p1: ../../../contiki/core/lib/crc16.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/crc16.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195366242/crc16.p1  ../../../contiki/core/lib/crc16.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/crc16.d ${OBJECTDIR}/_ext/1195366242/crc16.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/crc16.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/list.p1: ../../../contiki/core/lib/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/list.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195366242/list.p1  ../../../contiki/core/lib/list.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/list.d ${OBJECTDIR}/_ext/1195366242/list.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/list.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/random.p1: ../../../contiki/core/lib/random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/random.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195366242/random.p1  ../../../contiki/core/lib/random.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/random.d ${OBJECTDIR}/_ext/1195366242/random.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/random.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/ringbuf.p1: ../../../contiki/core/lib/ringbuf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/ringbuf.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195366242/ringbuf.p1  ../../../contiki/core/lib/ringbuf.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/ringbuf.d ${OBJECTDIR}/_ext/1195366242/ringbuf.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/ringbuf.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/checkpoint.p1: ../../../contiki/core/lib/checkpoint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/checkpoint.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195366242/checkpoint.p1  ../../../contiki/core/lib/checkpoint.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/checkpoint.d ${OBJECTDIR}/_ext/1195366242/checkpoint.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/checkpoint.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/mmem.p1: ../../../contiki/core/lib/mmem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/mmem.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195366242/mmem.p1  ../../../contiki/core/lib/mmem.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/mmem.d ${OBJECTDIR}/_ext/1195366242/mmem.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/mmem.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/ifft.p1: ../../../contiki/core/lib/ifft.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/ifft.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195366242/ifft.p1  ../../../contiki/core/lib/ifft.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/ifft.d ${OBJECTDIR}/_ext/1195366242/ifft.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/ifft.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/print-stats.p1: ../../../contiki/core/lib/print-stats.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/print-stats.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195366242/print-stats.p1  ../../../contiki/core/lib/print-stats.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/print-stats.d ${OBJECTDIR}/_ext/1195366242/print-stats.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/print-stats.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114530442/csma.p1: ../../../contiki/core/net/mac/csma.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114530442 
	@${RM} ${OBJECTDIR}/_ext/114530442/csma.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114530442/csma.p1  ../../../contiki/core/net/mac/csma.c 
	@-${MV} ${OBJECTDIR}/_ext/114530442/csma.d ${OBJECTDIR}/_ext/114530442/csma.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114530442/csma.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114530442/nullrdc.p1: ../../../contiki/core/net/mac/nullrdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114530442 
	@${RM} ${OBJECTDIR}/_ext/114530442/nullrdc.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114530442/nullrdc.p1  ../../../contiki/core/net/mac/nullrdc.c 
	@-${MV} ${OBJECTDIR}/_ext/114530442/nullrdc.d ${OBJECTDIR}/_ext/114530442/nullrdc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114530442/nullrdc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114530442/phase.p1: ../../../contiki/core/net/mac/phase.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114530442 
	@${RM} ${OBJECTDIR}/_ext/114530442/phase.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114530442/phase.p1  ../../../contiki/core/net/mac/phase.c 
	@-${MV} ${OBJECTDIR}/_ext/114530442/phase.d ${OBJECTDIR}/_ext/114530442/phase.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114530442/phase.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114530442/framer-802154.p1: ../../../contiki/core/net/mac/framer-802154.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114530442 
	@${RM} ${OBJECTDIR}/_ext/114530442/framer-802154.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114530442/framer-802154.p1  ../../../contiki/core/net/mac/framer-802154.c 
	@-${MV} ${OBJECTDIR}/_ext/114530442/framer-802154.d ${OBJECTDIR}/_ext/114530442/framer-802154.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114530442/framer-802154.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114530442/xmac.p1: ../../../contiki/core/net/mac/xmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114530442 
	@${RM} ${OBJECTDIR}/_ext/114530442/xmac.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114530442/xmac.p1  ../../../contiki/core/net/mac/xmac.c 
	@-${MV} ${OBJECTDIR}/_ext/114530442/xmac.d ${OBJECTDIR}/_ext/114530442/xmac.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114530442/xmac.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114530442/mac.p1: ../../../contiki/core/net/mac/mac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114530442 
	@${RM} ${OBJECTDIR}/_ext/114530442/mac.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114530442/mac.p1  ../../../contiki/core/net/mac/mac.c 
	@-${MV} ${OBJECTDIR}/_ext/114530442/mac.d ${OBJECTDIR}/_ext/114530442/mac.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114530442/mac.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114530442/frame802154.p1: ../../../contiki/core/net/mac/frame802154.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114530442 
	@${RM} ${OBJECTDIR}/_ext/114530442/frame802154.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114530442/frame802154.p1  ../../../contiki/core/net/mac/frame802154.c 
	@-${MV} ${OBJECTDIR}/_ext/114530442/frame802154.d ${OBJECTDIR}/_ext/114530442/frame802154.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114530442/frame802154.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114530442/lpp.p1: ../../../contiki/core/net/mac/lpp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114530442 
	@${RM} ${OBJECTDIR}/_ext/114530442/lpp.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114530442/lpp.p1  ../../../contiki/core/net/mac/lpp.c 
	@-${MV} ${OBJECTDIR}/_ext/114530442/lpp.d ${OBJECTDIR}/_ext/114530442/lpp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114530442/lpp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114530442/contikimac.p1: ../../../contiki/core/net/mac/contikimac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114530442 
	@${RM} ${OBJECTDIR}/_ext/114530442/contikimac.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114530442/contikimac.p1  ../../../contiki/core/net/mac/contikimac.c 
	@-${MV} ${OBJECTDIR}/_ext/114530442/contikimac.d ${OBJECTDIR}/_ext/114530442/contikimac.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114530442/contikimac.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114530442/nullrdc-noframer.p1: ../../../contiki/core/net/mac/nullrdc-noframer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114530442 
	@${RM} ${OBJECTDIR}/_ext/114530442/nullrdc-noframer.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114530442/nullrdc-noframer.p1  ../../../contiki/core/net/mac/nullrdc-noframer.c 
	@-${MV} ${OBJECTDIR}/_ext/114530442/nullrdc-noframer.d ${OBJECTDIR}/_ext/114530442/nullrdc-noframer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114530442/nullrdc-noframer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114530442/framer-nullmac.p1: ../../../contiki/core/net/mac/framer-nullmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114530442 
	@${RM} ${OBJECTDIR}/_ext/114530442/framer-nullmac.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114530442/framer-nullmac.p1  ../../../contiki/core/net/mac/framer-nullmac.c 
	@-${MV} ${OBJECTDIR}/_ext/114530442/framer-nullmac.d ${OBJECTDIR}/_ext/114530442/framer-nullmac.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114530442/framer-nullmac.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114530442/cxmac.p1: ../../../contiki/core/net/mac/cxmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114530442 
	@${RM} ${OBJECTDIR}/_ext/114530442/cxmac.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114530442/cxmac.p1  ../../../contiki/core/net/mac/cxmac.c 
	@-${MV} ${OBJECTDIR}/_ext/114530442/cxmac.d ${OBJECTDIR}/_ext/114530442/cxmac.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114530442/cxmac.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114530442/sicslowmac.p1: ../../../contiki/core/net/mac/sicslowmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114530442 
	@${RM} ${OBJECTDIR}/_ext/114530442/sicslowmac.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114530442/sicslowmac.p1  ../../../contiki/core/net/mac/sicslowmac.c 
	@-${MV} ${OBJECTDIR}/_ext/114530442/sicslowmac.d ${OBJECTDIR}/_ext/114530442/sicslowmac.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114530442/sicslowmac.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114530442/nullmac.p1: ../../../contiki/core/net/mac/nullmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114530442 
	@${RM} ${OBJECTDIR}/_ext/114530442/nullmac.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114530442/nullmac.p1  ../../../contiki/core/net/mac/nullmac.c 
	@-${MV} ${OBJECTDIR}/_ext/114530442/nullmac.d ${OBJECTDIR}/_ext/114530442/nullmac.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114530442/nullmac.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/channel.p1: ../../../contiki/core/net/rime/channel.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/channel.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/channel.p1  ../../../contiki/core/net/rime/channel.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/channel.d ${OBJECTDIR}/_ext/744680648/channel.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/channel.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/chameleon-raw.p1: ../../../contiki/core/net/rime/chameleon-raw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/chameleon-raw.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/chameleon-raw.p1  ../../../contiki/core/net/rime/chameleon-raw.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/chameleon-raw.d ${OBJECTDIR}/_ext/744680648/chameleon-raw.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/chameleon-raw.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/rimeaddr.p1: ../../../contiki/core/net/rime/rimeaddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/rimeaddr.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/rimeaddr.p1  ../../../contiki/core/net/rime/rimeaddr.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/rimeaddr.d ${OBJECTDIR}/_ext/744680648/rimeaddr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/rimeaddr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/runicast.p1: ../../../contiki/core/net/rime/runicast.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/runicast.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/runicast.p1  ../../../contiki/core/net/rime/runicast.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/runicast.d ${OBJECTDIR}/_ext/744680648/runicast.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/runicast.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/collect-link-estimate.p1: ../../../contiki/core/net/rime/collect-link-estimate.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/collect-link-estimate.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/collect-link-estimate.p1  ../../../contiki/core/net/rime/collect-link-estimate.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/collect-link-estimate.d ${OBJECTDIR}/_ext/744680648/collect-link-estimate.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/collect-link-estimate.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/rucb.p1: ../../../contiki/core/net/rime/rucb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/rucb.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/rucb.p1  ../../../contiki/core/net/rime/rucb.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/rucb.d ${OBJECTDIR}/_ext/744680648/rucb.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/rucb.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/polite.p1: ../../../contiki/core/net/rime/polite.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/polite.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/polite.p1  ../../../contiki/core/net/rime/polite.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/polite.d ${OBJECTDIR}/_ext/744680648/polite.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/polite.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/route.p1: ../../../contiki/core/net/rime/route.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/route.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/route.p1  ../../../contiki/core/net/rime/route.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/route.d ${OBJECTDIR}/_ext/744680648/route.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/route.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/rmh.p1: ../../../contiki/core/net/rime/rmh.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/rmh.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/rmh.p1  ../../../contiki/core/net/rime/rmh.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/rmh.d ${OBJECTDIR}/_ext/744680648/rmh.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/rmh.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/rimestats.p1: ../../../contiki/core/net/rime/rimestats.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/rimestats.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/rimestats.p1  ../../../contiki/core/net/rime/rimestats.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/rimestats.d ${OBJECTDIR}/_ext/744680648/rimestats.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/rimestats.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/announcement.p1: ../../../contiki/core/net/rime/announcement.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/announcement.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/announcement.p1  ../../../contiki/core/net/rime/announcement.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/announcement.d ${OBJECTDIR}/_ext/744680648/announcement.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/announcement.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/route-discovery.p1: ../../../contiki/core/net/rime/route-discovery.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/route-discovery.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/route-discovery.p1  ../../../contiki/core/net/rime/route-discovery.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/route-discovery.d ${OBJECTDIR}/_ext/744680648/route-discovery.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/route-discovery.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/broadcast.p1: ../../../contiki/core/net/rime/broadcast.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/broadcast.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/broadcast.p1  ../../../contiki/core/net/rime/broadcast.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/broadcast.d ${OBJECTDIR}/_ext/744680648/broadcast.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/broadcast.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/collect.p1: ../../../contiki/core/net/rime/collect.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/collect.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/collect.p1  ../../../contiki/core/net/rime/collect.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/collect.d ${OBJECTDIR}/_ext/744680648/collect.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/collect.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/abc.p1: ../../../contiki/core/net/rime/abc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/abc.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/abc.p1  ../../../contiki/core/net/rime/abc.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/abc.d ${OBJECTDIR}/_ext/744680648/abc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/abc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/rudolph1.p1: ../../../contiki/core/net/rime/rudolph1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/rudolph1.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/rudolph1.p1  ../../../contiki/core/net/rime/rudolph1.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/rudolph1.d ${OBJECTDIR}/_ext/744680648/rudolph1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/rudolph1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/collect-neighbor.p1: ../../../contiki/core/net/rime/collect-neighbor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/collect-neighbor.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/collect-neighbor.p1  ../../../contiki/core/net/rime/collect-neighbor.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/collect-neighbor.d ${OBJECTDIR}/_ext/744680648/collect-neighbor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/collect-neighbor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/ipolite.p1: ../../../contiki/core/net/rime/ipolite.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/ipolite.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/ipolite.p1  ../../../contiki/core/net/rime/ipolite.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/ipolite.d ${OBJECTDIR}/_ext/744680648/ipolite.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/ipolite.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/multihop.p1: ../../../contiki/core/net/rime/multihop.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/multihop.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/multihop.p1  ../../../contiki/core/net/rime/multihop.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/multihop.d ${OBJECTDIR}/_ext/744680648/multihop.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/multihop.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/neighbor-discovery.p1: ../../../contiki/core/net/rime/neighbor-discovery.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/neighbor-discovery.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/neighbor-discovery.p1  ../../../contiki/core/net/rime/neighbor-discovery.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/neighbor-discovery.d ${OBJECTDIR}/_ext/744680648/neighbor-discovery.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/neighbor-discovery.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/rime.p1: ../../../contiki/core/net/rime/rime.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/rime.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/rime.p1  ../../../contiki/core/net/rime/rime.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/rime.d ${OBJECTDIR}/_ext/744680648/rime.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/rime.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/broadcast-announcement.p1: ../../../contiki/core/net/rime/broadcast-announcement.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/broadcast-announcement.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/broadcast-announcement.p1  ../../../contiki/core/net/rime/broadcast-announcement.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/broadcast-announcement.d ${OBJECTDIR}/_ext/744680648/broadcast-announcement.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/broadcast-announcement.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/chameleon.p1: ../../../contiki/core/net/rime/chameleon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/chameleon.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/chameleon.p1  ../../../contiki/core/net/rime/chameleon.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/chameleon.d ${OBJECTDIR}/_ext/744680648/chameleon.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/chameleon.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/mesh.p1: ../../../contiki/core/net/rime/mesh.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/mesh.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/mesh.p1  ../../../contiki/core/net/rime/mesh.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/mesh.d ${OBJECTDIR}/_ext/744680648/mesh.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/mesh.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/rudolph2.p1: ../../../contiki/core/net/rime/rudolph2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/rudolph2.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/rudolph2.p1  ../../../contiki/core/net/rime/rudolph2.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/rudolph2.d ${OBJECTDIR}/_ext/744680648/rudolph2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/rudolph2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/unicast.p1: ../../../contiki/core/net/rime/unicast.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/unicast.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/unicast.p1  ../../../contiki/core/net/rime/unicast.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/unicast.d ${OBJECTDIR}/_ext/744680648/unicast.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/unicast.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/netflood.p1: ../../../contiki/core/net/rime/netflood.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/netflood.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/netflood.p1  ../../../contiki/core/net/rime/netflood.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/netflood.d ${OBJECTDIR}/_ext/744680648/netflood.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/netflood.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/stbroadcast.p1: ../../../contiki/core/net/rime/stbroadcast.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/stbroadcast.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/stbroadcast.p1  ../../../contiki/core/net/rime/stbroadcast.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/stbroadcast.d ${OBJECTDIR}/_ext/744680648/stbroadcast.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/stbroadcast.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/trickle.p1: ../../../contiki/core/net/rime/trickle.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/trickle.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/trickle.p1  ../../../contiki/core/net/rime/trickle.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/trickle.d ${OBJECTDIR}/_ext/744680648/trickle.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/trickle.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/chameleon-bitopt.p1: ../../../contiki/core/net/rime/chameleon-bitopt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/chameleon-bitopt.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/chameleon-bitopt.p1  ../../../contiki/core/net/rime/chameleon-bitopt.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/chameleon-bitopt.d ${OBJECTDIR}/_ext/744680648/chameleon-bitopt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/chameleon-bitopt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/timesynch.p1: ../../../contiki/core/net/rime/timesynch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/timesynch.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/timesynch.p1  ../../../contiki/core/net/rime/timesynch.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/timesynch.d ${OBJECTDIR}/_ext/744680648/timesynch.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/timesynch.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/rudolph0.p1: ../../../contiki/core/net/rime/rudolph0.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/rudolph0.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/rudolph0.p1  ../../../contiki/core/net/rime/rudolph0.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/rudolph0.d ${OBJECTDIR}/_ext/744680648/rudolph0.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/rudolph0.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/stunicast.p1: ../../../contiki/core/net/rime/stunicast.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/stunicast.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/stunicast.p1  ../../../contiki/core/net/rime/stunicast.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/stunicast.d ${OBJECTDIR}/_ext/744680648/stunicast.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/stunicast.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/polite-announcement.p1: ../../../contiki/core/net/rime/polite-announcement.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/polite-announcement.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/polite-announcement.p1  ../../../contiki/core/net/rime/polite-announcement.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/polite-announcement.d ${OBJECTDIR}/_ext/744680648/polite-announcement.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/polite-announcement.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/sicslowpan.p1: ../../../contiki/core/net/sicslowpan.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/sicslowpan.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/sicslowpan.p1  ../../../contiki/core/net/sicslowpan.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/sicslowpan.d ${OBJECTDIR}/_ext/1195364426/sicslowpan.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/sicslowpan.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/compower.p1: ../../../contiki/core/sys/compower.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/compower.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/compower.p1  ../../../contiki/core/sys/compower.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/compower.d ${OBJECTDIR}/_ext/1195359002/compower.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/compower.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/profile.p1: ../../../contiki/core/sys/profile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/profile.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/profile.p1  ../../../contiki/core/sys/profile.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/profile.d ${OBJECTDIR}/_ext/1195359002/profile.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/profile.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/etimer.p1: ../../../contiki/core/sys/etimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/etimer.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/etimer.p1  ../../../contiki/core/sys/etimer.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/etimer.d ${OBJECTDIR}/_ext/1195359002/etimer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/etimer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/process.p1: ../../../contiki/core/sys/process.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/process.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/process.p1  ../../../contiki/core/sys/process.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/process.d ${OBJECTDIR}/_ext/1195359002/process.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/process.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/procinit.p1: ../../../contiki/core/sys/procinit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/procinit.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/procinit.p1  ../../../contiki/core/sys/procinit.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/procinit.d ${OBJECTDIR}/_ext/1195359002/procinit.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/procinit.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/stimer.p1: ../../../contiki/core/sys/stimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/stimer.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/stimer.p1  ../../../contiki/core/sys/stimer.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/stimer.d ${OBJECTDIR}/_ext/1195359002/stimer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/stimer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/mt.p1: ../../../contiki/core/sys/mt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/mt.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/mt.p1  ../../../contiki/core/sys/mt.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/mt.d ${OBJECTDIR}/_ext/1195359002/mt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/mt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/timer.p1: ../../../contiki/core/sys/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/timer.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/timer.p1  ../../../contiki/core/sys/timer.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/timer.d ${OBJECTDIR}/_ext/1195359002/timer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/timer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/rtimer.p1: ../../../contiki/core/sys/rtimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/rtimer.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/rtimer.p1  ../../../contiki/core/sys/rtimer.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/rtimer.d ${OBJECTDIR}/_ext/1195359002/rtimer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/rtimer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/ctimer.p1: ../../../contiki/core/sys/ctimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/ctimer.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/ctimer.p1  ../../../contiki/core/sys/ctimer.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/ctimer.d ${OBJECTDIR}/_ext/1195359002/ctimer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/ctimer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/energest.p1: ../../../contiki/core/sys/energest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/energest.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/energest.p1  ../../../contiki/core/sys/energest.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/energest.d ${OBJECTDIR}/_ext/1195359002/energest.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/energest.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/810075401/autostart.p1: ../../../contiki/cpu/microchip-mplabx/xc8/sys/autostart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/810075401 
	@${RM} ${OBJECTDIR}/_ext/810075401/autostart.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/810075401/autostart.p1  ../../../contiki/cpu/microchip-mplabx/xc8/sys/autostart.c 
	@-${MV} ${OBJECTDIR}/_ext/810075401/autostart.d ${OBJECTDIR}/_ext/810075401/autostart.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/810075401/autostart.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/interrupts.p1: interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/interrupts.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/interrupts.p1  interrupts.c 
	@-${MV} ${OBJECTDIR}/interrupts.d ${OBJECTDIR}/interrupts.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/interrupts.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/configuration-bits.p1: configuration-bits.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/configuration-bits.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/configuration-bits.p1  configuration-bits.c 
	@-${MV} ${OBJECTDIR}/configuration-bits.d ${OBJECTDIR}/configuration-bits.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/configuration-bits.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/fakeuip.p1: fakeuip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/fakeuip.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/fakeuip.p1  fakeuip.c 
	@-${MV} ${OBJECTDIR}/fakeuip.d ${OBJECTDIR}/fakeuip.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/fakeuip.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/rtimer-arch.p1: rtimer-arch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/rtimer-arch.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/rtimer-arch.p1  rtimer-arch.c 
	@-${MV} ${OBJECTDIR}/rtimer-arch.d ${OBJECTDIR}/rtimer-arch.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/rtimer-arch.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/clock.p1: clock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/clock.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/clock.p1  clock.c 
	@-${MV} ${OBJECTDIR}/clock.d ${OBJECTDIR}/clock.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/clock.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/contiki-main.p1: contiki-main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/contiki-main.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/contiki-main.p1  contiki-main.c 
	@-${MV} ${OBJECTDIR}/contiki-main.d ${OBJECTDIR}/contiki-main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/contiki-main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/empty.p1: empty.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/empty.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/empty.p1  empty.c 
	@-${MV} ${OBJECTDIR}/empty.d ${OBJECTDIR}/empty.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/empty.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1195374034/nullradio.p1: ../../../contiki/core/dev/nullradio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195374034 
	@${RM} ${OBJECTDIR}/_ext/1195374034/nullradio.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195374034/nullradio.p1  ../../../contiki/core/dev/nullradio.c 
	@-${MV} ${OBJECTDIR}/_ext/1195374034/nullradio.d ${OBJECTDIR}/_ext/1195374034/nullradio.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195374034/nullradio.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/memb.p1: ../../../contiki/core/lib/memb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/memb.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195366242/memb.p1  ../../../contiki/core/lib/memb.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/memb.d ${OBJECTDIR}/_ext/1195366242/memb.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/memb.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/crc16.p1: ../../../contiki/core/lib/crc16.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/crc16.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195366242/crc16.p1  ../../../contiki/core/lib/crc16.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/crc16.d ${OBJECTDIR}/_ext/1195366242/crc16.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/crc16.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/list.p1: ../../../contiki/core/lib/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/list.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195366242/list.p1  ../../../contiki/core/lib/list.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/list.d ${OBJECTDIR}/_ext/1195366242/list.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/list.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/random.p1: ../../../contiki/core/lib/random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/random.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195366242/random.p1  ../../../contiki/core/lib/random.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/random.d ${OBJECTDIR}/_ext/1195366242/random.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/random.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/ringbuf.p1: ../../../contiki/core/lib/ringbuf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/ringbuf.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195366242/ringbuf.p1  ../../../contiki/core/lib/ringbuf.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/ringbuf.d ${OBJECTDIR}/_ext/1195366242/ringbuf.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/ringbuf.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/checkpoint.p1: ../../../contiki/core/lib/checkpoint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/checkpoint.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195366242/checkpoint.p1  ../../../contiki/core/lib/checkpoint.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/checkpoint.d ${OBJECTDIR}/_ext/1195366242/checkpoint.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/checkpoint.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/mmem.p1: ../../../contiki/core/lib/mmem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/mmem.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195366242/mmem.p1  ../../../contiki/core/lib/mmem.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/mmem.d ${OBJECTDIR}/_ext/1195366242/mmem.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/mmem.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/ifft.p1: ../../../contiki/core/lib/ifft.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/ifft.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195366242/ifft.p1  ../../../contiki/core/lib/ifft.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/ifft.d ${OBJECTDIR}/_ext/1195366242/ifft.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/ifft.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/print-stats.p1: ../../../contiki/core/lib/print-stats.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/print-stats.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195366242/print-stats.p1  ../../../contiki/core/lib/print-stats.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/print-stats.d ${OBJECTDIR}/_ext/1195366242/print-stats.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/print-stats.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114530442/csma.p1: ../../../contiki/core/net/mac/csma.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114530442 
	@${RM} ${OBJECTDIR}/_ext/114530442/csma.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114530442/csma.p1  ../../../contiki/core/net/mac/csma.c 
	@-${MV} ${OBJECTDIR}/_ext/114530442/csma.d ${OBJECTDIR}/_ext/114530442/csma.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114530442/csma.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114530442/nullrdc.p1: ../../../contiki/core/net/mac/nullrdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114530442 
	@${RM} ${OBJECTDIR}/_ext/114530442/nullrdc.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114530442/nullrdc.p1  ../../../contiki/core/net/mac/nullrdc.c 
	@-${MV} ${OBJECTDIR}/_ext/114530442/nullrdc.d ${OBJECTDIR}/_ext/114530442/nullrdc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114530442/nullrdc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114530442/phase.p1: ../../../contiki/core/net/mac/phase.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114530442 
	@${RM} ${OBJECTDIR}/_ext/114530442/phase.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114530442/phase.p1  ../../../contiki/core/net/mac/phase.c 
	@-${MV} ${OBJECTDIR}/_ext/114530442/phase.d ${OBJECTDIR}/_ext/114530442/phase.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114530442/phase.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114530442/framer-802154.p1: ../../../contiki/core/net/mac/framer-802154.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114530442 
	@${RM} ${OBJECTDIR}/_ext/114530442/framer-802154.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114530442/framer-802154.p1  ../../../contiki/core/net/mac/framer-802154.c 
	@-${MV} ${OBJECTDIR}/_ext/114530442/framer-802154.d ${OBJECTDIR}/_ext/114530442/framer-802154.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114530442/framer-802154.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114530442/xmac.p1: ../../../contiki/core/net/mac/xmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114530442 
	@${RM} ${OBJECTDIR}/_ext/114530442/xmac.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114530442/xmac.p1  ../../../contiki/core/net/mac/xmac.c 
	@-${MV} ${OBJECTDIR}/_ext/114530442/xmac.d ${OBJECTDIR}/_ext/114530442/xmac.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114530442/xmac.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114530442/mac.p1: ../../../contiki/core/net/mac/mac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114530442 
	@${RM} ${OBJECTDIR}/_ext/114530442/mac.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114530442/mac.p1  ../../../contiki/core/net/mac/mac.c 
	@-${MV} ${OBJECTDIR}/_ext/114530442/mac.d ${OBJECTDIR}/_ext/114530442/mac.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114530442/mac.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114530442/frame802154.p1: ../../../contiki/core/net/mac/frame802154.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114530442 
	@${RM} ${OBJECTDIR}/_ext/114530442/frame802154.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114530442/frame802154.p1  ../../../contiki/core/net/mac/frame802154.c 
	@-${MV} ${OBJECTDIR}/_ext/114530442/frame802154.d ${OBJECTDIR}/_ext/114530442/frame802154.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114530442/frame802154.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114530442/lpp.p1: ../../../contiki/core/net/mac/lpp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114530442 
	@${RM} ${OBJECTDIR}/_ext/114530442/lpp.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114530442/lpp.p1  ../../../contiki/core/net/mac/lpp.c 
	@-${MV} ${OBJECTDIR}/_ext/114530442/lpp.d ${OBJECTDIR}/_ext/114530442/lpp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114530442/lpp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114530442/contikimac.p1: ../../../contiki/core/net/mac/contikimac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114530442 
	@${RM} ${OBJECTDIR}/_ext/114530442/contikimac.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114530442/contikimac.p1  ../../../contiki/core/net/mac/contikimac.c 
	@-${MV} ${OBJECTDIR}/_ext/114530442/contikimac.d ${OBJECTDIR}/_ext/114530442/contikimac.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114530442/contikimac.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114530442/nullrdc-noframer.p1: ../../../contiki/core/net/mac/nullrdc-noframer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114530442 
	@${RM} ${OBJECTDIR}/_ext/114530442/nullrdc-noframer.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114530442/nullrdc-noframer.p1  ../../../contiki/core/net/mac/nullrdc-noframer.c 
	@-${MV} ${OBJECTDIR}/_ext/114530442/nullrdc-noframer.d ${OBJECTDIR}/_ext/114530442/nullrdc-noframer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114530442/nullrdc-noframer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114530442/framer-nullmac.p1: ../../../contiki/core/net/mac/framer-nullmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114530442 
	@${RM} ${OBJECTDIR}/_ext/114530442/framer-nullmac.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114530442/framer-nullmac.p1  ../../../contiki/core/net/mac/framer-nullmac.c 
	@-${MV} ${OBJECTDIR}/_ext/114530442/framer-nullmac.d ${OBJECTDIR}/_ext/114530442/framer-nullmac.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114530442/framer-nullmac.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114530442/cxmac.p1: ../../../contiki/core/net/mac/cxmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114530442 
	@${RM} ${OBJECTDIR}/_ext/114530442/cxmac.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114530442/cxmac.p1  ../../../contiki/core/net/mac/cxmac.c 
	@-${MV} ${OBJECTDIR}/_ext/114530442/cxmac.d ${OBJECTDIR}/_ext/114530442/cxmac.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114530442/cxmac.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114530442/sicslowmac.p1: ../../../contiki/core/net/mac/sicslowmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114530442 
	@${RM} ${OBJECTDIR}/_ext/114530442/sicslowmac.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114530442/sicslowmac.p1  ../../../contiki/core/net/mac/sicslowmac.c 
	@-${MV} ${OBJECTDIR}/_ext/114530442/sicslowmac.d ${OBJECTDIR}/_ext/114530442/sicslowmac.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114530442/sicslowmac.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114530442/nullmac.p1: ../../../contiki/core/net/mac/nullmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114530442 
	@${RM} ${OBJECTDIR}/_ext/114530442/nullmac.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114530442/nullmac.p1  ../../../contiki/core/net/mac/nullmac.c 
	@-${MV} ${OBJECTDIR}/_ext/114530442/nullmac.d ${OBJECTDIR}/_ext/114530442/nullmac.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114530442/nullmac.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/channel.p1: ../../../contiki/core/net/rime/channel.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/channel.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/channel.p1  ../../../contiki/core/net/rime/channel.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/channel.d ${OBJECTDIR}/_ext/744680648/channel.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/channel.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/chameleon-raw.p1: ../../../contiki/core/net/rime/chameleon-raw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/chameleon-raw.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/chameleon-raw.p1  ../../../contiki/core/net/rime/chameleon-raw.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/chameleon-raw.d ${OBJECTDIR}/_ext/744680648/chameleon-raw.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/chameleon-raw.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/rimeaddr.p1: ../../../contiki/core/net/rime/rimeaddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/rimeaddr.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/rimeaddr.p1  ../../../contiki/core/net/rime/rimeaddr.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/rimeaddr.d ${OBJECTDIR}/_ext/744680648/rimeaddr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/rimeaddr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/runicast.p1: ../../../contiki/core/net/rime/runicast.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/runicast.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/runicast.p1  ../../../contiki/core/net/rime/runicast.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/runicast.d ${OBJECTDIR}/_ext/744680648/runicast.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/runicast.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/collect-link-estimate.p1: ../../../contiki/core/net/rime/collect-link-estimate.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/collect-link-estimate.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/collect-link-estimate.p1  ../../../contiki/core/net/rime/collect-link-estimate.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/collect-link-estimate.d ${OBJECTDIR}/_ext/744680648/collect-link-estimate.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/collect-link-estimate.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/rucb.p1: ../../../contiki/core/net/rime/rucb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/rucb.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/rucb.p1  ../../../contiki/core/net/rime/rucb.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/rucb.d ${OBJECTDIR}/_ext/744680648/rucb.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/rucb.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/polite.p1: ../../../contiki/core/net/rime/polite.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/polite.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/polite.p1  ../../../contiki/core/net/rime/polite.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/polite.d ${OBJECTDIR}/_ext/744680648/polite.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/polite.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/route.p1: ../../../contiki/core/net/rime/route.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/route.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/route.p1  ../../../contiki/core/net/rime/route.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/route.d ${OBJECTDIR}/_ext/744680648/route.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/route.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/rmh.p1: ../../../contiki/core/net/rime/rmh.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/rmh.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/rmh.p1  ../../../contiki/core/net/rime/rmh.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/rmh.d ${OBJECTDIR}/_ext/744680648/rmh.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/rmh.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/rimestats.p1: ../../../contiki/core/net/rime/rimestats.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/rimestats.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/rimestats.p1  ../../../contiki/core/net/rime/rimestats.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/rimestats.d ${OBJECTDIR}/_ext/744680648/rimestats.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/rimestats.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/announcement.p1: ../../../contiki/core/net/rime/announcement.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/announcement.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/announcement.p1  ../../../contiki/core/net/rime/announcement.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/announcement.d ${OBJECTDIR}/_ext/744680648/announcement.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/announcement.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/route-discovery.p1: ../../../contiki/core/net/rime/route-discovery.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/route-discovery.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/route-discovery.p1  ../../../contiki/core/net/rime/route-discovery.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/route-discovery.d ${OBJECTDIR}/_ext/744680648/route-discovery.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/route-discovery.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/broadcast.p1: ../../../contiki/core/net/rime/broadcast.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/broadcast.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/broadcast.p1  ../../../contiki/core/net/rime/broadcast.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/broadcast.d ${OBJECTDIR}/_ext/744680648/broadcast.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/broadcast.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/collect.p1: ../../../contiki/core/net/rime/collect.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/collect.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/collect.p1  ../../../contiki/core/net/rime/collect.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/collect.d ${OBJECTDIR}/_ext/744680648/collect.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/collect.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/abc.p1: ../../../contiki/core/net/rime/abc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/abc.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/abc.p1  ../../../contiki/core/net/rime/abc.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/abc.d ${OBJECTDIR}/_ext/744680648/abc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/abc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/rudolph1.p1: ../../../contiki/core/net/rime/rudolph1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/rudolph1.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/rudolph1.p1  ../../../contiki/core/net/rime/rudolph1.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/rudolph1.d ${OBJECTDIR}/_ext/744680648/rudolph1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/rudolph1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/collect-neighbor.p1: ../../../contiki/core/net/rime/collect-neighbor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/collect-neighbor.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/collect-neighbor.p1  ../../../contiki/core/net/rime/collect-neighbor.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/collect-neighbor.d ${OBJECTDIR}/_ext/744680648/collect-neighbor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/collect-neighbor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/ipolite.p1: ../../../contiki/core/net/rime/ipolite.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/ipolite.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/ipolite.p1  ../../../contiki/core/net/rime/ipolite.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/ipolite.d ${OBJECTDIR}/_ext/744680648/ipolite.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/ipolite.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/multihop.p1: ../../../contiki/core/net/rime/multihop.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/multihop.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/multihop.p1  ../../../contiki/core/net/rime/multihop.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/multihop.d ${OBJECTDIR}/_ext/744680648/multihop.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/multihop.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/neighbor-discovery.p1: ../../../contiki/core/net/rime/neighbor-discovery.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/neighbor-discovery.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/neighbor-discovery.p1  ../../../contiki/core/net/rime/neighbor-discovery.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/neighbor-discovery.d ${OBJECTDIR}/_ext/744680648/neighbor-discovery.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/neighbor-discovery.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/rime.p1: ../../../contiki/core/net/rime/rime.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/rime.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/rime.p1  ../../../contiki/core/net/rime/rime.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/rime.d ${OBJECTDIR}/_ext/744680648/rime.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/rime.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/broadcast-announcement.p1: ../../../contiki/core/net/rime/broadcast-announcement.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/broadcast-announcement.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/broadcast-announcement.p1  ../../../contiki/core/net/rime/broadcast-announcement.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/broadcast-announcement.d ${OBJECTDIR}/_ext/744680648/broadcast-announcement.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/broadcast-announcement.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/chameleon.p1: ../../../contiki/core/net/rime/chameleon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/chameleon.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/chameleon.p1  ../../../contiki/core/net/rime/chameleon.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/chameleon.d ${OBJECTDIR}/_ext/744680648/chameleon.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/chameleon.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/mesh.p1: ../../../contiki/core/net/rime/mesh.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/mesh.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/mesh.p1  ../../../contiki/core/net/rime/mesh.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/mesh.d ${OBJECTDIR}/_ext/744680648/mesh.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/mesh.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/rudolph2.p1: ../../../contiki/core/net/rime/rudolph2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/rudolph2.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/rudolph2.p1  ../../../contiki/core/net/rime/rudolph2.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/rudolph2.d ${OBJECTDIR}/_ext/744680648/rudolph2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/rudolph2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/unicast.p1: ../../../contiki/core/net/rime/unicast.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/unicast.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/unicast.p1  ../../../contiki/core/net/rime/unicast.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/unicast.d ${OBJECTDIR}/_ext/744680648/unicast.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/unicast.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/netflood.p1: ../../../contiki/core/net/rime/netflood.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/netflood.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/netflood.p1  ../../../contiki/core/net/rime/netflood.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/netflood.d ${OBJECTDIR}/_ext/744680648/netflood.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/netflood.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/stbroadcast.p1: ../../../contiki/core/net/rime/stbroadcast.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/stbroadcast.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/stbroadcast.p1  ../../../contiki/core/net/rime/stbroadcast.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/stbroadcast.d ${OBJECTDIR}/_ext/744680648/stbroadcast.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/stbroadcast.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/trickle.p1: ../../../contiki/core/net/rime/trickle.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/trickle.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/trickle.p1  ../../../contiki/core/net/rime/trickle.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/trickle.d ${OBJECTDIR}/_ext/744680648/trickle.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/trickle.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/chameleon-bitopt.p1: ../../../contiki/core/net/rime/chameleon-bitopt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/chameleon-bitopt.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/chameleon-bitopt.p1  ../../../contiki/core/net/rime/chameleon-bitopt.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/chameleon-bitopt.d ${OBJECTDIR}/_ext/744680648/chameleon-bitopt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/chameleon-bitopt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/timesynch.p1: ../../../contiki/core/net/rime/timesynch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/timesynch.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/timesynch.p1  ../../../contiki/core/net/rime/timesynch.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/timesynch.d ${OBJECTDIR}/_ext/744680648/timesynch.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/timesynch.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/rudolph0.p1: ../../../contiki/core/net/rime/rudolph0.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/rudolph0.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/rudolph0.p1  ../../../contiki/core/net/rime/rudolph0.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/rudolph0.d ${OBJECTDIR}/_ext/744680648/rudolph0.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/rudolph0.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/stunicast.p1: ../../../contiki/core/net/rime/stunicast.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/stunicast.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/stunicast.p1  ../../../contiki/core/net/rime/stunicast.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/stunicast.d ${OBJECTDIR}/_ext/744680648/stunicast.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/stunicast.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/744680648/polite-announcement.p1: ../../../contiki/core/net/rime/polite-announcement.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/polite-announcement.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/polite-announcement.p1  ../../../contiki/core/net/rime/polite-announcement.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/polite-announcement.d ${OBJECTDIR}/_ext/744680648/polite-announcement.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/polite-announcement.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/sicslowpan.p1: ../../../contiki/core/net/sicslowpan.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/sicslowpan.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/sicslowpan.p1  ../../../contiki/core/net/sicslowpan.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/sicslowpan.d ${OBJECTDIR}/_ext/1195364426/sicslowpan.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/sicslowpan.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/compower.p1: ../../../contiki/core/sys/compower.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/compower.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/compower.p1  ../../../contiki/core/sys/compower.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/compower.d ${OBJECTDIR}/_ext/1195359002/compower.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/compower.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/profile.p1: ../../../contiki/core/sys/profile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/profile.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/profile.p1  ../../../contiki/core/sys/profile.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/profile.d ${OBJECTDIR}/_ext/1195359002/profile.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/profile.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/etimer.p1: ../../../contiki/core/sys/etimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/etimer.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/etimer.p1  ../../../contiki/core/sys/etimer.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/etimer.d ${OBJECTDIR}/_ext/1195359002/etimer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/etimer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/process.p1: ../../../contiki/core/sys/process.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/process.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/process.p1  ../../../contiki/core/sys/process.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/process.d ${OBJECTDIR}/_ext/1195359002/process.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/process.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/procinit.p1: ../../../contiki/core/sys/procinit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/procinit.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/procinit.p1  ../../../contiki/core/sys/procinit.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/procinit.d ${OBJECTDIR}/_ext/1195359002/procinit.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/procinit.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/stimer.p1: ../../../contiki/core/sys/stimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/stimer.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/stimer.p1  ../../../contiki/core/sys/stimer.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/stimer.d ${OBJECTDIR}/_ext/1195359002/stimer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/stimer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/mt.p1: ../../../contiki/core/sys/mt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/mt.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/mt.p1  ../../../contiki/core/sys/mt.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/mt.d ${OBJECTDIR}/_ext/1195359002/mt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/mt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/timer.p1: ../../../contiki/core/sys/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/timer.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/timer.p1  ../../../contiki/core/sys/timer.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/timer.d ${OBJECTDIR}/_ext/1195359002/timer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/timer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/rtimer.p1: ../../../contiki/core/sys/rtimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/rtimer.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/rtimer.p1  ../../../contiki/core/sys/rtimer.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/rtimer.d ${OBJECTDIR}/_ext/1195359002/rtimer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/rtimer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/ctimer.p1: ../../../contiki/core/sys/ctimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/ctimer.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/ctimer.p1  ../../../contiki/core/sys/ctimer.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/ctimer.d ${OBJECTDIR}/_ext/1195359002/ctimer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/ctimer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/energest.p1: ../../../contiki/core/sys/energest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/energest.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/energest.p1  ../../../contiki/core/sys/energest.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/energest.d ${OBJECTDIR}/_ext/1195359002/energest.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/energest.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/810075401/autostart.p1: ../../../contiki/cpu/microchip-mplabx/xc8/sys/autostart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/810075401 
	@${RM} ${OBJECTDIR}/_ext/810075401/autostart.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/810075401/autostart.p1  ../../../contiki/cpu/microchip-mplabx/xc8/sys/autostart.c 
	@-${MV} ${OBJECTDIR}/_ext/810075401/autostart.d ${OBJECTDIR}/_ext/810075401/autostart.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/810075401/autostart.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/interrupts.p1: interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/interrupts.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/interrupts.p1  interrupts.c 
	@-${MV} ${OBJECTDIR}/interrupts.d ${OBJECTDIR}/interrupts.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/interrupts.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/configuration-bits.p1: configuration-bits.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/configuration-bits.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/configuration-bits.p1  configuration-bits.c 
	@-${MV} ${OBJECTDIR}/configuration-bits.d ${OBJECTDIR}/configuration-bits.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/configuration-bits.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/fakeuip.p1: fakeuip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/fakeuip.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/fakeuip.p1  fakeuip.c 
	@-${MV} ${OBJECTDIR}/fakeuip.d ${OBJECTDIR}/fakeuip.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/fakeuip.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/rtimer-arch.p1: rtimer-arch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/rtimer-arch.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/rtimer-arch.p1  rtimer-arch.c 
	@-${MV} ${OBJECTDIR}/rtimer-arch.d ${OBJECTDIR}/rtimer-arch.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/rtimer-arch.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/clock.p1: clock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/clock.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/clock.p1  clock.c 
	@-${MV} ${OBJECTDIR}/clock.d ${OBJECTDIR}/clock.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/clock.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/contiki-main.p1: contiki-main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/contiki-main.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/contiki-main.p1  contiki-main.c 
	@-${MV} ${OBJECTDIR}/contiki-main.d ${OBJECTDIR}/contiki-main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/contiki-main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/empty.p1: empty.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/empty.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/empty.p1  empty.c 
	@-${MV} ${OBJECTDIR}/empty.d ${OBJECTDIR}/empty.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/empty.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G --asmlist -mdist/${CND_CONF}/${IMAGE_TYPE}/pic18f97j60-family.${IMAGE_TYPE}.map  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"      -odist/${CND_CONF}/${IMAGE_TYPE}/pic18f97j60-family.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/pic18f97j60-family.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/pic18f97j60-family.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G --asmlist -mdist/${CND_CONF}/${IMAGE_TYPE}/pic18f97j60-family.${IMAGE_TYPE}.map  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"   -odist/${CND_CONF}/${IMAGE_TYPE}/pic18f97j60-family.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
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
