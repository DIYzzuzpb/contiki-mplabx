#include <Compiler.h>
#include <GenericTypeDefs.h>
#include <stdint.h>
#include <limits.h>
#line 16 "/home/jarojuda/GitHub/contiki/platform/pic18f97j60-family/contiki-conf.h"
typedef unsigned long clock_time_t;
#line 24 "/home/jarojuda/GitHub/contiki/platform/pic18f97j60-family/contiki-conf.h"
typedef unsigned short uip_stats_t;
#line 60 "/home/jarojuda/GitHub/contiki/core/dev/radio.h"
struct radio_driver {

int (* init)(void);
#line 65 "/home/jarojuda/GitHub/contiki/core/dev/radio.h"
int (* prepare)(const void *payload, unsigned short payload_len);
#line 68 "/home/jarojuda/GitHub/contiki/core/dev/radio.h"
int (* transmit)(unsigned short transmit_len);
#line 71 "/home/jarojuda/GitHub/contiki/core/dev/radio.h"
int (* send)(const void *payload, unsigned short payload_len);
#line 74 "/home/jarojuda/GitHub/contiki/core/dev/radio.h"
int (* read)(void *buf, unsigned short buf_len);
#line 78 "/home/jarojuda/GitHub/contiki/core/dev/radio.h"
int (* channel_clear)(void);
#line 81 "/home/jarojuda/GitHub/contiki/core/dev/radio.h"
int (* receiving_packet)(void);
#line 84 "/home/jarojuda/GitHub/contiki/core/dev/radio.h"
int (* pending_packet)(void);
#line 87 "/home/jarojuda/GitHub/contiki/core/dev/radio.h"
int (* on)(void);
#line 90 "/home/jarojuda/GitHub/contiki/core/dev/radio.h"
int (* off)(void);
};
#line 94 "/home/jarojuda/GitHub/contiki/core/dev/radio.h"
enum {
RADIO_TX_OK,
RADIO_TX_ERR,
RADIO_TX_COLLISION,
RADIO_TX_NOACK,
};
#line 47 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/mac.h"
typedef void (* mac_callback_t)(void *ptr, int status, int transmissions);

void mac_call_sent_callback(mac_callback_t sent, void *ptr, int status, int num_tx);
#line 54 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/mac.h"
struct mac_driver {
const char *name;
#line 58 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/mac.h"
void (* init)(void);
#line 61 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/mac.h"
void (* send)(mac_callback_t sent_callback, void *ptr);
#line 64 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/mac.h"
void (* input)(void);
#line 67 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/mac.h"
int (* on)(void);
#line 70 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/mac.h"
int (* off)(int keep_radio_on);
#line 73 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/mac.h"
unsigned short (* channel_check_interval)(void);
};
#line 77 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/mac.h"
enum {

MAC_TX_OK,
#line 83 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/mac.h"
MAC_TX_COLLISION,
#line 86 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/mac.h"
MAC_TX_NOACK,
#line 89 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/mac.h"
MAC_TX_DEFERRED,
#line 93 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/mac.h"
MAC_TX_ERR,
#line 98 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/mac.h"
MAC_TX_ERR_FATAL,
};
#line 47 "/home/jarojuda/GitHub/contiki/core/net/mac/csma.h"
extern const struct mac_driver csma_driver;

const struct mac_driver *csma_init(const struct mac_driver *r);
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
#line 85 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
void packetbuf_clear(void);
#line 98 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
void packetbuf_clear_hdr(void);

void packetbuf_hdr_remove(int bytes);
#line 120 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
void *packetbuf_dataptr(void);
#line 132 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
void *packetbuf_hdrptr(void);
#line 145 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
uint8_t packetbuf_hdrlen(void);
#line 164 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
uint16_t packetbuf_datalen(void);
#line 171 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
uint16_t packetbuf_totlen(void);
#line 181 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
void packetbuf_set_datalen(uint16_t len);
#line 194 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
void packetbuf_reference(void *ptr, uint16_t len);
#line 206 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
int packetbuf_is_reference(void);
#line 219 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
void *packetbuf_reference_ptr(void);
#line 235 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
void packetbuf_compact(void);
#line 250 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
int packetbuf_copyfrom(const void *from, uint16_t len);
#line 270 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
int packetbuf_copyto(void *to);
#line 286 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
int packetbuf_copyto_hdr(uint8_t *to);
#line 300 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
int packetbuf_hdralloc(int size);
#line 314 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
int packetbuf_hdrreduce(int size);
#line 318 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
typedef uint16_t packetbuf_attr_t;

struct packetbuf_attr {

packetbuf_attr_t val;
};
struct packetbuf_addr {

rimeaddr_t addr;
};
#line 335 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
enum {
PACKETBUF_ATTR_NONE,
#line 339 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
PACKETBUF_ATTR_CHANNEL,
PACKETBUF_ATTR_NETWORK_ID,
PACKETBUF_ATTR_LINK_QUALITY,
PACKETBUF_ATTR_RSSI,
PACKETBUF_ATTR_TIMESTAMP,
PACKETBUF_ATTR_RADIO_TXPOWER,
PACKETBUF_ATTR_LISTEN_TIME,
PACKETBUF_ATTR_TRANSMIT_TIME,
PACKETBUF_ATTR_MAX_MAC_TRANSMISSIONS,
PACKETBUF_ATTR_MAC_SEQNO,
PACKETBUF_ATTR_MAC_ACK,
#line 352 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
PACKETBUF_ATTR_RELIABLE,
PACKETBUF_ATTR_PACKET_ID,
PACKETBUF_ATTR_PACKET_TYPE,
PACKETBUF_ATTR_REXMIT,
PACKETBUF_ATTR_MAX_REXMIT,
PACKETBUF_ATTR_NUM_REXMIT,
PACKETBUF_ATTR_PENDING,
#line 361 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
PACKETBUF_ATTR_HOPS,
PACKETBUF_ATTR_TTL,
PACKETBUF_ATTR_EPACKET_ID,
PACKETBUF_ATTR_EPACKET_TYPE,
PACKETBUF_ATTR_ERELIABLE,
#line 368 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
PACKETBUF_ADDR_SENDER,
PACKETBUF_ADDR_RECEIVER,
PACKETBUF_ADDR_ESENDER,
PACKETBUF_ADDR_ERECEIVER,

PACKETBUF_ATTR_MAX
};
#line 419 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
int packetbuf_set_attr(uint8_t type, const packetbuf_attr_t val);
packetbuf_attr_t packetbuf_attr(uint8_t type);
int packetbuf_set_addr(uint8_t type, const rimeaddr_t *addr);
const rimeaddr_t *packetbuf_addr(uint8_t type);
#line 425 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
void packetbuf_attr_clear(void);

void packetbuf_attr_copyto(struct packetbuf_attr *attrs,
struct packetbuf_addr *addrs);
void packetbuf_attr_copyfrom(struct packetbuf_attr *attrs,
struct packetbuf_addr *addrs);
#line 439 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
struct packetbuf_attrlist {
uint8_t type;
uint8_t len;
};
#line 88 "/home/jarojuda/GitHub/contiki/core/net/queuebuf.h"
struct queuebuf;

void queuebuf_init(void);
#line 96 "/home/jarojuda/GitHub/contiki/core/net/queuebuf.h"
struct queuebuf *queuebuf_new_from_packetbuf(void);
void queuebuf_update_attr_from_packetbuf(struct queuebuf *b);
#line 100 "/home/jarojuda/GitHub/contiki/core/net/queuebuf.h"
void queuebuf_to_packetbuf(struct queuebuf *b);
void queuebuf_free(struct queuebuf *b);

void *queuebuf_dataptr(struct queuebuf *b);
int queuebuf_datalen(struct queuebuf *b);

rimeaddr_t *queuebuf_addr(struct queuebuf *b, uint8_t type);
packetbuf_attr_t queuebuf_attr(struct queuebuf *b, uint8_t type);

void queuebuf_debug_print(void);
#line 91 "/home/jarojuda/GitHub/contiki/core/sys/clock.h"
void clock_init(void);
#line 100 "/home/jarojuda/GitHub/contiki/core/sys/clock.h"
clock_time_t clock_time(void);
#line 110 "/home/jarojuda/GitHub/contiki/core/sys/clock.h"
unsigned long clock_seconds(void);
#line 117 "/home/jarojuda/GitHub/contiki/core/sys/clock.h"
void clock_set_seconds(unsigned long sec);
#line 124 "/home/jarojuda/GitHub/contiki/core/sys/clock.h"
void clock_wait(clock_time_t t);
#line 132 "/home/jarojuda/GitHub/contiki/core/sys/clock.h"
void clock_delay_usec(uint16_t dt);
#line 138 "/home/jarojuda/GitHub/contiki/core/sys/clock.h"
int clock_fine_max(void);
unsigned short clock_fine(void);
void clock_delay(unsigned int delay);
#line 86 "/home/jarojuda/GitHub/contiki/core/sys/timer.h"
struct timer {
clock_time_t start;
clock_time_t interval;
};

void timer_set(struct timer *t, clock_time_t interval);
void timer_reset(struct timer *t);
void timer_restart(struct timer *t);
int timer_expired(struct timer *t);
clock_time_t timer_remaining(struct timer *t);
#line 63 "/home/jarojuda/GitHub/contiki/core/sys/lc-switch.h"
typedef unsigned short lc_t;
#line 53 "/home/jarojuda/GitHub/contiki/core/sys/pt.h"
struct pt {
lc_t lc;
};
#line 59 "/home/jarojuda/GitHub/contiki/core/sys/process.h"
typedef unsigned char process_event_t;
typedef void * process_data_t;
typedef unsigned char process_num_events_t;
#line 315 "/home/jarojuda/GitHub/contiki/core/sys/process.h"
struct process {
struct process *next;
#line 320 "/home/jarojuda/GitHub/contiki/core/sys/process.h"
const char *name;
#line 323 "/home/jarojuda/GitHub/contiki/core/sys/process.h"
char (* thread)(struct pt *, process_event_t, process_data_t);
struct pt pt;
unsigned char state, needspoll;
};
#line 342 "/home/jarojuda/GitHub/contiki/core/sys/process.h"
void process_start(struct process *p, const char *arg);
#line 365 "/home/jarojuda/GitHub/contiki/core/sys/process.h"
int process_post(struct process *p, process_event_t ev, void* data);
#line 377 "/home/jarojuda/GitHub/contiki/core/sys/process.h"
void process_post_synch(struct process *p,
process_event_t ev, void* data);
#line 390 "/home/jarojuda/GitHub/contiki/core/sys/process.h"
void process_exit(struct process *p);
#line 403 "/home/jarojuda/GitHub/contiki/core/sys/process.h"
extern struct process *process_current;
#line 453 "/home/jarojuda/GitHub/contiki/core/sys/process.h"
process_event_t process_alloc_event(void);
#line 470 "/home/jarojuda/GitHub/contiki/core/sys/process.h"
void process_poll(struct process *p);
#line 485 "/home/jarojuda/GitHub/contiki/core/sys/process.h"
void process_init(void);
#line 500 "/home/jarojuda/GitHub/contiki/core/sys/process.h"
int process_run(void);
#line 512 "/home/jarojuda/GitHub/contiki/core/sys/process.h"
int process_is_running(struct process *p);
#line 520 "/home/jarojuda/GitHub/contiki/core/sys/process.h"
int process_nevents(void);
#line 524 "/home/jarojuda/GitHub/contiki/core/sys/process.h"
extern struct process *process_list;
#line 76 "/home/jarojuda/GitHub/contiki/core/sys/etimer.h"
struct etimer {
struct timer timer;
struct etimer *next;
struct process *p;
};
#line 98 "/home/jarojuda/GitHub/contiki/core/sys/etimer.h"
void etimer_set(struct etimer *et, clock_time_t interval);
#line 115 "/home/jarojuda/GitHub/contiki/core/sys/etimer.h"
void etimer_reset(struct etimer *et);
#line 132 "/home/jarojuda/GitHub/contiki/core/sys/etimer.h"
void etimer_restart(struct etimer *et);
#line 154 "/home/jarojuda/GitHub/contiki/core/sys/etimer.h"
void etimer_adjust(struct etimer *et, int td);
#line 163 "/home/jarojuda/GitHub/contiki/core/sys/etimer.h"
clock_time_t etimer_expiration_time(struct etimer *et);
#line 173 "/home/jarojuda/GitHub/contiki/core/sys/etimer.h"
clock_time_t etimer_start_time(struct etimer *et);
#line 183 "/home/jarojuda/GitHub/contiki/core/sys/etimer.h"
int etimer_expired(struct etimer *et);
#line 195 "/home/jarojuda/GitHub/contiki/core/sys/etimer.h"
void etimer_stop(struct etimer *et);
#line 212 "/home/jarojuda/GitHub/contiki/core/sys/etimer.h"
void etimer_request_poll(void);
#line 222 "/home/jarojuda/GitHub/contiki/core/sys/etimer.h"
int etimer_pending(void);
#line 233 "/home/jarojuda/GitHub/contiki/core/sys/etimer.h"
clock_time_t etimer_next_expiration_time(void);
#line 238 "/home/jarojuda/GitHub/contiki/core/sys/etimer.h"
extern struct process etimer_process;
#line 59 "/home/jarojuda/GitHub/contiki/core/sys/ctimer.h"
struct ctimer {
struct ctimer *next;
struct etimer etimer;
struct process *p;
void (*f)(void *);
void *ptr;
};
#line 82 "/home/jarojuda/GitHub/contiki/core/sys/ctimer.h"
void ctimer_reset(struct ctimer *c);
#line 99 "/home/jarojuda/GitHub/contiki/core/sys/ctimer.h"
void ctimer_restart(struct ctimer *c);
#line 113 "/home/jarojuda/GitHub/contiki/core/sys/ctimer.h"
void ctimer_set(struct ctimer *c, clock_time_t t,
void (*f)(void *), void *ptr);
#line 126 "/home/jarojuda/GitHub/contiki/core/sys/ctimer.h"
void ctimer_stop(struct ctimer *c);
#line 136 "/home/jarojuda/GitHub/contiki/core/sys/ctimer.h"
int ctimer_expired(struct ctimer *c);
#line 144 "/home/jarojuda/GitHub/contiki/core/sys/ctimer.h"
void ctimer_init(void);
#line 39 "/home/jarojuda/GitHub/contiki/core/lib/random.h"
void random_init(unsigned short seed);
#line 46 "/home/jarojuda/GitHub/contiki/core/lib/random.h"
unsigned short random_rand(void);
#line 48 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/rdc.h"
struct rdc_buf_list {
struct rdc_buf_list *next;
struct queuebuf *buf;
void *ptr;
};
#line 57 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/rdc.h"
struct rdc_driver {
const char *name;
#line 61 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/rdc.h"
void (* init)(void);
#line 64 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/rdc.h"
void (* send)(mac_callback_t sent_callback, void *ptr);
#line 67 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/rdc.h"
void (* send_list)(mac_callback_t sent_callback, void *ptr, struct rdc_buf_list *list);
#line 70 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/rdc.h"
void (* input)(void);
#line 73 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/rdc.h"
int (* on)(void);
#line 76 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/rdc.h"
int (* off)(int keep_radio_on);
#line 79 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/rdc.h"
unsigned short (* channel_check_interval)(void);
};
#line 46 "/home/jarojuda/GitHub/contiki/core/net/mac/framer.h"
struct framer {

int (* create)(void);
int (* parse)(void);

};
#line 107 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/netstack.h"
struct network_driver {
const char *name;
#line 111 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/netstack.h"
void (* init)(void);
#line 114 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/netstack.h"
void (* input)(void);
};

extern const struct network_driver rime_driver;
extern const struct rdc_driver nullrdc_driver;
extern const struct mac_driver nullmac_driver;
extern const struct radio_driver nullradio_driver;
extern const struct framer framer_nullmac;

void netstack_init(void);
#line 135 "/home/jarojuda/GitHub/contiki/core/lib/list.h"
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
#line 96 "/home/jarojuda/GitHub/contiki/core/lib/memb.h"
struct memb {
unsigned short size;
unsigned short num;
char *count;
void *mem;
};
#line 108 "/home/jarojuda/GitHub/contiki/core/lib/memb.h"
void memb_init(struct memb *m);
#line 115 "/home/jarojuda/GitHub/contiki/core/lib/memb.h"
void *memb_alloc(struct memb *m);
#line 129 "/home/jarojuda/GitHub/contiki/core/lib/memb.h"
char memb_free(struct memb *m, void *ptr);

int memb_inmemb(struct memb *m, void *ptr);
#include <string.h>
#include <stdio.h>
#line 80 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/csma.c"
struct qbuf_metadata {
mac_callback_t sent;
void *cptr;
uint8_t max_transmissions;
};
#line 87 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/csma.c"
struct neighbor_queue {
struct neighbor_queue *next;
rimeaddr_t addr;
struct ctimer transmit_timer;
uint8_t transmissions;
uint8_t collisions, deferrals;
void *queued_packet_list_list; list_t queued_packet_list;
};
#line 104 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/csma.c"
static char neighbor_memb_memb_count[ 2]; static struct neighbor_queue neighbor_memb_memb_mem[ 2]; static struct memb neighbor_memb = {sizeof( struct neighbor_queue), 2, neighbor_memb_memb_count, (void *)neighbor_memb_memb_mem};
static char packet_memb_memb_count[ 8]; static struct rdc_buf_list packet_memb_memb_mem[ 8]; static struct memb packet_memb = {sizeof( struct rdc_buf_list), 8, packet_memb_memb_count, (void *)packet_memb_memb_mem};
static char metadata_memb_memb_count[ 8]; static struct qbuf_metadata metadata_memb_memb_mem[ 8]; static struct memb metadata_memb = {sizeof( struct qbuf_metadata), 8, metadata_memb_memb_count, (void *)metadata_memb_memb_mem};
static void *neighbor_list_list = 0; static list_t neighbor_list = (list_t)&neighbor_list_list;

static void packet_sent(void *ptr, int status, int num_transmissions);
static void transmit_packet_list(void *ptr);
#line 113 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/csma.c"
static struct neighbor_queue *
neighbor_queue_from_addr(const rimeaddr_t *addr)
{
struct neighbor_queue *n = list_head(neighbor_list);
while(n != 0) {
if(rimeaddr_cmp(&n->addr, addr)) {
return n;
}
n = list_item_next(n);
}
return 0;
}

static clock_time_t
default_timebase(void)
{
clock_time_t time;
#line 132 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/csma.c"
time = nullrdc_driver.channel_check_interval();
#line 137 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/csma.c"
if(time == 0) {
time = ((((41666667ul)/4)+128ull)/256ull) / 8;
}
return time;
}

static void
transmit_packet_list(void *ptr)
{
struct neighbor_queue *n = ptr;
if(n) {
struct rdc_buf_list *q = list_head(n->queued_packet_list);
if(q != 0) {
;
#line 153 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/csma.c"
nullrdc_driver.send_list(packet_sent, n, q);
}
}
}

static void
free_first_packet(struct neighbor_queue *n)
{
struct rdc_buf_list *q = list_head(n->queued_packet_list);
if(q != 0) {

queuebuf_free(q->buf);
list_pop(n->queued_packet_list);
memb_free(&metadata_memb, q->ptr);
memb_free(&packet_memb, q);
;

if(list_head(n->queued_packet_list)) {

n->transmissions = 0;
n->collisions = 0;
n->deferrals = 0;

ctimer_set(&n->transmit_timer, default_timebase(), transmit_packet_list, n);
} else {

ctimer_stop(&n->transmit_timer);
list_remove(neighbor_list, n);
memb_free(&neighbor_memb, n);
}
}
}

static void
packet_sent(void *ptr, int status, int num_transmissions)
{
struct neighbor_queue *n;
struct rdc_buf_list *q;
struct qbuf_metadata *metadata;
clock_time_t time = 0;
mac_callback_t sent;
void *cptr;
int num_tx;
int backoff_transmissions;

n = ptr;
if(n == 0) {
return;
}
switch(status) {
case MAC_TX_OK:
case MAC_TX_NOACK:
n->transmissions++;
break;
case MAC_TX_COLLISION:
n->collisions++;
break;
case MAC_TX_DEFERRED:
n->deferrals++;
break;
}

q = list_head(n->queued_packet_list);
if(q != 0) {
metadata = (struct qbuf_metadata *)q->ptr;

if(metadata != 0) {
sent = metadata->sent;
cptr = metadata->cptr;
num_tx = n->transmissions;
if(status == MAC_TX_COLLISION ||
status == MAC_TX_NOACK) {
#line 229 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/csma.c"
switch(status) {
case MAC_TX_COLLISION:
;
break;
case MAC_TX_NOACK:
;
break;
default:
;
}
#line 242 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/csma.c"
time = default_timebase();
#line 247 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/csma.c"
backoff_transmissions = n->transmissions + 1;
#line 252 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/csma.c"
if(backoff_transmissions > 3) {
backoff_transmissions = 3;
}

time = time + (random_rand() % (backoff_transmissions * time));

if(n->transmissions < metadata->max_transmissions) {
;
ctimer_set(&n->transmit_timer, time,
transmit_packet_list, n);
#line 264 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/csma.c"
queuebuf_update_attr_from_packetbuf(q->buf);
} else {
;

free_first_packet(n);
mac_call_sent_callback(sent, cptr, status, num_tx);
}
} else {
if(status == MAC_TX_OK) {
;
} else {
;
}
free_first_packet(n);
mac_call_sent_callback(sent, cptr, status, num_tx);
}
}
}
}

static void
send_packet(mac_callback_t sent, void *ptr)
{
struct rdc_buf_list *q;
struct neighbor_queue *n;
static uint16_t seqno;
const rimeaddr_t *addr = packetbuf_addr(PACKETBUF_ADDR_RECEIVER);

packetbuf_set_attr(PACKETBUF_ATTR_MAC_SEQNO, seqno++);
#line 295 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/csma.c"
n = neighbor_queue_from_addr(addr);
if(n == 0) {

n = memb_alloc(&neighbor_memb);
if(n != 0) {

rimeaddr_copy(&n->addr, addr);
n->transmissions = 0;
n->collisions = 0;
n->deferrals = 0;

do { (n)-> queued_packet_list = &((n)->queued_packet_list_list); (n)->queued_packet_list_list = 0; list_init((n)-> queued_packet_list); } while(0);

list_add(neighbor_list, n);
}
}

if(n != 0) {

q = memb_alloc(&packet_memb);
if(q != 0) {
q->ptr = memb_alloc(&metadata_memb);
if(q->ptr != 0) {
q->buf = queuebuf_new_from_packetbuf();
if(q->buf != 0) {
struct qbuf_metadata *metadata = (struct qbuf_metadata *)q->ptr;

if(packetbuf_attr(PACKETBUF_ATTR_MAX_MAC_TRANSMISSIONS) == 0) {

metadata->max_transmissions = 3;
} else {
metadata->max_transmissions =
packetbuf_attr(PACKETBUF_ATTR_MAX_MAC_TRANSMISSIONS);
}
metadata->sent = sent;
metadata->cptr = ptr;

if(packetbuf_attr(PACKETBUF_ATTR_PACKET_TYPE) ==
1) {
list_push(n->queued_packet_list, q);
} else {
list_add(n->queued_packet_list, q);
}
#line 340 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/csma.c"
if(list_head(n->queued_packet_list) == q) {
ctimer_set(&n->transmit_timer, 0, transmit_packet_list, n);
}
return;
}
memb_free(&metadata_memb, q->ptr);
;
}
memb_free(&packet_memb, q);
;
}

if(list_length(n->queued_packet_list) == 0) {
list_remove(neighbor_list, n);
memb_free(&neighbor_memb, n);
}
;
} else {
;
}
mac_call_sent_callback(sent, ptr, MAC_TX_ERR, 1);
}

static void
input_packet(void)
{
rime_driver.input();
}

static int
on(void)
{
return nullrdc_driver.on();
}

static int
off(int keep_radio_on)
{
return nullrdc_driver.off(keep_radio_on);
}

static unsigned short
channel_check_interval(void)
{
if(nullrdc_driver.channel_check_interval) {
return nullrdc_driver.channel_check_interval();
}
return 0;
}

static void
init(void)
{
memb_init(&packet_memb);
memb_init(&metadata_memb);
memb_init(&neighbor_memb);
}

const struct mac_driver csma_driver = {
"CSMA",
init,
send_packet,
input_packet,
on,
off,
channel_check_interval,
};
