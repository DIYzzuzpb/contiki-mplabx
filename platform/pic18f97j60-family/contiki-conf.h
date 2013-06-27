#ifndef __CONTIKI_CONF_H__
#define __CONTIKI_CONF_H__

#include <Compiler.h>
#include <GenericTypeDefs.h>
#include "HardwareProfile.h"
#include <stdint.h>
#include <limits.h>
#include <stdbool.h>

//#include "sys/autostart.h"


#define CCIF
#define CLIF

typedef unsigned long clock_time_t;
#define CLOCK_CONF_SECOND ((GetPeripheralClock()+128ull)/256ull)

#define CONTIKI_CONF_SETTINGS_MANAGER 0

#define RTIMER_CLOCK_LT(a,b) ((int16_t)((a)-(b))<0)

#define INFINITE_TIME ULONG_MAX

typedef unsigned short uip_stats_t;

#define UIP_CONF_IPV6 0

#define MMEM_CONF_SIZE (400u)

#endif /* __CONTIKI_CONF_H__ */

