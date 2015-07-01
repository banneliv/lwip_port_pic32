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
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/port_lwip_pic32.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/port_lwip_pic32.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=contrib/ports/microchip/netif/ETHPIC32ExtPhyDP83848.c contrib/ports/microchip/netif/xadapter.c contrib/ports/microchip/netif/Microchip_eth.c contrib/ports/microchip/netif/ETHPIC32ExtPhy.c contrib/ports/microchip/sys_arch_raw.c contrib/ports/microchip/sys_arch.c contrib/ports/microchip/ethernetif.c freertos/heap/heap_3.c freertos/timers.c freertos/port.c freertos/port_asm.S freertos/list.c freertos/tasks.c freertos/croutine.c freertos/queue.c lwip-1.4.1/src/api/api_msg.c lwip-1.4.1/src/api/netbuf.c lwip-1.4.1/src/api/netdb.c lwip-1.4.1/src/api/tcpip.c lwip-1.4.1/src/api/sockets.c lwip-1.4.1/src/api/netifapi.c lwip-1.4.1/src/api/err.c lwip-1.4.1/src/api/api_lib.c lwip-1.4.1/src/core/ipv4/autoip.c lwip-1.4.1/src/core/ipv4/ip_addr.c lwip-1.4.1/src/core/ipv4/inet_chksum.c lwip-1.4.1/src/core/ipv4/icmp.c lwip-1.4.1/src/core/ipv4/inet.c lwip-1.4.1/src/core/ipv4/ip_frag.c lwip-1.4.1/src/core/ipv4/ip.c lwip-1.4.1/src/core/ipv4/igmp.c lwip-1.4.1/src/core/snmp/asn1_enc.c lwip-1.4.1/src/core/snmp/msg_out.c lwip-1.4.1/src/core/snmp/mib2.c lwip-1.4.1/src/core/snmp/asn1_dec.c lwip-1.4.1/src/core/snmp/msg_in.c lwip-1.4.1/src/core/snmp/mib_structs.c lwip-1.4.1/src/core/timers.c lwip-1.4.1/src/core/memp.c lwip-1.4.1/src/core/netif.c lwip-1.4.1/src/core/pbuf.c lwip-1.4.1/src/core/mem.c lwip-1.4.1/src/core/dhcp.c lwip-1.4.1/src/core/tcp_out.c lwip-1.4.1/src/core/stats.c lwip-1.4.1/src/core/tcp_in.c lwip-1.4.1/src/core/def.c lwip-1.4.1/src/core/raw.c lwip-1.4.1/src/core/dns.c lwip-1.4.1/src/core/udp.c lwip-1.4.1/src/core/init.c lwip-1.4.1/src/core/sys.c lwip-1.4.1/src/core/tcp.c lwip-1.4.1/src/netif/ppp/ppp_oe.c lwip-1.4.1/src/netif/ppp/chap.c lwip-1.4.1/src/netif/ppp/vj.c lwip-1.4.1/src/netif/ppp/ipcp.c lwip-1.4.1/src/netif/ppp/fsm.c lwip-1.4.1/src/netif/ppp/md5.c lwip-1.4.1/src/netif/ppp/magic.c lwip-1.4.1/src/netif/ppp/auth.c lwip-1.4.1/src/netif/ppp/chpms.c lwip-1.4.1/src/netif/ppp/pap.c lwip-1.4.1/src/netif/ppp/randm.c lwip-1.4.1/src/netif/ppp/lcp.c lwip-1.4.1/src/netif/ppp/ppp.c lwip-1.4.1/src/netif/etharp.c lwip-1.4.1/src/netif/ethernetif.c lwip-1.4.1/src/netif/slipif.c src/main.c src/ip_lwip.c src/echo.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/contrib/ports/microchip/netif/ETHPIC32ExtPhyDP83848.o ${OBJECTDIR}/contrib/ports/microchip/netif/xadapter.o ${OBJECTDIR}/contrib/ports/microchip/netif/Microchip_eth.o ${OBJECTDIR}/contrib/ports/microchip/netif/ETHPIC32ExtPhy.o ${OBJECTDIR}/contrib/ports/microchip/sys_arch_raw.o ${OBJECTDIR}/contrib/ports/microchip/sys_arch.o ${OBJECTDIR}/contrib/ports/microchip/ethernetif.o ${OBJECTDIR}/freertos/heap/heap_3.o ${OBJECTDIR}/freertos/timers.o ${OBJECTDIR}/freertos/port.o ${OBJECTDIR}/freertos/port_asm.o ${OBJECTDIR}/freertos/list.o ${OBJECTDIR}/freertos/tasks.o ${OBJECTDIR}/freertos/croutine.o ${OBJECTDIR}/freertos/queue.o ${OBJECTDIR}/lwip-1.4.1/src/api/api_msg.o ${OBJECTDIR}/lwip-1.4.1/src/api/netbuf.o ${OBJECTDIR}/lwip-1.4.1/src/api/netdb.o ${OBJECTDIR}/lwip-1.4.1/src/api/tcpip.o ${OBJECTDIR}/lwip-1.4.1/src/api/sockets.o ${OBJECTDIR}/lwip-1.4.1/src/api/netifapi.o ${OBJECTDIR}/lwip-1.4.1/src/api/err.o ${OBJECTDIR}/lwip-1.4.1/src/api/api_lib.o ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/autoip.o ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip_addr.o ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/inet_chksum.o ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/icmp.o ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/inet.o ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip_frag.o ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip.o ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/igmp.o ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/asn1_enc.o ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/msg_out.o ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/mib2.o ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/asn1_dec.o ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/msg_in.o ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/mib_structs.o ${OBJECTDIR}/lwip-1.4.1/src/core/timers.o ${OBJECTDIR}/lwip-1.4.1/src/core/memp.o ${OBJECTDIR}/lwip-1.4.1/src/core/netif.o ${OBJECTDIR}/lwip-1.4.1/src/core/pbuf.o ${OBJECTDIR}/lwip-1.4.1/src/core/mem.o ${OBJECTDIR}/lwip-1.4.1/src/core/dhcp.o ${OBJECTDIR}/lwip-1.4.1/src/core/tcp_out.o ${OBJECTDIR}/lwip-1.4.1/src/core/stats.o ${OBJECTDIR}/lwip-1.4.1/src/core/tcp_in.o ${OBJECTDIR}/lwip-1.4.1/src/core/def.o ${OBJECTDIR}/lwip-1.4.1/src/core/raw.o ${OBJECTDIR}/lwip-1.4.1/src/core/dns.o ${OBJECTDIR}/lwip-1.4.1/src/core/udp.o ${OBJECTDIR}/lwip-1.4.1/src/core/init.o ${OBJECTDIR}/lwip-1.4.1/src/core/sys.o ${OBJECTDIR}/lwip-1.4.1/src/core/tcp.o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ppp_oe.o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/chap.o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/vj.o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ipcp.o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/fsm.o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/md5.o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/magic.o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/auth.o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/chpms.o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/pap.o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/randm.o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/lcp.o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ppp.o ${OBJECTDIR}/lwip-1.4.1/src/netif/etharp.o ${OBJECTDIR}/lwip-1.4.1/src/netif/ethernetif.o ${OBJECTDIR}/lwip-1.4.1/src/netif/slipif.o ${OBJECTDIR}/src/main.o ${OBJECTDIR}/src/ip_lwip.o ${OBJECTDIR}/src/echo.o
POSSIBLE_DEPFILES=${OBJECTDIR}/contrib/ports/microchip/netif/ETHPIC32ExtPhyDP83848.o.d ${OBJECTDIR}/contrib/ports/microchip/netif/xadapter.o.d ${OBJECTDIR}/contrib/ports/microchip/netif/Microchip_eth.o.d ${OBJECTDIR}/contrib/ports/microchip/netif/ETHPIC32ExtPhy.o.d ${OBJECTDIR}/contrib/ports/microchip/sys_arch_raw.o.d ${OBJECTDIR}/contrib/ports/microchip/sys_arch.o.d ${OBJECTDIR}/contrib/ports/microchip/ethernetif.o.d ${OBJECTDIR}/freertos/heap/heap_3.o.d ${OBJECTDIR}/freertos/timers.o.d ${OBJECTDIR}/freertos/port.o.d ${OBJECTDIR}/freertos/port_asm.o.d ${OBJECTDIR}/freertos/list.o.d ${OBJECTDIR}/freertos/tasks.o.d ${OBJECTDIR}/freertos/croutine.o.d ${OBJECTDIR}/freertos/queue.o.d ${OBJECTDIR}/lwip-1.4.1/src/api/api_msg.o.d ${OBJECTDIR}/lwip-1.4.1/src/api/netbuf.o.d ${OBJECTDIR}/lwip-1.4.1/src/api/netdb.o.d ${OBJECTDIR}/lwip-1.4.1/src/api/tcpip.o.d ${OBJECTDIR}/lwip-1.4.1/src/api/sockets.o.d ${OBJECTDIR}/lwip-1.4.1/src/api/netifapi.o.d ${OBJECTDIR}/lwip-1.4.1/src/api/err.o.d ${OBJECTDIR}/lwip-1.4.1/src/api/api_lib.o.d ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/autoip.o.d ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip_addr.o.d ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/inet_chksum.o.d ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/icmp.o.d ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/inet.o.d ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip_frag.o.d ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip.o.d ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/igmp.o.d ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/asn1_enc.o.d ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/msg_out.o.d ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/mib2.o.d ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/asn1_dec.o.d ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/msg_in.o.d ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/mib_structs.o.d ${OBJECTDIR}/lwip-1.4.1/src/core/timers.o.d ${OBJECTDIR}/lwip-1.4.1/src/core/memp.o.d ${OBJECTDIR}/lwip-1.4.1/src/core/netif.o.d ${OBJECTDIR}/lwip-1.4.1/src/core/pbuf.o.d ${OBJECTDIR}/lwip-1.4.1/src/core/mem.o.d ${OBJECTDIR}/lwip-1.4.1/src/core/dhcp.o.d ${OBJECTDIR}/lwip-1.4.1/src/core/tcp_out.o.d ${OBJECTDIR}/lwip-1.4.1/src/core/stats.o.d ${OBJECTDIR}/lwip-1.4.1/src/core/tcp_in.o.d ${OBJECTDIR}/lwip-1.4.1/src/core/def.o.d ${OBJECTDIR}/lwip-1.4.1/src/core/raw.o.d ${OBJECTDIR}/lwip-1.4.1/src/core/dns.o.d ${OBJECTDIR}/lwip-1.4.1/src/core/udp.o.d ${OBJECTDIR}/lwip-1.4.1/src/core/init.o.d ${OBJECTDIR}/lwip-1.4.1/src/core/sys.o.d ${OBJECTDIR}/lwip-1.4.1/src/core/tcp.o.d ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ppp_oe.o.d ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/chap.o.d ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/vj.o.d ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ipcp.o.d ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/fsm.o.d ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/md5.o.d ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/magic.o.d ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/auth.o.d ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/chpms.o.d ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/pap.o.d ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/randm.o.d ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/lcp.o.d ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ppp.o.d ${OBJECTDIR}/lwip-1.4.1/src/netif/etharp.o.d ${OBJECTDIR}/lwip-1.4.1/src/netif/ethernetif.o.d ${OBJECTDIR}/lwip-1.4.1/src/netif/slipif.o.d ${OBJECTDIR}/src/main.o.d ${OBJECTDIR}/src/ip_lwip.o.d ${OBJECTDIR}/src/echo.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/contrib/ports/microchip/netif/ETHPIC32ExtPhyDP83848.o ${OBJECTDIR}/contrib/ports/microchip/netif/xadapter.o ${OBJECTDIR}/contrib/ports/microchip/netif/Microchip_eth.o ${OBJECTDIR}/contrib/ports/microchip/netif/ETHPIC32ExtPhy.o ${OBJECTDIR}/contrib/ports/microchip/sys_arch_raw.o ${OBJECTDIR}/contrib/ports/microchip/sys_arch.o ${OBJECTDIR}/contrib/ports/microchip/ethernetif.o ${OBJECTDIR}/freertos/heap/heap_3.o ${OBJECTDIR}/freertos/timers.o ${OBJECTDIR}/freertos/port.o ${OBJECTDIR}/freertos/port_asm.o ${OBJECTDIR}/freertos/list.o ${OBJECTDIR}/freertos/tasks.o ${OBJECTDIR}/freertos/croutine.o ${OBJECTDIR}/freertos/queue.o ${OBJECTDIR}/lwip-1.4.1/src/api/api_msg.o ${OBJECTDIR}/lwip-1.4.1/src/api/netbuf.o ${OBJECTDIR}/lwip-1.4.1/src/api/netdb.o ${OBJECTDIR}/lwip-1.4.1/src/api/tcpip.o ${OBJECTDIR}/lwip-1.4.1/src/api/sockets.o ${OBJECTDIR}/lwip-1.4.1/src/api/netifapi.o ${OBJECTDIR}/lwip-1.4.1/src/api/err.o ${OBJECTDIR}/lwip-1.4.1/src/api/api_lib.o ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/autoip.o ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip_addr.o ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/inet_chksum.o ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/icmp.o ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/inet.o ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip_frag.o ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip.o ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/igmp.o ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/asn1_enc.o ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/msg_out.o ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/mib2.o ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/asn1_dec.o ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/msg_in.o ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/mib_structs.o ${OBJECTDIR}/lwip-1.4.1/src/core/timers.o ${OBJECTDIR}/lwip-1.4.1/src/core/memp.o ${OBJECTDIR}/lwip-1.4.1/src/core/netif.o ${OBJECTDIR}/lwip-1.4.1/src/core/pbuf.o ${OBJECTDIR}/lwip-1.4.1/src/core/mem.o ${OBJECTDIR}/lwip-1.4.1/src/core/dhcp.o ${OBJECTDIR}/lwip-1.4.1/src/core/tcp_out.o ${OBJECTDIR}/lwip-1.4.1/src/core/stats.o ${OBJECTDIR}/lwip-1.4.1/src/core/tcp_in.o ${OBJECTDIR}/lwip-1.4.1/src/core/def.o ${OBJECTDIR}/lwip-1.4.1/src/core/raw.o ${OBJECTDIR}/lwip-1.4.1/src/core/dns.o ${OBJECTDIR}/lwip-1.4.1/src/core/udp.o ${OBJECTDIR}/lwip-1.4.1/src/core/init.o ${OBJECTDIR}/lwip-1.4.1/src/core/sys.o ${OBJECTDIR}/lwip-1.4.1/src/core/tcp.o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ppp_oe.o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/chap.o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/vj.o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ipcp.o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/fsm.o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/md5.o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/magic.o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/auth.o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/chpms.o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/pap.o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/randm.o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/lcp.o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ppp.o ${OBJECTDIR}/lwip-1.4.1/src/netif/etharp.o ${OBJECTDIR}/lwip-1.4.1/src/netif/ethernetif.o ${OBJECTDIR}/lwip-1.4.1/src/netif/slipif.o ${OBJECTDIR}/src/main.o ${OBJECTDIR}/src/ip_lwip.o ${OBJECTDIR}/src/echo.o

# Source Files
SOURCEFILES=contrib/ports/microchip/netif/ETHPIC32ExtPhyDP83848.c contrib/ports/microchip/netif/xadapter.c contrib/ports/microchip/netif/Microchip_eth.c contrib/ports/microchip/netif/ETHPIC32ExtPhy.c contrib/ports/microchip/sys_arch_raw.c contrib/ports/microchip/sys_arch.c contrib/ports/microchip/ethernetif.c freertos/heap/heap_3.c freertos/timers.c freertos/port.c freertos/port_asm.S freertos/list.c freertos/tasks.c freertos/croutine.c freertos/queue.c lwip-1.4.1/src/api/api_msg.c lwip-1.4.1/src/api/netbuf.c lwip-1.4.1/src/api/netdb.c lwip-1.4.1/src/api/tcpip.c lwip-1.4.1/src/api/sockets.c lwip-1.4.1/src/api/netifapi.c lwip-1.4.1/src/api/err.c lwip-1.4.1/src/api/api_lib.c lwip-1.4.1/src/core/ipv4/autoip.c lwip-1.4.1/src/core/ipv4/ip_addr.c lwip-1.4.1/src/core/ipv4/inet_chksum.c lwip-1.4.1/src/core/ipv4/icmp.c lwip-1.4.1/src/core/ipv4/inet.c lwip-1.4.1/src/core/ipv4/ip_frag.c lwip-1.4.1/src/core/ipv4/ip.c lwip-1.4.1/src/core/ipv4/igmp.c lwip-1.4.1/src/core/snmp/asn1_enc.c lwip-1.4.1/src/core/snmp/msg_out.c lwip-1.4.1/src/core/snmp/mib2.c lwip-1.4.1/src/core/snmp/asn1_dec.c lwip-1.4.1/src/core/snmp/msg_in.c lwip-1.4.1/src/core/snmp/mib_structs.c lwip-1.4.1/src/core/timers.c lwip-1.4.1/src/core/memp.c lwip-1.4.1/src/core/netif.c lwip-1.4.1/src/core/pbuf.c lwip-1.4.1/src/core/mem.c lwip-1.4.1/src/core/dhcp.c lwip-1.4.1/src/core/tcp_out.c lwip-1.4.1/src/core/stats.c lwip-1.4.1/src/core/tcp_in.c lwip-1.4.1/src/core/def.c lwip-1.4.1/src/core/raw.c lwip-1.4.1/src/core/dns.c lwip-1.4.1/src/core/udp.c lwip-1.4.1/src/core/init.c lwip-1.4.1/src/core/sys.c lwip-1.4.1/src/core/tcp.c lwip-1.4.1/src/netif/ppp/ppp_oe.c lwip-1.4.1/src/netif/ppp/chap.c lwip-1.4.1/src/netif/ppp/vj.c lwip-1.4.1/src/netif/ppp/ipcp.c lwip-1.4.1/src/netif/ppp/fsm.c lwip-1.4.1/src/netif/ppp/md5.c lwip-1.4.1/src/netif/ppp/magic.c lwip-1.4.1/src/netif/ppp/auth.c lwip-1.4.1/src/netif/ppp/chpms.c lwip-1.4.1/src/netif/ppp/pap.c lwip-1.4.1/src/netif/ppp/randm.c lwip-1.4.1/src/netif/ppp/lcp.c lwip-1.4.1/src/netif/ppp/ppp.c lwip-1.4.1/src/netif/etharp.c lwip-1.4.1/src/netif/ethernetif.c lwip-1.4.1/src/netif/slipif.c src/main.c src/ip_lwip.c src/echo.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/port_lwip_pic32.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX795F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/freertos/port_asm.o: freertos/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/freertos" 
	@${RM} ${OBJECTDIR}/freertos/port_asm.o.d 
	@${RM} ${OBJECTDIR}/freertos/port_asm.o 
	@${RM} ${OBJECTDIR}/freertos/port_asm.o.ok ${OBJECTDIR}/freertos/port_asm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/freertos/port_asm.o.d" "${OBJECTDIR}/freertos/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/freertos/port_asm.o.d"  -o ${OBJECTDIR}/freertos/port_asm.o freertos/port_asm.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/freertos/port_asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PIC32MXSK=1
	
else
${OBJECTDIR}/freertos/port_asm.o: freertos/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/freertos" 
	@${RM} ${OBJECTDIR}/freertos/port_asm.o.d 
	@${RM} ${OBJECTDIR}/freertos/port_asm.o 
	@${RM} ${OBJECTDIR}/freertos/port_asm.o.ok ${OBJECTDIR}/freertos/port_asm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/freertos/port_asm.o.d" "${OBJECTDIR}/freertos/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/freertos/port_asm.o.d"  -o ${OBJECTDIR}/freertos/port_asm.o freertos/port_asm.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/freertos/port_asm.o.asm.d",--gdwarf-2
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/contrib/ports/microchip/netif/ETHPIC32ExtPhyDP83848.o: contrib/ports/microchip/netif/ETHPIC32ExtPhyDP83848.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/contrib/ports/microchip/netif" 
	@${RM} ${OBJECTDIR}/contrib/ports/microchip/netif/ETHPIC32ExtPhyDP83848.o.d 
	@${RM} ${OBJECTDIR}/contrib/ports/microchip/netif/ETHPIC32ExtPhyDP83848.o 
	@${FIXDEPS} "${OBJECTDIR}/contrib/ports/microchip/netif/ETHPIC32ExtPhyDP83848.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/contrib/ports/microchip/netif/ETHPIC32ExtPhyDP83848.o.d" -o ${OBJECTDIR}/contrib/ports/microchip/netif/ETHPIC32ExtPhyDP83848.o contrib/ports/microchip/netif/ETHPIC32ExtPhyDP83848.c   
	
${OBJECTDIR}/contrib/ports/microchip/netif/xadapter.o: contrib/ports/microchip/netif/xadapter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/contrib/ports/microchip/netif" 
	@${RM} ${OBJECTDIR}/contrib/ports/microchip/netif/xadapter.o.d 
	@${RM} ${OBJECTDIR}/contrib/ports/microchip/netif/xadapter.o 
	@${FIXDEPS} "${OBJECTDIR}/contrib/ports/microchip/netif/xadapter.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/contrib/ports/microchip/netif/xadapter.o.d" -o ${OBJECTDIR}/contrib/ports/microchip/netif/xadapter.o contrib/ports/microchip/netif/xadapter.c   
	
${OBJECTDIR}/contrib/ports/microchip/netif/Microchip_eth.o: contrib/ports/microchip/netif/Microchip_eth.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/contrib/ports/microchip/netif" 
	@${RM} ${OBJECTDIR}/contrib/ports/microchip/netif/Microchip_eth.o.d 
	@${RM} ${OBJECTDIR}/contrib/ports/microchip/netif/Microchip_eth.o 
	@${FIXDEPS} "${OBJECTDIR}/contrib/ports/microchip/netif/Microchip_eth.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/contrib/ports/microchip/netif/Microchip_eth.o.d" -o ${OBJECTDIR}/contrib/ports/microchip/netif/Microchip_eth.o contrib/ports/microchip/netif/Microchip_eth.c   
	
${OBJECTDIR}/contrib/ports/microchip/netif/ETHPIC32ExtPhy.o: contrib/ports/microchip/netif/ETHPIC32ExtPhy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/contrib/ports/microchip/netif" 
	@${RM} ${OBJECTDIR}/contrib/ports/microchip/netif/ETHPIC32ExtPhy.o.d 
	@${RM} ${OBJECTDIR}/contrib/ports/microchip/netif/ETHPIC32ExtPhy.o 
	@${FIXDEPS} "${OBJECTDIR}/contrib/ports/microchip/netif/ETHPIC32ExtPhy.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/contrib/ports/microchip/netif/ETHPIC32ExtPhy.o.d" -o ${OBJECTDIR}/contrib/ports/microchip/netif/ETHPIC32ExtPhy.o contrib/ports/microchip/netif/ETHPIC32ExtPhy.c   
	
${OBJECTDIR}/contrib/ports/microchip/sys_arch_raw.o: contrib/ports/microchip/sys_arch_raw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/contrib/ports/microchip" 
	@${RM} ${OBJECTDIR}/contrib/ports/microchip/sys_arch_raw.o.d 
	@${RM} ${OBJECTDIR}/contrib/ports/microchip/sys_arch_raw.o 
	@${FIXDEPS} "${OBJECTDIR}/contrib/ports/microchip/sys_arch_raw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/contrib/ports/microchip/sys_arch_raw.o.d" -o ${OBJECTDIR}/contrib/ports/microchip/sys_arch_raw.o contrib/ports/microchip/sys_arch_raw.c   
	
${OBJECTDIR}/contrib/ports/microchip/sys_arch.o: contrib/ports/microchip/sys_arch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/contrib/ports/microchip" 
	@${RM} ${OBJECTDIR}/contrib/ports/microchip/sys_arch.o.d 
	@${RM} ${OBJECTDIR}/contrib/ports/microchip/sys_arch.o 
	@${FIXDEPS} "${OBJECTDIR}/contrib/ports/microchip/sys_arch.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/contrib/ports/microchip/sys_arch.o.d" -o ${OBJECTDIR}/contrib/ports/microchip/sys_arch.o contrib/ports/microchip/sys_arch.c   
	
${OBJECTDIR}/contrib/ports/microchip/ethernetif.o: contrib/ports/microchip/ethernetif.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/contrib/ports/microchip" 
	@${RM} ${OBJECTDIR}/contrib/ports/microchip/ethernetif.o.d 
	@${RM} ${OBJECTDIR}/contrib/ports/microchip/ethernetif.o 
	@${FIXDEPS} "${OBJECTDIR}/contrib/ports/microchip/ethernetif.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/contrib/ports/microchip/ethernetif.o.d" -o ${OBJECTDIR}/contrib/ports/microchip/ethernetif.o contrib/ports/microchip/ethernetif.c   
	
${OBJECTDIR}/freertos/heap/heap_3.o: freertos/heap/heap_3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/freertos/heap" 
	@${RM} ${OBJECTDIR}/freertos/heap/heap_3.o.d 
	@${RM} ${OBJECTDIR}/freertos/heap/heap_3.o 
	@${FIXDEPS} "${OBJECTDIR}/freertos/heap/heap_3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/freertos/heap/heap_3.o.d" -o ${OBJECTDIR}/freertos/heap/heap_3.o freertos/heap/heap_3.c   
	
${OBJECTDIR}/freertos/timers.o: freertos/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/freertos" 
	@${RM} ${OBJECTDIR}/freertos/timers.o.d 
	@${RM} ${OBJECTDIR}/freertos/timers.o 
	@${FIXDEPS} "${OBJECTDIR}/freertos/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/freertos/timers.o.d" -o ${OBJECTDIR}/freertos/timers.o freertos/timers.c   
	
${OBJECTDIR}/freertos/port.o: freertos/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/freertos" 
	@${RM} ${OBJECTDIR}/freertos/port.o.d 
	@${RM} ${OBJECTDIR}/freertos/port.o 
	@${FIXDEPS} "${OBJECTDIR}/freertos/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/freertos/port.o.d" -o ${OBJECTDIR}/freertos/port.o freertos/port.c   
	
${OBJECTDIR}/freertos/list.o: freertos/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/freertos" 
	@${RM} ${OBJECTDIR}/freertos/list.o.d 
	@${RM} ${OBJECTDIR}/freertos/list.o 
	@${FIXDEPS} "${OBJECTDIR}/freertos/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/freertos/list.o.d" -o ${OBJECTDIR}/freertos/list.o freertos/list.c   
	
${OBJECTDIR}/freertos/tasks.o: freertos/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/freertos" 
	@${RM} ${OBJECTDIR}/freertos/tasks.o.d 
	@${RM} ${OBJECTDIR}/freertos/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/freertos/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/freertos/tasks.o.d" -o ${OBJECTDIR}/freertos/tasks.o freertos/tasks.c   
	
${OBJECTDIR}/freertos/croutine.o: freertos/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/freertos" 
	@${RM} ${OBJECTDIR}/freertos/croutine.o.d 
	@${RM} ${OBJECTDIR}/freertos/croutine.o 
	@${FIXDEPS} "${OBJECTDIR}/freertos/croutine.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/freertos/croutine.o.d" -o ${OBJECTDIR}/freertos/croutine.o freertos/croutine.c   
	
${OBJECTDIR}/freertos/queue.o: freertos/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/freertos" 
	@${RM} ${OBJECTDIR}/freertos/queue.o.d 
	@${RM} ${OBJECTDIR}/freertos/queue.o 
	@${FIXDEPS} "${OBJECTDIR}/freertos/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/freertos/queue.o.d" -o ${OBJECTDIR}/freertos/queue.o freertos/queue.c   
	
${OBJECTDIR}/lwip-1.4.1/src/api/api_msg.o: lwip-1.4.1/src/api/api_msg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/api" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/api/api_msg.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/api/api_msg.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/api/api_msg.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/api/api_msg.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/api/api_msg.o lwip-1.4.1/src/api/api_msg.c   
	
${OBJECTDIR}/lwip-1.4.1/src/api/netbuf.o: lwip-1.4.1/src/api/netbuf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/api" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/api/netbuf.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/api/netbuf.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/api/netbuf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/api/netbuf.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/api/netbuf.o lwip-1.4.1/src/api/netbuf.c   
	
${OBJECTDIR}/lwip-1.4.1/src/api/netdb.o: lwip-1.4.1/src/api/netdb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/api" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/api/netdb.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/api/netdb.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/api/netdb.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/api/netdb.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/api/netdb.o lwip-1.4.1/src/api/netdb.c   
	
${OBJECTDIR}/lwip-1.4.1/src/api/tcpip.o: lwip-1.4.1/src/api/tcpip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/api" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/api/tcpip.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/api/tcpip.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/api/tcpip.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/api/tcpip.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/api/tcpip.o lwip-1.4.1/src/api/tcpip.c   
	
${OBJECTDIR}/lwip-1.4.1/src/api/sockets.o: lwip-1.4.1/src/api/sockets.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/api" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/api/sockets.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/api/sockets.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/api/sockets.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/api/sockets.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/api/sockets.o lwip-1.4.1/src/api/sockets.c   
	
${OBJECTDIR}/lwip-1.4.1/src/api/netifapi.o: lwip-1.4.1/src/api/netifapi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/api" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/api/netifapi.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/api/netifapi.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/api/netifapi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/api/netifapi.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/api/netifapi.o lwip-1.4.1/src/api/netifapi.c   
	
${OBJECTDIR}/lwip-1.4.1/src/api/err.o: lwip-1.4.1/src/api/err.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/api" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/api/err.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/api/err.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/api/err.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/api/err.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/api/err.o lwip-1.4.1/src/api/err.c   
	
${OBJECTDIR}/lwip-1.4.1/src/api/api_lib.o: lwip-1.4.1/src/api/api_lib.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/api" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/api/api_lib.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/api/api_lib.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/api/api_lib.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/api/api_lib.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/api/api_lib.o lwip-1.4.1/src/api/api_lib.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/autoip.o: lwip-1.4.1/src/core/ipv4/autoip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/autoip.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/autoip.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/autoip.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/autoip.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/autoip.o lwip-1.4.1/src/core/ipv4/autoip.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip_addr.o: lwip-1.4.1/src/core/ipv4/ip_addr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip_addr.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip_addr.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip_addr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip_addr.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip_addr.o lwip-1.4.1/src/core/ipv4/ip_addr.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/inet_chksum.o: lwip-1.4.1/src/core/ipv4/inet_chksum.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/inet_chksum.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/inet_chksum.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/inet_chksum.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/inet_chksum.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/inet_chksum.o lwip-1.4.1/src/core/ipv4/inet_chksum.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/icmp.o: lwip-1.4.1/src/core/ipv4/icmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/icmp.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/icmp.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/icmp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/icmp.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/icmp.o lwip-1.4.1/src/core/ipv4/icmp.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/inet.o: lwip-1.4.1/src/core/ipv4/inet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/inet.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/inet.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/inet.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/inet.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/inet.o lwip-1.4.1/src/core/ipv4/inet.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip_frag.o: lwip-1.4.1/src/core/ipv4/ip_frag.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip_frag.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip_frag.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip_frag.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip_frag.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip_frag.o lwip-1.4.1/src/core/ipv4/ip_frag.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip.o: lwip-1.4.1/src/core/ipv4/ip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip.o lwip-1.4.1/src/core/ipv4/ip.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/igmp.o: lwip-1.4.1/src/core/ipv4/igmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/igmp.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/igmp.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/igmp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/igmp.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/igmp.o lwip-1.4.1/src/core/ipv4/igmp.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/snmp/asn1_enc.o: lwip-1.4.1/src/core/snmp/asn1_enc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core/snmp" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/asn1_enc.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/asn1_enc.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/snmp/asn1_enc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/snmp/asn1_enc.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/asn1_enc.o lwip-1.4.1/src/core/snmp/asn1_enc.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/snmp/msg_out.o: lwip-1.4.1/src/core/snmp/msg_out.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core/snmp" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/msg_out.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/msg_out.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/snmp/msg_out.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/snmp/msg_out.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/msg_out.o lwip-1.4.1/src/core/snmp/msg_out.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/snmp/mib2.o: lwip-1.4.1/src/core/snmp/mib2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core/snmp" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/mib2.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/mib2.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/snmp/mib2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/snmp/mib2.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/mib2.o lwip-1.4.1/src/core/snmp/mib2.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/snmp/asn1_dec.o: lwip-1.4.1/src/core/snmp/asn1_dec.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core/snmp" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/asn1_dec.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/asn1_dec.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/snmp/asn1_dec.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/snmp/asn1_dec.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/asn1_dec.o lwip-1.4.1/src/core/snmp/asn1_dec.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/snmp/msg_in.o: lwip-1.4.1/src/core/snmp/msg_in.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core/snmp" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/msg_in.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/msg_in.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/snmp/msg_in.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/snmp/msg_in.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/msg_in.o lwip-1.4.1/src/core/snmp/msg_in.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/snmp/mib_structs.o: lwip-1.4.1/src/core/snmp/mib_structs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core/snmp" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/mib_structs.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/mib_structs.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/snmp/mib_structs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/snmp/mib_structs.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/mib_structs.o lwip-1.4.1/src/core/snmp/mib_structs.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/timers.o: lwip-1.4.1/src/core/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/timers.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/timers.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/timers.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/timers.o lwip-1.4.1/src/core/timers.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/memp.o: lwip-1.4.1/src/core/memp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/memp.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/memp.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/memp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/memp.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/memp.o lwip-1.4.1/src/core/memp.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/netif.o: lwip-1.4.1/src/core/netif.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/netif.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/netif.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/netif.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/netif.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/netif.o lwip-1.4.1/src/core/netif.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/pbuf.o: lwip-1.4.1/src/core/pbuf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/pbuf.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/pbuf.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/pbuf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/pbuf.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/pbuf.o lwip-1.4.1/src/core/pbuf.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/mem.o: lwip-1.4.1/src/core/mem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/mem.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/mem.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/mem.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/mem.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/mem.o lwip-1.4.1/src/core/mem.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/dhcp.o: lwip-1.4.1/src/core/dhcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/dhcp.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/dhcp.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/dhcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/dhcp.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/dhcp.o lwip-1.4.1/src/core/dhcp.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/tcp_out.o: lwip-1.4.1/src/core/tcp_out.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/tcp_out.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/tcp_out.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/tcp_out.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/tcp_out.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/tcp_out.o lwip-1.4.1/src/core/tcp_out.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/stats.o: lwip-1.4.1/src/core/stats.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/stats.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/stats.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/stats.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/stats.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/stats.o lwip-1.4.1/src/core/stats.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/tcp_in.o: lwip-1.4.1/src/core/tcp_in.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/tcp_in.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/tcp_in.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/tcp_in.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/tcp_in.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/tcp_in.o lwip-1.4.1/src/core/tcp_in.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/def.o: lwip-1.4.1/src/core/def.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/def.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/def.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/def.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/def.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/def.o lwip-1.4.1/src/core/def.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/raw.o: lwip-1.4.1/src/core/raw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/raw.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/raw.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/raw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/raw.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/raw.o lwip-1.4.1/src/core/raw.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/dns.o: lwip-1.4.1/src/core/dns.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/dns.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/dns.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/dns.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/dns.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/dns.o lwip-1.4.1/src/core/dns.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/udp.o: lwip-1.4.1/src/core/udp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/udp.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/udp.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/udp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/udp.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/udp.o lwip-1.4.1/src/core/udp.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/init.o: lwip-1.4.1/src/core/init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/init.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/init.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/init.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/init.o lwip-1.4.1/src/core/init.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/sys.o: lwip-1.4.1/src/core/sys.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/sys.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/sys.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/sys.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/sys.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/sys.o lwip-1.4.1/src/core/sys.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/tcp.o: lwip-1.4.1/src/core/tcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/tcp.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/tcp.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/tcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/tcp.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/tcp.o lwip-1.4.1/src/core/tcp.c   
	
${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ppp_oe.o: lwip-1.4.1/src/netif/ppp/ppp_oe.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ppp_oe.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ppp_oe.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ppp_oe.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ppp_oe.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ppp_oe.o lwip-1.4.1/src/netif/ppp/ppp_oe.c   
	
${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/chap.o: lwip-1.4.1/src/netif/ppp/chap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/chap.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/chap.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/chap.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/chap.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/chap.o lwip-1.4.1/src/netif/ppp/chap.c   
	
${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/vj.o: lwip-1.4.1/src/netif/ppp/vj.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/vj.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/vj.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/vj.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/vj.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/vj.o lwip-1.4.1/src/netif/ppp/vj.c   
	
${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ipcp.o: lwip-1.4.1/src/netif/ppp/ipcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ipcp.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ipcp.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ipcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ipcp.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ipcp.o lwip-1.4.1/src/netif/ppp/ipcp.c   
	
${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/fsm.o: lwip-1.4.1/src/netif/ppp/fsm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/fsm.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/fsm.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/fsm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/fsm.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/fsm.o lwip-1.4.1/src/netif/ppp/fsm.c   
	
${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/md5.o: lwip-1.4.1/src/netif/ppp/md5.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/md5.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/md5.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/md5.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/md5.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/md5.o lwip-1.4.1/src/netif/ppp/md5.c   
	
${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/magic.o: lwip-1.4.1/src/netif/ppp/magic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/magic.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/magic.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/magic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/magic.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/magic.o lwip-1.4.1/src/netif/ppp/magic.c   
	
${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/auth.o: lwip-1.4.1/src/netif/ppp/auth.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/auth.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/auth.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/auth.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/auth.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/auth.o lwip-1.4.1/src/netif/ppp/auth.c   
	
${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/chpms.o: lwip-1.4.1/src/netif/ppp/chpms.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/chpms.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/chpms.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/chpms.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/chpms.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/chpms.o lwip-1.4.1/src/netif/ppp/chpms.c   
	
${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/pap.o: lwip-1.4.1/src/netif/ppp/pap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/pap.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/pap.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/pap.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/pap.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/pap.o lwip-1.4.1/src/netif/ppp/pap.c   
	
${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/randm.o: lwip-1.4.1/src/netif/ppp/randm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/randm.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/randm.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/randm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/randm.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/randm.o lwip-1.4.1/src/netif/ppp/randm.c   
	
${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/lcp.o: lwip-1.4.1/src/netif/ppp/lcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/lcp.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/lcp.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/lcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/lcp.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/lcp.o lwip-1.4.1/src/netif/ppp/lcp.c   
	
${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ppp.o: lwip-1.4.1/src/netif/ppp/ppp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ppp.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ppp.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ppp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ppp.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ppp.o lwip-1.4.1/src/netif/ppp/ppp.c   
	
${OBJECTDIR}/lwip-1.4.1/src/netif/etharp.o: lwip-1.4.1/src/netif/etharp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/netif" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/etharp.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/etharp.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/netif/etharp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/netif/etharp.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/netif/etharp.o lwip-1.4.1/src/netif/etharp.c   
	
${OBJECTDIR}/lwip-1.4.1/src/netif/ethernetif.o: lwip-1.4.1/src/netif/ethernetif.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/netif" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ethernetif.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ethernetif.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/netif/ethernetif.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/netif/ethernetif.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/netif/ethernetif.o lwip-1.4.1/src/netif/ethernetif.c   
	
${OBJECTDIR}/lwip-1.4.1/src/netif/slipif.o: lwip-1.4.1/src/netif/slipif.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/netif" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/slipif.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/slipif.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/netif/slipif.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/netif/slipif.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/netif/slipif.o lwip-1.4.1/src/netif/slipif.c   
	
${OBJECTDIR}/src/main.o: src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/main.o.d 
	@${RM} ${OBJECTDIR}/src/main.o 
	@${FIXDEPS} "${OBJECTDIR}/src/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/src/main.o.d" -o ${OBJECTDIR}/src/main.o src/main.c   
	
${OBJECTDIR}/src/ip_lwip.o: src/ip_lwip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/ip_lwip.o.d 
	@${RM} ${OBJECTDIR}/src/ip_lwip.o 
	@${FIXDEPS} "${OBJECTDIR}/src/ip_lwip.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/src/ip_lwip.o.d" -o ${OBJECTDIR}/src/ip_lwip.o src/ip_lwip.c   
	
${OBJECTDIR}/src/echo.o: src/echo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/echo.o.d 
	@${RM} ${OBJECTDIR}/src/echo.o 
	@${FIXDEPS} "${OBJECTDIR}/src/echo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/src/echo.o.d" -o ${OBJECTDIR}/src/echo.o src/echo.c   
	
else
${OBJECTDIR}/contrib/ports/microchip/netif/ETHPIC32ExtPhyDP83848.o: contrib/ports/microchip/netif/ETHPIC32ExtPhyDP83848.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/contrib/ports/microchip/netif" 
	@${RM} ${OBJECTDIR}/contrib/ports/microchip/netif/ETHPIC32ExtPhyDP83848.o.d 
	@${RM} ${OBJECTDIR}/contrib/ports/microchip/netif/ETHPIC32ExtPhyDP83848.o 
	@${FIXDEPS} "${OBJECTDIR}/contrib/ports/microchip/netif/ETHPIC32ExtPhyDP83848.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/contrib/ports/microchip/netif/ETHPIC32ExtPhyDP83848.o.d" -o ${OBJECTDIR}/contrib/ports/microchip/netif/ETHPIC32ExtPhyDP83848.o contrib/ports/microchip/netif/ETHPIC32ExtPhyDP83848.c   
	
${OBJECTDIR}/contrib/ports/microchip/netif/xadapter.o: contrib/ports/microchip/netif/xadapter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/contrib/ports/microchip/netif" 
	@${RM} ${OBJECTDIR}/contrib/ports/microchip/netif/xadapter.o.d 
	@${RM} ${OBJECTDIR}/contrib/ports/microchip/netif/xadapter.o 
	@${FIXDEPS} "${OBJECTDIR}/contrib/ports/microchip/netif/xadapter.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/contrib/ports/microchip/netif/xadapter.o.d" -o ${OBJECTDIR}/contrib/ports/microchip/netif/xadapter.o contrib/ports/microchip/netif/xadapter.c   
	
${OBJECTDIR}/contrib/ports/microchip/netif/Microchip_eth.o: contrib/ports/microchip/netif/Microchip_eth.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/contrib/ports/microchip/netif" 
	@${RM} ${OBJECTDIR}/contrib/ports/microchip/netif/Microchip_eth.o.d 
	@${RM} ${OBJECTDIR}/contrib/ports/microchip/netif/Microchip_eth.o 
	@${FIXDEPS} "${OBJECTDIR}/contrib/ports/microchip/netif/Microchip_eth.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/contrib/ports/microchip/netif/Microchip_eth.o.d" -o ${OBJECTDIR}/contrib/ports/microchip/netif/Microchip_eth.o contrib/ports/microchip/netif/Microchip_eth.c   
	
${OBJECTDIR}/contrib/ports/microchip/netif/ETHPIC32ExtPhy.o: contrib/ports/microchip/netif/ETHPIC32ExtPhy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/contrib/ports/microchip/netif" 
	@${RM} ${OBJECTDIR}/contrib/ports/microchip/netif/ETHPIC32ExtPhy.o.d 
	@${RM} ${OBJECTDIR}/contrib/ports/microchip/netif/ETHPIC32ExtPhy.o 
	@${FIXDEPS} "${OBJECTDIR}/contrib/ports/microchip/netif/ETHPIC32ExtPhy.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/contrib/ports/microchip/netif/ETHPIC32ExtPhy.o.d" -o ${OBJECTDIR}/contrib/ports/microchip/netif/ETHPIC32ExtPhy.o contrib/ports/microchip/netif/ETHPIC32ExtPhy.c   
	
${OBJECTDIR}/contrib/ports/microchip/sys_arch_raw.o: contrib/ports/microchip/sys_arch_raw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/contrib/ports/microchip" 
	@${RM} ${OBJECTDIR}/contrib/ports/microchip/sys_arch_raw.o.d 
	@${RM} ${OBJECTDIR}/contrib/ports/microchip/sys_arch_raw.o 
	@${FIXDEPS} "${OBJECTDIR}/contrib/ports/microchip/sys_arch_raw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/contrib/ports/microchip/sys_arch_raw.o.d" -o ${OBJECTDIR}/contrib/ports/microchip/sys_arch_raw.o contrib/ports/microchip/sys_arch_raw.c   
	
${OBJECTDIR}/contrib/ports/microchip/sys_arch.o: contrib/ports/microchip/sys_arch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/contrib/ports/microchip" 
	@${RM} ${OBJECTDIR}/contrib/ports/microchip/sys_arch.o.d 
	@${RM} ${OBJECTDIR}/contrib/ports/microchip/sys_arch.o 
	@${FIXDEPS} "${OBJECTDIR}/contrib/ports/microchip/sys_arch.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/contrib/ports/microchip/sys_arch.o.d" -o ${OBJECTDIR}/contrib/ports/microchip/sys_arch.o contrib/ports/microchip/sys_arch.c   
	
${OBJECTDIR}/contrib/ports/microchip/ethernetif.o: contrib/ports/microchip/ethernetif.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/contrib/ports/microchip" 
	@${RM} ${OBJECTDIR}/contrib/ports/microchip/ethernetif.o.d 
	@${RM} ${OBJECTDIR}/contrib/ports/microchip/ethernetif.o 
	@${FIXDEPS} "${OBJECTDIR}/contrib/ports/microchip/ethernetif.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/contrib/ports/microchip/ethernetif.o.d" -o ${OBJECTDIR}/contrib/ports/microchip/ethernetif.o contrib/ports/microchip/ethernetif.c   
	
${OBJECTDIR}/freertos/heap/heap_3.o: freertos/heap/heap_3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/freertos/heap" 
	@${RM} ${OBJECTDIR}/freertos/heap/heap_3.o.d 
	@${RM} ${OBJECTDIR}/freertos/heap/heap_3.o 
	@${FIXDEPS} "${OBJECTDIR}/freertos/heap/heap_3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/freertos/heap/heap_3.o.d" -o ${OBJECTDIR}/freertos/heap/heap_3.o freertos/heap/heap_3.c   
	
${OBJECTDIR}/freertos/timers.o: freertos/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/freertos" 
	@${RM} ${OBJECTDIR}/freertos/timers.o.d 
	@${RM} ${OBJECTDIR}/freertos/timers.o 
	@${FIXDEPS} "${OBJECTDIR}/freertos/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/freertos/timers.o.d" -o ${OBJECTDIR}/freertos/timers.o freertos/timers.c   
	
${OBJECTDIR}/freertos/port.o: freertos/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/freertos" 
	@${RM} ${OBJECTDIR}/freertos/port.o.d 
	@${RM} ${OBJECTDIR}/freertos/port.o 
	@${FIXDEPS} "${OBJECTDIR}/freertos/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/freertos/port.o.d" -o ${OBJECTDIR}/freertos/port.o freertos/port.c   
	
${OBJECTDIR}/freertos/list.o: freertos/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/freertos" 
	@${RM} ${OBJECTDIR}/freertos/list.o.d 
	@${RM} ${OBJECTDIR}/freertos/list.o 
	@${FIXDEPS} "${OBJECTDIR}/freertos/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/freertos/list.o.d" -o ${OBJECTDIR}/freertos/list.o freertos/list.c   
	
${OBJECTDIR}/freertos/tasks.o: freertos/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/freertos" 
	@${RM} ${OBJECTDIR}/freertos/tasks.o.d 
	@${RM} ${OBJECTDIR}/freertos/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/freertos/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/freertos/tasks.o.d" -o ${OBJECTDIR}/freertos/tasks.o freertos/tasks.c   
	
${OBJECTDIR}/freertos/croutine.o: freertos/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/freertos" 
	@${RM} ${OBJECTDIR}/freertos/croutine.o.d 
	@${RM} ${OBJECTDIR}/freertos/croutine.o 
	@${FIXDEPS} "${OBJECTDIR}/freertos/croutine.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/freertos/croutine.o.d" -o ${OBJECTDIR}/freertos/croutine.o freertos/croutine.c   
	
${OBJECTDIR}/freertos/queue.o: freertos/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/freertos" 
	@${RM} ${OBJECTDIR}/freertos/queue.o.d 
	@${RM} ${OBJECTDIR}/freertos/queue.o 
	@${FIXDEPS} "${OBJECTDIR}/freertos/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/freertos/queue.o.d" -o ${OBJECTDIR}/freertos/queue.o freertos/queue.c   
	
${OBJECTDIR}/lwip-1.4.1/src/api/api_msg.o: lwip-1.4.1/src/api/api_msg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/api" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/api/api_msg.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/api/api_msg.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/api/api_msg.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/api/api_msg.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/api/api_msg.o lwip-1.4.1/src/api/api_msg.c   
	
${OBJECTDIR}/lwip-1.4.1/src/api/netbuf.o: lwip-1.4.1/src/api/netbuf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/api" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/api/netbuf.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/api/netbuf.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/api/netbuf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/api/netbuf.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/api/netbuf.o lwip-1.4.1/src/api/netbuf.c   
	
${OBJECTDIR}/lwip-1.4.1/src/api/netdb.o: lwip-1.4.1/src/api/netdb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/api" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/api/netdb.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/api/netdb.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/api/netdb.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/api/netdb.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/api/netdb.o lwip-1.4.1/src/api/netdb.c   
	
${OBJECTDIR}/lwip-1.4.1/src/api/tcpip.o: lwip-1.4.1/src/api/tcpip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/api" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/api/tcpip.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/api/tcpip.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/api/tcpip.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/api/tcpip.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/api/tcpip.o lwip-1.4.1/src/api/tcpip.c   
	
${OBJECTDIR}/lwip-1.4.1/src/api/sockets.o: lwip-1.4.1/src/api/sockets.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/api" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/api/sockets.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/api/sockets.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/api/sockets.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/api/sockets.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/api/sockets.o lwip-1.4.1/src/api/sockets.c   
	
${OBJECTDIR}/lwip-1.4.1/src/api/netifapi.o: lwip-1.4.1/src/api/netifapi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/api" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/api/netifapi.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/api/netifapi.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/api/netifapi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/api/netifapi.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/api/netifapi.o lwip-1.4.1/src/api/netifapi.c   
	
${OBJECTDIR}/lwip-1.4.1/src/api/err.o: lwip-1.4.1/src/api/err.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/api" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/api/err.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/api/err.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/api/err.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/api/err.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/api/err.o lwip-1.4.1/src/api/err.c   
	
${OBJECTDIR}/lwip-1.4.1/src/api/api_lib.o: lwip-1.4.1/src/api/api_lib.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/api" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/api/api_lib.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/api/api_lib.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/api/api_lib.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/api/api_lib.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/api/api_lib.o lwip-1.4.1/src/api/api_lib.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/autoip.o: lwip-1.4.1/src/core/ipv4/autoip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/autoip.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/autoip.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/autoip.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/autoip.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/autoip.o lwip-1.4.1/src/core/ipv4/autoip.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip_addr.o: lwip-1.4.1/src/core/ipv4/ip_addr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip_addr.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip_addr.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip_addr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip_addr.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip_addr.o lwip-1.4.1/src/core/ipv4/ip_addr.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/inet_chksum.o: lwip-1.4.1/src/core/ipv4/inet_chksum.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/inet_chksum.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/inet_chksum.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/inet_chksum.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/inet_chksum.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/inet_chksum.o lwip-1.4.1/src/core/ipv4/inet_chksum.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/icmp.o: lwip-1.4.1/src/core/ipv4/icmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/icmp.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/icmp.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/icmp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/icmp.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/icmp.o lwip-1.4.1/src/core/ipv4/icmp.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/inet.o: lwip-1.4.1/src/core/ipv4/inet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/inet.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/inet.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/inet.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/inet.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/inet.o lwip-1.4.1/src/core/ipv4/inet.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip_frag.o: lwip-1.4.1/src/core/ipv4/ip_frag.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip_frag.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip_frag.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip_frag.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip_frag.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip_frag.o lwip-1.4.1/src/core/ipv4/ip_frag.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip.o: lwip-1.4.1/src/core/ipv4/ip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/ip.o lwip-1.4.1/src/core/ipv4/ip.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/igmp.o: lwip-1.4.1/src/core/ipv4/igmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/igmp.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/igmp.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/igmp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/igmp.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/ipv4/igmp.o lwip-1.4.1/src/core/ipv4/igmp.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/snmp/asn1_enc.o: lwip-1.4.1/src/core/snmp/asn1_enc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core/snmp" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/asn1_enc.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/asn1_enc.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/snmp/asn1_enc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/snmp/asn1_enc.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/asn1_enc.o lwip-1.4.1/src/core/snmp/asn1_enc.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/snmp/msg_out.o: lwip-1.4.1/src/core/snmp/msg_out.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core/snmp" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/msg_out.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/msg_out.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/snmp/msg_out.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/snmp/msg_out.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/msg_out.o lwip-1.4.1/src/core/snmp/msg_out.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/snmp/mib2.o: lwip-1.4.1/src/core/snmp/mib2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core/snmp" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/mib2.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/mib2.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/snmp/mib2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/snmp/mib2.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/mib2.o lwip-1.4.1/src/core/snmp/mib2.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/snmp/asn1_dec.o: lwip-1.4.1/src/core/snmp/asn1_dec.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core/snmp" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/asn1_dec.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/asn1_dec.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/snmp/asn1_dec.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/snmp/asn1_dec.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/asn1_dec.o lwip-1.4.1/src/core/snmp/asn1_dec.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/snmp/msg_in.o: lwip-1.4.1/src/core/snmp/msg_in.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core/snmp" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/msg_in.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/msg_in.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/snmp/msg_in.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/snmp/msg_in.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/msg_in.o lwip-1.4.1/src/core/snmp/msg_in.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/snmp/mib_structs.o: lwip-1.4.1/src/core/snmp/mib_structs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core/snmp" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/mib_structs.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/mib_structs.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/snmp/mib_structs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/snmp/mib_structs.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/snmp/mib_structs.o lwip-1.4.1/src/core/snmp/mib_structs.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/timers.o: lwip-1.4.1/src/core/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/timers.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/timers.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/timers.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/timers.o lwip-1.4.1/src/core/timers.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/memp.o: lwip-1.4.1/src/core/memp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/memp.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/memp.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/memp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/memp.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/memp.o lwip-1.4.1/src/core/memp.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/netif.o: lwip-1.4.1/src/core/netif.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/netif.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/netif.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/netif.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/netif.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/netif.o lwip-1.4.1/src/core/netif.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/pbuf.o: lwip-1.4.1/src/core/pbuf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/pbuf.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/pbuf.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/pbuf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/pbuf.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/pbuf.o lwip-1.4.1/src/core/pbuf.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/mem.o: lwip-1.4.1/src/core/mem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/mem.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/mem.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/mem.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/mem.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/mem.o lwip-1.4.1/src/core/mem.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/dhcp.o: lwip-1.4.1/src/core/dhcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/dhcp.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/dhcp.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/dhcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/dhcp.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/dhcp.o lwip-1.4.1/src/core/dhcp.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/tcp_out.o: lwip-1.4.1/src/core/tcp_out.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/tcp_out.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/tcp_out.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/tcp_out.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/tcp_out.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/tcp_out.o lwip-1.4.1/src/core/tcp_out.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/stats.o: lwip-1.4.1/src/core/stats.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/stats.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/stats.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/stats.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/stats.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/stats.o lwip-1.4.1/src/core/stats.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/tcp_in.o: lwip-1.4.1/src/core/tcp_in.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/tcp_in.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/tcp_in.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/tcp_in.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/tcp_in.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/tcp_in.o lwip-1.4.1/src/core/tcp_in.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/def.o: lwip-1.4.1/src/core/def.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/def.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/def.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/def.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/def.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/def.o lwip-1.4.1/src/core/def.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/raw.o: lwip-1.4.1/src/core/raw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/raw.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/raw.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/raw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/raw.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/raw.o lwip-1.4.1/src/core/raw.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/dns.o: lwip-1.4.1/src/core/dns.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/dns.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/dns.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/dns.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/dns.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/dns.o lwip-1.4.1/src/core/dns.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/udp.o: lwip-1.4.1/src/core/udp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/udp.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/udp.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/udp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/udp.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/udp.o lwip-1.4.1/src/core/udp.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/init.o: lwip-1.4.1/src/core/init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/init.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/init.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/init.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/init.o lwip-1.4.1/src/core/init.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/sys.o: lwip-1.4.1/src/core/sys.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/sys.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/sys.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/sys.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/sys.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/sys.o lwip-1.4.1/src/core/sys.c   
	
${OBJECTDIR}/lwip-1.4.1/src/core/tcp.o: lwip-1.4.1/src/core/tcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/core" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/tcp.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/core/tcp.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/core/tcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/core/tcp.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/core/tcp.o lwip-1.4.1/src/core/tcp.c   
	
${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ppp_oe.o: lwip-1.4.1/src/netif/ppp/ppp_oe.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ppp_oe.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ppp_oe.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ppp_oe.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ppp_oe.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ppp_oe.o lwip-1.4.1/src/netif/ppp/ppp_oe.c   
	
${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/chap.o: lwip-1.4.1/src/netif/ppp/chap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/chap.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/chap.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/chap.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/chap.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/chap.o lwip-1.4.1/src/netif/ppp/chap.c   
	
${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/vj.o: lwip-1.4.1/src/netif/ppp/vj.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/vj.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/vj.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/vj.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/vj.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/vj.o lwip-1.4.1/src/netif/ppp/vj.c   
	
${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ipcp.o: lwip-1.4.1/src/netif/ppp/ipcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ipcp.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ipcp.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ipcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ipcp.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ipcp.o lwip-1.4.1/src/netif/ppp/ipcp.c   
	
${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/fsm.o: lwip-1.4.1/src/netif/ppp/fsm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/fsm.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/fsm.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/fsm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/fsm.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/fsm.o lwip-1.4.1/src/netif/ppp/fsm.c   
	
${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/md5.o: lwip-1.4.1/src/netif/ppp/md5.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/md5.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/md5.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/md5.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/md5.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/md5.o lwip-1.4.1/src/netif/ppp/md5.c   
	
${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/magic.o: lwip-1.4.1/src/netif/ppp/magic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/magic.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/magic.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/magic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/magic.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/magic.o lwip-1.4.1/src/netif/ppp/magic.c   
	
${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/auth.o: lwip-1.4.1/src/netif/ppp/auth.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/auth.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/auth.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/auth.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/auth.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/auth.o lwip-1.4.1/src/netif/ppp/auth.c   
	
${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/chpms.o: lwip-1.4.1/src/netif/ppp/chpms.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/chpms.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/chpms.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/chpms.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/chpms.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/chpms.o lwip-1.4.1/src/netif/ppp/chpms.c   
	
${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/pap.o: lwip-1.4.1/src/netif/ppp/pap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/pap.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/pap.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/pap.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/pap.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/pap.o lwip-1.4.1/src/netif/ppp/pap.c   
	
${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/randm.o: lwip-1.4.1/src/netif/ppp/randm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/randm.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/randm.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/randm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/randm.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/randm.o lwip-1.4.1/src/netif/ppp/randm.c   
	
${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/lcp.o: lwip-1.4.1/src/netif/ppp/lcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/lcp.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/lcp.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/lcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/lcp.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/lcp.o lwip-1.4.1/src/netif/ppp/lcp.c   
	
${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ppp.o: lwip-1.4.1/src/netif/ppp/ppp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ppp.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ppp.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ppp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ppp.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/netif/ppp/ppp.o lwip-1.4.1/src/netif/ppp/ppp.c   
	
${OBJECTDIR}/lwip-1.4.1/src/netif/etharp.o: lwip-1.4.1/src/netif/etharp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/netif" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/etharp.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/etharp.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/netif/etharp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/netif/etharp.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/netif/etharp.o lwip-1.4.1/src/netif/etharp.c   
	
${OBJECTDIR}/lwip-1.4.1/src/netif/ethernetif.o: lwip-1.4.1/src/netif/ethernetif.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/netif" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ethernetif.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/ethernetif.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/netif/ethernetif.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/netif/ethernetif.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/netif/ethernetif.o lwip-1.4.1/src/netif/ethernetif.c   
	
${OBJECTDIR}/lwip-1.4.1/src/netif/slipif.o: lwip-1.4.1/src/netif/slipif.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lwip-1.4.1/src/netif" 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/slipif.o.d 
	@${RM} ${OBJECTDIR}/lwip-1.4.1/src/netif/slipif.o 
	@${FIXDEPS} "${OBJECTDIR}/lwip-1.4.1/src/netif/slipif.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/lwip-1.4.1/src/netif/slipif.o.d" -o ${OBJECTDIR}/lwip-1.4.1/src/netif/slipif.o lwip-1.4.1/src/netif/slipif.c   
	
${OBJECTDIR}/src/main.o: src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/main.o.d 
	@${RM} ${OBJECTDIR}/src/main.o 
	@${FIXDEPS} "${OBJECTDIR}/src/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/src/main.o.d" -o ${OBJECTDIR}/src/main.o src/main.c   
	
${OBJECTDIR}/src/ip_lwip.o: src/ip_lwip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/ip_lwip.o.d 
	@${RM} ${OBJECTDIR}/src/ip_lwip.o 
	@${FIXDEPS} "${OBJECTDIR}/src/ip_lwip.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/src/ip_lwip.o.d" -o ${OBJECTDIR}/src/ip_lwip.o src/ip_lwip.c   
	
${OBJECTDIR}/src/echo.o: src/echo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/echo.o.d 
	@${RM} ${OBJECTDIR}/src/echo.o 
	@${FIXDEPS} "${OBJECTDIR}/src/echo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -I"contrib/ports/microchip/include" -I"freertos/include" -I"lwip-1.4.1/src/include" -I"lwip-1.4.1/src/include/ipv4" -I"src" -MMD -MF "${OBJECTDIR}/src/echo.o.d" -o ${OBJECTDIR}/src/echo.o src/echo.c   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/port_lwip_pic32.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PIC32MXSK=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/port_lwip_pic32.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PIC32MXSK=1,--defsym=_min_heap_size=40000,--defsym=_min_stack_size=1024,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/port_lwip_pic32.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/port_lwip_pic32.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=40000,--defsym=_min_stack_size=1024,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	${MP_CC_DIR}/xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/port_lwip_pic32.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
