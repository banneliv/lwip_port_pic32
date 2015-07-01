# lwip_port_pic32

Here is a port of lwip 1.4.1 for pic 32.
Port was realized on an ethernet starter kit II (PIC32MX795F512L) with Mplab X IDE v2.30 and xc v1.22.

To try it just open the Mpalb X project at the racine of the repository.

The demo contains a TCP echo server. ICMP (ping) and DHCP are also used.
Wait the auto allocation by DHCP and use :
- nc xxx.xxx.xxx.xxx 7 to try the tcp echo server

A small changement was apported to lwip : 
The function sys_sem_new_n was added to file sys_arch.c and sys.h.
The function is used in file ethernetif.c in low_level_init.

Memory use is not well configured (lwipopts.h). Port took example on the port for zedboard (XAPP1026), and ressources are not the same. 
