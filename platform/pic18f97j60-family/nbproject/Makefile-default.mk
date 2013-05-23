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
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1195374034/nullradio.p1 ${OBJECTDIR}/_ext/1195366242/memb.p1 ${OBJECTDIR}/_ext/1195366242/crc16.p1 ${OBJECTDIR}/_ext/1195366242/petsciiconv.p1 ${OBJECTDIR}/_ext/1195366242/gcr.p1 ${OBJECTDIR}/_ext/1195366242/strncasecmp.p1 ${OBJECTDIR}/_ext/1195366242/list.p1 ${OBJECTDIR}/_ext/1195366242/random.p1 ${OBJECTDIR}/_ext/1195366242/me_tabs.p1 ${OBJECTDIR}/_ext/1195366242/ringbuf.p1 ${OBJECTDIR}/_ext/1195366242/me.p1 ${OBJECTDIR}/_ext/1195366242/checkpoint.p1 ${OBJECTDIR}/_ext/1195366242/sensors.p1 ${OBJECTDIR}/_ext/1195366242/mmem.p1 ${OBJECTDIR}/_ext/1195366242/assert.p1 ${OBJECTDIR}/_ext/1195366242/ifft.p1 ${OBJECTDIR}/_ext/1195366242/print-stats.p1 ${OBJECTDIR}/_ext/114530442/csma.p1 ${OBJECTDIR}/_ext/114530442/nullrdc.p1 ${OBJECTDIR}/_ext/114530442/phase.p1 ${OBJECTDIR}/_ext/114530442/framer-802154.p1 ${OBJECTDIR}/_ext/114530442/xmac.p1 ${OBJECTDIR}/_ext/114530442/mac.p1 ${OBJECTDIR}/_ext/114530442/frame802154.p1 ${OBJECTDIR}/_ext/114530442/lpp.p1 ${OBJECTDIR}/_ext/114530442/contikimac.p1 ${OBJECTDIR}/_ext/114530442/nullrdc-noframer.p1 ${OBJECTDIR}/_ext/114530442/framer-nullmac.p1 ${OBJECTDIR}/_ext/114530442/cxmac.p1 ${OBJECTDIR}/_ext/114530442/sicslowmac.p1 ${OBJECTDIR}/_ext/114530442/nullmac.p1 ${OBJECTDIR}/_ext/744680648/channel.p1 ${OBJECTDIR}/_ext/744680648/chameleon-raw.p1 ${OBJECTDIR}/_ext/744680648/rimeaddr.p1 ${OBJECTDIR}/_ext/744680648/runicast.p1 ${OBJECTDIR}/_ext/744680648/collect-link-estimate.p1 ${OBJECTDIR}/_ext/744680648/rucb.p1 ${OBJECTDIR}/_ext/744680648/polite.p1 ${OBJECTDIR}/_ext/744680648/rime-udp.p1 ${OBJECTDIR}/_ext/744680648/route.p1 ${OBJECTDIR}/_ext/744680648/rmh.p1 ${OBJECTDIR}/_ext/744680648/rimestats.p1 ${OBJECTDIR}/_ext/744680648/announcement.p1 ${OBJECTDIR}/_ext/744680648/route-discovery.p1 ${OBJECTDIR}/_ext/744680648/broadcast.p1 ${OBJECTDIR}/_ext/744680648/collect.p1 ${OBJECTDIR}/_ext/744680648/abc.p1 ${OBJECTDIR}/_ext/744680648/rudolph1.p1 ${OBJECTDIR}/_ext/744680648/collect-neighbor.p1 ${OBJECTDIR}/_ext/744680648/ipolite.p1 ${OBJECTDIR}/_ext/744680648/multihop.p1 ${OBJECTDIR}/_ext/744680648/neighbor-discovery.p1 ${OBJECTDIR}/_ext/744680648/rime.p1 ${OBJECTDIR}/_ext/744680648/broadcast-announcement.p1 ${OBJECTDIR}/_ext/744680648/chameleon.p1 ${OBJECTDIR}/_ext/744680648/mesh.p1 ${OBJECTDIR}/_ext/744680648/rudolph2.p1 ${OBJECTDIR}/_ext/744680648/unicast.p1 ${OBJECTDIR}/_ext/744680648/netflood.p1 ${OBJECTDIR}/_ext/744680648/stbroadcast.p1 ${OBJECTDIR}/_ext/744680648/trickle.p1 ${OBJECTDIR}/_ext/744680648/chameleon-bitopt.p1 ${OBJECTDIR}/_ext/744680648/timesynch.p1 ${OBJECTDIR}/_ext/744680648/rudolph0.p1 ${OBJECTDIR}/_ext/744680648/stunicast.p1 ${OBJECTDIR}/_ext/744680648/polite-announcement.p1 ${OBJECTDIR}/_ext/114525163/rpl-of-etx.p1 ${OBJECTDIR}/_ext/114525163/rpl-ext-header.p1 ${OBJECTDIR}/_ext/114525163/rpl-dag.p1 ${OBJECTDIR}/_ext/114525163/rpl-timers.p1 ${OBJECTDIR}/_ext/114525163/rpl-of0.p1 ${OBJECTDIR}/_ext/114525163/rpl-icmp6.p1 ${OBJECTDIR}/_ext/114525163/rpl.p1 ${OBJECTDIR}/_ext/1195364426/uip-udp-packet.p1 ${OBJECTDIR}/_ext/1195364426/slipdev.p1 ${OBJECTDIR}/_ext/1195364426/queuebuf.p1 ${OBJECTDIR}/_ext/1195364426/tcpdump.p1 ${OBJECTDIR}/_ext/1195364426/uip.p1 ${OBJECTDIR}/_ext/1195364426/uip-nd6.p1 ${OBJECTDIR}/_ext/1195364426/uip-ds6.p1 ${OBJECTDIR}/_ext/1195364426/uip6.p1 ${OBJECTDIR}/_ext/1195364426/netstack.p1 ${OBJECTDIR}/_ext/1195364426/uip-fw.p1 ${OBJECTDIR}/_ext/1195364426/uip-neighbor.p1 ${OBJECTDIR}/_ext/1195364426/packetbuf.p1 ${OBJECTDIR}/_ext/1195364426/uaodv-rt.p1 ${OBJECTDIR}/_ext/1195364426/uip-ds6-route.p1 ${OBJECTDIR}/_ext/1195364426/neighbor-info.p1 ${OBJECTDIR}/_ext/1195364426/uip-over-mesh.p1 ${OBJECTDIR}/_ext/1195364426/hc.p1 ${OBJECTDIR}/_ext/1195364426/uip-fw-drv.p1 ${OBJECTDIR}/_ext/1195364426/uip-debug.p1 ${OBJECTDIR}/_ext/1195364426/simple-udp.p1 ${OBJECTDIR}/_ext/1195364426/uip-split.p1 ${OBJECTDIR}/_ext/1195364426/uiplib.p1 ${OBJECTDIR}/_ext/1195364426/uaodv.p1 ${OBJECTDIR}/_ext/1195364426/uip-packetqueue.p1 ${OBJECTDIR}/_ext/1195364426/uip-icmp6.p1 ${OBJECTDIR}/_ext/1195364426/resolv.p1 ${OBJECTDIR}/_ext/1195364426/packetqueue.p1 ${OBJECTDIR}/_ext/1195364426/rawpacket-udp.p1 ${OBJECTDIR}/_ext/1195364426/neighbor-attr.p1 ${OBJECTDIR}/_ext/1195364426/dhcpc.p1 ${OBJECTDIR}/_ext/1195364426/tcpip.p1 ${OBJECTDIR}/_ext/1195364426/sicslowpan.p1 ${OBJECTDIR}/_ext/1195364426/uip_arp.p1 ${OBJECTDIR}/_ext/1195364426/psock.p1 ${OBJECTDIR}/_ext/1195359002/compower.p1 ${OBJECTDIR}/_ext/1195359002/timetable.p1 ${OBJECTDIR}/_ext/1195359002/profile.p1 ${OBJECTDIR}/_ext/1195359002/autostart.p1 ${OBJECTDIR}/_ext/1195359002/etimer.p1 ${OBJECTDIR}/_ext/1195359002/process.p1 ${OBJECTDIR}/_ext/1195359002/procinit.p1 ${OBJECTDIR}/_ext/1195359002/stimer.p1 ${OBJECTDIR}/_ext/1195359002/arg.p1 ${OBJECTDIR}/_ext/1195359002/mt.p1 ${OBJECTDIR}/_ext/1195359002/timer.p1 ${OBJECTDIR}/_ext/1195359002/rtimer.p1 ${OBJECTDIR}/_ext/1195359002/timetable-aggregate.p1 ${OBJECTDIR}/_ext/1195359002/ctimer.p1 ${OBJECTDIR}/_ext/1195359002/profile-aggregates.p1 ${OBJECTDIR}/_ext/1195359002/energest.p1 ${OBJECTDIR}/_ext/1133045738/SNMPv3.p1 ${OBJECTDIR}/_ext/1133045738/UART2TCPBridge.p1 ${OBJECTDIR}/_ext/1133045738/ETH97J60.p1 ${OBJECTDIR}/_ext/1133045738/TCP.p1 ${OBJECTDIR}/_ext/1133045738/DNS.p1 ${OBJECTDIR}/_ext/1133045738/FileSystem.p1 ${OBJECTDIR}/_ext/1133045738/ARP.p1 ${OBJECTDIR}/_ext/1133045738/UDPPerformanceTest.p1 ${OBJECTDIR}/_ext/1133045738/DHCP.p1 ${OBJECTDIR}/_ext/1133045738/IP.p1 ${OBJECTDIR}/_ext/1133045738/ENC28J60.p1 ${OBJECTDIR}/_ext/1133045738/SPIRAM.p1 ${OBJECTDIR}/_ext/1133045738/Tick.p1 ${OBJECTDIR}/_ext/1133045738/StackTsk.p1 ${OBJECTDIR}/_ext/1133045738/RSA.p1 ${OBJECTDIR}/_ext/1133045738/ARCFOUR.p1 ${OBJECTDIR}/_ext/1133045738/Reboot.p1 ${OBJECTDIR}/_ext/1133045738/DynDNS.p1 ${OBJECTDIR}/_ext/1133045738/ZeroconfLinkLocal.p1 ${OBJECTDIR}/_ext/1133045738/DNSs.p1 ${OBJECTDIR}/_ext/1133045738/DHCPs.p1 ${OBJECTDIR}/_ext/1133045738/SMTP.p1 ${OBJECTDIR}/_ext/1133045738/BigInt.p1 ${OBJECTDIR}/_ext/1133045738/Delay.p1 ${OBJECTDIR}/_ext/1133045738/ZeroconfHelper.p1 ${OBJECTDIR}/_ext/1133045738/SNMP.p1 ${OBJECTDIR}/_ext/1133045738/NBNS.p1 ${OBJECTDIR}/_ext/1133045738/Announce.p1 ${OBJECTDIR}/_ext/1133045738/SSL.p1 ${OBJECTDIR}/_ext/1133045738/FTP.p1 ${OBJECTDIR}/_ext/1133045738/SPIEEPROM.p1 ${OBJECTDIR}/_ext/1133045738/LCDBlocking.p1 ${OBJECTDIR}/_ext/1133045738/SNMPv3USM.p1 ${OBJECTDIR}/_ext/1133045738/Hashes.p1 ${OBJECTDIR}/_ext/1133045738/BerkeleyAPI.p1 ${OBJECTDIR}/_ext/1133045738/AutoIP.p1 ${OBJECTDIR}/_ext/1133045738/HTTP2.p1 ${OBJECTDIR}/_ext/1133045738/SNTP.p1 ${OBJECTDIR}/_ext/1133045738/TCPPerformanceTest.p1 ${OBJECTDIR}/_ext/1133045738/Telnet.p1 ${OBJECTDIR}/_ext/1133045738/Helpers.p1 ${OBJECTDIR}/_ext/1133045738/SPIFlash.p1 ${OBJECTDIR}/_ext/1133045738/UART.p1 ${OBJECTDIR}/_ext/1133045738/TFTPc.p1 ${OBJECTDIR}/_ext/1133045738/Random.p1 ${OBJECTDIR}/_ext/1133045738/MPFS2.p1 ${OBJECTDIR}/_ext/1133045738/ZeroconfMulticastDNS.p1 ${OBJECTDIR}/_ext/1133045738/ENCX24J600.p1 ${OBJECTDIR}/_ext/1133045738/ICMP.p1 ${OBJECTDIR}/_ext/1133045738/UDP.p1 ${OBJECTDIR}/_ext/810075401/autostart.p1 ${OBJECTDIR}/interrupts.p1 ${OBJECTDIR}/configuration-bits.p1 ${OBJECTDIR}/fakeuip.p1 ${OBJECTDIR}/rtimer-arch.p1 ${OBJECTDIR}/clock.p1 ${OBJECTDIR}/contiki-main.p1 ${OBJECTDIR}/empty.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1195374034/nullradio.p1.d ${OBJECTDIR}/_ext/1195366242/memb.p1.d ${OBJECTDIR}/_ext/1195366242/crc16.p1.d ${OBJECTDIR}/_ext/1195366242/petsciiconv.p1.d ${OBJECTDIR}/_ext/1195366242/gcr.p1.d ${OBJECTDIR}/_ext/1195366242/strncasecmp.p1.d ${OBJECTDIR}/_ext/1195366242/list.p1.d ${OBJECTDIR}/_ext/1195366242/random.p1.d ${OBJECTDIR}/_ext/1195366242/me_tabs.p1.d ${OBJECTDIR}/_ext/1195366242/ringbuf.p1.d ${OBJECTDIR}/_ext/1195366242/me.p1.d ${OBJECTDIR}/_ext/1195366242/checkpoint.p1.d ${OBJECTDIR}/_ext/1195366242/sensors.p1.d ${OBJECTDIR}/_ext/1195366242/mmem.p1.d ${OBJECTDIR}/_ext/1195366242/assert.p1.d ${OBJECTDIR}/_ext/1195366242/ifft.p1.d ${OBJECTDIR}/_ext/1195366242/print-stats.p1.d ${OBJECTDIR}/_ext/114530442/csma.p1.d ${OBJECTDIR}/_ext/114530442/nullrdc.p1.d ${OBJECTDIR}/_ext/114530442/phase.p1.d ${OBJECTDIR}/_ext/114530442/framer-802154.p1.d ${OBJECTDIR}/_ext/114530442/xmac.p1.d ${OBJECTDIR}/_ext/114530442/mac.p1.d ${OBJECTDIR}/_ext/114530442/frame802154.p1.d ${OBJECTDIR}/_ext/114530442/lpp.p1.d ${OBJECTDIR}/_ext/114530442/contikimac.p1.d ${OBJECTDIR}/_ext/114530442/nullrdc-noframer.p1.d ${OBJECTDIR}/_ext/114530442/framer-nullmac.p1.d ${OBJECTDIR}/_ext/114530442/cxmac.p1.d ${OBJECTDIR}/_ext/114530442/sicslowmac.p1.d ${OBJECTDIR}/_ext/114530442/nullmac.p1.d ${OBJECTDIR}/_ext/744680648/channel.p1.d ${OBJECTDIR}/_ext/744680648/chameleon-raw.p1.d ${OBJECTDIR}/_ext/744680648/rimeaddr.p1.d ${OBJECTDIR}/_ext/744680648/runicast.p1.d ${OBJECTDIR}/_ext/744680648/collect-link-estimate.p1.d ${OBJECTDIR}/_ext/744680648/rucb.p1.d ${OBJECTDIR}/_ext/744680648/polite.p1.d ${OBJECTDIR}/_ext/744680648/rime-udp.p1.d ${OBJECTDIR}/_ext/744680648/route.p1.d ${OBJECTDIR}/_ext/744680648/rmh.p1.d ${OBJECTDIR}/_ext/744680648/rimestats.p1.d ${OBJECTDIR}/_ext/744680648/announcement.p1.d ${OBJECTDIR}/_ext/744680648/route-discovery.p1.d ${OBJECTDIR}/_ext/744680648/broadcast.p1.d ${OBJECTDIR}/_ext/744680648/collect.p1.d ${OBJECTDIR}/_ext/744680648/abc.p1.d ${OBJECTDIR}/_ext/744680648/rudolph1.p1.d ${OBJECTDIR}/_ext/744680648/collect-neighbor.p1.d ${OBJECTDIR}/_ext/744680648/ipolite.p1.d ${OBJECTDIR}/_ext/744680648/multihop.p1.d ${OBJECTDIR}/_ext/744680648/neighbor-discovery.p1.d ${OBJECTDIR}/_ext/744680648/rime.p1.d ${OBJECTDIR}/_ext/744680648/broadcast-announcement.p1.d ${OBJECTDIR}/_ext/744680648/chameleon.p1.d ${OBJECTDIR}/_ext/744680648/mesh.p1.d ${OBJECTDIR}/_ext/744680648/rudolph2.p1.d ${OBJECTDIR}/_ext/744680648/unicast.p1.d ${OBJECTDIR}/_ext/744680648/netflood.p1.d ${OBJECTDIR}/_ext/744680648/stbroadcast.p1.d ${OBJECTDIR}/_ext/744680648/trickle.p1.d ${OBJECTDIR}/_ext/744680648/chameleon-bitopt.p1.d ${OBJECTDIR}/_ext/744680648/timesynch.p1.d ${OBJECTDIR}/_ext/744680648/rudolph0.p1.d ${OBJECTDIR}/_ext/744680648/stunicast.p1.d ${OBJECTDIR}/_ext/744680648/polite-announcement.p1.d ${OBJECTDIR}/_ext/114525163/rpl-of-etx.p1.d ${OBJECTDIR}/_ext/114525163/rpl-ext-header.p1.d ${OBJECTDIR}/_ext/114525163/rpl-dag.p1.d ${OBJECTDIR}/_ext/114525163/rpl-timers.p1.d ${OBJECTDIR}/_ext/114525163/rpl-of0.p1.d ${OBJECTDIR}/_ext/114525163/rpl-icmp6.p1.d ${OBJECTDIR}/_ext/114525163/rpl.p1.d ${OBJECTDIR}/_ext/1195364426/uip-udp-packet.p1.d ${OBJECTDIR}/_ext/1195364426/slipdev.p1.d ${OBJECTDIR}/_ext/1195364426/queuebuf.p1.d ${OBJECTDIR}/_ext/1195364426/tcpdump.p1.d ${OBJECTDIR}/_ext/1195364426/uip.p1.d ${OBJECTDIR}/_ext/1195364426/uip-nd6.p1.d ${OBJECTDIR}/_ext/1195364426/uip-ds6.p1.d ${OBJECTDIR}/_ext/1195364426/uip6.p1.d ${OBJECTDIR}/_ext/1195364426/netstack.p1.d ${OBJECTDIR}/_ext/1195364426/uip-fw.p1.d ${OBJECTDIR}/_ext/1195364426/uip-neighbor.p1.d ${OBJECTDIR}/_ext/1195364426/packetbuf.p1.d ${OBJECTDIR}/_ext/1195364426/uaodv-rt.p1.d ${OBJECTDIR}/_ext/1195364426/uip-ds6-route.p1.d ${OBJECTDIR}/_ext/1195364426/neighbor-info.p1.d ${OBJECTDIR}/_ext/1195364426/uip-over-mesh.p1.d ${OBJECTDIR}/_ext/1195364426/hc.p1.d ${OBJECTDIR}/_ext/1195364426/uip-fw-drv.p1.d ${OBJECTDIR}/_ext/1195364426/uip-debug.p1.d ${OBJECTDIR}/_ext/1195364426/simple-udp.p1.d ${OBJECTDIR}/_ext/1195364426/uip-split.p1.d ${OBJECTDIR}/_ext/1195364426/uiplib.p1.d ${OBJECTDIR}/_ext/1195364426/uaodv.p1.d ${OBJECTDIR}/_ext/1195364426/uip-packetqueue.p1.d ${OBJECTDIR}/_ext/1195364426/uip-icmp6.p1.d ${OBJECTDIR}/_ext/1195364426/resolv.p1.d ${OBJECTDIR}/_ext/1195364426/packetqueue.p1.d ${OBJECTDIR}/_ext/1195364426/rawpacket-udp.p1.d ${OBJECTDIR}/_ext/1195364426/neighbor-attr.p1.d ${OBJECTDIR}/_ext/1195364426/dhcpc.p1.d ${OBJECTDIR}/_ext/1195364426/tcpip.p1.d ${OBJECTDIR}/_ext/1195364426/sicslowpan.p1.d ${OBJECTDIR}/_ext/1195364426/uip_arp.p1.d ${OBJECTDIR}/_ext/1195364426/psock.p1.d ${OBJECTDIR}/_ext/1195359002/compower.p1.d ${OBJECTDIR}/_ext/1195359002/timetable.p1.d ${OBJECTDIR}/_ext/1195359002/profile.p1.d ${OBJECTDIR}/_ext/1195359002/autostart.p1.d ${OBJECTDIR}/_ext/1195359002/etimer.p1.d ${OBJECTDIR}/_ext/1195359002/process.p1.d ${OBJECTDIR}/_ext/1195359002/procinit.p1.d ${OBJECTDIR}/_ext/1195359002/stimer.p1.d ${OBJECTDIR}/_ext/1195359002/arg.p1.d ${OBJECTDIR}/_ext/1195359002/mt.p1.d ${OBJECTDIR}/_ext/1195359002/timer.p1.d ${OBJECTDIR}/_ext/1195359002/rtimer.p1.d ${OBJECTDIR}/_ext/1195359002/timetable-aggregate.p1.d ${OBJECTDIR}/_ext/1195359002/ctimer.p1.d ${OBJECTDIR}/_ext/1195359002/profile-aggregates.p1.d ${OBJECTDIR}/_ext/1195359002/energest.p1.d ${OBJECTDIR}/_ext/1133045738/SNMPv3.p1.d ${OBJECTDIR}/_ext/1133045738/UART2TCPBridge.p1.d ${OBJECTDIR}/_ext/1133045738/ETH97J60.p1.d ${OBJECTDIR}/_ext/1133045738/TCP.p1.d ${OBJECTDIR}/_ext/1133045738/DNS.p1.d ${OBJECTDIR}/_ext/1133045738/FileSystem.p1.d ${OBJECTDIR}/_ext/1133045738/ARP.p1.d ${OBJECTDIR}/_ext/1133045738/UDPPerformanceTest.p1.d ${OBJECTDIR}/_ext/1133045738/DHCP.p1.d ${OBJECTDIR}/_ext/1133045738/IP.p1.d ${OBJECTDIR}/_ext/1133045738/ENC28J60.p1.d ${OBJECTDIR}/_ext/1133045738/SPIRAM.p1.d ${OBJECTDIR}/_ext/1133045738/Tick.p1.d ${OBJECTDIR}/_ext/1133045738/StackTsk.p1.d ${OBJECTDIR}/_ext/1133045738/RSA.p1.d ${OBJECTDIR}/_ext/1133045738/ARCFOUR.p1.d ${OBJECTDIR}/_ext/1133045738/Reboot.p1.d ${OBJECTDIR}/_ext/1133045738/DynDNS.p1.d ${OBJECTDIR}/_ext/1133045738/ZeroconfLinkLocal.p1.d ${OBJECTDIR}/_ext/1133045738/DNSs.p1.d ${OBJECTDIR}/_ext/1133045738/DHCPs.p1.d ${OBJECTDIR}/_ext/1133045738/SMTP.p1.d ${OBJECTDIR}/_ext/1133045738/BigInt.p1.d ${OBJECTDIR}/_ext/1133045738/Delay.p1.d ${OBJECTDIR}/_ext/1133045738/ZeroconfHelper.p1.d ${OBJECTDIR}/_ext/1133045738/SNMP.p1.d ${OBJECTDIR}/_ext/1133045738/NBNS.p1.d ${OBJECTDIR}/_ext/1133045738/Announce.p1.d ${OBJECTDIR}/_ext/1133045738/SSL.p1.d ${OBJECTDIR}/_ext/1133045738/FTP.p1.d ${OBJECTDIR}/_ext/1133045738/SPIEEPROM.p1.d ${OBJECTDIR}/_ext/1133045738/LCDBlocking.p1.d ${OBJECTDIR}/_ext/1133045738/SNMPv3USM.p1.d ${OBJECTDIR}/_ext/1133045738/Hashes.p1.d ${OBJECTDIR}/_ext/1133045738/BerkeleyAPI.p1.d ${OBJECTDIR}/_ext/1133045738/AutoIP.p1.d ${OBJECTDIR}/_ext/1133045738/HTTP2.p1.d ${OBJECTDIR}/_ext/1133045738/SNTP.p1.d ${OBJECTDIR}/_ext/1133045738/TCPPerformanceTest.p1.d ${OBJECTDIR}/_ext/1133045738/Telnet.p1.d ${OBJECTDIR}/_ext/1133045738/Helpers.p1.d ${OBJECTDIR}/_ext/1133045738/SPIFlash.p1.d ${OBJECTDIR}/_ext/1133045738/UART.p1.d ${OBJECTDIR}/_ext/1133045738/TFTPc.p1.d ${OBJECTDIR}/_ext/1133045738/Random.p1.d ${OBJECTDIR}/_ext/1133045738/MPFS2.p1.d ${OBJECTDIR}/_ext/1133045738/ZeroconfMulticastDNS.p1.d ${OBJECTDIR}/_ext/1133045738/ENCX24J600.p1.d ${OBJECTDIR}/_ext/1133045738/ICMP.p1.d ${OBJECTDIR}/_ext/1133045738/UDP.p1.d ${OBJECTDIR}/_ext/810075401/autostart.p1.d ${OBJECTDIR}/interrupts.p1.d ${OBJECTDIR}/configuration-bits.p1.d ${OBJECTDIR}/fakeuip.p1.d ${OBJECTDIR}/rtimer-arch.p1.d ${OBJECTDIR}/clock.p1.d ${OBJECTDIR}/contiki-main.p1.d ${OBJECTDIR}/empty.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1195374034/nullradio.p1 ${OBJECTDIR}/_ext/1195366242/memb.p1 ${OBJECTDIR}/_ext/1195366242/crc16.p1 ${OBJECTDIR}/_ext/1195366242/petsciiconv.p1 ${OBJECTDIR}/_ext/1195366242/gcr.p1 ${OBJECTDIR}/_ext/1195366242/strncasecmp.p1 ${OBJECTDIR}/_ext/1195366242/list.p1 ${OBJECTDIR}/_ext/1195366242/random.p1 ${OBJECTDIR}/_ext/1195366242/me_tabs.p1 ${OBJECTDIR}/_ext/1195366242/ringbuf.p1 ${OBJECTDIR}/_ext/1195366242/me.p1 ${OBJECTDIR}/_ext/1195366242/checkpoint.p1 ${OBJECTDIR}/_ext/1195366242/sensors.p1 ${OBJECTDIR}/_ext/1195366242/mmem.p1 ${OBJECTDIR}/_ext/1195366242/assert.p1 ${OBJECTDIR}/_ext/1195366242/ifft.p1 ${OBJECTDIR}/_ext/1195366242/print-stats.p1 ${OBJECTDIR}/_ext/114530442/csma.p1 ${OBJECTDIR}/_ext/114530442/nullrdc.p1 ${OBJECTDIR}/_ext/114530442/phase.p1 ${OBJECTDIR}/_ext/114530442/framer-802154.p1 ${OBJECTDIR}/_ext/114530442/xmac.p1 ${OBJECTDIR}/_ext/114530442/mac.p1 ${OBJECTDIR}/_ext/114530442/frame802154.p1 ${OBJECTDIR}/_ext/114530442/lpp.p1 ${OBJECTDIR}/_ext/114530442/contikimac.p1 ${OBJECTDIR}/_ext/114530442/nullrdc-noframer.p1 ${OBJECTDIR}/_ext/114530442/framer-nullmac.p1 ${OBJECTDIR}/_ext/114530442/cxmac.p1 ${OBJECTDIR}/_ext/114530442/sicslowmac.p1 ${OBJECTDIR}/_ext/114530442/nullmac.p1 ${OBJECTDIR}/_ext/744680648/channel.p1 ${OBJECTDIR}/_ext/744680648/chameleon-raw.p1 ${OBJECTDIR}/_ext/744680648/rimeaddr.p1 ${OBJECTDIR}/_ext/744680648/runicast.p1 ${OBJECTDIR}/_ext/744680648/collect-link-estimate.p1 ${OBJECTDIR}/_ext/744680648/rucb.p1 ${OBJECTDIR}/_ext/744680648/polite.p1 ${OBJECTDIR}/_ext/744680648/rime-udp.p1 ${OBJECTDIR}/_ext/744680648/route.p1 ${OBJECTDIR}/_ext/744680648/rmh.p1 ${OBJECTDIR}/_ext/744680648/rimestats.p1 ${OBJECTDIR}/_ext/744680648/announcement.p1 ${OBJECTDIR}/_ext/744680648/route-discovery.p1 ${OBJECTDIR}/_ext/744680648/broadcast.p1 ${OBJECTDIR}/_ext/744680648/collect.p1 ${OBJECTDIR}/_ext/744680648/abc.p1 ${OBJECTDIR}/_ext/744680648/rudolph1.p1 ${OBJECTDIR}/_ext/744680648/collect-neighbor.p1 ${OBJECTDIR}/_ext/744680648/ipolite.p1 ${OBJECTDIR}/_ext/744680648/multihop.p1 ${OBJECTDIR}/_ext/744680648/neighbor-discovery.p1 ${OBJECTDIR}/_ext/744680648/rime.p1 ${OBJECTDIR}/_ext/744680648/broadcast-announcement.p1 ${OBJECTDIR}/_ext/744680648/chameleon.p1 ${OBJECTDIR}/_ext/744680648/mesh.p1 ${OBJECTDIR}/_ext/744680648/rudolph2.p1 ${OBJECTDIR}/_ext/744680648/unicast.p1 ${OBJECTDIR}/_ext/744680648/netflood.p1 ${OBJECTDIR}/_ext/744680648/stbroadcast.p1 ${OBJECTDIR}/_ext/744680648/trickle.p1 ${OBJECTDIR}/_ext/744680648/chameleon-bitopt.p1 ${OBJECTDIR}/_ext/744680648/timesynch.p1 ${OBJECTDIR}/_ext/744680648/rudolph0.p1 ${OBJECTDIR}/_ext/744680648/stunicast.p1 ${OBJECTDIR}/_ext/744680648/polite-announcement.p1 ${OBJECTDIR}/_ext/114525163/rpl-of-etx.p1 ${OBJECTDIR}/_ext/114525163/rpl-ext-header.p1 ${OBJECTDIR}/_ext/114525163/rpl-dag.p1 ${OBJECTDIR}/_ext/114525163/rpl-timers.p1 ${OBJECTDIR}/_ext/114525163/rpl-of0.p1 ${OBJECTDIR}/_ext/114525163/rpl-icmp6.p1 ${OBJECTDIR}/_ext/114525163/rpl.p1 ${OBJECTDIR}/_ext/1195364426/uip-udp-packet.p1 ${OBJECTDIR}/_ext/1195364426/slipdev.p1 ${OBJECTDIR}/_ext/1195364426/queuebuf.p1 ${OBJECTDIR}/_ext/1195364426/tcpdump.p1 ${OBJECTDIR}/_ext/1195364426/uip.p1 ${OBJECTDIR}/_ext/1195364426/uip-nd6.p1 ${OBJECTDIR}/_ext/1195364426/uip-ds6.p1 ${OBJECTDIR}/_ext/1195364426/uip6.p1 ${OBJECTDIR}/_ext/1195364426/netstack.p1 ${OBJECTDIR}/_ext/1195364426/uip-fw.p1 ${OBJECTDIR}/_ext/1195364426/uip-neighbor.p1 ${OBJECTDIR}/_ext/1195364426/packetbuf.p1 ${OBJECTDIR}/_ext/1195364426/uaodv-rt.p1 ${OBJECTDIR}/_ext/1195364426/uip-ds6-route.p1 ${OBJECTDIR}/_ext/1195364426/neighbor-info.p1 ${OBJECTDIR}/_ext/1195364426/uip-over-mesh.p1 ${OBJECTDIR}/_ext/1195364426/hc.p1 ${OBJECTDIR}/_ext/1195364426/uip-fw-drv.p1 ${OBJECTDIR}/_ext/1195364426/uip-debug.p1 ${OBJECTDIR}/_ext/1195364426/simple-udp.p1 ${OBJECTDIR}/_ext/1195364426/uip-split.p1 ${OBJECTDIR}/_ext/1195364426/uiplib.p1 ${OBJECTDIR}/_ext/1195364426/uaodv.p1 ${OBJECTDIR}/_ext/1195364426/uip-packetqueue.p1 ${OBJECTDIR}/_ext/1195364426/uip-icmp6.p1 ${OBJECTDIR}/_ext/1195364426/resolv.p1 ${OBJECTDIR}/_ext/1195364426/packetqueue.p1 ${OBJECTDIR}/_ext/1195364426/rawpacket-udp.p1 ${OBJECTDIR}/_ext/1195364426/neighbor-attr.p1 ${OBJECTDIR}/_ext/1195364426/dhcpc.p1 ${OBJECTDIR}/_ext/1195364426/tcpip.p1 ${OBJECTDIR}/_ext/1195364426/sicslowpan.p1 ${OBJECTDIR}/_ext/1195364426/uip_arp.p1 ${OBJECTDIR}/_ext/1195364426/psock.p1 ${OBJECTDIR}/_ext/1195359002/compower.p1 ${OBJECTDIR}/_ext/1195359002/timetable.p1 ${OBJECTDIR}/_ext/1195359002/profile.p1 ${OBJECTDIR}/_ext/1195359002/autostart.p1 ${OBJECTDIR}/_ext/1195359002/etimer.p1 ${OBJECTDIR}/_ext/1195359002/process.p1 ${OBJECTDIR}/_ext/1195359002/procinit.p1 ${OBJECTDIR}/_ext/1195359002/stimer.p1 ${OBJECTDIR}/_ext/1195359002/arg.p1 ${OBJECTDIR}/_ext/1195359002/mt.p1 ${OBJECTDIR}/_ext/1195359002/timer.p1 ${OBJECTDIR}/_ext/1195359002/rtimer.p1 ${OBJECTDIR}/_ext/1195359002/timetable-aggregate.p1 ${OBJECTDIR}/_ext/1195359002/ctimer.p1 ${OBJECTDIR}/_ext/1195359002/profile-aggregates.p1 ${OBJECTDIR}/_ext/1195359002/energest.p1 ${OBJECTDIR}/_ext/1133045738/SNMPv3.p1 ${OBJECTDIR}/_ext/1133045738/UART2TCPBridge.p1 ${OBJECTDIR}/_ext/1133045738/ETH97J60.p1 ${OBJECTDIR}/_ext/1133045738/TCP.p1 ${OBJECTDIR}/_ext/1133045738/DNS.p1 ${OBJECTDIR}/_ext/1133045738/FileSystem.p1 ${OBJECTDIR}/_ext/1133045738/ARP.p1 ${OBJECTDIR}/_ext/1133045738/UDPPerformanceTest.p1 ${OBJECTDIR}/_ext/1133045738/DHCP.p1 ${OBJECTDIR}/_ext/1133045738/IP.p1 ${OBJECTDIR}/_ext/1133045738/ENC28J60.p1 ${OBJECTDIR}/_ext/1133045738/SPIRAM.p1 ${OBJECTDIR}/_ext/1133045738/Tick.p1 ${OBJECTDIR}/_ext/1133045738/StackTsk.p1 ${OBJECTDIR}/_ext/1133045738/RSA.p1 ${OBJECTDIR}/_ext/1133045738/ARCFOUR.p1 ${OBJECTDIR}/_ext/1133045738/Reboot.p1 ${OBJECTDIR}/_ext/1133045738/DynDNS.p1 ${OBJECTDIR}/_ext/1133045738/ZeroconfLinkLocal.p1 ${OBJECTDIR}/_ext/1133045738/DNSs.p1 ${OBJECTDIR}/_ext/1133045738/DHCPs.p1 ${OBJECTDIR}/_ext/1133045738/SMTP.p1 ${OBJECTDIR}/_ext/1133045738/BigInt.p1 ${OBJECTDIR}/_ext/1133045738/Delay.p1 ${OBJECTDIR}/_ext/1133045738/ZeroconfHelper.p1 ${OBJECTDIR}/_ext/1133045738/SNMP.p1 ${OBJECTDIR}/_ext/1133045738/NBNS.p1 ${OBJECTDIR}/_ext/1133045738/Announce.p1 ${OBJECTDIR}/_ext/1133045738/SSL.p1 ${OBJECTDIR}/_ext/1133045738/FTP.p1 ${OBJECTDIR}/_ext/1133045738/SPIEEPROM.p1 ${OBJECTDIR}/_ext/1133045738/LCDBlocking.p1 ${OBJECTDIR}/_ext/1133045738/SNMPv3USM.p1 ${OBJECTDIR}/_ext/1133045738/Hashes.p1 ${OBJECTDIR}/_ext/1133045738/BerkeleyAPI.p1 ${OBJECTDIR}/_ext/1133045738/AutoIP.p1 ${OBJECTDIR}/_ext/1133045738/HTTP2.p1 ${OBJECTDIR}/_ext/1133045738/SNTP.p1 ${OBJECTDIR}/_ext/1133045738/TCPPerformanceTest.p1 ${OBJECTDIR}/_ext/1133045738/Telnet.p1 ${OBJECTDIR}/_ext/1133045738/Helpers.p1 ${OBJECTDIR}/_ext/1133045738/SPIFlash.p1 ${OBJECTDIR}/_ext/1133045738/UART.p1 ${OBJECTDIR}/_ext/1133045738/TFTPc.p1 ${OBJECTDIR}/_ext/1133045738/Random.p1 ${OBJECTDIR}/_ext/1133045738/MPFS2.p1 ${OBJECTDIR}/_ext/1133045738/ZeroconfMulticastDNS.p1 ${OBJECTDIR}/_ext/1133045738/ENCX24J600.p1 ${OBJECTDIR}/_ext/1133045738/ICMP.p1 ${OBJECTDIR}/_ext/1133045738/UDP.p1 ${OBJECTDIR}/_ext/810075401/autostart.p1 ${OBJECTDIR}/interrupts.p1 ${OBJECTDIR}/configuration-bits.p1 ${OBJECTDIR}/fakeuip.p1 ${OBJECTDIR}/rtimer-arch.p1 ${OBJECTDIR}/clock.p1 ${OBJECTDIR}/contiki-main.p1 ${OBJECTDIR}/empty.p1


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
	
${OBJECTDIR}/_ext/1195366242/petsciiconv.p1: ../../../contiki/core/lib/petsciiconv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/petsciiconv.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195366242/petsciiconv.p1  ../../../contiki/core/lib/petsciiconv.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/petsciiconv.d ${OBJECTDIR}/_ext/1195366242/petsciiconv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/petsciiconv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/gcr.p1: ../../../contiki/core/lib/gcr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/gcr.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195366242/gcr.p1  ../../../contiki/core/lib/gcr.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/gcr.d ${OBJECTDIR}/_ext/1195366242/gcr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/gcr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/strncasecmp.p1: ../../../contiki/core/lib/strncasecmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/strncasecmp.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195366242/strncasecmp.p1  ../../../contiki/core/lib/strncasecmp.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/strncasecmp.d ${OBJECTDIR}/_ext/1195366242/strncasecmp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/strncasecmp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
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
	
${OBJECTDIR}/_ext/1195366242/me_tabs.p1: ../../../contiki/core/lib/me_tabs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/me_tabs.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195366242/me_tabs.p1  ../../../contiki/core/lib/me_tabs.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/me_tabs.d ${OBJECTDIR}/_ext/1195366242/me_tabs.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/me_tabs.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/ringbuf.p1: ../../../contiki/core/lib/ringbuf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/ringbuf.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195366242/ringbuf.p1  ../../../contiki/core/lib/ringbuf.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/ringbuf.d ${OBJECTDIR}/_ext/1195366242/ringbuf.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/ringbuf.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/me.p1: ../../../contiki/core/lib/me.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/me.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195366242/me.p1  ../../../contiki/core/lib/me.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/me.d ${OBJECTDIR}/_ext/1195366242/me.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/me.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/checkpoint.p1: ../../../contiki/core/lib/checkpoint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/checkpoint.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195366242/checkpoint.p1  ../../../contiki/core/lib/checkpoint.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/checkpoint.d ${OBJECTDIR}/_ext/1195366242/checkpoint.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/checkpoint.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/sensors.p1: ../../../contiki/core/lib/sensors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/sensors.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195366242/sensors.p1  ../../../contiki/core/lib/sensors.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/sensors.d ${OBJECTDIR}/_ext/1195366242/sensors.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/sensors.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/mmem.p1: ../../../contiki/core/lib/mmem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/mmem.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195366242/mmem.p1  ../../../contiki/core/lib/mmem.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/mmem.d ${OBJECTDIR}/_ext/1195366242/mmem.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/mmem.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/assert.p1: ../../../contiki/core/lib/assert.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/assert.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195366242/assert.p1  ../../../contiki/core/lib/assert.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/assert.d ${OBJECTDIR}/_ext/1195366242/assert.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/assert.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
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
	
${OBJECTDIR}/_ext/744680648/rime-udp.p1: ../../../contiki/core/net/rime/rime-udp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/rime-udp.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/rime-udp.p1  ../../../contiki/core/net/rime/rime-udp.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/rime-udp.d ${OBJECTDIR}/_ext/744680648/rime-udp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/rime-udp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
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
	
${OBJECTDIR}/_ext/114525163/rpl-of-etx.p1: ../../../contiki/core/net/rpl/rpl-of-etx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114525163 
	@${RM} ${OBJECTDIR}/_ext/114525163/rpl-of-etx.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114525163/rpl-of-etx.p1  ../../../contiki/core/net/rpl/rpl-of-etx.c 
	@-${MV} ${OBJECTDIR}/_ext/114525163/rpl-of-etx.d ${OBJECTDIR}/_ext/114525163/rpl-of-etx.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114525163/rpl-of-etx.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114525163/rpl-ext-header.p1: ../../../contiki/core/net/rpl/rpl-ext-header.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114525163 
	@${RM} ${OBJECTDIR}/_ext/114525163/rpl-ext-header.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114525163/rpl-ext-header.p1  ../../../contiki/core/net/rpl/rpl-ext-header.c 
	@-${MV} ${OBJECTDIR}/_ext/114525163/rpl-ext-header.d ${OBJECTDIR}/_ext/114525163/rpl-ext-header.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114525163/rpl-ext-header.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114525163/rpl-dag.p1: ../../../contiki/core/net/rpl/rpl-dag.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114525163 
	@${RM} ${OBJECTDIR}/_ext/114525163/rpl-dag.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114525163/rpl-dag.p1  ../../../contiki/core/net/rpl/rpl-dag.c 
	@-${MV} ${OBJECTDIR}/_ext/114525163/rpl-dag.d ${OBJECTDIR}/_ext/114525163/rpl-dag.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114525163/rpl-dag.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114525163/rpl-timers.p1: ../../../contiki/core/net/rpl/rpl-timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114525163 
	@${RM} ${OBJECTDIR}/_ext/114525163/rpl-timers.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114525163/rpl-timers.p1  ../../../contiki/core/net/rpl/rpl-timers.c 
	@-${MV} ${OBJECTDIR}/_ext/114525163/rpl-timers.d ${OBJECTDIR}/_ext/114525163/rpl-timers.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114525163/rpl-timers.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114525163/rpl-of0.p1: ../../../contiki/core/net/rpl/rpl-of0.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114525163 
	@${RM} ${OBJECTDIR}/_ext/114525163/rpl-of0.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114525163/rpl-of0.p1  ../../../contiki/core/net/rpl/rpl-of0.c 
	@-${MV} ${OBJECTDIR}/_ext/114525163/rpl-of0.d ${OBJECTDIR}/_ext/114525163/rpl-of0.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114525163/rpl-of0.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114525163/rpl-icmp6.p1: ../../../contiki/core/net/rpl/rpl-icmp6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114525163 
	@${RM} ${OBJECTDIR}/_ext/114525163/rpl-icmp6.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114525163/rpl-icmp6.p1  ../../../contiki/core/net/rpl/rpl-icmp6.c 
	@-${MV} ${OBJECTDIR}/_ext/114525163/rpl-icmp6.d ${OBJECTDIR}/_ext/114525163/rpl-icmp6.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114525163/rpl-icmp6.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114525163/rpl.p1: ../../../contiki/core/net/rpl/rpl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114525163 
	@${RM} ${OBJECTDIR}/_ext/114525163/rpl.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114525163/rpl.p1  ../../../contiki/core/net/rpl/rpl.c 
	@-${MV} ${OBJECTDIR}/_ext/114525163/rpl.d ${OBJECTDIR}/_ext/114525163/rpl.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114525163/rpl.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/uip-udp-packet.p1: ../../../contiki/core/net/uip-udp-packet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-udp-packet.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/uip-udp-packet.p1  ../../../contiki/core/net/uip-udp-packet.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/uip-udp-packet.d ${OBJECTDIR}/_ext/1195364426/uip-udp-packet.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/uip-udp-packet.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/slipdev.p1: ../../../contiki/core/net/slipdev.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/slipdev.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/slipdev.p1  ../../../contiki/core/net/slipdev.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/slipdev.d ${OBJECTDIR}/_ext/1195364426/slipdev.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/slipdev.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/queuebuf.p1: ../../../contiki/core/net/queuebuf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/queuebuf.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/queuebuf.p1  ../../../contiki/core/net/queuebuf.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/queuebuf.d ${OBJECTDIR}/_ext/1195364426/queuebuf.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/queuebuf.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/tcpdump.p1: ../../../contiki/core/net/tcpdump.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/tcpdump.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/tcpdump.p1  ../../../contiki/core/net/tcpdump.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/tcpdump.d ${OBJECTDIR}/_ext/1195364426/tcpdump.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/tcpdump.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/uip.p1: ../../../contiki/core/net/uip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/uip.p1  ../../../contiki/core/net/uip.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/uip.d ${OBJECTDIR}/_ext/1195364426/uip.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/uip.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/uip-nd6.p1: ../../../contiki/core/net/uip-nd6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-nd6.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/uip-nd6.p1  ../../../contiki/core/net/uip-nd6.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/uip-nd6.d ${OBJECTDIR}/_ext/1195364426/uip-nd6.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/uip-nd6.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/uip-ds6.p1: ../../../contiki/core/net/uip-ds6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-ds6.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/uip-ds6.p1  ../../../contiki/core/net/uip-ds6.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/uip-ds6.d ${OBJECTDIR}/_ext/1195364426/uip-ds6.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/uip-ds6.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/uip6.p1: ../../../contiki/core/net/uip6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip6.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/uip6.p1  ../../../contiki/core/net/uip6.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/uip6.d ${OBJECTDIR}/_ext/1195364426/uip6.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/uip6.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/netstack.p1: ../../../contiki/core/net/netstack.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/netstack.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/netstack.p1  ../../../contiki/core/net/netstack.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/netstack.d ${OBJECTDIR}/_ext/1195364426/netstack.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/netstack.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/uip-fw.p1: ../../../contiki/core/net/uip-fw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-fw.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/uip-fw.p1  ../../../contiki/core/net/uip-fw.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/uip-fw.d ${OBJECTDIR}/_ext/1195364426/uip-fw.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/uip-fw.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/uip-neighbor.p1: ../../../contiki/core/net/uip-neighbor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-neighbor.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/uip-neighbor.p1  ../../../contiki/core/net/uip-neighbor.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/uip-neighbor.d ${OBJECTDIR}/_ext/1195364426/uip-neighbor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/uip-neighbor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/packetbuf.p1: ../../../contiki/core/net/packetbuf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/packetbuf.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/packetbuf.p1  ../../../contiki/core/net/packetbuf.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/packetbuf.d ${OBJECTDIR}/_ext/1195364426/packetbuf.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/packetbuf.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/uaodv-rt.p1: ../../../contiki/core/net/uaodv-rt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uaodv-rt.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/uaodv-rt.p1  ../../../contiki/core/net/uaodv-rt.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/uaodv-rt.d ${OBJECTDIR}/_ext/1195364426/uaodv-rt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/uaodv-rt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/uip-ds6-route.p1: ../../../contiki/core/net/uip-ds6-route.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-ds6-route.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/uip-ds6-route.p1  ../../../contiki/core/net/uip-ds6-route.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/uip-ds6-route.d ${OBJECTDIR}/_ext/1195364426/uip-ds6-route.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/uip-ds6-route.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/neighbor-info.p1: ../../../contiki/core/net/neighbor-info.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/neighbor-info.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/neighbor-info.p1  ../../../contiki/core/net/neighbor-info.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/neighbor-info.d ${OBJECTDIR}/_ext/1195364426/neighbor-info.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/neighbor-info.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/uip-over-mesh.p1: ../../../contiki/core/net/uip-over-mesh.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-over-mesh.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/uip-over-mesh.p1  ../../../contiki/core/net/uip-over-mesh.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/uip-over-mesh.d ${OBJECTDIR}/_ext/1195364426/uip-over-mesh.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/uip-over-mesh.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/hc.p1: ../../../contiki/core/net/hc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/hc.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/hc.p1  ../../../contiki/core/net/hc.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/hc.d ${OBJECTDIR}/_ext/1195364426/hc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/hc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/uip-fw-drv.p1: ../../../contiki/core/net/uip-fw-drv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-fw-drv.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/uip-fw-drv.p1  ../../../contiki/core/net/uip-fw-drv.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/uip-fw-drv.d ${OBJECTDIR}/_ext/1195364426/uip-fw-drv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/uip-fw-drv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/uip-debug.p1: ../../../contiki/core/net/uip-debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-debug.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/uip-debug.p1  ../../../contiki/core/net/uip-debug.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/uip-debug.d ${OBJECTDIR}/_ext/1195364426/uip-debug.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/uip-debug.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/simple-udp.p1: ../../../contiki/core/net/simple-udp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/simple-udp.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/simple-udp.p1  ../../../contiki/core/net/simple-udp.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/simple-udp.d ${OBJECTDIR}/_ext/1195364426/simple-udp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/simple-udp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/uip-split.p1: ../../../contiki/core/net/uip-split.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-split.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/uip-split.p1  ../../../contiki/core/net/uip-split.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/uip-split.d ${OBJECTDIR}/_ext/1195364426/uip-split.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/uip-split.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/uiplib.p1: ../../../contiki/core/net/uiplib.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uiplib.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/uiplib.p1  ../../../contiki/core/net/uiplib.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/uiplib.d ${OBJECTDIR}/_ext/1195364426/uiplib.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/uiplib.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/uaodv.p1: ../../../contiki/core/net/uaodv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uaodv.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/uaodv.p1  ../../../contiki/core/net/uaodv.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/uaodv.d ${OBJECTDIR}/_ext/1195364426/uaodv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/uaodv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/uip-packetqueue.p1: ../../../contiki/core/net/uip-packetqueue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-packetqueue.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/uip-packetqueue.p1  ../../../contiki/core/net/uip-packetqueue.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/uip-packetqueue.d ${OBJECTDIR}/_ext/1195364426/uip-packetqueue.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/uip-packetqueue.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/uip-icmp6.p1: ../../../contiki/core/net/uip-icmp6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-icmp6.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/uip-icmp6.p1  ../../../contiki/core/net/uip-icmp6.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/uip-icmp6.d ${OBJECTDIR}/_ext/1195364426/uip-icmp6.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/uip-icmp6.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/resolv.p1: ../../../contiki/core/net/resolv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/resolv.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/resolv.p1  ../../../contiki/core/net/resolv.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/resolv.d ${OBJECTDIR}/_ext/1195364426/resolv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/resolv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/packetqueue.p1: ../../../contiki/core/net/packetqueue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/packetqueue.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/packetqueue.p1  ../../../contiki/core/net/packetqueue.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/packetqueue.d ${OBJECTDIR}/_ext/1195364426/packetqueue.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/packetqueue.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/rawpacket-udp.p1: ../../../contiki/core/net/rawpacket-udp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/rawpacket-udp.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/rawpacket-udp.p1  ../../../contiki/core/net/rawpacket-udp.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/rawpacket-udp.d ${OBJECTDIR}/_ext/1195364426/rawpacket-udp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/rawpacket-udp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/neighbor-attr.p1: ../../../contiki/core/net/neighbor-attr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/neighbor-attr.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/neighbor-attr.p1  ../../../contiki/core/net/neighbor-attr.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/neighbor-attr.d ${OBJECTDIR}/_ext/1195364426/neighbor-attr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/neighbor-attr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/dhcpc.p1: ../../../contiki/core/net/dhcpc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/dhcpc.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/dhcpc.p1  ../../../contiki/core/net/dhcpc.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/dhcpc.d ${OBJECTDIR}/_ext/1195364426/dhcpc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/dhcpc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/tcpip.p1: ../../../contiki/core/net/tcpip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/tcpip.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/tcpip.p1  ../../../contiki/core/net/tcpip.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/tcpip.d ${OBJECTDIR}/_ext/1195364426/tcpip.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/tcpip.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/sicslowpan.p1: ../../../contiki/core/net/sicslowpan.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/sicslowpan.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/sicslowpan.p1  ../../../contiki/core/net/sicslowpan.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/sicslowpan.d ${OBJECTDIR}/_ext/1195364426/sicslowpan.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/sicslowpan.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/uip_arp.p1: ../../../contiki/core/net/uip_arp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip_arp.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/uip_arp.p1  ../../../contiki/core/net/uip_arp.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/uip_arp.d ${OBJECTDIR}/_ext/1195364426/uip_arp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/uip_arp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/psock.p1: ../../../contiki/core/net/psock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/psock.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/psock.p1  ../../../contiki/core/net/psock.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/psock.d ${OBJECTDIR}/_ext/1195364426/psock.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/psock.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/compower.p1: ../../../contiki/core/sys/compower.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/compower.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/compower.p1  ../../../contiki/core/sys/compower.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/compower.d ${OBJECTDIR}/_ext/1195359002/compower.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/compower.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/timetable.p1: ../../../contiki/core/sys/timetable.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/timetable.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/timetable.p1  ../../../contiki/core/sys/timetable.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/timetable.d ${OBJECTDIR}/_ext/1195359002/timetable.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/timetable.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/profile.p1: ../../../contiki/core/sys/profile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/profile.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/profile.p1  ../../../contiki/core/sys/profile.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/profile.d ${OBJECTDIR}/_ext/1195359002/profile.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/profile.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/autostart.p1: ../../../contiki/core/sys/autostart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/autostart.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/autostart.p1  ../../../contiki/core/sys/autostart.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/autostart.d ${OBJECTDIR}/_ext/1195359002/autostart.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/autostart.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
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
	
${OBJECTDIR}/_ext/1195359002/arg.p1: ../../../contiki/core/sys/arg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/arg.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/arg.p1  ../../../contiki/core/sys/arg.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/arg.d ${OBJECTDIR}/_ext/1195359002/arg.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/arg.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
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
	
${OBJECTDIR}/_ext/1195359002/timetable-aggregate.p1: ../../../contiki/core/sys/timetable-aggregate.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/timetable-aggregate.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/timetable-aggregate.p1  ../../../contiki/core/sys/timetable-aggregate.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/timetable-aggregate.d ${OBJECTDIR}/_ext/1195359002/timetable-aggregate.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/timetable-aggregate.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/ctimer.p1: ../../../contiki/core/sys/ctimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/ctimer.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/ctimer.p1  ../../../contiki/core/sys/ctimer.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/ctimer.d ${OBJECTDIR}/_ext/1195359002/ctimer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/ctimer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/profile-aggregates.p1: ../../../contiki/core/sys/profile-aggregates.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/profile-aggregates.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/profile-aggregates.p1  ../../../contiki/core/sys/profile-aggregates.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/profile-aggregates.d ${OBJECTDIR}/_ext/1195359002/profile-aggregates.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/profile-aggregates.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/energest.p1: ../../../contiki/core/sys/energest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/energest.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/energest.p1  ../../../contiki/core/sys/energest.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/energest.d ${OBJECTDIR}/_ext/1195359002/energest.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/energest.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/SNMPv3.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/SNMPv3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/SNMPv3.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/SNMPv3.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/SNMPv3.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/SNMPv3.d ${OBJECTDIR}/_ext/1133045738/SNMPv3.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/SNMPv3.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/UART2TCPBridge.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/UART2TCPBridge.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/UART2TCPBridge.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/UART2TCPBridge.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/UART2TCPBridge.d ${OBJECTDIR}/_ext/1133045738/UART2TCPBridge.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/UART2TCPBridge.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/ETH97J60.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ETH97J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/ETH97J60.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/ETH97J60.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ETH97J60.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/ETH97J60.d ${OBJECTDIR}/_ext/1133045738/ETH97J60.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/ETH97J60.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/TCP.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/TCP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/TCP.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/TCP.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/TCP.d ${OBJECTDIR}/_ext/1133045738/TCP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/TCP.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/DNS.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/DNS.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/DNS.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/DNS.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/DNS.d ${OBJECTDIR}/_ext/1133045738/DNS.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/DNS.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/FileSystem.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/FileSystem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/FileSystem.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/FileSystem.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/FileSystem.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/FileSystem.d ${OBJECTDIR}/_ext/1133045738/FileSystem.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/FileSystem.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/ARP.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/ARP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/ARP.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ARP.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/ARP.d ${OBJECTDIR}/_ext/1133045738/ARP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/ARP.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/UDPPerformanceTest.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/UDPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/UDPPerformanceTest.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/UDPPerformanceTest.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/UDPPerformanceTest.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/UDPPerformanceTest.d ${OBJECTDIR}/_ext/1133045738/UDPPerformanceTest.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/UDPPerformanceTest.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/DHCP.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/DHCP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/DHCP.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/DHCP.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/DHCP.d ${OBJECTDIR}/_ext/1133045738/DHCP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/DHCP.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/IP.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/IP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/IP.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/IP.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/IP.d ${OBJECTDIR}/_ext/1133045738/IP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/IP.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/ENC28J60.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ENC28J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/ENC28J60.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/ENC28J60.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ENC28J60.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/ENC28J60.d ${OBJECTDIR}/_ext/1133045738/ENC28J60.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/ENC28J60.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/SPIRAM.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/SPIRAM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/SPIRAM.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/SPIRAM.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/SPIRAM.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/SPIRAM.d ${OBJECTDIR}/_ext/1133045738/SPIRAM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/SPIRAM.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/Tick.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/Tick.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/Tick.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/Tick.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/Tick.d ${OBJECTDIR}/_ext/1133045738/Tick.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/Tick.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/StackTsk.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/StackTsk.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/StackTsk.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/StackTsk.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/StackTsk.d ${OBJECTDIR}/_ext/1133045738/StackTsk.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/StackTsk.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/RSA.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/RSA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/RSA.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/RSA.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/RSA.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/RSA.d ${OBJECTDIR}/_ext/1133045738/RSA.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/RSA.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/ARCFOUR.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ARCFOUR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/ARCFOUR.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/ARCFOUR.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ARCFOUR.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/ARCFOUR.d ${OBJECTDIR}/_ext/1133045738/ARCFOUR.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/ARCFOUR.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/Reboot.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/Reboot.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/Reboot.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/Reboot.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/Reboot.d ${OBJECTDIR}/_ext/1133045738/Reboot.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/Reboot.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/DynDNS.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/DynDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/DynDNS.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/DynDNS.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/DynDNS.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/DynDNS.d ${OBJECTDIR}/_ext/1133045738/DynDNS.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/DynDNS.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/ZeroconfLinkLocal.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ZeroconfLinkLocal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/ZeroconfLinkLocal.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/ZeroconfLinkLocal.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ZeroconfLinkLocal.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/ZeroconfLinkLocal.d ${OBJECTDIR}/_ext/1133045738/ZeroconfLinkLocal.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/ZeroconfLinkLocal.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/DNSs.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/DNSs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/DNSs.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/DNSs.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/DNSs.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/DNSs.d ${OBJECTDIR}/_ext/1133045738/DNSs.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/DNSs.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/DHCPs.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/DHCPs.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/DHCPs.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/DHCPs.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/DHCPs.d ${OBJECTDIR}/_ext/1133045738/DHCPs.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/DHCPs.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/SMTP.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/SMTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/SMTP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/SMTP.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/SMTP.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/SMTP.d ${OBJECTDIR}/_ext/1133045738/SMTP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/SMTP.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/BigInt.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/BigInt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/BigInt.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/BigInt.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/BigInt.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/BigInt.d ${OBJECTDIR}/_ext/1133045738/BigInt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/BigInt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/Delay.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/Delay.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/Delay.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/Delay.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/Delay.d ${OBJECTDIR}/_ext/1133045738/Delay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/Delay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/ZeroconfHelper.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ZeroconfHelper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/ZeroconfHelper.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/ZeroconfHelper.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ZeroconfHelper.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/ZeroconfHelper.d ${OBJECTDIR}/_ext/1133045738/ZeroconfHelper.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/ZeroconfHelper.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/SNMP.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/SNMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/SNMP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/SNMP.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/SNMP.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/SNMP.d ${OBJECTDIR}/_ext/1133045738/SNMP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/SNMP.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/NBNS.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/NBNS.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/NBNS.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/NBNS.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/NBNS.d ${OBJECTDIR}/_ext/1133045738/NBNS.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/NBNS.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/Announce.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/Announce.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/Announce.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/Announce.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/Announce.d ${OBJECTDIR}/_ext/1133045738/Announce.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/Announce.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/SSL.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/SSL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/SSL.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/SSL.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/SSL.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/SSL.d ${OBJECTDIR}/_ext/1133045738/SSL.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/SSL.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/FTP.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/FTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/FTP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/FTP.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/FTP.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/FTP.d ${OBJECTDIR}/_ext/1133045738/FTP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/FTP.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/SPIEEPROM.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/SPIEEPROM.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/SPIEEPROM.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/SPIEEPROM.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/SPIEEPROM.d ${OBJECTDIR}/_ext/1133045738/SPIEEPROM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/SPIEEPROM.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/LCDBlocking.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/LCDBlocking.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/LCDBlocking.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/LCDBlocking.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/LCDBlocking.d ${OBJECTDIR}/_ext/1133045738/LCDBlocking.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/LCDBlocking.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/SNMPv3USM.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/SNMPv3USM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/SNMPv3USM.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/SNMPv3USM.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/SNMPv3USM.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/SNMPv3USM.d ${OBJECTDIR}/_ext/1133045738/SNMPv3USM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/SNMPv3USM.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/Hashes.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/Hashes.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/Hashes.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/Hashes.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/Hashes.d ${OBJECTDIR}/_ext/1133045738/Hashes.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/Hashes.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/BerkeleyAPI.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/BerkeleyAPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/BerkeleyAPI.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/BerkeleyAPI.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/BerkeleyAPI.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/BerkeleyAPI.d ${OBJECTDIR}/_ext/1133045738/BerkeleyAPI.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/BerkeleyAPI.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/AutoIP.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/AutoIP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/AutoIP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/AutoIP.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/AutoIP.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/AutoIP.d ${OBJECTDIR}/_ext/1133045738/AutoIP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/AutoIP.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/HTTP2.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/HTTP2.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/HTTP2.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/HTTP2.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/HTTP2.d ${OBJECTDIR}/_ext/1133045738/HTTP2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/HTTP2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/SNTP.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/SNTP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/SNTP.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/SNTP.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/SNTP.d ${OBJECTDIR}/_ext/1133045738/SNTP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/SNTP.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/TCPPerformanceTest.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/TCPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/TCPPerformanceTest.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/TCPPerformanceTest.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/TCPPerformanceTest.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/TCPPerformanceTest.d ${OBJECTDIR}/_ext/1133045738/TCPPerformanceTest.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/TCPPerformanceTest.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/Telnet.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/Telnet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/Telnet.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/Telnet.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/Telnet.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/Telnet.d ${OBJECTDIR}/_ext/1133045738/Telnet.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/Telnet.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/Helpers.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/Helpers.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/Helpers.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/Helpers.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/Helpers.d ${OBJECTDIR}/_ext/1133045738/Helpers.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/Helpers.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/SPIFlash.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/SPIFlash.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/SPIFlash.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/SPIFlash.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/SPIFlash.d ${OBJECTDIR}/_ext/1133045738/SPIFlash.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/SPIFlash.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/UART.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/UART.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/UART.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/UART.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/UART.d ${OBJECTDIR}/_ext/1133045738/UART.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/UART.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/TFTPc.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/TFTPc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/TFTPc.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/TFTPc.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/TFTPc.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/TFTPc.d ${OBJECTDIR}/_ext/1133045738/TFTPc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/TFTPc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/Random.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/Random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/Random.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/Random.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/Random.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/Random.d ${OBJECTDIR}/_ext/1133045738/Random.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/Random.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/MPFS2.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/MPFS2.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/MPFS2.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/MPFS2.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/MPFS2.d ${OBJECTDIR}/_ext/1133045738/MPFS2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/MPFS2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/ZeroconfMulticastDNS.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ZeroconfMulticastDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/ZeroconfMulticastDNS.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/ZeroconfMulticastDNS.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ZeroconfMulticastDNS.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/ZeroconfMulticastDNS.d ${OBJECTDIR}/_ext/1133045738/ZeroconfMulticastDNS.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/ZeroconfMulticastDNS.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/ENCX24J600.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ENCX24J600.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/ENCX24J600.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/ENCX24J600.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ENCX24J600.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/ENCX24J600.d ${OBJECTDIR}/_ext/1133045738/ENCX24J600.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/ENCX24J600.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/ICMP.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/ICMP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/ICMP.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ICMP.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/ICMP.d ${OBJECTDIR}/_ext/1133045738/ICMP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/ICMP.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/UDP.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/UDP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/UDP.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/UDP.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/UDP.d ${OBJECTDIR}/_ext/1133045738/UDP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/UDP.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
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
	
${OBJECTDIR}/_ext/1195366242/petsciiconv.p1: ../../../contiki/core/lib/petsciiconv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/petsciiconv.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195366242/petsciiconv.p1  ../../../contiki/core/lib/petsciiconv.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/petsciiconv.d ${OBJECTDIR}/_ext/1195366242/petsciiconv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/petsciiconv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/gcr.p1: ../../../contiki/core/lib/gcr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/gcr.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195366242/gcr.p1  ../../../contiki/core/lib/gcr.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/gcr.d ${OBJECTDIR}/_ext/1195366242/gcr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/gcr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/strncasecmp.p1: ../../../contiki/core/lib/strncasecmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/strncasecmp.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195366242/strncasecmp.p1  ../../../contiki/core/lib/strncasecmp.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/strncasecmp.d ${OBJECTDIR}/_ext/1195366242/strncasecmp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/strncasecmp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
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
	
${OBJECTDIR}/_ext/1195366242/me_tabs.p1: ../../../contiki/core/lib/me_tabs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/me_tabs.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195366242/me_tabs.p1  ../../../contiki/core/lib/me_tabs.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/me_tabs.d ${OBJECTDIR}/_ext/1195366242/me_tabs.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/me_tabs.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/ringbuf.p1: ../../../contiki/core/lib/ringbuf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/ringbuf.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195366242/ringbuf.p1  ../../../contiki/core/lib/ringbuf.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/ringbuf.d ${OBJECTDIR}/_ext/1195366242/ringbuf.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/ringbuf.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/me.p1: ../../../contiki/core/lib/me.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/me.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195366242/me.p1  ../../../contiki/core/lib/me.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/me.d ${OBJECTDIR}/_ext/1195366242/me.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/me.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/checkpoint.p1: ../../../contiki/core/lib/checkpoint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/checkpoint.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195366242/checkpoint.p1  ../../../contiki/core/lib/checkpoint.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/checkpoint.d ${OBJECTDIR}/_ext/1195366242/checkpoint.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/checkpoint.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/sensors.p1: ../../../contiki/core/lib/sensors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/sensors.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195366242/sensors.p1  ../../../contiki/core/lib/sensors.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/sensors.d ${OBJECTDIR}/_ext/1195366242/sensors.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/sensors.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/mmem.p1: ../../../contiki/core/lib/mmem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/mmem.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195366242/mmem.p1  ../../../contiki/core/lib/mmem.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/mmem.d ${OBJECTDIR}/_ext/1195366242/mmem.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/mmem.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195366242/assert.p1: ../../../contiki/core/lib/assert.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195366242 
	@${RM} ${OBJECTDIR}/_ext/1195366242/assert.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195366242/assert.p1  ../../../contiki/core/lib/assert.c 
	@-${MV} ${OBJECTDIR}/_ext/1195366242/assert.d ${OBJECTDIR}/_ext/1195366242/assert.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195366242/assert.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
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
	
${OBJECTDIR}/_ext/744680648/rime-udp.p1: ../../../contiki/core/net/rime/rime-udp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/744680648 
	@${RM} ${OBJECTDIR}/_ext/744680648/rime-udp.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/744680648/rime-udp.p1  ../../../contiki/core/net/rime/rime-udp.c 
	@-${MV} ${OBJECTDIR}/_ext/744680648/rime-udp.d ${OBJECTDIR}/_ext/744680648/rime-udp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/744680648/rime-udp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
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
	
${OBJECTDIR}/_ext/114525163/rpl-of-etx.p1: ../../../contiki/core/net/rpl/rpl-of-etx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114525163 
	@${RM} ${OBJECTDIR}/_ext/114525163/rpl-of-etx.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114525163/rpl-of-etx.p1  ../../../contiki/core/net/rpl/rpl-of-etx.c 
	@-${MV} ${OBJECTDIR}/_ext/114525163/rpl-of-etx.d ${OBJECTDIR}/_ext/114525163/rpl-of-etx.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114525163/rpl-of-etx.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114525163/rpl-ext-header.p1: ../../../contiki/core/net/rpl/rpl-ext-header.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114525163 
	@${RM} ${OBJECTDIR}/_ext/114525163/rpl-ext-header.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114525163/rpl-ext-header.p1  ../../../contiki/core/net/rpl/rpl-ext-header.c 
	@-${MV} ${OBJECTDIR}/_ext/114525163/rpl-ext-header.d ${OBJECTDIR}/_ext/114525163/rpl-ext-header.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114525163/rpl-ext-header.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114525163/rpl-dag.p1: ../../../contiki/core/net/rpl/rpl-dag.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114525163 
	@${RM} ${OBJECTDIR}/_ext/114525163/rpl-dag.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114525163/rpl-dag.p1  ../../../contiki/core/net/rpl/rpl-dag.c 
	@-${MV} ${OBJECTDIR}/_ext/114525163/rpl-dag.d ${OBJECTDIR}/_ext/114525163/rpl-dag.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114525163/rpl-dag.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114525163/rpl-timers.p1: ../../../contiki/core/net/rpl/rpl-timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114525163 
	@${RM} ${OBJECTDIR}/_ext/114525163/rpl-timers.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114525163/rpl-timers.p1  ../../../contiki/core/net/rpl/rpl-timers.c 
	@-${MV} ${OBJECTDIR}/_ext/114525163/rpl-timers.d ${OBJECTDIR}/_ext/114525163/rpl-timers.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114525163/rpl-timers.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114525163/rpl-of0.p1: ../../../contiki/core/net/rpl/rpl-of0.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114525163 
	@${RM} ${OBJECTDIR}/_ext/114525163/rpl-of0.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114525163/rpl-of0.p1  ../../../contiki/core/net/rpl/rpl-of0.c 
	@-${MV} ${OBJECTDIR}/_ext/114525163/rpl-of0.d ${OBJECTDIR}/_ext/114525163/rpl-of0.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114525163/rpl-of0.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114525163/rpl-icmp6.p1: ../../../contiki/core/net/rpl/rpl-icmp6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114525163 
	@${RM} ${OBJECTDIR}/_ext/114525163/rpl-icmp6.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114525163/rpl-icmp6.p1  ../../../contiki/core/net/rpl/rpl-icmp6.c 
	@-${MV} ${OBJECTDIR}/_ext/114525163/rpl-icmp6.d ${OBJECTDIR}/_ext/114525163/rpl-icmp6.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114525163/rpl-icmp6.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/114525163/rpl.p1: ../../../contiki/core/net/rpl/rpl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/114525163 
	@${RM} ${OBJECTDIR}/_ext/114525163/rpl.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/114525163/rpl.p1  ../../../contiki/core/net/rpl/rpl.c 
	@-${MV} ${OBJECTDIR}/_ext/114525163/rpl.d ${OBJECTDIR}/_ext/114525163/rpl.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/114525163/rpl.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/uip-udp-packet.p1: ../../../contiki/core/net/uip-udp-packet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-udp-packet.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/uip-udp-packet.p1  ../../../contiki/core/net/uip-udp-packet.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/uip-udp-packet.d ${OBJECTDIR}/_ext/1195364426/uip-udp-packet.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/uip-udp-packet.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/slipdev.p1: ../../../contiki/core/net/slipdev.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/slipdev.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/slipdev.p1  ../../../contiki/core/net/slipdev.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/slipdev.d ${OBJECTDIR}/_ext/1195364426/slipdev.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/slipdev.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/queuebuf.p1: ../../../contiki/core/net/queuebuf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/queuebuf.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/queuebuf.p1  ../../../contiki/core/net/queuebuf.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/queuebuf.d ${OBJECTDIR}/_ext/1195364426/queuebuf.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/queuebuf.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/tcpdump.p1: ../../../contiki/core/net/tcpdump.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/tcpdump.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/tcpdump.p1  ../../../contiki/core/net/tcpdump.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/tcpdump.d ${OBJECTDIR}/_ext/1195364426/tcpdump.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/tcpdump.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/uip.p1: ../../../contiki/core/net/uip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/uip.p1  ../../../contiki/core/net/uip.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/uip.d ${OBJECTDIR}/_ext/1195364426/uip.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/uip.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/uip-nd6.p1: ../../../contiki/core/net/uip-nd6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-nd6.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/uip-nd6.p1  ../../../contiki/core/net/uip-nd6.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/uip-nd6.d ${OBJECTDIR}/_ext/1195364426/uip-nd6.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/uip-nd6.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/uip-ds6.p1: ../../../contiki/core/net/uip-ds6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-ds6.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/uip-ds6.p1  ../../../contiki/core/net/uip-ds6.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/uip-ds6.d ${OBJECTDIR}/_ext/1195364426/uip-ds6.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/uip-ds6.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/uip6.p1: ../../../contiki/core/net/uip6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip6.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/uip6.p1  ../../../contiki/core/net/uip6.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/uip6.d ${OBJECTDIR}/_ext/1195364426/uip6.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/uip6.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/netstack.p1: ../../../contiki/core/net/netstack.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/netstack.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/netstack.p1  ../../../contiki/core/net/netstack.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/netstack.d ${OBJECTDIR}/_ext/1195364426/netstack.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/netstack.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/uip-fw.p1: ../../../contiki/core/net/uip-fw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-fw.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/uip-fw.p1  ../../../contiki/core/net/uip-fw.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/uip-fw.d ${OBJECTDIR}/_ext/1195364426/uip-fw.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/uip-fw.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/uip-neighbor.p1: ../../../contiki/core/net/uip-neighbor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-neighbor.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/uip-neighbor.p1  ../../../contiki/core/net/uip-neighbor.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/uip-neighbor.d ${OBJECTDIR}/_ext/1195364426/uip-neighbor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/uip-neighbor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/packetbuf.p1: ../../../contiki/core/net/packetbuf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/packetbuf.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/packetbuf.p1  ../../../contiki/core/net/packetbuf.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/packetbuf.d ${OBJECTDIR}/_ext/1195364426/packetbuf.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/packetbuf.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/uaodv-rt.p1: ../../../contiki/core/net/uaodv-rt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uaodv-rt.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/uaodv-rt.p1  ../../../contiki/core/net/uaodv-rt.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/uaodv-rt.d ${OBJECTDIR}/_ext/1195364426/uaodv-rt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/uaodv-rt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/uip-ds6-route.p1: ../../../contiki/core/net/uip-ds6-route.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-ds6-route.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/uip-ds6-route.p1  ../../../contiki/core/net/uip-ds6-route.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/uip-ds6-route.d ${OBJECTDIR}/_ext/1195364426/uip-ds6-route.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/uip-ds6-route.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/neighbor-info.p1: ../../../contiki/core/net/neighbor-info.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/neighbor-info.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/neighbor-info.p1  ../../../contiki/core/net/neighbor-info.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/neighbor-info.d ${OBJECTDIR}/_ext/1195364426/neighbor-info.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/neighbor-info.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/uip-over-mesh.p1: ../../../contiki/core/net/uip-over-mesh.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-over-mesh.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/uip-over-mesh.p1  ../../../contiki/core/net/uip-over-mesh.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/uip-over-mesh.d ${OBJECTDIR}/_ext/1195364426/uip-over-mesh.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/uip-over-mesh.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/hc.p1: ../../../contiki/core/net/hc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/hc.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/hc.p1  ../../../contiki/core/net/hc.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/hc.d ${OBJECTDIR}/_ext/1195364426/hc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/hc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/uip-fw-drv.p1: ../../../contiki/core/net/uip-fw-drv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-fw-drv.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/uip-fw-drv.p1  ../../../contiki/core/net/uip-fw-drv.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/uip-fw-drv.d ${OBJECTDIR}/_ext/1195364426/uip-fw-drv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/uip-fw-drv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/uip-debug.p1: ../../../contiki/core/net/uip-debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-debug.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/uip-debug.p1  ../../../contiki/core/net/uip-debug.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/uip-debug.d ${OBJECTDIR}/_ext/1195364426/uip-debug.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/uip-debug.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/simple-udp.p1: ../../../contiki/core/net/simple-udp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/simple-udp.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/simple-udp.p1  ../../../contiki/core/net/simple-udp.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/simple-udp.d ${OBJECTDIR}/_ext/1195364426/simple-udp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/simple-udp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/uip-split.p1: ../../../contiki/core/net/uip-split.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-split.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/uip-split.p1  ../../../contiki/core/net/uip-split.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/uip-split.d ${OBJECTDIR}/_ext/1195364426/uip-split.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/uip-split.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/uiplib.p1: ../../../contiki/core/net/uiplib.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uiplib.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/uiplib.p1  ../../../contiki/core/net/uiplib.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/uiplib.d ${OBJECTDIR}/_ext/1195364426/uiplib.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/uiplib.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/uaodv.p1: ../../../contiki/core/net/uaodv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uaodv.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/uaodv.p1  ../../../contiki/core/net/uaodv.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/uaodv.d ${OBJECTDIR}/_ext/1195364426/uaodv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/uaodv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/uip-packetqueue.p1: ../../../contiki/core/net/uip-packetqueue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-packetqueue.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/uip-packetqueue.p1  ../../../contiki/core/net/uip-packetqueue.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/uip-packetqueue.d ${OBJECTDIR}/_ext/1195364426/uip-packetqueue.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/uip-packetqueue.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/uip-icmp6.p1: ../../../contiki/core/net/uip-icmp6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip-icmp6.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/uip-icmp6.p1  ../../../contiki/core/net/uip-icmp6.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/uip-icmp6.d ${OBJECTDIR}/_ext/1195364426/uip-icmp6.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/uip-icmp6.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/resolv.p1: ../../../contiki/core/net/resolv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/resolv.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/resolv.p1  ../../../contiki/core/net/resolv.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/resolv.d ${OBJECTDIR}/_ext/1195364426/resolv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/resolv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/packetqueue.p1: ../../../contiki/core/net/packetqueue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/packetqueue.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/packetqueue.p1  ../../../contiki/core/net/packetqueue.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/packetqueue.d ${OBJECTDIR}/_ext/1195364426/packetqueue.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/packetqueue.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/rawpacket-udp.p1: ../../../contiki/core/net/rawpacket-udp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/rawpacket-udp.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/rawpacket-udp.p1  ../../../contiki/core/net/rawpacket-udp.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/rawpacket-udp.d ${OBJECTDIR}/_ext/1195364426/rawpacket-udp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/rawpacket-udp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/neighbor-attr.p1: ../../../contiki/core/net/neighbor-attr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/neighbor-attr.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/neighbor-attr.p1  ../../../contiki/core/net/neighbor-attr.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/neighbor-attr.d ${OBJECTDIR}/_ext/1195364426/neighbor-attr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/neighbor-attr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/dhcpc.p1: ../../../contiki/core/net/dhcpc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/dhcpc.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/dhcpc.p1  ../../../contiki/core/net/dhcpc.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/dhcpc.d ${OBJECTDIR}/_ext/1195364426/dhcpc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/dhcpc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/tcpip.p1: ../../../contiki/core/net/tcpip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/tcpip.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/tcpip.p1  ../../../contiki/core/net/tcpip.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/tcpip.d ${OBJECTDIR}/_ext/1195364426/tcpip.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/tcpip.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/sicslowpan.p1: ../../../contiki/core/net/sicslowpan.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/sicslowpan.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/sicslowpan.p1  ../../../contiki/core/net/sicslowpan.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/sicslowpan.d ${OBJECTDIR}/_ext/1195364426/sicslowpan.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/sicslowpan.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/uip_arp.p1: ../../../contiki/core/net/uip_arp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/uip_arp.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/uip_arp.p1  ../../../contiki/core/net/uip_arp.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/uip_arp.d ${OBJECTDIR}/_ext/1195364426/uip_arp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/uip_arp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195364426/psock.p1: ../../../contiki/core/net/psock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195364426 
	@${RM} ${OBJECTDIR}/_ext/1195364426/psock.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195364426/psock.p1  ../../../contiki/core/net/psock.c 
	@-${MV} ${OBJECTDIR}/_ext/1195364426/psock.d ${OBJECTDIR}/_ext/1195364426/psock.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195364426/psock.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/compower.p1: ../../../contiki/core/sys/compower.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/compower.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/compower.p1  ../../../contiki/core/sys/compower.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/compower.d ${OBJECTDIR}/_ext/1195359002/compower.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/compower.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/timetable.p1: ../../../contiki/core/sys/timetable.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/timetable.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/timetable.p1  ../../../contiki/core/sys/timetable.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/timetable.d ${OBJECTDIR}/_ext/1195359002/timetable.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/timetable.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/profile.p1: ../../../contiki/core/sys/profile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/profile.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/profile.p1  ../../../contiki/core/sys/profile.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/profile.d ${OBJECTDIR}/_ext/1195359002/profile.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/profile.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/autostart.p1: ../../../contiki/core/sys/autostart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/autostart.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/autostart.p1  ../../../contiki/core/sys/autostart.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/autostart.d ${OBJECTDIR}/_ext/1195359002/autostart.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/autostart.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
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
	
${OBJECTDIR}/_ext/1195359002/arg.p1: ../../../contiki/core/sys/arg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/arg.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/arg.p1  ../../../contiki/core/sys/arg.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/arg.d ${OBJECTDIR}/_ext/1195359002/arg.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/arg.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
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
	
${OBJECTDIR}/_ext/1195359002/timetable-aggregate.p1: ../../../contiki/core/sys/timetable-aggregate.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/timetable-aggregate.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/timetable-aggregate.p1  ../../../contiki/core/sys/timetable-aggregate.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/timetable-aggregate.d ${OBJECTDIR}/_ext/1195359002/timetable-aggregate.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/timetable-aggregate.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/ctimer.p1: ../../../contiki/core/sys/ctimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/ctimer.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/ctimer.p1  ../../../contiki/core/sys/ctimer.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/ctimer.d ${OBJECTDIR}/_ext/1195359002/ctimer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/ctimer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/profile-aggregates.p1: ../../../contiki/core/sys/profile-aggregates.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/profile-aggregates.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/profile-aggregates.p1  ../../../contiki/core/sys/profile-aggregates.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/profile-aggregates.d ${OBJECTDIR}/_ext/1195359002/profile-aggregates.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/profile-aggregates.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1195359002/energest.p1: ../../../contiki/core/sys/energest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1195359002 
	@${RM} ${OBJECTDIR}/_ext/1195359002/energest.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1195359002/energest.p1  ../../../contiki/core/sys/energest.c 
	@-${MV} ${OBJECTDIR}/_ext/1195359002/energest.d ${OBJECTDIR}/_ext/1195359002/energest.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1195359002/energest.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/SNMPv3.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/SNMPv3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/SNMPv3.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/SNMPv3.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/SNMPv3.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/SNMPv3.d ${OBJECTDIR}/_ext/1133045738/SNMPv3.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/SNMPv3.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/UART2TCPBridge.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/UART2TCPBridge.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/UART2TCPBridge.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/UART2TCPBridge.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/UART2TCPBridge.d ${OBJECTDIR}/_ext/1133045738/UART2TCPBridge.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/UART2TCPBridge.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/ETH97J60.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ETH97J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/ETH97J60.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/ETH97J60.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ETH97J60.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/ETH97J60.d ${OBJECTDIR}/_ext/1133045738/ETH97J60.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/ETH97J60.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/TCP.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/TCP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/TCP.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/TCP.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/TCP.d ${OBJECTDIR}/_ext/1133045738/TCP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/TCP.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/DNS.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/DNS.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/DNS.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/DNS.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/DNS.d ${OBJECTDIR}/_ext/1133045738/DNS.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/DNS.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/FileSystem.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/FileSystem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/FileSystem.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/FileSystem.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/FileSystem.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/FileSystem.d ${OBJECTDIR}/_ext/1133045738/FileSystem.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/FileSystem.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/ARP.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/ARP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/ARP.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ARP.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/ARP.d ${OBJECTDIR}/_ext/1133045738/ARP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/ARP.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/UDPPerformanceTest.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/UDPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/UDPPerformanceTest.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/UDPPerformanceTest.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/UDPPerformanceTest.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/UDPPerformanceTest.d ${OBJECTDIR}/_ext/1133045738/UDPPerformanceTest.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/UDPPerformanceTest.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/DHCP.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/DHCP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/DHCP.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/DHCP.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/DHCP.d ${OBJECTDIR}/_ext/1133045738/DHCP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/DHCP.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/IP.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/IP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/IP.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/IP.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/IP.d ${OBJECTDIR}/_ext/1133045738/IP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/IP.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/ENC28J60.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ENC28J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/ENC28J60.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/ENC28J60.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ENC28J60.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/ENC28J60.d ${OBJECTDIR}/_ext/1133045738/ENC28J60.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/ENC28J60.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/SPIRAM.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/SPIRAM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/SPIRAM.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/SPIRAM.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/SPIRAM.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/SPIRAM.d ${OBJECTDIR}/_ext/1133045738/SPIRAM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/SPIRAM.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/Tick.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/Tick.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/Tick.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/Tick.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/Tick.d ${OBJECTDIR}/_ext/1133045738/Tick.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/Tick.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/StackTsk.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/StackTsk.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/StackTsk.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/StackTsk.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/StackTsk.d ${OBJECTDIR}/_ext/1133045738/StackTsk.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/StackTsk.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/RSA.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/RSA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/RSA.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/RSA.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/RSA.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/RSA.d ${OBJECTDIR}/_ext/1133045738/RSA.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/RSA.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/ARCFOUR.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ARCFOUR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/ARCFOUR.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/ARCFOUR.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ARCFOUR.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/ARCFOUR.d ${OBJECTDIR}/_ext/1133045738/ARCFOUR.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/ARCFOUR.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/Reboot.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/Reboot.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/Reboot.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/Reboot.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/Reboot.d ${OBJECTDIR}/_ext/1133045738/Reboot.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/Reboot.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/DynDNS.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/DynDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/DynDNS.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/DynDNS.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/DynDNS.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/DynDNS.d ${OBJECTDIR}/_ext/1133045738/DynDNS.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/DynDNS.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/ZeroconfLinkLocal.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ZeroconfLinkLocal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/ZeroconfLinkLocal.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/ZeroconfLinkLocal.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ZeroconfLinkLocal.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/ZeroconfLinkLocal.d ${OBJECTDIR}/_ext/1133045738/ZeroconfLinkLocal.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/ZeroconfLinkLocal.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/DNSs.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/DNSs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/DNSs.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/DNSs.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/DNSs.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/DNSs.d ${OBJECTDIR}/_ext/1133045738/DNSs.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/DNSs.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/DHCPs.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/DHCPs.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/DHCPs.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/DHCPs.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/DHCPs.d ${OBJECTDIR}/_ext/1133045738/DHCPs.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/DHCPs.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/SMTP.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/SMTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/SMTP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/SMTP.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/SMTP.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/SMTP.d ${OBJECTDIR}/_ext/1133045738/SMTP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/SMTP.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/BigInt.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/BigInt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/BigInt.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/BigInt.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/BigInt.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/BigInt.d ${OBJECTDIR}/_ext/1133045738/BigInt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/BigInt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/Delay.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/Delay.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/Delay.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/Delay.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/Delay.d ${OBJECTDIR}/_ext/1133045738/Delay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/Delay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/ZeroconfHelper.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ZeroconfHelper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/ZeroconfHelper.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/ZeroconfHelper.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ZeroconfHelper.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/ZeroconfHelper.d ${OBJECTDIR}/_ext/1133045738/ZeroconfHelper.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/ZeroconfHelper.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/SNMP.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/SNMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/SNMP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/SNMP.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/SNMP.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/SNMP.d ${OBJECTDIR}/_ext/1133045738/SNMP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/SNMP.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/NBNS.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/NBNS.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/NBNS.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/NBNS.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/NBNS.d ${OBJECTDIR}/_ext/1133045738/NBNS.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/NBNS.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/Announce.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/Announce.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/Announce.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/Announce.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/Announce.d ${OBJECTDIR}/_ext/1133045738/Announce.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/Announce.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/SSL.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/SSL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/SSL.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/SSL.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/SSL.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/SSL.d ${OBJECTDIR}/_ext/1133045738/SSL.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/SSL.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/FTP.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/FTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/FTP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/FTP.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/FTP.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/FTP.d ${OBJECTDIR}/_ext/1133045738/FTP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/FTP.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/SPIEEPROM.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/SPIEEPROM.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/SPIEEPROM.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/SPIEEPROM.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/SPIEEPROM.d ${OBJECTDIR}/_ext/1133045738/SPIEEPROM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/SPIEEPROM.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/LCDBlocking.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/LCDBlocking.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/LCDBlocking.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/LCDBlocking.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/LCDBlocking.d ${OBJECTDIR}/_ext/1133045738/LCDBlocking.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/LCDBlocking.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/SNMPv3USM.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/SNMPv3USM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/SNMPv3USM.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/SNMPv3USM.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/SNMPv3USM.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/SNMPv3USM.d ${OBJECTDIR}/_ext/1133045738/SNMPv3USM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/SNMPv3USM.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/Hashes.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/Hashes.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/Hashes.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/Hashes.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/Hashes.d ${OBJECTDIR}/_ext/1133045738/Hashes.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/Hashes.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/BerkeleyAPI.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/BerkeleyAPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/BerkeleyAPI.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/BerkeleyAPI.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/BerkeleyAPI.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/BerkeleyAPI.d ${OBJECTDIR}/_ext/1133045738/BerkeleyAPI.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/BerkeleyAPI.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/AutoIP.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/AutoIP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/AutoIP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/AutoIP.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/AutoIP.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/AutoIP.d ${OBJECTDIR}/_ext/1133045738/AutoIP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/AutoIP.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/HTTP2.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/HTTP2.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/HTTP2.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/HTTP2.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/HTTP2.d ${OBJECTDIR}/_ext/1133045738/HTTP2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/HTTP2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/SNTP.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/SNTP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/SNTP.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/SNTP.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/SNTP.d ${OBJECTDIR}/_ext/1133045738/SNTP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/SNTP.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/TCPPerformanceTest.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/TCPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/TCPPerformanceTest.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/TCPPerformanceTest.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/TCPPerformanceTest.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/TCPPerformanceTest.d ${OBJECTDIR}/_ext/1133045738/TCPPerformanceTest.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/TCPPerformanceTest.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/Telnet.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/Telnet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/Telnet.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/Telnet.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/Telnet.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/Telnet.d ${OBJECTDIR}/_ext/1133045738/Telnet.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/Telnet.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/Helpers.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/Helpers.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/Helpers.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/Helpers.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/Helpers.d ${OBJECTDIR}/_ext/1133045738/Helpers.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/Helpers.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/SPIFlash.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/SPIFlash.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/SPIFlash.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/SPIFlash.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/SPIFlash.d ${OBJECTDIR}/_ext/1133045738/SPIFlash.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/SPIFlash.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/UART.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/UART.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/UART.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/UART.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/UART.d ${OBJECTDIR}/_ext/1133045738/UART.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/UART.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/TFTPc.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/TFTPc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/TFTPc.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/TFTPc.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/TFTPc.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/TFTPc.d ${OBJECTDIR}/_ext/1133045738/TFTPc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/TFTPc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/Random.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/Random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/Random.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/Random.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/Random.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/Random.d ${OBJECTDIR}/_ext/1133045738/Random.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/Random.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/MPFS2.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/MPFS2.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/MPFS2.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/MPFS2.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/MPFS2.d ${OBJECTDIR}/_ext/1133045738/MPFS2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/MPFS2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/ZeroconfMulticastDNS.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ZeroconfMulticastDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/ZeroconfMulticastDNS.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/ZeroconfMulticastDNS.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ZeroconfMulticastDNS.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/ZeroconfMulticastDNS.d ${OBJECTDIR}/_ext/1133045738/ZeroconfMulticastDNS.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/ZeroconfMulticastDNS.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/ENCX24J600.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ENCX24J600.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/ENCX24J600.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/ENCX24J600.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ENCX24J600.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/ENCX24J600.d ${OBJECTDIR}/_ext/1133045738/ENCX24J600.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/ENCX24J600.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/ICMP.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/ICMP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/ICMP.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/ICMP.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/ICMP.d ${OBJECTDIR}/_ext/1133045738/ICMP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/ICMP.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1133045738/UDP.p1: ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1133045738 
	@${RM} ${OBJECTDIR}/_ext/1133045738/UDP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../contiki/platform/pic18f97j60-family" -I"../../../contiki/cpu/microchip-mplabx/xc8" -I"../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/Include" -I"../../../contiki/core" --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1133045738/UDP.p1  ../../../contiki/cpu/microchip-mplabx/MAPLv2013-02-15/TCPIP_Stack/UDP.c 
	@-${MV} ${OBJECTDIR}/_ext/1133045738/UDP.d ${OBJECTDIR}/_ext/1133045738/UDP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1133045738/UDP.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
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
