#ifndef _IP_LWIP_H_
#define _IP_LWIP_H_



#include "lwip/sockets.h"
#include "lwip/sys.h"
#include "lwip/init.h"
#include "lwip/dhcp.h"
#include "lwipopts.h"


int InitIP(void);


#define IPMODULEINITIALIZER(config) MCU_MODULE_INITIALIZER("IPModule", InitIP, config)

#endif // _IP_LWIP_H_
