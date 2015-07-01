#ifndef __LWIPOPTS_H_
#define __LWIPOPTS_H_

#ifndef PROCESSOR_LITTLE_ENDIAN
#define PROCESSOR_LITTLE_ENDIAN
#endif


#ifdef PROCESSOR_LITTLE_ENDIAN
#define BYTE_ORDER LITTLE_ENDIAN
#else
#define BYTE_ORDER BIG_ENDIAN
#endif

#define SYS_LIGHTWEIGHT_PROT 1

//#define LWIP_DEBUG

//#define TCP_DEBUG           LWIP_DBG_ON
//#define TCP_INPUT_DEBUG     LWIP_DBG_ON
//#define TCP_OUTPUT_DEBUG    LWIP_DBG_ON
//#define TCPIP_DEBUG         LWIP_DBG_ON
//#define RAW_DEBUG           LWIP_DBG_ON
//#define ETHARP_DEBUG        LWIP_DBG_ON
//#define PBUF_DEBUG          LWIP_DBG_ON
//#define ICMP_DEBUG          LWIP_DBG_ON
//#define IP_DEBUG            LWIP_DBG_ON
//#define IP_REASS_DEBUG       LWIP_DBG_ON
//#define DHCP_DEBUG          LWIP_DBG_ON

#define LWIP_RAW                        0

#define LWIP_STATS          0
//#define LWIP_STATS_DISPLAY  1
//#define LINK_STATS          0
//#define ETHARP_STATS        0
//#define IP_STATS            0
//#define ICMP_STATS          0
//#define MEM_STATS           0
//#define MEMP_STATS          1
//#define SYS_STATS           0
//#define TCP_STATS           0
//#define UDP_STATS           0
//#define IPFRAG_STATS        0


#define OS_IS_FREERTOS
//#define APISSYS_RTOS


#define DEFAULT_THREAD_PRIO 2
#define TCPIP_THREAD_PRIO (DEFAULT_THREAD_PRIO+1)
#define TCPIP_THREAD_STACKSIZE 1024
#define DEFAULT_TCP_RECVMBOX_SIZE 	300
#define DEFAULT_ACCEPTMBOX_SIZE 	5
#define TCPIP_MBOX_SIZE		30
#define DEFAULT_UDP_RECVMBOX_SIZE 	100
#define DEFAULT_RAW_RECVMBOX_SIZE	100

#define MEM_ALIGNMENT 4  //due to 32 bits architecture
#define MEM_SIZE 8192
#define MEMP_NUM_PBUF 16
#define MEMP_NUM_UDP_PCB 4
#define MEMP_NUM_TCP_PCB 5
#define MEMP_NUM_TCP_PCB_LISTEN 8
#define MEMP_NUM_TCP_SEG 16
#define MEMP_NUM_SYS_TIMEOUT 5
#define MEMP_NUM_NETBUF 2
#define MEMP_NUM_NETCONN 4
#define MEMP_NUM_TCPIP_MSG_API 8
#define MEMP_NUM_TCPIP_MSG_INPKT 8

#define LWIP_PROVIDE_ERRNO  1
#define PBUF_POOL_SIZE 16
#define PBUF_POOL_BUFSIZE 1518
#define ETH_PAD_SIZE    2  //permet l'alignement des adresse ip en m�moire (avec MEM_ALIGNMENT 4 ) et donc acc�l�re le traitement

#define ARP_TABLE_SIZE 10
#define ARP_QUEUEING 1

#define ICMP_TTL 255

#define IP_OPTIONS 0
#define IP_FORWARD 0
#define IP_REASSEMBLY 1
#define IP_FRAG 1
#define IP_REASS_MAX_PBUFS 5760
#define IP_FRAG_MAX_MTU 1500
#define IP_DEFAULT_TTL 255
#define LWIP_CHKSUM_ALGORITHM 3

#define LWIP_UDP 1
#define UDP_TTL 255

#define LWIP_DHCP 1
#define DHCP_DOES_ARP_CHECK 0

#define CONFIG_LINKSPEED_AUTODETECT 1

#define LWIP_NETIF_LINK_CALLBACK 1

#endif
