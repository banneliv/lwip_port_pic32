/*
 * ip_lwip.c
 *
 *  Created on: 18 mai 2015
 *      Author: vbannelier
 */

#include "ip_lwip.h"
#include <FreeRTOS.h>
#include <lwip/tcpip.h>
#include <ethernetif.h>
#include "echo.h"

int ip_thread(void *pvParameters);


#define THREAD_STACKSIZE 1024 // Empirically chosen

int InitIP(void)//struct _Ap6McuModule *self)
{
	int return_value = 0;
	if ( xTaskCreate( (void(*)(void*))ip_thread, ( const char * ) "main_thrd",1024, NULL,DEFAULT_THREAD_PRIO, NULL ) != 1)
	{
		printf("ERROR : ap6-os init : task main_thrd NOT created\r\n");
    	return_value = 1;
	}
    return return_value;
}


void print_ip(char *msg, struct ip_addr *ip)
{
    printf(msg);
    printf("%d.%d.%d.%d\r\n", ip4_addr1(ip), ip4_addr2(ip),
            ip4_addr3(ip), ip4_addr4(ip));
}

void print_ip_settings(struct ip_addr *ip, struct ip_addr *mask, struct ip_addr *gw)
{

    print_ip("Board IP: ", ip);
    print_ip("Netmask : ", mask);
    print_ip("Gateway : ", gw);
}


int ip_thread(void *pvParameters)
{
	struct netif server_netif;
#if LWIP_DHCP==1
	int mscnt = 0;
#endif
	/* initialize lwIP before calling sys_thread_new */
    lwip_init();
    /* any thread using lwIP should be created using sys_thread_new */
    //sys_thread_new("NW_THRD", network_thread, NULL,THREAD_STACKSIZE,DEFAULT_THREAD_PRIO);
    /* Add network interface to the netif_list, and set it as default */
    struct ip_addr ipaddr, netmask, gw;


    /* the mac address of the board. this should be unique per board */
    unsigned char mac_ethernet_address[] = { 0x00, 0x0a, 0x35, 0x00, 0x01, 0x02 };

    /* print out IP settings of the board */
    printf("---lwIP Socket Mode Demo Application ----\r\n");

#if LWIP_DHCP==0
    /* initliaze IP addresses to be used */
	IP4_ADDR(&(server_netif.ip_addr),  192, 168,   10, 137);
	IP4_ADDR(&(server_netif.netmask), 255, 255, 255,  0);
	IP4_ADDR(&(server_netif.gw),      192, 168,   10,  254);
	print_ip_settings(&(server_netif.ip_addr), &(server_netif.netmask), &(server_netif.gw));
	/* print all application headers */
    printf("\r\n");
    printf("%13s %4s %s\r\n", "Server", "Port", "Connect With..");
    printf("%13s %4s %s\r\n", "------------", "----", "--------------------");
    print_echo_app_header();
    printf("\r\n");
#endif

#if LWIP_DHCP==1
	ipaddr.addr = 0;
	gw.addr = 0;
	netmask.addr = 0;
#endif

    if (!netif_add(&server_netif, &ipaddr, &netmask, &gw,NULL,ethernetif_init,tcpip_input)) {
        printf("Error adding N/W interface\r\n");
        return 0;
    }
//	if (!xemac_add(&server_netif, &ipaddr, &netmask,
//						&gw, mac_ethernet_address,
//						PLATFORM_EMAC_BASEADDR)) {
//		xil_printf("Error adding N/W interface\n\r");
//		return -1;
//	}
    netif_set_default(&server_netif);

    /* specify that the network if is up */
    netif_set_up(&server_netif);

//#if LWIP_DHCP==0
//    print_ip_settings(&ipaddr, &netmask, &gw);
//    /* print all application headers */
//#endif


#if LWIP_DHCP==1
    dhcp_start(&server_netif);
    while (1) {
#ifdef OS_IS_FREERTOS
    	vTaskDelay(DHCP_FINE_TIMER_MSECS / portTICK_RATE_MS);
#else
    #ifdef APISSYS_RTOS
		TaskDelay(DHCP_FINE_TIMER_MSECS / portTICK_RATE_MS);
    #else
		sleep(DHCP_FINE_TIMER_MSECS);
    #endif
#endif
		if (server_netif.ip_addr.addr) {
			printf("DHCP request success\r\n");
			print_ip_settings(&(server_netif.ip_addr), &(server_netif.netmask), &(server_netif.gw));
			/* print all application headers */
		    printf("\r\n");
		    printf("%13s %4s %s\r\n", "Server", "Port", "Connect With..");
		    printf("%13s %4s %s\r\n", "------------", "----", "--------------------");
		    print_echo_app_header();
		    printf("\r\n");
			/* now we can start application threads */
                        sys_thread_new("echod", echo_application_thread, pvParameters,THREAD_STACKSIZE,DEFAULT_THREAD_PRIO);
			break;
		}
		mscnt += DHCP_FINE_TIMER_MSECS;
		if (mscnt >= 10000) {
			printf("ERROR: DHCP request timed out\r\n");
			IP4_ADDR(&(server_netif.ip_addr),  192, 168,   10, 137);
			IP4_ADDR(&(server_netif.netmask), 255, 255, 255,  0);
			IP4_ADDR(&(server_netif.gw),      192, 168,   10,  254);
			print_ip_settings(&(server_netif.ip_addr), &(server_netif.netmask), &(server_netif.gw));
			/* print all application headers */
		    printf("\r\n");
		    printf("%13s %4s %s\r\n", "Server", "Port", "Connect With..");
		    printf("%13s %4s %s\r\n", "------------", "----", "--------------------");
		    print_echo_app_header();
		    printf("\r\n");
			/* now we can start application threads */
                       // sys_thread_new("echo application", echo_application_thread, pvParameters,THREAD_STACKSIZE,DEFAULT_THREAD_PRIO);
			break;
		}

	}
#endif

#ifdef OS_IS_FREERTOS
	vTaskDelete(NULL);
#endif
#ifdef APISSYS_RTOS
	TaskDelete(NULL);
#endif
    return 0;
}
