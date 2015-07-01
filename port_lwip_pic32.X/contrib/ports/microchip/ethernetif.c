/**
 * @file
 * Ethernet Interface Skeleton
 *
 * author: vincent bannelier
 *
 * Created on avril 2015, 10:49
 *
 */

/*
 * Copyright (c) 2001-2004 Swedish Institute of Computer Science.*/

#include <netif/etharp.h>
#include <lwip/stats.h>
#include <lwip/tcpip.h>

#include <netif/Microchip_eth.h>
#include <plib.h>

#include <arch/sys_arch.h>
#include <ethernetif.h>
#include <HardwareProfile.h>
#include <lwip/sys.h>

/* Define those to better describe your network interface. */
#define IFNAME0 'e'
#define IFNAME1 'n'

struct ethernetif {
    volatile TxBuffers* T1;
    void* RxSem;        //Rx semaphore : a packet has been recieved : need to be transmit from buffer to lwip
    void* TxSem;        //Tx semaphore : a packet has been succesfully transmit : need to acknoledge the packet
};


static struct netif* s_netif            = NULL;     //need by tinterruptions
static struct ethernetif* s_ethernetif  = NULL;     //need by interruptions

static void     low_level_input( void *pvParameters );                      //Called by ethernet interruption
static err_t    low_level_output(struct netif *netif, struct pbuf *p);      //Called by netif->linkoutput
static void     low_level_output_acknoledge( void *pvParameters );          //Called by ethernet interruption
static void     low_level_init(struct netif *netif);                        //Called by ethernetif_init
/*-----------------------------------------------------------*/



/*************************************************************/

/**
 * In this function, the hardware should be initialized.
 * Called from ethernetif_init().
 *
 * @param netif the already initialized lwip network interface structure
 *        for this ethernetif
 */
static void low_level_init(struct netif *netif)
{
    /********** Affectattion des variables globales utilis�es par les interruptions **********/
    if (netif == NULL)
    {
        printf("ERROR : low_level_init : netif_global->state = NULL\r\n");
    }
    else
    {
        s_netif = netif;
        if (s_netif->state == NULL)
        {
            printf("ERROR : low_level_init : netif_global->state = NULL\r\n");
        }
        else
        {
            s_ethernetif = s_netif->state;
            struct ethernetif *ethernetif = netif->state;
            if (ethernetif == NULL)
            {
                printf("ERROR : low_level_init : ethernetif = NULL\r\n");
            }
            else
            {
                ethernetif->T1 = (TxBuffers*) mem_malloc(sizeof(TxBuffers));
                if (ethernetif->T1 == NULL)
                {
                    printf("ERROR : low_level_init : ethernetif->T1 = NULL\r\n");
                }
                else
                {
                    ethernetif->T1->_TxLastDcptIx = 0;
                    ethernetif->T1->_pTxCurrDcpt = 0;
                    ethernetif->TxSem = (sys_sem_t *)mem_malloc(sizeof(sys_sem_t *));
                    ethernetif->RxSem = (sys_sem_t *)mem_malloc(sizeof(sys_sem_t *));
                	//Rx semaphore : a packet has been recieved : need to be transmit from buffer to lwip
                    if (sys_sem_new_n(ethernetif->TxSem,EMAC_TX_DESCRIPTORS,0) != ERR_OK)
                    {
                        printf("ERROR : low_level_init : Tx semaphore init failed\r\n");
                    }
                    else
                    {
                    	//Tx semaphore : a packet has been successfully transmit : need to acknowledge the packet
                        if (sys_sem_new_n(ethernetif->RxSem,EMAC_RX_DESCRIPTORS,0) != ERR_OK)
                        {
                            printf("ERROR : low_level_init : Rx semaphore init failed\r\n");
                        }
                        else
                        {
                            /* maximum transfer unit */
                            netif->mtu = 1500;
                        	//Transmit RX packet from Rx buffer to lwip
                            if (sys_thread_new(( const char * ) "Ethernet input", low_level_input, netif , 200,3) == NULL)
                            {
                                printf("ERROR : low_level_init : Ethernet input init failed\r\n");
                            }
                            else
                            {
                            	//Acknowledge Tx packet successfully transmit
                                if (sys_thread_new(( const char * ) "Ethernet output acknowledge",low_level_output_acknoledge,netif,120, 3) == NULL)
    				{
                                    printf("ERROR : low_level_init : Ethernet output acknowledge init failed\r\n");
    				}
                                else
                                {
                                    strncpy(netif->hwaddr,"000000",6);
                                    if (MACInit(ethernetif->T1,netif->hwaddr) != 0 )
                                    {
                                            printf("ERROR : low_level_init : macinit failed\r\n");
                                    }
                                    else
                                    {
                                /* set MAC hardware address length */
                                            netif->hwaddr_len = ETHARP_HWADDR_LEN;
                                            /* device capabilities */
                                            /* don't set NETIF_FLAG_ETHARP if this device is not an ethernet one */
                                            netif->flags = NETIF_FLAG_BROADCAST | NETIF_FLAG_ETHERNET | NETIF_FLAG_ETHARP | NETIF_FLAG_LINK_UP;
                                    }   // macinit failed
                                }	// Ethernet output acknowledge init failed
                            }	// Ethernet input init failed
                        }	// Tx sem init
                    }	// Rx sem init failed
                }   //ethernetif->T1 = NULL
            }   //netif->state = NULL
        }   //netif_global->state = NULL
    }   //netif = NULL
}


/**
 * This function should do the actual transmission of the packet. The packet is
 * contained in the pbuf that is passed to the function. This pbuf
 * might be chained.
 *
 * @param netif the lwip network interface structure for this ethernetif
 * @param p the MAC packet to send (e.g. IP packet including MAC addresses and type)
 * @return ERR_OK if the packet could be sent
 *         an err_t value if the packet couldn't be sent
 *
 * @note Returning ERR_MEM here if a DMA queue of your MAC is full can lead to
 *       strange results. You might consider waiting for space in the DMA queue
 *       to become availale since the stack doesn't retry to send a packet
 *       dropped because of memory failure (except for the TCP timers).
 */
/**
 * Should allocate a pbuf and transfer the bytes of the incoming
 * packet from the interface into the pbuf.
 *
 * @param netif the lwip network interface structure for this ethernetif
 * @return a pbuf filled with the received packet (including MAC header)
 *         NULL on memory error
 */
/*static struct pbuf */
void low_level_input( void *pvParameters )
{
    struct netif* netif= pvParameters;
    if (netif == NULL)
    {
        printf("ERROR : low_level_input : netif = NULL\r\n");
    }
    else
    {
        struct ethernetif *ethernetif = (struct ethernetif *)netif->state;
        if (ethernetif == NULL)
        {
            printf("ERROR : low_level_input : ethernetif = NULL\r\n");
        }
        else
        {
            //variable microchip
     
            const sEthRxPktStat* stat = (const sEthRxPktStat*)mem_malloc(sizeof(sEthRxPktStat));
            if (stat == NULL)
            {
                printf("ERROR : low_level_input : stat = NULL\r\n");
            }
            else
            {
                BYTE* data = (BYTE*)mem_malloc(1520*sizeof(BYTE));
                if (data == NULL)
                {
                    printf("ERROR : low_level_input : data = NULL\r\n");
                }
                else
                {
                    eEthRes ethRes = ETH_RES_CFG_ERR;

                    struct pbuf *p = NULL;
                    u16_t len;

                    for( ;; )
                    {
                    	sys_arch_sem_wait(ethernetif->RxSem,0);
                        eEthRes ethGetResult = EthRxGetBuffer((void**)&data,&stat);
                        if (ethGetResult == ETH_RES_OK)     //valid packet in a rx buffer
                        {
                            /* Obtain the size of the packet and put it into the "len"
                            variable. */
                            len = stat->rxBytes - 4; //size of the raw packet minus size of fcs

                            #if ETH_PAD_SIZE
                                len += ETH_PAD_SIZE; /* allow room for Ethernet padding */
                            #endif

                            /* We allocate a pbuf chain of pbufs from the pool. */
                            p = pbuf_alloc(PBUF_RAW, len, PBUF_POOL);
                            if (p != NULL) {

                                #if ETH_PAD_SIZE
                                    /* drop the padding word */
                                    if (pbuf_header(p, -ETH_PAD_SIZE) != ERR_OK)
                                    {
                                        printf("ERROR : low_level_input : drop the padding word\r\n");
                                    }
                                #endif

                                p->len = len;
                                p->tot_len = len;
                                memcpy(p->payload,data,p->len);

                                if (netif->input(p,netif) != ERR_OK)
                                {
                                    printf("ERROR : low_level_input : tcp input\r\n");
                    				pbuf_free(p);
                    				p = NULL;
                                }

                                ethRes = EthRxAcknowledgeBuffer(data,NULL,NULL);
                                if ( ethRes != ETH_RES_OK )
                                {
                                    printf("ERROR : low_level_input : acknoledge Rx packet\r\n");
                                }


                                #if ETH_PAD_SIZE
                                    /* reclaim the padding word */
                                    if (pbuf_header(p, ETH_PAD_SIZE) != ERR_OK)
                                    {
                                        printf("ERROR : low_level_input : reclaim the padding word\r\n");
                                    }
                                #endif

                                LINK_STATS_INC(link.recv);
                            }
                            else  //p == NULL
                            {
                                printf("ERROR : low_level_input : Rx Pbuf alloc\r\n");
                                ethRes = EthRxAcknowledgeBuffer(data,NULL,NULL);
                                if ( ethRes != ETH_RES_OK )
                                {
                                    printf("ERROR : low_level_input : acknoledge Rx packet\r\n");
                                }
                                LINK_STATS_INC(link.memerr);
                                LINK_STATS_INC(link.drop);
                            }
                        }
                        else   // EthRxGetBuffer != ETH_RES_OK
                        {
                            printf("ERROR : low_level_input : ethGetResult = %d\r\n",ethGetResult);
                            ethRes = EthRxAcknowledgeBuffer(data,NULL,NULL);
                            if ( ethRes != ETH_RES_OK )
                            {
                                printf("ERROR : low_level_input : acknoledge Rx packet\r\n");
                            }
                            LINK_STATS_INC(link.memerr);
                            LINK_STATS_INC(link.drop);
                        }
                    } //for(;;)
                }   //data = NULL
            }   //stat = NULL
        }   //ethernetif = NULL
    }   //netif = NULL
}

static err_t low_level_output(struct netif *netif, struct pbuf *p)
{
    err_t returnCode = ERR_OK;
    if (netif == NULL)
    {
        printf("ERROR : low_level_output : netif = NULL\r\n");
        returnCode = ERR_ARG;
    }
    else
    {
        if (p == NULL)
        {
            printf("ERROR : low_level_output : p = NULL\r\n");
            returnCode = ERR_ARG;
        }
        else
        {
            struct ethernetif *ethernetif = netif->state;
            if (ethernetif == NULL)
            {
                printf("ERROR : low_level_output : ethernetif = NULL\r\n");
                returnCode = ERR_ARG;
            }
            else
            {
                struct pbuf *q = NULL;


                #if ETH_PAD_SIZE
                    /* drop the padding word */
                    if (pbuf_header(p, -ETH_PAD_SIZE) != ERR_OK)
                    {
                        printf("ERROR : low_level_output : drop the padding word\r\n");
                        returnCode = ERR_IF;
                    }
                #endif

                while(!MACReady(ethernetif->T1))
                {
                    printf("ERROR : low_level_output : Not avalaible descriptor\r\n");
                }
                MACSetCurretPtr(ethernetif->T1);

                for(q = p; q != NULL; q = q->next)
                {
                    MACAddToBuffer(ethernetif->T1,q->payload,q->len);
                }
                MACSendPckt(ethernetif->T1,p->tot_len);

                #if ETH_PAD_SIZE
                    /* reclaim the padding word */
                    if (pbuf_header(p, ETH_PAD_SIZE) != ERR_OK)
                    {
                        printf("ERROR : low_level_output : reclaim the padding word\r\n");
                        returnCode = ERR_IF;
                    }
                #endif

                LINK_STATS_INC(link.xmit);
            }   //ethernetif = NULL
        }   //p = NULL
    }   //netif = NULL
    return ERR_OK;
}


/**
 * Should be called at the beginning of the program to set up the
 * network interface. It calls the function low_level_init() to do the
 * actual setup of the hardware.
 *
 * This function should be passed as a parameter to netif_add().
 *
 * @param netif the lwip network interface structure for this ethernetif
 * @return ERR_OK if the loopif is initialized
 *         ERR_MEM if private data couldn't be allocated
 *         any other err_t on error
 */
err_t ethernetif_init(struct netif *netif)
{
    int return_value = ERR_OK;
    struct ethernetif *ethernetif = NULL;
    LWIP_ASSERT("netif != NULL", (netif != NULL));
    if (netif == NULL)
    {
        printf("ERROR : low_level_output : netif = NULL\r\n");
        return_value = ERR_ARG;
    }
    else
    {
        ethernetif = mem_malloc(sizeof(struct ethernetif));
        if (ethernetif == NULL) {
            LWIP_DEBUGF(NETIF_DEBUG, ("ethernetif_init: out of memory\n"));
            return_value = ERR_MEM;
        }
        else
        {
            #if LWIP_NETIF_HOSTNAME
                /* Initialize interface hostname */
                netif->hostname = "lwip";
            #endif /* LWIP_NETIF_HOSTNAME */

            /*
            * Initialize the snmp variables and counters inside the struct netif.
            * The last argument should be replaced with your link speed, in units
            * of bits per second.
            */
            NETIF_INIT_SNMP(netif, snmp_ifType_ethernet_csmacd, LINK_SPEED_OF_YOUR_NETIF_IN_BPS);

            netif->state = ethernetif;
            netif->name[0] = IFNAME0;
            netif->name[1] = IFNAME1;
            /* We directly use etharp_output() here to save a function call.
            * You can instead declare your own function an call etharp_output()
            * from it if you have to do some checks before sending (e.g. if link
            * is available...) */
            netif->output = etharp_output;
            netif->linkoutput = low_level_output;

            /* initialize the hardware */
            low_level_init(netif);
        }   //ethernetif = NULL
    }   //netif = NULL
    return return_value;
}


static void low_level_output_acknoledge( void *pvParameters )
{
    struct netif* netif= pvParameters;
    if (netif == NULL)
    {
        printf("ERROR : low_level_output_acknoledge : netif = NULL\r\n");
    }
    else
    {
        struct ethernetif *ethernetif = netif->state;
        if (ethernetif == NULL)
        {
            printf("ERROR : low_level_output_acknoledge : ethernetif = NULL\r\n");
        }
        else
        {
            int i = 0;
            for(;;)
            {
            	sys_arch_sem_wait(ethernetif->TxSem,0);
                for(i=0; i<EMAC_TX_DESCRIPTORS; i++)
                {
                    if(EthTxGetBufferStatus((const void *)ethernetif->T1->_TxDescriptors[i].dataBuff,NULL) == ETH_RES_OK)  //acknowledge all sent packet
                    {
                        if (EthTxAcknowledgeBuffer((const void *)ethernetif->T1->_TxDescriptors[i].dataBuff,_TxAckCallback,NULL) != ETH_RES_OK)
                        {
                            printf("ERROR : low_level_output_acknoledge : Output ACK\r\n");
                        }
                    }
                }
            }   //for(;;)
        }   //ethernetif = NULL
    }   //netif = NULL
}


void CommonEthISR(int Rx, int Tx)
{
    if (Tx)         //TxDone
    {
    	sys_sem_signal(s_ethernetif->TxSem);
    }
    if (Rx)        //RxDone
    {
    	sys_sem_signal(s_ethernetif->RxSem);
    }
}


	//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
void SetLinkUpCallback(void)
{
	if (tcpip_callback_with_block((tcpip_callback_fn)netif_set_link_up,s_netif,0) != ERR_OK)
	{
		printf("ERROR: SetLinkUpCallback\r\n");
	}
}

void SetLinkDownCallback(void)
{
	if (tcpip_callback_with_block((tcpip_callback_fn)netif_set_link_down,s_netif,0) != ERR_OK)
	{
		printf("ERROR: SetLinkDownCallback\r\n");
	}
}
