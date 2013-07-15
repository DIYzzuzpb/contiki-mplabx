#ifndef __CONTIKI_CONF_H__
#define __CONTIKI_CONF_H__

#include <Compiler.h>
#include <GenericTypeDefs.h>
#include "HardwareProfile.h"
#include <stdint.h>
#include <limits.h>
#include <stdbool.h>


#define CCIF
#define CLIF

typedef unsigned long clock_time_t;
#define CLOCK_CONF_SECOND          ((GetPeripheralClock()+128ull)/256ull)
#define STIMER_TICK_UPDATE_FREQ    ((GetPeripheralClock())>>16ull)
#define STIMER_TICK_CORRECTION     ((GetPeripheralClock()&0xffffull)>>8ull)

#if(STIMER_TICK_UPDATE_FREQ==0)
#error adjust stimer update frequency
#endif
#if(STIMER_TICK_UPDATE_FREQ>0xfful)
#error adjust stimer update frequency
#endif


#define CONTIKI_CONF_SETTINGS_MANAGER 0

#define RTIMER_CLOCK_LT(a,b) ((int16_t)((a)-(b))<0)

#define INFINITE_TIME ULONG_MAX

typedef unsigned short uip_stats_t;

#define UIP_CONF_IPV6 0
#define UIP_CONF_BUFFER_SIZE 128
#define UIP_CONF_IPV6_RPL 0
#define UIP_CONF_UDP_CONNS 2


#define MMEM_CONF_SIZE (200u)

#define PROCESS_CONF_NO_PROCESS_NAMES 1

#define QUEUEBUF_CONF_NUM (2u)
#define PACKETBUF_CONF_HDR_SIZE (24u)
#define UIP_CONF_MAX_LISTENPORTS (5u)
#define QUEUEBUF_CONF_REF_NUM (1u)
#define PACKETBUF_CONF_SIZE (64u)

//#define UIP_CONF_TCP 0

#ifdef __18CXX
struct network_driver {
  const rom char *name;

  /** Initialize the network driver */
  void (* init)(void);

  /** Callback for getting notified of incoming packet. */
  void (* input)(void);
};
#endif

#define DISABLE_INTERRUPTS()    {INTCONbits.GIEL = 0; INTCONbits.GIEH = 0;}
#define ENABLE_INTERRUPTS()     {INTCONbits.GIEH = 1; INTCONbits.GIEL = 1;}

#endif /* __CONTIKI_CONF_H__ */

