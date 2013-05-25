
/* Various stub functions and uIP variables other code might need to
 * compile. Allows you to save needing to compile all of uIP in just
 * to get a few things.  This file is included in the build by the contiki
 * Makefile.include only when CONTIKI_NO_NET is defined */
 
#include "net/uip.h"
#include <string.h>

#define UIP_IP_BUF   ((struct uip_ip_hdr *)&uip_buf[UIP_LLH_LEN])


extern void mac_LowpanToEthernet(void);
void tcpip_input( void )
{
  printf("tcpip_input");
}

uint8_t tcpip_output(void){
    return 0;
}
void tcpip_set_outputfunc(uint8_t (* f)(void)){

}
