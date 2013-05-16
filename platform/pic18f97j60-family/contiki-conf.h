#ifndef __CONTIKI_CONF_H__
#define __CONTIKI_CONF_H__

#include <Compiler.h>
#include <GenericTypeDefs.h>

#include <stdint.h>
#include <limits.h>

#define CCIF
#define CLIF

typedef unsigned long clock_time_t;
#define CLOCK_CONF_SECOND 1000
#define INFINITE_TIME ULONG_MAX

typedef unsigned short uip_stats_t;

#define UIP_CONF_IPV6 0

#endif /* __CONTIKI_CONF_H__ */
