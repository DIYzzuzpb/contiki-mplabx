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

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../../contiki/core/dev/nullradio.c ../../../contiki/core/lib/memb.c ../../../contiki/core/lib/crc16.c ../../../contiki/core/lib/random.c ../../../contiki/core/lib/ringbuf.c ../../../contiki/core/lib/mmem.c ../../../contiki/core/lib/list.c ../../../contiki/core/net/mac/nullrdc.c ../../../contiki/core/net/mac/framer-nullmac.c ../../../contiki/core/net/mac/nullmac.c ../../../contiki/core/net/mac/mac.c ../../../contiki/core/net/rime/rime.c ../../../contiki/core/net/rime/rimeaddr.c ../../../contiki/core/net/rime/abc.c ../../../contiki/core/net/rime/chameleon.c ../../../contiki/core/net/rime/broadcast-announcement.c ../../../contiki/core/net/rime/announcement.c ../../../contiki/core/net/rime/channel.c ../../../contiki/core/net/rime/chameleon-bitopt.c ../../../contiki/core/net/rime/broadcast.c ../../../contiki/core/net/hc.c ../../../contiki/core/net/neighbor-attr.c ../../../contiki/core/net/netstack.c ../../../contiki/core/net/packetbuf.c ../../../contiki/core/net/tcpdump.c ../../../contiki/core/net/uip-debug.c ../../../contiki/core/net/uip-ds6-route.c ../../../contiki/core/net/uip-ds6.c ../../../contiki/core/net/uip-fw-drv.c ../../../contiki/core/net/uip-fw.c ../../../contiki/core/net/uip-icmp6.c ../../../contiki/core/net/uip-nd6.c ../../../contiki/core/net/uip-neighbor.c ../../../contiki/core/net/uip-split.c ../../../contiki/core/net/uip-udp-packet.c ../../../contiki/core/net/uip6.c ../../../contiki/core/net/uip_arp.c ../../../contiki/core/net/uiplib.c ../../../contiki/core/net/queuebuf.c ../../../contiki/core/net/uip.c ../../../contiki/core/net/tcpip.c ../../../contiki/core/sys/procinit.c ../../../contiki/core/sys/stimer.c ../../../contiki/core/sys/rtimer.c ../../../contiki/core/sys/energest.c ../../../contiki/core/sys/compower.c ../../../contiki/core/sys/timer.c ../../../contiki/core/sys/ctimer.c ../../../contiki/core/sys/process.c ../../../contiki/core/sys/etimer.c ../../cpu/microchip-mplabx/mcc18/net/psock.c net/ETH97J60.c net/ethernet-v6.c net/ethernet.c net/ethernet-drv.c net/Helpers.c interrupts.c configuration-bits.c rtimer-arch.c clock.c contiki-main.c empty.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1195374034/nullradio.o ${OBJECTDIR}/_ext/1195366242/memb.o ${OBJECTDIR}/_ext/1195366242/crc16.o ${OBJECTDIR}/_ext/1195366242/random.o ${OBJECTDIR}/_ext/1195366242/ringbuf.o ${OBJECTDIR}/_ext/1195366242/mmem.o ${OBJECTDIR}/_ext/1195366242/list.o ${OBJECTDIR}/_ext/114530442/nullrdc.o ${OBJECTDIR}/_ext/114530442/framer-nullmac.o ${OBJECTDIR}/_ext/114530442/nullmac.o ${OBJECTDIR}/_ext/114530442/mac.o ${OBJECTDIR}/_ext/744680648/rime.o ${OBJECTDIR}/_ext/744680648/rimeaddr.o ${OBJECTDIR}/_ext/744680648/abc.o ${OBJECTDIR}/_ext/744680648/chameleon.o ${OBJECTDIR}/_ext/744680648/broadcast-announcement.o ${OBJECTDIR}/_ext/744680648/announcement.o ${OBJECTDIR}/_ext/744680648/channel.o ${OBJECTDIR}/_ext/744680648/chameleon-bitopt.o ${OBJECTDIR}/_ext/744680648/broadcast.o ${OBJECTDIR}/_ext/1195364426/hc.o ${OBJECTDIR}/_ext/1195364426/neighbor-attr.o ${OBJECTDIR}/_ext/1195364426/netstack.o ${OBJECTDIR}/_ext/1195364426/packetbuf.o ${OBJECTDIR}/_ext/1195364426/tcpdump.o ${OBJECTDIR}/_ext/1195364426/uip-debug.o ${OBJECTDIR}/_ext/1195364426/uip-ds6-route.o ${OBJECTDIR}/_ext/1195364426/uip-ds6.o ${OBJECTDIR}/_ext/1195364426/uip-fw-drv.o ${OBJECTDIR}/_ext/1195364426/uip-fw.o ${OBJECTDIR}/_ext/1195364426/uip-icmp6.o ${OBJECTDIR}/_ext/1195364426/uip-nd6.o ${OBJECTDIR}/_ext/1195364426/uip-neighbor.o ${OBJECTDIR}/_ext/1195364426/uip-split.o ${OBJECTDIR}/_ext/1195364426/uip-udp-packet.o ${OBJECTDIR}/_ext/1195364426/uip6.o ${OBJECTDIR}/_ext/1195364426/uip_arp.o ${OBJECTDIR}/_ext/1195364426/uiplib.o ${OBJECTDIR}/_ext/1195364426/queuebuf.o ${OBJECTDIR}/_ext/1195364426/uip.o ${OBJECTDIR}/_ext/1195364426/tcpip.o ${OBJECTDIR}/_ext/1195359002/procinit.o ${OBJECTDIR}/_ext/1195359002/stimer.o ${OBJECTDIR}/_ext/1195359002/rtimer.o ${OBJECTDIR}/_ext/1195359002/energest.o ${OBJECTDIR}/_ext/1195359002/compower.o ${OBJECTDIR}/_ext/1195359002/timer.o ${OBJECTDIR}/_ext/1195359002/ctimer.o ${OBJECTDIR}/_ext/1195359002/process.o ${OBJECTDIR}/_ext/1195359002/etimer.o ${OBJECTDIR}/_ext/2012962533/psock.o ${OBJECTDIR}/net/ETH97J60.o ${OBJECTDIR}/net/ethernet-v6.o ${OBJECTDIR}/net/ethernet.o ${OBJECTDIR}/net/ethernet-drv.o ${OBJECTDIR}/net/Helpers.o ${OBJECTDIR}/interrupts.o ${OBJECTDIR}/configuration-bits.o ${OBJECTDIR}/rtimer-arch.o ${OBJECTDIR}/clock.o ${OBJECTDIR}/contiki-main.o ${OBJECTDIR}/empty.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1195374034/nullradio.o.d ${OBJECTDIR}/_ext/1195366242/memb.o.d ${OBJECTDIR}/_ext/1195366242/crc16.o.d ${OBJECTDIR}/_ext/1195366242/random.o.d ${OBJECTDIR}/_ext/1195366242/ringbuf.o.d ${OBJECTDIR}/_ext/1195366242/mmem.o.d ${OBJECTDIR}/_ext/1195366242/list.o.d ${OBJECTDIR}/_ext/114530442/nullrdc.o.d ${OBJECTDIR}/_ext/114530442/framer-nullmac.o.d ${OBJECTDIR}/_ext/114530442/nullmac.o.d ${OBJECTDIR}/_ext/114530442/mac.o.d ${OBJECTDIR}/_ext/744680648/rime.o.d ${OBJECTDIR}/_ext/744680648/rimeaddr.o.d ${OBJECTDIR}/_ext/744680648/abc.o.d ${OBJECTDIR}/_ext/744680648/chameleon.o.d ${OBJECTDIR}/_ext/744680648/broadcast-announcement.o.d ${OBJECTDIR}/_ext/744680648/announcement.o.d ${OBJECTDIR}/_ext/744680648/channel.o.d ${OBJECTDIR}/_ext/744680648/chameleon-bitopt.o.d ${OBJECTDIR}/_ext/744680648/broadcast.o.d ${OBJECTDIR}/_ext/1195364426/hc.o.d ${OBJECTDIR}/_ext/1195364426/neighbor-attr.o.d ${OBJECTDIR}/_ext/1195364426/netstack.o.d ${OBJECTDIR}/_ext/1195364426/packetbuf.o.d ${OBJECTDIR}/_ext/1195364426/tcpdump.o.d ${OBJECTDIR}/_ext/1195364426/uip-debug.o.d ${OBJECTDIR}/_ext/1195364426/uip-ds6-route.o.d ${OBJECTDIR}/_ext/1195364426/uip-ds6.o.d ${OBJECTDIR}/_ext/1195364426/uip-fw-drv.o.d ${OBJECTDIR}/_ext/1195364426/uip-fw.o.d ${OBJECTDIR}/_ext/1195364426/uip-icmp6.o.d ${OBJECTDIR}/_ext/1195364426/uip-nd6.o.d ${OBJECTDIR}/_ext/1195364426/uip-neighbor.o.d ${OBJECTDIR}/_ext/1195364426/uip-split.o.d ${OBJECTDIR}/_ext/1195364426/uip-udp-packet.o.d ${OBJECTDIR}/_ext/1195364426/uip6.o.d ${OBJECTDIR}/_ext/1195364426/uip_arp.o.d ${OBJECTDIR}/_ext/1195364426/uiplib.o.d ${OBJECTDIR}/_ext/1195364426/queuebuf.o.d ${OBJECTDIR}/_ext/1195364426/uip.o.d ${OBJECTDIR}/_ext/1195364426/tcpip.o.d ${OBJECTDIR}/_ext/1195359002/procinit.o.d ${OBJECTDIR}/_ext/1195359002/stimer.o.d ${OBJECTDIR}/_ext/1195359002/rtimer.o.d ${OBJECTDIR}/_ext/1195359002/energest.o.d ${OBJECTDIR}/_ext/1195359002/compower.o.d ${OBJECTDIR}/_ext/1195359002/timer.o.d ${OBJECTDIR}/_ext/1195359002/ctimer.o.d ${OBJECTDIR}/_ext/1195359002/process.o.d ${OBJECTDIR}/_ext/1195359002/etimer.o.d ${OBJECTDIR}/_ext/2012962533/psock.o.d ${OBJECTDIR}/net/ETH97J60.o.d ${OBJECTDIR}/net/ethernet-v6.o.d ${OBJECTDIR}/net/ethernet.o.d ${OBJECTDIR}/net/ethernet-drv.o.d ${OBJECTDIR}/net/Helpers.o.d ${OBJECTDIR}/interrupts.o.d ${OBJECTDIR}/configuration-bits.o.d ${OBJECTDIR}/rtimer-arch.o.d ${OBJECTDIR}/clock.o.d ${OBJECTDIR}/contiki-main.o.d ${OBJECTDIR}/empty.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1195374034/nullradio.o ${OBJECTDIR}/_ext/1195366242/memb.o ${OBJECTDIR}/_ext/1195366242/crc16.o ${OBJECTDIR}/_ext/1195366242/random.o ${OBJECTDIR}/_ext/1195366242/ringbuf.o ${OBJECTDIR}/_ext/1195366242/mmem.o ${OBJECTDIR}/_ext/1195366242/list.o ${OBJECTDIR}/_ext/114530442/nullrdc.o ${OBJECTDIR}/_ext/114530442/framer-nullmac.o ${OBJECTDIR}/_ext/114530442/nullmac.o ${OBJECTDIR}/_ext/114530442/mac.o ${OBJECTDIR}/_ext/744680648/rime.o ${OBJECTDIR}/_ext/744680648/rimeaddr.o ${OBJECTDIR}/_ext/744680648/abc.o ${OBJECTDIR}/_ext/744680648/chameleon.o ${OBJECTDIR}/_ext/744680648/broadcast-announcement.o ${OBJECTDIR}/_ext/744680648/announcement.o ${OBJECTDIR}/_ext/744680648/channel.o ${OBJECTDIR}/_ext/744680648/chameleon-bitopt.o ${OBJECTDIR}/_ext/744680648/broadcast.o ${OBJECTDIR}/_ext/1195364426/hc.o ${OBJECTDIR}/_ext/1195364426/neighbor-attr.o ${OBJECTDIR}/_ext/1195364426/netstack.o ${OBJECTDIR}/_ext/1195364426/packetbuf.o ${OBJECTDIR}/_ext/1195364426/tcpdump.o ${OBJECTDIR}/_ext/1195364426/uip-debug.o ${OBJECTDIR}/_ext/1195364426/uip-ds6-route.o ${OBJECTDIR}/_ext/1195364426/uip-ds6.o ${OBJECTDIR}/_ext/1195364426/uip-fw-drv.o ${OBJECTDIR}/_ext/1195364426/uip-fw.o ${OBJECTDIR}/_ext/1195364426/uip-icmp6.o ${OBJECTDIR}/_ext/1195364426/uip-nd6.o ${OBJECTDIR}/_ext/1195364426/uip-neighbor.o ${OBJECTDIR}/_ext/1195364426/uip-split.o ${OBJECTDIR}/_ext/1195364426/uip-udp-packet.o ${OBJECTDIR}/_ext/1195364426/uip6.o ${OBJECTDIR}/_ext/1195364426/uip_arp.o ${OBJECTDIR}/_ext/1195364426/uiplib.o ${OBJECTDIR}/_ext/1195364426/queuebuf.o ${OBJECTDIR}/_ext/1195364426/uip.o ${OBJECTDIR}/_ext/1195364426/tcpip.o ${OBJECTDIR}/_ext/1195359002/procinit.o ${OBJECTDIR}/_ext/1195359002/stimer.o ${OBJECTDIR}/_ext/1195359002/rtimer.o ${OBJECTDIR}/_ext/1195359002/energest.o ${OBJECTDIR}/_ext/1195359002/compower.o ${OBJECTDIR}/_ext/1195359002/timer.o ${OBJECTDIR}/_ext/1195359002/ctimer.o ${OBJECTDIR}/_ext/1195359002/process.o ${OBJECTDIR}/_ext/1195359002/etimer.o ${OBJECTDIR}/_ext/2012962533/psock.o ${OBJECTDIR}/net/ETH97J60.o ${OBJECTDIR}/net/ethernet-v6.o ${OBJECTDIR}/net/ethernet.o ${OBJECTDIR}/net/ethernet-drv.o ${OBJECTDIR}/net/Helpers.o ${OBJECTDIR}/interrupts.o ${OBJECTDIR}/configuration-bits.o ${OBJECTDIR}/rtimer-arch.o ${OBJECTDIR}/clock.o ${OBJECTDIR}/contiki-main.o ${OBJECTDIR}/empty.o

# Source Files
SOURCEFILES=../../../contiki/core/dev/nullradio.c ../../../contiki/core/lib/memb.c ../../../contiki/core/lib/crc16.c ../../../contiki/core/lib/random.c ../../../contiki/core/lib/ringbuf.c ../../../contiki/core/lib/mmem.c ../../../contiki/core/lib/list.c ../../../contiki/core/net/mac/nullrdc.c ../../../contiki/core/net/mac/framer-nullmac.c ../../../contiki/core/net/mac/nullmac.c ../../../contiki/core/net/mac/mac.c ../../../contiki/core/net/rime/rime.c ../../../contiki/core/net/rime/rimeaddr.c ../../../contiki/core/net/rime/abc.c ../../../contiki/core/net/rime/chameleon.c ../../../contiki/core/net/rime/broadcast-announcement.c ../../../contiki/core/net/rime/announcement.c ../../../contiki/core/net/rime/channel.c ../../../contiki/core/net/rime/chameleon-bitopt.c ../../../contiki/core/net/rime/broadcast.c ../../../contiki/core/net/hc.c ../../../contiki/core/net/neighbor-attr.c ../../../contiki/core/net/netstack.c ../../../contiki/core/net/packetbuf.c ../../../contiki/core/net/tcpdump.c ../../../contiki/core/net/uip-debug.c ../../../contiki/core/net/uip-ds6-route.c ../../../contiki/core/net/uip-ds6.c ../../../contiki/core/net/uip-fw-drv.c ../../../contiki/core/net/uip-fw.c ../../../contiki/core/net/uip-icmp6.c ../../../contiki/core/net/uip-nd6.c ../../../contiki/core/net/uip-neighbor.c ../../../contiki/core/net/uip-split.c ../../../contiki/core/net/uip-udp-packet.c ../../../contiki/core/net/uip6.c ../../../contiki/core/net/uip_arp.c ../../../contiki/core/net/uiplib.c ../../../contiki/core/net/queuebuf.c ../../../contiki/core/net/uip.c ../../../contiki/core/net/tcpip.c ../../../contiki/core/sys/procinit.c ../../../contiki/core/sys/stimer.c ../../../contiki/core/sys/rtimer.c ../../../contiki/core/sys/energest.c ../../../contiki/core/sys/compower.c ../../../contiki/core/sys/timer.c ../../../contiki/core/sys/ctimer.c ../../../contiki/core/sys/process.c ../../../contiki/core/sys/etimer.c ../../cpu/microchip-mplabx/mcc18/net/psock.c net/ETH97J60.c net/ethernet-v6.c net/ethernet.c net/ethernet-drv.c net/Helpers.c interrupts.c configuration-bits.c rtimer-arch.c clock.c contiki-main.c empty.c


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

MP_PROCESSOR_OPTION=18F67J60
MP_PROCESSOR_OPTION_LD=18f67j60
MP_LINKER_DEBUG_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1195374034/nullradio.o: ../../../contiki/core/dev/nullradio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195374034 
	@${RM} ${OBJECTDIR}/_ext/1195374034/nullradio.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195374034/nullradio.o   ../../../contiki/core/dev/nullradio.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195374034/nullradio.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195374034/nullradio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195366242/memb.o: ../../../contiki/core/lib/memb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/memb.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195366242/memb.o   ../../../contiki/core/lib/memb.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195366242/memb.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195366242/memb.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195366242/crc16.o: ../../../contiki/core/lib/crc16.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/crc16.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195366242/crc16.o   ../../../contiki/core/lib/crc16.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195366242/crc16.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195366242/crc16.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195366242/random.o: ../../../contiki/core/lib/random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/random.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195366242/random.o   ../../../contiki/core/lib/random.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195366242/random.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195366242/random.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195366242/ringbuf.o: ../../../contiki/core/lib/ringbuf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/ringbuf.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195366242/ringbuf.o   ../../../contiki/core/lib/ringbuf.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195366242/ringbuf.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195366242/ringbuf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195366242/mmem.o: ../../../contiki/core/lib/mmem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/mmem.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195366242/mmem.o   ../../../contiki/core/lib/mmem.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195366242/mmem.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195366242/mmem.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195366242/list.o: ../../../contiki/core/lib/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/list.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195366242/list.o   ../../../contiki/core/lib/list.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195366242/list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195366242/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/114530442/nullrdc.o: ../../../contiki/core/net/mac/nullrdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114530442 
	@${RM} ${OBJECTDIR}/_ext/114530442/nullrdc.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/114530442/nullrdc.o   ../../../contiki/core/net/mac/nullrdc.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/114530442/nullrdc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/114530442/nullrdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/114530442/framer-nullmac.o: ../../../contiki/core/net/mac/framer-nullmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114530442 
	@${RM} ${OBJECTDIR}/_ext/114530442/framer-nullmac.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/114530442/framer-nullmac.o   ../../../contiki/core/net/mac/framer-nullmac.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/114530442/framer-nullmac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/114530442/framer-nullmac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/114530442/nullmac.o: ../../../contiki/core/net/mac/nullmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114530442 
	@${RM} ${OBJECTDIR}/_ext/114530442/nullmac.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/114530442/nullmac.o   ../../../contiki/core/net/mac/nullmac.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/114530442/nullmac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/114530442/nullmac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/114530442/mac.o: ../../../contiki/core/net/mac/mac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114530442 
	@${RM} ${OBJECTDIR}/_ext/114530442/mac.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/114530442/mac.o   ../../../contiki/core/net/mac/mac.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/114530442/mac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/114530442/mac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/744680648/rime.o: ../../../contiki/core/net/rime/rime.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/rime.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/744680648/rime.o   ../../../contiki/core/net/rime/rime.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/744680648/rime.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/744680648/rime.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/744680648/rimeaddr.o: ../../../contiki/core/net/rime/rimeaddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/rimeaddr.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/744680648/rimeaddr.o   ../../../contiki/core/net/rime/rimeaddr.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/744680648/rimeaddr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/744680648/rimeaddr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/744680648/abc.o: ../../../contiki/core/net/rime/abc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/abc.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/744680648/abc.o   ../../../contiki/core/net/rime/abc.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/744680648/abc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/744680648/abc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/744680648/chameleon.o: ../../../contiki/core/net/rime/chameleon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/chameleon.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/744680648/chameleon.o   ../../../contiki/core/net/rime/chameleon.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/744680648/chameleon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/744680648/chameleon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/744680648/broadcast-announcement.o: ../../../contiki/core/net/rime/broadcast-announcement.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/broadcast-announcement.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/744680648/broadcast-announcement.o   ../../../contiki/core/net/rime/broadcast-announcement.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/744680648/broadcast-announcement.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/744680648/broadcast-announcement.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/744680648/announcement.o: ../../../contiki/core/net/rime/announcement.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/announcement.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/744680648/announcement.o   ../../../contiki/core/net/rime/announcement.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/744680648/announcement.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/744680648/announcement.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/744680648/channel.o: ../../../contiki/core/net/rime/channel.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/channel.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/744680648/channel.o   ../../../contiki/core/net/rime/channel.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/744680648/channel.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/744680648/channel.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/744680648/chameleon-bitopt.o: ../../../contiki/core/net/rime/chameleon-bitopt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/chameleon-bitopt.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/744680648/chameleon-bitopt.o   ../../../contiki/core/net/rime/chameleon-bitopt.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/744680648/chameleon-bitopt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/744680648/chameleon-bitopt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/744680648/broadcast.o: ../../../contiki/core/net/rime/broadcast.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/broadcast.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/744680648/broadcast.o   ../../../contiki/core/net/rime/broadcast.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/744680648/broadcast.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/744680648/broadcast.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/hc.o: ../../../contiki/core/net/hc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/hc.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/hc.o   ../../../contiki/core/net/hc.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/hc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/hc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/neighbor-attr.o: ../../../contiki/core/net/neighbor-attr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/neighbor-attr.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/neighbor-attr.o   ../../../contiki/core/net/neighbor-attr.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/neighbor-attr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/neighbor-attr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/netstack.o: ../../../contiki/core/net/netstack.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/netstack.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/netstack.o   ../../../contiki/core/net/netstack.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/netstack.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/netstack.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/packetbuf.o: ../../../contiki/core/net/packetbuf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/packetbuf.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/packetbuf.o   ../../../contiki/core/net/packetbuf.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/packetbuf.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/packetbuf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/tcpdump.o: ../../../contiki/core/net/tcpdump.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/tcpdump.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/tcpdump.o   ../../../contiki/core/net/tcpdump.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/tcpdump.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/tcpdump.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/uip-debug.o: ../../../contiki/core/net/uip-debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-debug.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/uip-debug.o   ../../../contiki/core/net/uip-debug.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/uip-debug.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/uip-debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/uip-ds6-route.o: ../../../contiki/core/net/uip-ds6-route.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-ds6-route.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/uip-ds6-route.o   ../../../contiki/core/net/uip-ds6-route.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/uip-ds6-route.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/uip-ds6-route.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/uip-ds6.o: ../../../contiki/core/net/uip-ds6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-ds6.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/uip-ds6.o   ../../../contiki/core/net/uip-ds6.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/uip-ds6.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/uip-ds6.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/uip-fw-drv.o: ../../../contiki/core/net/uip-fw-drv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-fw-drv.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/uip-fw-drv.o   ../../../contiki/core/net/uip-fw-drv.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/uip-fw-drv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/uip-fw-drv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/uip-fw.o: ../../../contiki/core/net/uip-fw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-fw.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/uip-fw.o   ../../../contiki/core/net/uip-fw.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/uip-fw.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/uip-fw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/uip-icmp6.o: ../../../contiki/core/net/uip-icmp6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-icmp6.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/uip-icmp6.o   ../../../contiki/core/net/uip-icmp6.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/uip-icmp6.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/uip-icmp6.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/uip-nd6.o: ../../../contiki/core/net/uip-nd6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-nd6.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/uip-nd6.o   ../../../contiki/core/net/uip-nd6.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/uip-nd6.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/uip-nd6.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/uip-neighbor.o: ../../../contiki/core/net/uip-neighbor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-neighbor.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/uip-neighbor.o   ../../../contiki/core/net/uip-neighbor.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/uip-neighbor.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/uip-neighbor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/uip-split.o: ../../../contiki/core/net/uip-split.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-split.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/uip-split.o   ../../../contiki/core/net/uip-split.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/uip-split.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/uip-split.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/uip-udp-packet.o: ../../../contiki/core/net/uip-udp-packet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-udp-packet.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/uip-udp-packet.o   ../../../contiki/core/net/uip-udp-packet.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/uip-udp-packet.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/uip-udp-packet.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/uip6.o: ../../../contiki/core/net/uip6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip6.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/uip6.o   ../../../contiki/core/net/uip6.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/uip6.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/uip6.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/uip_arp.o: ../../../contiki/core/net/uip_arp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip_arp.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/uip_arp.o   ../../../contiki/core/net/uip_arp.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/uip_arp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/uip_arp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/uiplib.o: ../../../contiki/core/net/uiplib.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uiplib.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/uiplib.o   ../../../contiki/core/net/uiplib.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/uiplib.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/uiplib.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/queuebuf.o: ../../../contiki/core/net/queuebuf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/queuebuf.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/queuebuf.o   ../../../contiki/core/net/queuebuf.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/queuebuf.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/queuebuf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/uip.o: ../../../contiki/core/net/uip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/uip.o   ../../../contiki/core/net/uip.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/uip.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/uip.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/tcpip.o: ../../../contiki/core/net/tcpip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/tcpip.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/tcpip.o   ../../../contiki/core/net/tcpip.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/tcpip.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/tcpip.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195359002/procinit.o: ../../../contiki/core/sys/procinit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/procinit.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195359002/procinit.o   ../../../contiki/core/sys/procinit.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195359002/procinit.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195359002/procinit.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195359002/stimer.o: ../../../contiki/core/sys/stimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/stimer.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195359002/stimer.o   ../../../contiki/core/sys/stimer.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195359002/stimer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195359002/stimer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195359002/rtimer.o: ../../../contiki/core/sys/rtimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/rtimer.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195359002/rtimer.o   ../../../contiki/core/sys/rtimer.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195359002/rtimer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195359002/rtimer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195359002/energest.o: ../../../contiki/core/sys/energest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/energest.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195359002/energest.o   ../../../contiki/core/sys/energest.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195359002/energest.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195359002/energest.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195359002/compower.o: ../../../contiki/core/sys/compower.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/compower.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195359002/compower.o   ../../../contiki/core/sys/compower.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195359002/compower.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195359002/compower.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195359002/timer.o: ../../../contiki/core/sys/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/timer.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195359002/timer.o   ../../../contiki/core/sys/timer.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195359002/timer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195359002/timer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195359002/ctimer.o: ../../../contiki/core/sys/ctimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/ctimer.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195359002/ctimer.o   ../../../contiki/core/sys/ctimer.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195359002/ctimer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195359002/ctimer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195359002/process.o: ../../../contiki/core/sys/process.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/process.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195359002/process.o   ../../../contiki/core/sys/process.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195359002/process.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195359002/process.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195359002/etimer.o: ../../../contiki/core/sys/etimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/etimer.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195359002/etimer.o   ../../../contiki/core/sys/etimer.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195359002/etimer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195359002/etimer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/2012962533/psock.o: ../../cpu/microchip-mplabx/mcc18/net/psock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2012962533 
	@${RM} ${OBJECTDIR}/_ext/2012962533/psock.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/2012962533/psock.o   ../../cpu/microchip-mplabx/mcc18/net/psock.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/2012962533/psock.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2012962533/psock.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/net/ETH97J60.o: net/ETH97J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/net 
	@${RM} ${OBJECTDIR}/net/ETH97J60.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/net/ETH97J60.o   net/ETH97J60.c 
	@${DEP_GEN} -d ${OBJECTDIR}/net/ETH97J60.o 
	@${FIXDEPS} "${OBJECTDIR}/net/ETH97J60.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/net/ethernet-v6.o: net/ethernet-v6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/net 
	@${RM} ${OBJECTDIR}/net/ethernet-v6.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/net/ethernet-v6.o   net/ethernet-v6.c 
	@${DEP_GEN} -d ${OBJECTDIR}/net/ethernet-v6.o 
	@${FIXDEPS} "${OBJECTDIR}/net/ethernet-v6.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/net/ethernet.o: net/ethernet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/net 
	@${RM} ${OBJECTDIR}/net/ethernet.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/net/ethernet.o   net/ethernet.c 
	@${DEP_GEN} -d ${OBJECTDIR}/net/ethernet.o 
	@${FIXDEPS} "${OBJECTDIR}/net/ethernet.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/net/ethernet-drv.o: net/ethernet-drv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/net 
	@${RM} ${OBJECTDIR}/net/ethernet-drv.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/net/ethernet-drv.o   net/ethernet-drv.c 
	@${DEP_GEN} -d ${OBJECTDIR}/net/ethernet-drv.o 
	@${FIXDEPS} "${OBJECTDIR}/net/ethernet-drv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/net/Helpers.o: net/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/net 
	@${RM} ${OBJECTDIR}/net/Helpers.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/net/Helpers.o   net/Helpers.c 
	@${DEP_GEN} -d ${OBJECTDIR}/net/Helpers.o 
	@${FIXDEPS} "${OBJECTDIR}/net/Helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/interrupts.o: interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/interrupts.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/interrupts.o   interrupts.c 
	@${DEP_GEN} -d ${OBJECTDIR}/interrupts.o 
	@${FIXDEPS} "${OBJECTDIR}/interrupts.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/configuration-bits.o: configuration-bits.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/configuration-bits.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/configuration-bits.o   configuration-bits.c 
	@${DEP_GEN} -d ${OBJECTDIR}/configuration-bits.o 
	@${FIXDEPS} "${OBJECTDIR}/configuration-bits.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/rtimer-arch.o: rtimer-arch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/rtimer-arch.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/rtimer-arch.o   rtimer-arch.c 
	@${DEP_GEN} -d ${OBJECTDIR}/rtimer-arch.o 
	@${FIXDEPS} "${OBJECTDIR}/rtimer-arch.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/clock.o: clock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/clock.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/clock.o   clock.c 
	@${DEP_GEN} -d ${OBJECTDIR}/clock.o 
	@${FIXDEPS} "${OBJECTDIR}/clock.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/contiki-main.o: contiki-main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/contiki-main.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/contiki-main.o   contiki-main.c 
	@${DEP_GEN} -d ${OBJECTDIR}/contiki-main.o 
	@${FIXDEPS} "${OBJECTDIR}/contiki-main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/empty.o: empty.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/empty.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/empty.o   empty.c 
	@${DEP_GEN} -d ${OBJECTDIR}/empty.o 
	@${FIXDEPS} "${OBJECTDIR}/empty.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
else
${OBJECTDIR}/_ext/1195374034/nullradio.o: ../../../contiki/core/dev/nullradio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195374034 
	@${RM} ${OBJECTDIR}/_ext/1195374034/nullradio.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195374034/nullradio.o   ../../../contiki/core/dev/nullradio.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195374034/nullradio.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195374034/nullradio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195366242/memb.o: ../../../contiki/core/lib/memb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/memb.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195366242/memb.o   ../../../contiki/core/lib/memb.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195366242/memb.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195366242/memb.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195366242/crc16.o: ../../../contiki/core/lib/crc16.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/crc16.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195366242/crc16.o   ../../../contiki/core/lib/crc16.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195366242/crc16.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195366242/crc16.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195366242/random.o: ../../../contiki/core/lib/random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/random.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195366242/random.o   ../../../contiki/core/lib/random.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195366242/random.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195366242/random.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195366242/ringbuf.o: ../../../contiki/core/lib/ringbuf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/ringbuf.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195366242/ringbuf.o   ../../../contiki/core/lib/ringbuf.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195366242/ringbuf.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195366242/ringbuf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195366242/mmem.o: ../../../contiki/core/lib/mmem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/mmem.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195366242/mmem.o   ../../../contiki/core/lib/mmem.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195366242/mmem.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195366242/mmem.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195366242/list.o: ../../../contiki/core/lib/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/list.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195366242/list.o   ../../../contiki/core/lib/list.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195366242/list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195366242/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/114530442/nullrdc.o: ../../../contiki/core/net/mac/nullrdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114530442 
	@${RM} ${OBJECTDIR}/_ext/114530442/nullrdc.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/114530442/nullrdc.o   ../../../contiki/core/net/mac/nullrdc.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/114530442/nullrdc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/114530442/nullrdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/114530442/framer-nullmac.o: ../../../contiki/core/net/mac/framer-nullmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114530442 
	@${RM} ${OBJECTDIR}/_ext/114530442/framer-nullmac.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/114530442/framer-nullmac.o   ../../../contiki/core/net/mac/framer-nullmac.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/114530442/framer-nullmac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/114530442/framer-nullmac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/114530442/nullmac.o: ../../../contiki/core/net/mac/nullmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114530442 
	@${RM} ${OBJECTDIR}/_ext/114530442/nullmac.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/114530442/nullmac.o   ../../../contiki/core/net/mac/nullmac.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/114530442/nullmac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/114530442/nullmac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/114530442/mac.o: ../../../contiki/core/net/mac/mac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114530442 
	@${RM} ${OBJECTDIR}/_ext/114530442/mac.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/114530442/mac.o   ../../../contiki/core/net/mac/mac.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/114530442/mac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/114530442/mac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/744680648/rime.o: ../../../contiki/core/net/rime/rime.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/rime.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/744680648/rime.o   ../../../contiki/core/net/rime/rime.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/744680648/rime.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/744680648/rime.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/744680648/rimeaddr.o: ../../../contiki/core/net/rime/rimeaddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/rimeaddr.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/744680648/rimeaddr.o   ../../../contiki/core/net/rime/rimeaddr.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/744680648/rimeaddr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/744680648/rimeaddr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/744680648/abc.o: ../../../contiki/core/net/rime/abc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/abc.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/744680648/abc.o   ../../../contiki/core/net/rime/abc.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/744680648/abc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/744680648/abc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/744680648/chameleon.o: ../../../contiki/core/net/rime/chameleon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/chameleon.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/744680648/chameleon.o   ../../../contiki/core/net/rime/chameleon.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/744680648/chameleon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/744680648/chameleon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/744680648/broadcast-announcement.o: ../../../contiki/core/net/rime/broadcast-announcement.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/broadcast-announcement.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/744680648/broadcast-announcement.o   ../../../contiki/core/net/rime/broadcast-announcement.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/744680648/broadcast-announcement.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/744680648/broadcast-announcement.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/744680648/announcement.o: ../../../contiki/core/net/rime/announcement.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/announcement.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/744680648/announcement.o   ../../../contiki/core/net/rime/announcement.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/744680648/announcement.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/744680648/announcement.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/744680648/channel.o: ../../../contiki/core/net/rime/channel.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/channel.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/744680648/channel.o   ../../../contiki/core/net/rime/channel.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/744680648/channel.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/744680648/channel.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/744680648/chameleon-bitopt.o: ../../../contiki/core/net/rime/chameleon-bitopt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/chameleon-bitopt.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/744680648/chameleon-bitopt.o   ../../../contiki/core/net/rime/chameleon-bitopt.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/744680648/chameleon-bitopt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/744680648/chameleon-bitopt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/744680648/broadcast.o: ../../../contiki/core/net/rime/broadcast.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/broadcast.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/744680648/broadcast.o   ../../../contiki/core/net/rime/broadcast.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/744680648/broadcast.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/744680648/broadcast.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/hc.o: ../../../contiki/core/net/hc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/hc.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/hc.o   ../../../contiki/core/net/hc.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/hc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/hc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/neighbor-attr.o: ../../../contiki/core/net/neighbor-attr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/neighbor-attr.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/neighbor-attr.o   ../../../contiki/core/net/neighbor-attr.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/neighbor-attr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/neighbor-attr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/netstack.o: ../../../contiki/core/net/netstack.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/netstack.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/netstack.o   ../../../contiki/core/net/netstack.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/netstack.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/netstack.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/packetbuf.o: ../../../contiki/core/net/packetbuf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/packetbuf.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/packetbuf.o   ../../../contiki/core/net/packetbuf.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/packetbuf.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/packetbuf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/tcpdump.o: ../../../contiki/core/net/tcpdump.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/tcpdump.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/tcpdump.o   ../../../contiki/core/net/tcpdump.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/tcpdump.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/tcpdump.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/uip-debug.o: ../../../contiki/core/net/uip-debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-debug.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/uip-debug.o   ../../../contiki/core/net/uip-debug.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/uip-debug.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/uip-debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/uip-ds6-route.o: ../../../contiki/core/net/uip-ds6-route.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-ds6-route.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/uip-ds6-route.o   ../../../contiki/core/net/uip-ds6-route.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/uip-ds6-route.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/uip-ds6-route.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/uip-ds6.o: ../../../contiki/core/net/uip-ds6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-ds6.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/uip-ds6.o   ../../../contiki/core/net/uip-ds6.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/uip-ds6.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/uip-ds6.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/uip-fw-drv.o: ../../../contiki/core/net/uip-fw-drv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-fw-drv.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/uip-fw-drv.o   ../../../contiki/core/net/uip-fw-drv.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/uip-fw-drv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/uip-fw-drv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/uip-fw.o: ../../../contiki/core/net/uip-fw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-fw.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/uip-fw.o   ../../../contiki/core/net/uip-fw.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/uip-fw.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/uip-fw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/uip-icmp6.o: ../../../contiki/core/net/uip-icmp6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-icmp6.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/uip-icmp6.o   ../../../contiki/core/net/uip-icmp6.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/uip-icmp6.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/uip-icmp6.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/uip-nd6.o: ../../../contiki/core/net/uip-nd6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-nd6.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/uip-nd6.o   ../../../contiki/core/net/uip-nd6.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/uip-nd6.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/uip-nd6.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/uip-neighbor.o: ../../../contiki/core/net/uip-neighbor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-neighbor.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/uip-neighbor.o   ../../../contiki/core/net/uip-neighbor.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/uip-neighbor.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/uip-neighbor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/uip-split.o: ../../../contiki/core/net/uip-split.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-split.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/uip-split.o   ../../../contiki/core/net/uip-split.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/uip-split.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/uip-split.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/uip-udp-packet.o: ../../../contiki/core/net/uip-udp-packet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-udp-packet.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/uip-udp-packet.o   ../../../contiki/core/net/uip-udp-packet.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/uip-udp-packet.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/uip-udp-packet.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/uip6.o: ../../../contiki/core/net/uip6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip6.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/uip6.o   ../../../contiki/core/net/uip6.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/uip6.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/uip6.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/uip_arp.o: ../../../contiki/core/net/uip_arp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip_arp.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/uip_arp.o   ../../../contiki/core/net/uip_arp.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/uip_arp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/uip_arp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/uiplib.o: ../../../contiki/core/net/uiplib.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uiplib.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/uiplib.o   ../../../contiki/core/net/uiplib.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/uiplib.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/uiplib.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/queuebuf.o: ../../../contiki/core/net/queuebuf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/queuebuf.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/queuebuf.o   ../../../contiki/core/net/queuebuf.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/queuebuf.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/queuebuf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/uip.o: ../../../contiki/core/net/uip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/uip.o   ../../../contiki/core/net/uip.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/uip.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/uip.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195364426/tcpip.o: ../../../contiki/core/net/tcpip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/tcpip.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195364426/tcpip.o   ../../../contiki/core/net/tcpip.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195364426/tcpip.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195364426/tcpip.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195359002/procinit.o: ../../../contiki/core/sys/procinit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/procinit.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195359002/procinit.o   ../../../contiki/core/sys/procinit.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195359002/procinit.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195359002/procinit.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195359002/stimer.o: ../../../contiki/core/sys/stimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/stimer.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195359002/stimer.o   ../../../contiki/core/sys/stimer.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195359002/stimer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195359002/stimer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195359002/rtimer.o: ../../../contiki/core/sys/rtimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/rtimer.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195359002/rtimer.o   ../../../contiki/core/sys/rtimer.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195359002/rtimer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195359002/rtimer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195359002/energest.o: ../../../contiki/core/sys/energest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/energest.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195359002/energest.o   ../../../contiki/core/sys/energest.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195359002/energest.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195359002/energest.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195359002/compower.o: ../../../contiki/core/sys/compower.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/compower.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195359002/compower.o   ../../../contiki/core/sys/compower.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195359002/compower.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195359002/compower.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195359002/timer.o: ../../../contiki/core/sys/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/timer.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195359002/timer.o   ../../../contiki/core/sys/timer.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195359002/timer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195359002/timer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195359002/ctimer.o: ../../../contiki/core/sys/ctimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/ctimer.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195359002/ctimer.o   ../../../contiki/core/sys/ctimer.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195359002/ctimer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195359002/ctimer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195359002/process.o: ../../../contiki/core/sys/process.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/process.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195359002/process.o   ../../../contiki/core/sys/process.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195359002/process.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195359002/process.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1195359002/etimer.o: ../../../contiki/core/sys/etimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/etimer.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1195359002/etimer.o   ../../../contiki/core/sys/etimer.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1195359002/etimer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1195359002/etimer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/2012962533/psock.o: ../../cpu/microchip-mplabx/mcc18/net/psock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2012962533 
	@${RM} ${OBJECTDIR}/_ext/2012962533/psock.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/2012962533/psock.o   ../../cpu/microchip-mplabx/mcc18/net/psock.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/2012962533/psock.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2012962533/psock.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/net/ETH97J60.o: net/ETH97J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/net 
	@${RM} ${OBJECTDIR}/net/ETH97J60.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/net/ETH97J60.o   net/ETH97J60.c 
	@${DEP_GEN} -d ${OBJECTDIR}/net/ETH97J60.o 
	@${FIXDEPS} "${OBJECTDIR}/net/ETH97J60.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/net/ethernet-v6.o: net/ethernet-v6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/net 
	@${RM} ${OBJECTDIR}/net/ethernet-v6.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/net/ethernet-v6.o   net/ethernet-v6.c 
	@${DEP_GEN} -d ${OBJECTDIR}/net/ethernet-v6.o 
	@${FIXDEPS} "${OBJECTDIR}/net/ethernet-v6.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/net/ethernet.o: net/ethernet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/net 
	@${RM} ${OBJECTDIR}/net/ethernet.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/net/ethernet.o   net/ethernet.c 
	@${DEP_GEN} -d ${OBJECTDIR}/net/ethernet.o 
	@${FIXDEPS} "${OBJECTDIR}/net/ethernet.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/net/ethernet-drv.o: net/ethernet-drv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/net 
	@${RM} ${OBJECTDIR}/net/ethernet-drv.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/net/ethernet-drv.o   net/ethernet-drv.c 
	@${DEP_GEN} -d ${OBJECTDIR}/net/ethernet-drv.o 
	@${FIXDEPS} "${OBJECTDIR}/net/ethernet-drv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/net/Helpers.o: net/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/net 
	@${RM} ${OBJECTDIR}/net/Helpers.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/net/Helpers.o   net/Helpers.c 
	@${DEP_GEN} -d ${OBJECTDIR}/net/Helpers.o 
	@${FIXDEPS} "${OBJECTDIR}/net/Helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/interrupts.o: interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/interrupts.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/interrupts.o   interrupts.c 
	@${DEP_GEN} -d ${OBJECTDIR}/interrupts.o 
	@${FIXDEPS} "${OBJECTDIR}/interrupts.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/configuration-bits.o: configuration-bits.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/configuration-bits.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/configuration-bits.o   configuration-bits.c 
	@${DEP_GEN} -d ${OBJECTDIR}/configuration-bits.o 
	@${FIXDEPS} "${OBJECTDIR}/configuration-bits.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/rtimer-arch.o: rtimer-arch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/rtimer-arch.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/rtimer-arch.o   rtimer-arch.c 
	@${DEP_GEN} -d ${OBJECTDIR}/rtimer-arch.o 
	@${FIXDEPS} "${OBJECTDIR}/rtimer-arch.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/clock.o: clock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/clock.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/clock.o   clock.c 
	@${DEP_GEN} -d ${OBJECTDIR}/clock.o 
	@${FIXDEPS} "${OBJECTDIR}/clock.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/contiki-main.o: contiki-main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/contiki-main.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/contiki-main.o   contiki-main.c 
	@${DEP_GEN} -d ${OBJECTDIR}/contiki-main.o 
	@${FIXDEPS} "${OBJECTDIR}/contiki-main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/empty.o: empty.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/empty.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"." -I"../../cpu/microchip-mplabx/mcc18" -I"../../cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" -I"../../../contiki/core/net" -ms -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/empty.o   empty.c 
	@${DEP_GEN} -d ${OBJECTDIR}/empty.o 
	@${FIXDEPS} "${OBJECTDIR}/empty.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/pic18f97j60-family.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    18f67j90.lkr
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) "18f67j90.lkr"  -p$(MP_PROCESSOR_OPTION_LD)  -w -x -u_DEBUG -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"  -z__MPLAB_BUILD=1  -u_CRUNTIME -z__MPLAB_DEBUG=1 -z__MPLAB_DEBUGGER_PK3=1 $(MP_LINKER_DEBUG_OPTION) -l ${MP_CC_DIR}/../lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/pic18f97j60-family.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
else
dist/${CND_CONF}/${IMAGE_TYPE}/pic18f97j60-family.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   18f67j90.lkr
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) "18f67j90.lkr"  -p$(MP_PROCESSOR_OPTION_LD)  -w  -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"  -z__MPLAB_BUILD=1  -u_CRUNTIME -l ${MP_CC_DIR}/../lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/pic18f97j60-family.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
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
