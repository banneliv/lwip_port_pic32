/**
 *
 * author: vincent bannelir
 *
 */



#ifndef _ETHERNETIF_H
#define _ETHERNETIF_H

//#include "lwip/opt.h"
//
//#include "lwip/def.h"
//#include "lwip/mem.h"
//#include "lwip/pbuf.h"
//#include "lwip/sys.h"
//#include <lwip/stats.h>
//#include <lwip/snmp.h>
//#include "netif/etharp.h"
//#include "netif/ppp_oe.h"
//#include "lwip/inet_chksum.h"
//#include "lwip/tcpip.h"

#include <lwip/err.h>
#include <lwip/netif.h>

err_t ethernetif_init(struct netif *netif);


void CommonEthISR(int Rx, int Tx);
void SetLinkUpCallback(void);
void SetLinkDownCallback(void);

#endif
