#include <Compiler.h>
#include <GenericTypeDefs.h>
#include <stdint.h>
#include <limits.h>
#line 16 "/home/jarojuda/GitHub/contiki/platform/pic18f97j60-family/contiki-conf.h"
typedef unsigned long clock_time_t;
#line 24 "/home/jarojuda/GitHub/contiki/platform/pic18f97j60-family/contiki-conf.h"
typedef unsigned short uip_stats_t;
#line 65 "/home/jarojuda/GitHub/contiki/core/net/rime/rimeaddr.h"
typedef union {
unsigned char u8[2];
} rimeaddr_t;
#line 79 "/home/jarojuda/GitHub/contiki/core/net/rime/rimeaddr.h"
void rimeaddr_copy(rimeaddr_t *dest, const rimeaddr_t *from);
#line 93 "/home/jarojuda/GitHub/contiki/core/net/rime/rimeaddr.h"
int rimeaddr_cmp(const rimeaddr_t *addr1, const rimeaddr_t *addr2);
#line 103 "/home/jarojuda/GitHub/contiki/core/net/rime/rimeaddr.h"
void rimeaddr_set_node_addr(rimeaddr_t *addr);
#line 114 "/home/jarojuda/GitHub/contiki/core/net/rime/rimeaddr.h"
extern rimeaddr_t rimeaddr_node_addr;
#line 127 "/home/jarojuda/GitHub/contiki/core/net/rime/rimeaddr.h"
extern const rimeaddr_t rimeaddr_null;
#line 47 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/rimeaddr.c"
rimeaddr_t rimeaddr_node_addr;

const rimeaddr_t rimeaddr_null = { { 0, 0 } };
#line 58 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/rimeaddr.c"
void
rimeaddr_copy(rimeaddr_t *dest, const rimeaddr_t *src)
{
uint8_t i;
for(i = 0; i < 2; i++) {
dest->u8[i] = src->u8[i];
}
}

int
rimeaddr_cmp(const rimeaddr_t *addr1, const rimeaddr_t *addr2)
{
uint8_t i;
for(i = 0; i < 2; i++) {
if(addr1->u8[i] != addr2->u8[i]) {
return 0;
}
}
return 1;
}

void
rimeaddr_set_node_addr(rimeaddr_t *t)
{
rimeaddr_copy(&rimeaddr_node_addr, t);
}
