#include <Compiler.h>
#include <GenericTypeDefs.h>
#include <stdint.h>
#include <limits.h>
#line 16 "/home/jarojuda/GitHub/contiki/platform/pic18f97j60-family/contiki-conf.h"
typedef unsigned long clock_time_t;
#line 24 "/home/jarojuda/GitHub/contiki/platform/pic18f97j60-family/contiki-conf.h"
typedef unsigned short uip_stats_t;
#line 67 "/home/jarojuda/GitHub/contiki/core/lib/ringbuf.h"
struct ringbuf {
uint8_t *data;
uint8_t mask;
#line 72 "/home/jarojuda/GitHub/contiki/core/lib/ringbuf.h"
uint8_t put_ptr, get_ptr;
};
#line 88 "/home/jarojuda/GitHub/contiki/core/lib/ringbuf.h"
void ringbuf_init(struct ringbuf *r, uint8_t *a,
uint8_t size_power_of_two);
#line 102 "/home/jarojuda/GitHub/contiki/core/lib/ringbuf.h"
int ringbuf_put(struct ringbuf *r, uint8_t c);
#line 115 "/home/jarojuda/GitHub/contiki/core/lib/ringbuf.h"
int ringbuf_get(struct ringbuf *r);
#line 122 "/home/jarojuda/GitHub/contiki/core/lib/ringbuf.h"
int ringbuf_size(struct ringbuf *r);
#line 129 "/home/jarojuda/GitHub/contiki/core/lib/ringbuf.h"
int ringbuf_elements(struct ringbuf *r);
#line 42 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/ringbuf.c"
void
ringbuf_init(struct ringbuf *r, uint8_t *dataptr, uint8_t size)
{
r->data = dataptr;
r->mask = size - 1;
r->put_ptr = 0;
r->get_ptr = 0;
}

int
ringbuf_put(struct ringbuf *r, uint8_t c)
{
#line 63 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/ringbuf.c"
if(((r->put_ptr - r->get_ptr) & r->mask) == r->mask) {
return 0;
}
r->data[r->put_ptr] = c;
r->put_ptr = (r->put_ptr + 1) & r->mask;
return 1;
}

int
ringbuf_get(struct ringbuf *r)
{
uint8_t c;
#line 86 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/ringbuf.c"
if(((r->put_ptr - r->get_ptr) & r->mask) > 0) {
c = r->data[r->get_ptr];
r->get_ptr = (r->get_ptr + 1) & r->mask;
return c;
} else {
return -1;
}
}

int
ringbuf_size(struct ringbuf *r)
{
return r->mask + 1;
}

int
ringbuf_elements(struct ringbuf *r)
{
return (r->put_ptr - r->get_ptr) & r->mask;
}
