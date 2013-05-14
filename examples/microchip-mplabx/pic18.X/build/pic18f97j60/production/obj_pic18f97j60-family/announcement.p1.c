#include <Compiler.h>
#include <GenericTypeDefs.h>
#include <stdint.h>
#include <limits.h>
#line 13 "/home/jarojuda/contiki/platform/pic18f97j60-family/contiki-conf.h"
typedef unsigned long clock_time_t;
#line 17 "/home/jarojuda/contiki/platform/pic18f97j60-family/contiki-conf.h"
typedef unsigned short uip_stats_t;
#line 65 "/home/jarojuda/contiki/core/net/rime/rimeaddr.h"
typedef union {
unsigned char u8[2];
} rimeaddr_t;
#line 79 "/home/jarojuda/contiki/core/net/rime/rimeaddr.h"
void rimeaddr_copy(rimeaddr_t *dest, const rimeaddr_t *from);
#line 93 "/home/jarojuda/contiki/core/net/rime/rimeaddr.h"
int rimeaddr_cmp(const rimeaddr_t *addr1, const rimeaddr_t *addr2);
#line 103 "/home/jarojuda/contiki/core/net/rime/rimeaddr.h"
void rimeaddr_set_node_addr(rimeaddr_t *addr);
#line 114 "/home/jarojuda/contiki/core/net/rime/rimeaddr.h"
extern rimeaddr_t rimeaddr_node_addr;
#line 127 "/home/jarojuda/contiki/core/net/rime/rimeaddr.h"
extern const rimeaddr_t rimeaddr_null;
#line 71 "/home/jarojuda/contiki/core/net/rime/announcement.h"
struct announcement;

typedef void (*announcement_callback_t)(struct announcement *a,
const rimeaddr_t *from,
uint16_t id, uint16_t val);
#line 83 "/home/jarojuda/contiki/core/net/rime/announcement.h"
struct announcement {
struct announcement *next;
uint16_t id;
uint16_t value;
announcement_callback_t callback;
uint8_t has_value;
};
#line 113 "/home/jarojuda/contiki/core/net/rime/announcement.h"
void announcement_register(struct announcement *a,
uint16_t id,
announcement_callback_t callback);
#line 127 "/home/jarojuda/contiki/core/net/rime/announcement.h"
void announcement_remove(struct announcement *a);
#line 140 "/home/jarojuda/contiki/core/net/rime/announcement.h"
void announcement_set_value(struct announcement *a, uint16_t value);
#line 152 "/home/jarojuda/contiki/core/net/rime/announcement.h"
void announcement_remove_value(struct announcement *a);
#line 167 "/home/jarojuda/contiki/core/net/rime/announcement.h"
void announcement_bump(struct announcement *a);
#line 183 "/home/jarojuda/contiki/core/net/rime/announcement.h"
void announcement_listen(int periods);
#line 199 "/home/jarojuda/contiki/core/net/rime/announcement.h"
void announcement_init(void);
#line 214 "/home/jarojuda/contiki/core/net/rime/announcement.h"
struct announcement *announcement_list(void);
#line 227 "/home/jarojuda/contiki/core/net/rime/announcement.h"
void announcement_heard(const rimeaddr_t *from, uint16_t id, uint16_t value);
#line 239 "/home/jarojuda/contiki/core/net/rime/announcement.h"
void announcement_register_listen_callback(void (*callback)(int time));

enum {
ANNOUNCEMENT_NOBUMP,
ANNOUNCEMENT_BUMP,
};

typedef void (* announcement_observer)(uint16_t id, uint8_t has_value,
uint16_t newvalue, uint16_t oldvalue,
uint8_t bump);
#line 264 "/home/jarojuda/contiki/core/net/rime/announcement.h"
void announcement_register_observer_callback(announcement_observer observer);
#line 135 "/home/jarojuda/contiki/core/lib/list.h"
typedef void ** list_t;

void list_init(list_t list);
void * list_head(list_t list);
void * list_tail(list_t list);
void * list_pop (list_t list);
void list_push(list_t list, void *item);

void * list_chop(list_t list);

void list_add(list_t list, void *item);
void list_remove(list_t list, void *item);

int list_length(list_t list);

void list_copy(list_t dest, list_t src);

void list_insert(list_t list, void *previtem, void *newitem);

void * list_item_next(void *item);
#line 49 "/home/jarojuda/contiki-mplabx/examples/microchip-mplabx/pic18.X/../../../../contiki/core/net/rime/announcement.c"
static void *announcements_list = 0; static list_t announcements = (list_t)&announcements_list;

static void (* listen_callback)(int time);
static announcement_observer observer_callback;
#line 55 "/home/jarojuda/contiki-mplabx/examples/microchip-mplabx/pic18.X/../../../../contiki/core/net/rime/announcement.c"
void
announcement_init(void)
{
list_init(announcements);
}

void
announcement_register(struct announcement *a, uint16_t id,
announcement_callback_t callback)
{
a->id = id;
a->has_value = 0;
a->callback = callback;
list_add(announcements, a);
if(observer_callback) {
observer_callback(a->id, a->has_value,
a->value, 0, ANNOUNCEMENT_BUMP);
}
}

void
announcement_remove(struct announcement *a)
{
list_remove(announcements, a);
}

void
announcement_remove_value(struct announcement *a)
{
a->has_value = 0;
if(observer_callback) {
observer_callback(a->id, 0, 0, 0, ANNOUNCEMENT_NOBUMP);
}

}

void
announcement_set_value(struct announcement *a, uint16_t value)
{
uint16_t oldvalue = a->value;

a->has_value = 1;
a->value = value;
if(observer_callback) {
observer_callback(a->id, a->has_value,
value, oldvalue, ANNOUNCEMENT_NOBUMP);
}
}

void
announcement_bump(struct announcement *a)
{
if(observer_callback) {
observer_callback(a->id, a->has_value,
a->value, a->value, ANNOUNCEMENT_BUMP);
}
}

void
announcement_listen(int time)
{
if(listen_callback) {
listen_callback(time);
}
}

void
announcement_register_listen_callback(void (*callback)(int time))
{
listen_callback = callback;
}

void
announcement_register_observer_callback(announcement_observer callback)
{
observer_callback = callback;
}

struct announcement *
announcement_list(void)
{
return list_head(announcements);
}

void
announcement_heard(const rimeaddr_t *from, uint16_t id, uint16_t value)
{
struct announcement *a;
for(a = list_head(announcements); a != 0; a = list_item_next(a)) {
if(a->id == id) {
if(a->callback != 0) {
a->callback(a, from, id, value);
}
return;
}
}
}
