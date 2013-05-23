#line 50 "/home/jarojuda/GitHub/contiki/core/dev/leds.h"
void leds_init(void);
#line 55 "/home/jarojuda/GitHub/contiki/core/dev/leds.h"
void leds_blink(void);
#line 79 "/home/jarojuda/GitHub/contiki/core/dev/leds.h"
unsigned char leds_get(void);
void leds_on(unsigned char leds);
void leds_off(unsigned char leds);
void leds_toggle(unsigned char leds);
void leds_invert(unsigned char leds);
#line 88 "/home/jarojuda/GitHub/contiki/core/dev/leds.h"
void leds_arch_init(void);
unsigned char leds_arch_get(void);
void leds_arch_set(unsigned char leds);
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
#include <Compiler.h>
#include <GenericTypeDefs.h>
#include <stdint.h>
#include <limits.h>
#line 16 "/home/jarojuda/GitHub/contiki/platform/pic18f97j60-family/contiki-conf.h"
typedef unsigned long clock_time_t;
#line 24 "/home/jarojuda/GitHub/contiki/platform/pic18f97j60-family/contiki-conf.h"
typedef unsigned short uip_stats_t;
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
#line 39 "/home/jarojuda/GitHub/contiki/core/lib/random.h"
void random_init(unsigned short seed);
#line 46 "/home/jarojuda/GitHub/contiki/core/lib/random.h"
unsigned short random_rand(void);
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
#line 71 "/home/jarojuda/GitHub/contiki/core/net/rime/announcement.h"
struct announcement;

typedef void (*announcement_callback_t)(struct announcement *a,
const rimeaddr_t *from,
uint16_t id, uint16_t val);
#line 83 "/home/jarojuda/GitHub/contiki/core/net/rime/announcement.h"
struct announcement {
struct announcement *next;
uint16_t id;
uint16_t value;
announcement_callback_t callback;
uint8_t has_value;
};
#line 113 "/home/jarojuda/GitHub/contiki/core/net/rime/announcement.h"
void announcement_register(struct announcement *a,
uint16_t id,
announcement_callback_t callback);
#line 127 "/home/jarojuda/GitHub/contiki/core/net/rime/announcement.h"
void announcement_remove(struct announcement *a);
#line 140 "/home/jarojuda/GitHub/contiki/core/net/rime/announcement.h"
void announcement_set_value(struct announcement *a, uint16_t value);
#line 152 "/home/jarojuda/GitHub/contiki/core/net/rime/announcement.h"
void announcement_remove_value(struct announcement *a);
#line 167 "/home/jarojuda/GitHub/contiki/core/net/rime/announcement.h"
void announcement_bump(struct announcement *a);
#line 183 "/home/jarojuda/GitHub/contiki/core/net/rime/announcement.h"
void announcement_listen(int periods);
#line 199 "/home/jarojuda/GitHub/contiki/core/net/rime/announcement.h"
void announcement_init(void);
#line 214 "/home/jarojuda/GitHub/contiki/core/net/rime/announcement.h"
struct announcement *announcement_list(void);
#line 227 "/home/jarojuda/GitHub/contiki/core/net/rime/announcement.h"
void announcement_heard(const rimeaddr_t *from, uint16_t id, uint16_t value);
#line 239 "/home/jarojuda/GitHub/contiki/core/net/rime/announcement.h"
void announcement_register_listen_callback(void (*callback)(int time));

enum {
ANNOUNCEMENT_NOBUMP,
ANNOUNCEMENT_BUMP,
};

typedef void (* announcement_observer)(uint16_t id, uint8_t has_value,
uint16_t newvalue, uint16_t oldvalue,
uint8_t bump);
#line 264 "/home/jarojuda/GitHub/contiki/core/net/rime/announcement.h"
void announcement_register_observer_callback(announcement_observer observer);
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
#line 43 "/home/jarojuda/GitHub/contiki/core/net/rime/channel.h"
struct channel;
#line 45 "/home/jarojuda/GitHub/contiki/core/net/rime/chameleon.h"
struct chameleon_module {
struct channel *(* input)(void);
int (* output)(struct channel *);
int (* hdrsize)(const struct packetbuf_attrlist *);
};

void chameleon_init(void);

int chameleon_hdrsize(const struct packetbuf_attrlist attrlist[]);
struct channel *chameleon_parse(void);
int chameleon_create(struct channel *c);
#line 49 "/home/jarojuda/GitHub/contiki/core/net/rime/channel.h"
struct channel {
struct channel *next;
uint16_t channelno;
const struct packetbuf_attrlist *attrlist;
uint8_t hdrsize;
};

struct channel *channel_lookup(uint16_t channelno);

void channel_set_attributes(uint16_t channelno,
const struct packetbuf_attrlist attrlist[]);
void channel_open(struct channel *c, uint16_t channelno);
void channel_close(struct channel *c);
void channel_init(void);
#line 63 "/home/jarojuda/GitHub/contiki/core/net/rime/abc.h"
struct abc_conn;
#line 71 "/home/jarojuda/GitHub/contiki/core/net/rime/abc.h"
struct abc_callbacks {

void (* recv)(struct abc_conn *ptr);
void (* sent)(struct abc_conn *ptr, int status, int num_tx);
};

struct abc_conn {
struct channel channel;
const struct abc_callbacks *u;
};
#line 98 "/home/jarojuda/GitHub/contiki/core/net/rime/abc.h"
void abc_open(struct abc_conn *c, uint16_t channel,
const struct abc_callbacks *u);
#line 111 "/home/jarojuda/GitHub/contiki/core/net/rime/abc.h"
void abc_close(struct abc_conn *c);
#line 126 "/home/jarojuda/GitHub/contiki/core/net/rime/abc.h"
int abc_send(struct abc_conn *c);
#line 137 "/home/jarojuda/GitHub/contiki/core/net/rime/abc.h"
void abc_input(struct channel *channel);

void abc_sent(struct channel *channel, int status, int num_tx);
#line 71 "/home/jarojuda/GitHub/contiki/core/net/rime/broadcast.h"
struct broadcast_conn;
#line 80 "/home/jarojuda/GitHub/contiki/core/net/rime/broadcast.h"
struct broadcast_callbacks {

void (* recv)(struct broadcast_conn *ptr, const rimeaddr_t *sender);
void (* sent)(struct broadcast_conn *ptr, int status, int num_tx);
};

struct broadcast_conn {
struct abc_conn c;
const struct broadcast_callbacks *u;
};
#line 107 "/home/jarojuda/GitHub/contiki/core/net/rime/broadcast.h"
void broadcast_open(struct broadcast_conn *c, uint16_t channel,
const struct broadcast_callbacks *u);
#line 120 "/home/jarojuda/GitHub/contiki/core/net/rime/broadcast.h"
void broadcast_close(struct broadcast_conn *c);
#line 135 "/home/jarojuda/GitHub/contiki/core/net/rime/broadcast.h"
int broadcast_send(struct broadcast_conn *c);
#line 67 "/home/jarojuda/GitHub/contiki/core/net/rime/unicast.h"
struct unicast_conn;
#line 72 "/home/jarojuda/GitHub/contiki/core/net/rime/unicast.h"
struct unicast_callbacks {
void (* recv)(struct unicast_conn *c, const rimeaddr_t *from);
void (* sent)(struct unicast_conn *ptr, int status, int num_tx);
};

struct unicast_conn {
struct broadcast_conn c;
const struct unicast_callbacks *u;
};

void unicast_open(struct unicast_conn *c, uint16_t channel,
const struct unicast_callbacks *u);
void unicast_close(struct unicast_conn *c);

int unicast_send(struct unicast_conn *c, const rimeaddr_t *receiver);
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
#line 79 "/home/jarojuda/GitHub/contiki/core/net/rime/stunicast.h"
struct stunicast_conn;
#line 83 "/home/jarojuda/GitHub/contiki/core/net/rime/stunicast.h"
struct stunicast_callbacks {
void (* recv)(struct stunicast_conn *c, const rimeaddr_t *from);
void (* sent)(struct stunicast_conn *c, int status, int num_tx);
};

struct stunicast_conn {
struct unicast_conn c;
struct ctimer t;
struct queuebuf *buf;
const struct stunicast_callbacks *u;
rimeaddr_t receiver;
};

void stunicast_open(struct stunicast_conn *c, uint16_t channel,
const struct stunicast_callbacks *u);
void stunicast_close(struct stunicast_conn *c);

int stunicast_send_stubborn(struct stunicast_conn *c, const rimeaddr_t *receiver,
clock_time_t rxmittime);
void stunicast_cancel(struct stunicast_conn *c);

int stunicast_send(struct stunicast_conn *c, const rimeaddr_t *receiver);

void stunicast_set_timer(struct stunicast_conn *c, clock_time_t t);

rimeaddr_t *stunicast_receiver(struct stunicast_conn *c);
#line 83 "/home/jarojuda/GitHub/contiki/core/net/rime/runicast.h"
struct runicast_conn;
#line 91 "/home/jarojuda/GitHub/contiki/core/net/rime/runicast.h"
struct runicast_callbacks {
void (* recv)(struct runicast_conn *c, const rimeaddr_t *from, uint8_t seqno);
void (* sent)(struct runicast_conn *c, const rimeaddr_t *to, uint8_t retransmissions);
void (* timedout)(struct runicast_conn *c, const rimeaddr_t *to, uint8_t retransmissions);
};

struct runicast_conn {
struct stunicast_conn c;
const struct runicast_callbacks *u;
uint8_t sndnxt;
uint8_t is_tx;
uint8_t rxmit;
uint8_t max_rxmit;
};

void runicast_open(struct runicast_conn *c, uint16_t channel,
const struct runicast_callbacks *u);
void runicast_close(struct runicast_conn *c);

int runicast_send(struct runicast_conn *c, const rimeaddr_t *receiver,
uint8_t max_retransmissions);

uint8_t runicast_is_transmitting(struct runicast_conn *c);
#line 65 "/home/jarojuda/GitHub/contiki/core/net/rime/neighbor-discovery.h"
struct neighbor_discovery_conn;

struct neighbor_discovery_callbacks {
void (* recv)(struct neighbor_discovery_conn *c,
const rimeaddr_t *from, uint16_t val);
void (* sent)(struct neighbor_discovery_conn *c);
};

struct neighbor_discovery_conn {
struct broadcast_conn c;
const struct neighbor_discovery_callbacks *u;
struct ctimer send_timer, interval_timer;
clock_time_t initial_interval, min_interval, max_interval;
clock_time_t current_interval;
uint16_t val;
};

void neighbor_discovery_open(struct neighbor_discovery_conn *c,
uint16_t channel,
clock_time_t initial,
clock_time_t min,
clock_time_t max,
const struct neighbor_discovery_callbacks *u);
void neighbor_discovery_close(struct neighbor_discovery_conn *c);
void neighbor_discovery_set_val(struct neighbor_discovery_conn *c, uint16_t val);

void neighbor_discovery_start(struct neighbor_discovery_conn *c, uint16_t val);
#line 61 "/home/jarojuda/GitHub/contiki/core/net/rime/collect-link-estimate.h"
struct collect_link_estimate {
uint32_t etx_accumulator;
uint8_t num_estimates;
};
#line 72 "/home/jarojuda/GitHub/contiki/core/net/rime/collect-link-estimate.h"
void collect_link_estimate_new(struct collect_link_estimate *le);
#line 84 "/home/jarojuda/GitHub/contiki/core/net/rime/collect-link-estimate.h"
void collect_link_estimate_update_tx(struct collect_link_estimate *le,
uint8_t num_tx);
#line 97 "/home/jarojuda/GitHub/contiki/core/net/rime/collect-link-estimate.h"
void collect_link_estimate_update_tx_fail(struct collect_link_estimate *le,
uint8_t num_tx);
#line 109 "/home/jarojuda/GitHub/contiki/core/net/rime/collect-link-estimate.h"
void collect_link_estimate_update_rx(struct collect_link_estimate *le);
#line 118 "/home/jarojuda/GitHub/contiki/core/net/rime/collect-link-estimate.h"
uint16_t collect_link_estimate(struct collect_link_estimate *le);

int collect_link_estimate_num_estimates(struct collect_link_estimate *le);
#line 58 "/home/jarojuda/GitHub/contiki/core/net/rime/collect-neighbor.h"
struct collect_neighbor_list {
void *list_list; list_t list;
struct ctimer periodic;
};

struct collect_neighbor {
struct collect_neighbor *next;
rimeaddr_t addr;
uint16_t rtmetric;
uint16_t age;
uint16_t le_age;
struct collect_link_estimate le;
struct timer congested_timer;
};

void collect_neighbor_init(void);

list_t collect_neighbor_list(struct collect_neighbor_list *neighbor_list);

void collect_neighbor_list_new(struct collect_neighbor_list *neighbor_list);

int collect_neighbor_list_add(struct collect_neighbor_list *neighbor_list,
const rimeaddr_t *addr, uint16_t rtmetric);
void collect_neighbor_list_remove(struct collect_neighbor_list *neighbor_list,
const rimeaddr_t *addr);
struct collect_neighbor *collect_neighbor_list_find(struct collect_neighbor_list *neighbor_list,
const rimeaddr_t *addr);
struct collect_neighbor *collect_neighbor_list_best(struct collect_neighbor_list *neighbor_list);
int collect_neighbor_list_num(struct collect_neighbor_list *neighbor_list);
struct collect_neighbor *collect_neighbor_list_get(struct collect_neighbor_list *neighbor_list, int num);
void collect_neighbor_list_purge(struct collect_neighbor_list *neighbor_list);

void collect_neighbor_update_rtmetric(struct collect_neighbor *n,
uint16_t rtmetric);
void collect_neighbor_tx(struct collect_neighbor *n, uint16_t num_tx);
void collect_neighbor_rx(struct collect_neighbor *n);
void collect_neighbor_tx_fail(struct collect_neighbor *n, uint16_t num_tx);
void collect_neighbor_set_congested(struct collect_neighbor *n);
int collect_neighbor_is_congested(struct collect_neighbor *n);

uint16_t collect_neighbor_link_estimate(struct collect_neighbor *n);
uint16_t collect_neighbor_rtmetric_link_estimate(struct collect_neighbor *n);
uint16_t collect_neighbor_rtmetric(struct collect_neighbor *n);
#line 70 "/home/jarojuda/GitHub/contiki/core/net/packetqueue.h"
struct packetqueue {
list_t *list;
struct memb *memb;
};
#line 86 "/home/jarojuda/GitHub/contiki/core/net/packetqueue.h"
struct packetqueue_item {
struct packetqueue_item *next;
struct queuebuf *buf;
struct packetqueue *queue;
struct ctimer lifetimer;
void *ptr;
};
#line 121 "/home/jarojuda/GitHub/contiki/core/net/packetqueue.h"
void packetqueue_init(struct packetqueue *q);
#line 152 "/home/jarojuda/GitHub/contiki/core/net/packetqueue.h"
int packetqueue_enqueue_packetbuf(struct packetqueue *q, clock_time_t lifetime,
void *ptr);
#line 166 "/home/jarojuda/GitHub/contiki/core/net/packetqueue.h"
struct packetqueue_item *packetqueue_first(struct packetqueue *q);
#line 179 "/home/jarojuda/GitHub/contiki/core/net/packetqueue.h"
void packetqueue_dequeue(struct packetqueue *q);
#line 190 "/home/jarojuda/GitHub/contiki/core/net/packetqueue.h"
int packetqueue_len(struct packetqueue *q);
#line 206 "/home/jarojuda/GitHub/contiki/core/net/packetqueue.h"
struct queuebuf *packetqueue_queuebuf(struct packetqueue_item *i);
#line 213 "/home/jarojuda/GitHub/contiki/core/net/packetqueue.h"
void *packetqueue_ptr(struct packetqueue_item *i);
#line 81 "/home/jarojuda/GitHub/contiki/core/net/rime/collect.h"
struct collect_callbacks {
void (* recv)(const rimeaddr_t *originator, uint8_t seqno,
uint8_t hops);
};
#line 95 "/home/jarojuda/GitHub/contiki/core/net/rime/collect.h"
struct collect_conn {
struct unicast_conn unicast_conn;
#line 100 "/home/jarojuda/GitHub/contiki/core/net/rime/collect.h"
struct announcement announcement;
struct ctimer transmit_after_scan_timer;
const struct collect_callbacks *cb;
struct ctimer retransmission_timer;
void *send_queue_list_list; list_t send_queue_list;
struct packetqueue send_queue;
struct collect_neighbor_list neighbor_list;
#line 109 "/home/jarojuda/GitHub/contiki/core/net/rime/collect.h"
struct ctimer keepalive_timer;
clock_time_t keepalive_period;

struct ctimer proactive_probing_timer;

rimeaddr_t parent, current_parent;
uint16_t rtmetric;
uint8_t seqno;
uint8_t sending, transmissions, max_rexmits;
uint8_t eseqno;
uint8_t is_router;

clock_time_t send_time;
};

enum {
COLLECT_NO_ROUTER,
COLLECT_ROUTER,
};

void collect_open(struct collect_conn *c, uint16_t channels,
uint8_t is_router,
const struct collect_callbacks *callbacks);
void collect_close(struct collect_conn *c);

int collect_send(struct collect_conn *c, int rexmits);

void collect_set_sink(struct collect_conn *c, int should_be_sink);

int collect_depth(struct collect_conn *c);
const rimeaddr_t *collect_parent(struct collect_conn *c);

void collect_set_keepalive(struct collect_conn *c, clock_time_t period);

void collect_print_stats(void);
#line 101 "/home/jarojuda/GitHub/contiki/core/net/rime/ipolite.h"
struct ipolite_conn;
#line 113 "/home/jarojuda/GitHub/contiki/core/net/rime/ipolite.h"
struct ipolite_callbacks {
#line 117 "/home/jarojuda/GitHub/contiki/core/net/rime/ipolite.h"
void (* recv)(struct ipolite_conn *c, const rimeaddr_t *from);
#line 122 "/home/jarojuda/GitHub/contiki/core/net/rime/ipolite.h"
void (* sent)(struct ipolite_conn *c);
#line 128 "/home/jarojuda/GitHub/contiki/core/net/rime/ipolite.h"
void (* dropped)(struct ipolite_conn *c);
};
#line 135 "/home/jarojuda/GitHub/contiki/core/net/rime/ipolite.h"
struct ipolite_conn {
struct broadcast_conn c;
const struct ipolite_callbacks *cb;
struct ctimer t;
struct queuebuf *q;
uint8_t hdrsize;
uint8_t maxdups;
uint8_t dups;
};
#line 158 "/home/jarojuda/GitHub/contiki/core/net/rime/ipolite.h"
void ipolite_open(struct ipolite_conn *c, uint16_t channel, uint8_t maxdups,
const struct ipolite_callbacks *cb);
#line 168 "/home/jarojuda/GitHub/contiki/core/net/rime/ipolite.h"
void ipolite_close(struct ipolite_conn *c);
#line 182 "/home/jarojuda/GitHub/contiki/core/net/rime/ipolite.h"
int ipolite_send(struct ipolite_conn *c, clock_time_t interval,
uint8_t hdrsize);
#line 192 "/home/jarojuda/GitHub/contiki/core/net/rime/ipolite.h"
void ipolite_cancel(struct ipolite_conn *c);
#line 76 "/home/jarojuda/GitHub/contiki/core/net/rime/multihop.h"
struct multihop_conn;
#line 85 "/home/jarojuda/GitHub/contiki/core/net/rime/multihop.h"
struct multihop_callbacks {
void (* recv)(struct multihop_conn *ptr,
const rimeaddr_t *sender,
const rimeaddr_t *prevhop,
uint8_t hops);
rimeaddr_t *(* forward)(struct multihop_conn *ptr,
const rimeaddr_t *originator,
const rimeaddr_t *dest,
const rimeaddr_t *prevhop,
uint8_t hops);
};

struct multihop_conn {
struct unicast_conn c;
const struct multihop_callbacks *cb;
};

void multihop_open(struct multihop_conn *c, uint16_t channel,
const struct multihop_callbacks *u);
void multihop_close(struct multihop_conn *c);
int multihop_send(struct multihop_conn *c, const rimeaddr_t *to);
void multihop_resend(struct multihop_conn *c, const rimeaddr_t *nexthop);
#line 80 "/home/jarojuda/GitHub/contiki/core/net/rime/netflood.h"
struct netflood_conn;
#line 87 "/home/jarojuda/GitHub/contiki/core/net/rime/netflood.h"
struct netflood_callbacks {
int (* recv)(struct netflood_conn *c, const rimeaddr_t *from,
const rimeaddr_t *originator, uint8_t seqno, uint8_t hops);
void (* sent)(struct netflood_conn *c);
void (* dropped)(struct netflood_conn *c);
};

struct netflood_conn {
struct ipolite_conn c;
const struct netflood_callbacks *u;
clock_time_t queue_time;
rimeaddr_t last_originator;
uint8_t last_originator_seqno;
};

void netflood_open(struct netflood_conn *c, clock_time_t queue_time,
uint16_t channel, const struct netflood_callbacks *u);
void netflood_close(struct netflood_conn *c);

int netflood_send(struct netflood_conn *c, uint8_t seqno);
#line 64 "/home/jarojuda/GitHub/contiki/core/net/rime/route-discovery.h"
struct route_discovery_conn;

struct route_discovery_callbacks {
void (* new_route)(struct route_discovery_conn *c, const rimeaddr_t *to);
void (* timedout)(struct route_discovery_conn *c);
};
#line 73 "/home/jarojuda/GitHub/contiki/core/net/rime/route-discovery.h"
struct route_discovery_conn {
struct netflood_conn rreqconn;
struct unicast_conn rrepconn;
struct ctimer t;
rimeaddr_t last_rreq_originator;
uint16_t last_rreq_id;
uint16_t rreq_id;
const struct route_discovery_callbacks *cb;
};

void route_discovery_open(struct route_discovery_conn *c, clock_time_t time,
uint16_t channels,
const struct route_discovery_callbacks *callbacks);
int route_discovery_discover(struct route_discovery_conn *c, const rimeaddr_t *dest,
clock_time_t timeout);

void route_discovery_close(struct route_discovery_conn *c);
#line 68 "/home/jarojuda/GitHub/contiki/core/net/rime/mesh.h"
struct mesh_conn;
#line 73 "/home/jarojuda/GitHub/contiki/core/net/rime/mesh.h"
struct mesh_callbacks {

void (* recv)(struct mesh_conn *c, const rimeaddr_t *from, uint8_t hops);

void (* sent)(struct mesh_conn *c);

void (* timedout)(struct mesh_conn *c);
};

struct mesh_conn {
struct multihop_conn multihop;
struct route_discovery_conn route_discovery_conn;
struct queuebuf *queued_data;
rimeaddr_t queued_data_dest;
const struct mesh_callbacks *cb;
};
#line 106 "/home/jarojuda/GitHub/contiki/core/net/rime/mesh.h"
void mesh_open(struct mesh_conn *c, uint16_t channels,
const struct mesh_callbacks *callbacks);
#line 119 "/home/jarojuda/GitHub/contiki/core/net/rime/mesh.h"
void mesh_close(struct mesh_conn *c);
#line 134 "/home/jarojuda/GitHub/contiki/core/net/rime/mesh.h"
int mesh_send(struct mesh_conn *c, const rimeaddr_t *dest);
#line 142 "/home/jarojuda/GitHub/contiki/core/net/rime/mesh.h"
int mesh_ready(struct mesh_conn *c);
#line 62 "/home/jarojuda/GitHub/contiki/core/net/rime/polite-announcement.h"
void polite_announcement_init(uint16_t channel,
clock_time_t min,
clock_time_t max);
#line 100 "/home/jarojuda/GitHub/contiki/core/net/rime/polite.h"
struct polite_conn;
#line 112 "/home/jarojuda/GitHub/contiki/core/net/rime/polite.h"
struct polite_callbacks {
#line 116 "/home/jarojuda/GitHub/contiki/core/net/rime/polite.h"
void (* recv)(struct polite_conn *c);
#line 121 "/home/jarojuda/GitHub/contiki/core/net/rime/polite.h"
void (* sent)(struct polite_conn *c);
#line 127 "/home/jarojuda/GitHub/contiki/core/net/rime/polite.h"
void (* dropped)(struct polite_conn *c);
};
#line 134 "/home/jarojuda/GitHub/contiki/core/net/rime/polite.h"
struct polite_conn {
struct abc_conn c;
const struct polite_callbacks *cb;
struct ctimer t;
struct queuebuf *q;
uint8_t hdrsize;
};
#line 153 "/home/jarojuda/GitHub/contiki/core/net/rime/polite.h"
void polite_open(struct polite_conn *c, uint16_t channel,
const struct polite_callbacks *cb);
#line 163 "/home/jarojuda/GitHub/contiki/core/net/rime/polite.h"
void polite_close(struct polite_conn *c);
#line 178 "/home/jarojuda/GitHub/contiki/core/net/rime/polite.h"
int polite_send(struct polite_conn *c, clock_time_t interval, uint8_t hdrsize);
#line 187 "/home/jarojuda/GitHub/contiki/core/net/rime/polite.h"
void polite_cancel(struct polite_conn *c);
#line 43 "/home/jarojuda/GitHub/contiki/core/net/rime/rimestats.h"
struct rimestats {
unsigned long tx, rx;

unsigned long reliabletx, reliablerx,
rexmit, acktx, noacktx, ackrx, timedout, badackrx;
#line 50 "/home/jarojuda/GitHub/contiki/core/net/rime/rimestats.h"
unsigned long toolong, tooshort, badsynch, badcrc;

unsigned long contentiondrop, 
sendingdrop; 

unsigned long lltx, llrx;
};
#line 71 "/home/jarojuda/GitHub/contiki/core/net/rime/rmh.h"
struct rmh_conn;
#line 79 "/home/jarojuda/GitHub/contiki/core/net/rime/rmh.h"
struct rmh_callbacks {
void (* recv)(struct rmh_conn *ptr, rimeaddr_t *sender, uint8_t hops);
rimeaddr_t *(* forward)(struct rmh_conn *ptr,
const rimeaddr_t *originator,
const rimeaddr_t *dest,
const rimeaddr_t *prevhop,
uint8_t hops);
};

struct rmh_conn {
struct runicast_conn c;
const struct rmh_callbacks *cb;
uint8_t num_rexmit;
};

void rmh_open(struct rmh_conn *c, uint16_t channel,
const struct rmh_callbacks *u);
void rmh_close(struct rmh_conn *c);
int rmh_send(struct rmh_conn *c, rimeaddr_t *to, uint8_t num_rexmit,
uint8_t max_hops);
#line 56 "/home/jarojuda/GitHub/contiki/core/net/rime/route.h"
struct route_entry {
struct route_entry *next;
rimeaddr_t dest;
rimeaddr_t nexthop;
uint8_t seqno;
uint8_t cost;
uint8_t time;

uint8_t decay;
uint8_t time_last_decay;
};

void route_init(void);
int route_add(const rimeaddr_t *dest, const rimeaddr_t *nexthop,
uint8_t cost, uint8_t seqno);
struct route_entry *route_lookup(const rimeaddr_t *dest);
void route_refresh(struct route_entry *e);
void route_decay(struct route_entry *e);
void route_remove(struct route_entry *e);
void route_flush_all(void);
void route_set_lifetime(int seconds);

int route_num(void);
struct route_entry *route_get(int num);
#line 45 "/home/jarojuda/GitHub/contiki/core/net/rime/rucb.h"
struct rucb_conn;

enum {
RUCB_FLAG_NONE,
RUCB_FLAG_NEWFILE,
RUCB_FLAG_LASTCHUNK,
};

struct rucb_callbacks {
void (* write_chunk)(struct rucb_conn *c, int offset, int flag,
char *data, int len);
int (* read_chunk)(struct rucb_conn *c, int offset, char *to,
int maxsize);
void (* timedout)(struct rucb_conn *c);
};
#line 63 "/home/jarojuda/GitHub/contiki/core/net/rime/rucb.h"
struct rucb_conn {
struct runicast_conn c;
const struct rucb_callbacks *u;
rimeaddr_t receiver, sender;
uint16_t chunk;
uint8_t last_seqno;
int last_size;
};

void rucb_open(struct rucb_conn *c, uint16_t channel,
const struct rucb_callbacks *u);
void rucb_close(struct rucb_conn *c);

int rucb_send(struct rucb_conn *c, const rimeaddr_t *receiver);
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
#line 4 "/home/jarojuda/GitHub/contiki/platform/pic18f97j60-family/rtimer-arch.h"
typedef uint16_t rtimer_clock_t;
#line 10 "/home/jarojuda/GitHub/contiki/platform/pic18f97j60-family/rtimer-arch.h"
void rtimer_arch_init(void);
#line 13 "/home/jarojuda/GitHub/contiki/platform/pic18f97j60-family/rtimer-arch.h"
rtimer_clock_t rtimer_time();

rtimer_clock_t
rtimer_arch_now(void);
#line 71 "/home/jarojuda/GitHub/contiki/core/sys/rtimer.h"
void rtimer_init(void);

struct rtimer;
typedef void (* rtimer_callback_t)(struct rtimer *t, void *ptr);
#line 83 "/home/jarojuda/GitHub/contiki/core/sys/rtimer.h"
struct rtimer {
rtimer_clock_t time;
rtimer_callback_t func;
void *ptr;
};

enum {
RTIMER_OK,
RTIMER_ERR_FULL,
RTIMER_ERR_TIME,
RTIMER_ERR_ALREADY_SCHEDULED,
};
#line 110 "/home/jarojuda/GitHub/contiki/core/sys/rtimer.h"
int rtimer_set(struct rtimer *task, rtimer_clock_t time,
rtimer_clock_t duration, rtimer_callback_t func, void *ptr);
#line 120 "/home/jarojuda/GitHub/contiki/core/sys/rtimer.h"
void rtimer_run_next(void);
#line 147 "/home/jarojuda/GitHub/contiki/core/sys/rtimer.h"
void rtimer_arch_init(void);
void rtimer_arch_schedule(rtimer_clock_t t);
#line 80 "/home/jarojuda/GitHub/contiki/core/net/rime/timesynch.h"
void timesynch_init(void);
#line 90 "/home/jarojuda/GitHub/contiki/core/net/rime/timesynch.h"
rtimer_clock_t timesynch_time(void);
#line 103 "/home/jarojuda/GitHub/contiki/core/net/rime/timesynch.h"
rtimer_clock_t timesynch_time_to_rtimer(rtimer_clock_t synched_time);
#line 113 "/home/jarojuda/GitHub/contiki/core/net/rime/timesynch.h"
rtimer_clock_t timesynch_rtimer_to_time(rtimer_clock_t rtimer_time);
#line 124 "/home/jarojuda/GitHub/contiki/core/net/rime/timesynch.h"
rtimer_clock_t timesynch_offset(void);
#line 139 "/home/jarojuda/GitHub/contiki/core/net/rime/timesynch.h"
int timesynch_authority_level(void);
#line 145 "/home/jarojuda/GitHub/contiki/core/net/rime/timesynch.h"
void timesynch_set_authority_level(int level);
#line 68 "/home/jarojuda/GitHub/contiki/core/net/rime/trickle.h"
struct trickle_conn;

struct trickle_callbacks {
void (* recv)(struct trickle_conn *c);
};

struct trickle_conn {
struct broadcast_conn c;
const struct trickle_callbacks *cb;
struct ctimer t, interval_timer, first_transmission_timer;
struct pt pt;
struct queuebuf *q;
clock_time_t interval;
uint8_t seqno;
uint8_t interval_scaling;
uint8_t duplicates;
};

void trickle_open(struct trickle_conn *c, clock_time_t interval,
uint16_t channel, const struct trickle_callbacks *cb);
void trickle_close(struct trickle_conn *c);

void trickle_send(struct trickle_conn *c);
#line 76 "/home/jarojuda/GitHub/contiki/core/net/rime.h"
int rime_init(void);
#line 87 "/home/jarojuda/GitHub/contiki/core/net/rime.h"
void rime_input(void);

int rime_output(struct channel *c);

struct rime_sniffer {
struct rime_sniffer *next;
void (* input_callback)(void);
void (* output_callback)(int mac_status);
};
#line 100 "/home/jarojuda/GitHub/contiki/core/net/rime.h"
void rime_sniffer_add(struct rime_sniffer *s);
void rime_sniffer_remove(struct rime_sniffer *s);

extern const struct network_driver rime_driver;
#line 106 "/home/jarojuda/GitHub/contiki/core/net/rime.h"
enum {
RIME_OK,
RIME_ERR,
RIME_ERR_CONTENTION,
RIME_ERR_NOACK,
};
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
#line 49 "/home/jarojuda/GitHub/contiki/core/net/mac/lpp.h"
extern const struct rdc_driver lpp_driver;
#line 64 "/home/jarojuda/GitHub/contiki/core/sys/compower.h"
struct compower_activity {
uint32_t listen, transmit;
};
#line 77 "/home/jarojuda/GitHub/contiki/core/sys/compower.h"
extern struct compower_activity compower_idle_activity;
#line 86 "/home/jarojuda/GitHub/contiki/core/sys/compower.h"
void compower_init(void);
#line 99 "/home/jarojuda/GitHub/contiki/core/sys/compower.h"
void compower_accumulate(struct compower_activity *a);
#line 110 "/home/jarojuda/GitHub/contiki/core/sys/compower.h"
void compower_clear(struct compower_activity *a);
#line 120 "/home/jarojuda/GitHub/contiki/core/sys/compower.h"
void compower_attrconv(struct compower_activity *a);
#line 130 "/home/jarojuda/GitHub/contiki/core/sys/compower.h"
void compower_accumulate_attrs(struct compower_activity *a);
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#line 112 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
struct announcement_data {
uint16_t id;
uint16_t value;
};
#line 118 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
struct announcement_msg {
uint16_t num;
struct announcement_data data[];
};
#line 127 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
struct lpp_hdr {
uint16_t type;
rimeaddr_t sender;
rimeaddr_t receiver;
};

static uint8_t lpp_is_on;

static struct compower_activity current_packet;

static struct pt dutycycle_pt;
static struct ctimer timer;

static uint8_t is_listening = 0;
static clock_time_t off_time_adjustment = 0;
static clock_time_t off_time = (((((41666667ul)/4)+128ull)/256ull) / 8 - (((((41666667ul)/4)+128ull)/256ull) / 128));

struct queue_list_item {
struct queue_list_item *next;
struct queuebuf *packet;
struct ctimer removal_timer;
struct compower_activity compower;
mac_callback_t sent_callback;
void *sent_callback_ptr;
uint8_t num_transmissions;
#line 155 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
};
#line 162 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
static void *pending_packets_list_list = 0; static list_t pending_packets_list = (list_t)&pending_packets_list_list;
static void *queued_packets_list_list = 0; static list_t queued_packets_list = (list_t)&queued_packets_list_list;
static char queued_packets_memb_memb_count[ 4]; static struct queue_list_item queued_packets_memb_memb_mem[ 4]; static struct memb queued_packets_memb = {sizeof( struct queue_list_item), 4, queued_packets_memb_memb_count, (void *)queued_packets_memb_memb_mem};

struct encounter {
struct encounter *next;
rimeaddr_t neighbor;
clock_time_t time;
struct ctimer remove_timer;
struct ctimer turn_on_radio_timer;
};
#line 175 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
static void *encounter_list_list = 0; static list_t encounter_list = (list_t)&encounter_list_list;
static char encounter_memb_memb_count[ 4]; static struct encounter encounter_memb_memb_mem[ 4]; static struct memb encounter_memb = {sizeof( struct encounter), 4, encounter_memb_memb_count, (void *)encounter_memb_memb_mem};

static uint8_t is_streaming = 0;

static struct ctimer stream_probe_timer, stream_off_timer;
#line 190 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
static void
turn_radio_on(void)
{
nullradio_driver.on();

}

static void
turn_radio_off(void)
{
if(lpp_is_on && is_streaming == 0) {
nullradio_driver.off();
}

}

static void
remove_encounter(void *encounter)
{
struct encounter *e = encounter;

ctimer_stop(&e->remove_timer);
ctimer_stop(&e->turn_on_radio_timer);
list_remove(encounter_list, e);
memb_free(&encounter_memb, e);
}

static void
register_encounter(rimeaddr_t *neighbor, clock_time_t time)
{
struct encounter *e;
#line 223 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
for(e = list_head(encounter_list); e != 0; e = list_item_next(e)) {
if(rimeaddr_cmp(neighbor, &e->neighbor)) {
e->time = time;
ctimer_set(&e->remove_timer, (16 * (((((41666667ul)/4)+128ull)/256ull) / 8 - (((((41666667ul)/4)+128ull)/256ull) / 128))), remove_encounter, e);
break;
}
}

if(e == 0) {
e = memb_alloc(&encounter_memb);
if(e == 0) {

return;
}
rimeaddr_copy(&e->neighbor, neighbor);
e->time = time;
ctimer_set(&e->remove_timer, (16 * (((((41666667ul)/4)+128ull)/256ull) / 8 - (((((41666667ul)/4)+128ull)/256ull) / 128))), remove_encounter, e);
list_add(encounter_list, e);
}
}
#line 260 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
static void
stream_off(void *dummy)
{
is_streaming = 0;
}
#line 275 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
static void
turn_radio_on_for_neighbor(rimeaddr_t *neighbor, struct queue_list_item *i)
{
#line 280 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
if(packetbuf_attr(PACKETBUF_ATTR_PACKET_TYPE) ==
2) {
is_streaming = 1;
turn_radio_on();
list_add(queued_packets_list, i);
ctimer_set(&stream_off_timer, ((((41666667ul)/4)+128ull)/256ull) / 2,
stream_off, 0);
return;
}
#line 291 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
if(rimeaddr_cmp(neighbor, &rimeaddr_null)) {
#line 295 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
turn_radio_on();
list_add(queued_packets_list, i);
return;
}
#line 346 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
turn_radio_on();
list_add(queued_packets_list, i);
return;
}

static void
remove_queued_packet(struct queue_list_item *i, uint8_t tx_ok)
{
mac_callback_t sent;
void *ptr;
int num_transmissions = 0;
int status;

;
#line 363 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
queuebuf_to_packetbuf(i->packet);

ctimer_stop(&i->removal_timer);
queuebuf_free(i->packet);
list_remove(pending_packets_list, i);
list_remove(queued_packets_list, i);
#line 371 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
if(list_length(queued_packets_list) == 0 && is_listening == 0) {
turn_radio_off();
compower_accumulate(&i->compower);
}

sent = i->sent_callback;
ptr = i->sent_callback_ptr;
num_transmissions = i->num_transmissions;
memb_free(&queued_packets_memb, i);
if(num_transmissions == 0 || tx_ok == 0) {
status = MAC_TX_NOACK;
} else {
status = MAC_TX_OK;
}
mac_call_sent_callback(sent, ptr, status, num_transmissions);
}

static void
remove_queued_old_packet_callback(void *item)
{
remove_queued_packet(item, 0);
}
#line 411 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
static void
listen_callback(int periods)
{
is_listening = periods;
turn_radio_on();
}
#line 421 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
static void
send_probe(void)
{
struct lpp_hdr *hdr;
struct announcement_msg *adata;
struct announcement *a;
#line 429 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
packetbuf_clear();
packetbuf_set_datalen(sizeof(struct lpp_hdr));
hdr = packetbuf_dataptr();
hdr->type = 1;
rimeaddr_copy(&hdr->sender, &rimeaddr_node_addr);

rimeaddr_copy(&hdr->receiver, &rimeaddr_null);

packetbuf_set_addr(PACKETBUF_ADDR_RECEIVER, &rimeaddr_null);
{
int hdrlen = framer_nullmac.create();
if(hdrlen < 0) {

return;
}
}
#line 447 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
adata = (struct announcement_msg *)((char *)hdr + sizeof(struct lpp_hdr));

adata->num = 0;
for(a = announcement_list(); a != 0; a = list_item_next(a)) {
adata->data[adata->num].id = a->id;
adata->data[adata->num].value = a->value;
adata->num++;
}

packetbuf_set_datalen(sizeof(struct lpp_hdr) +
2 +
sizeof(struct announcement_data) * adata->num);
#line 464 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
if(nullradio_driver.channel_clear()) {
nullradio_driver.send(packetbuf_hdrptr(), packetbuf_totlen());
} else {
off_time_adjustment = random_rand() % ((((((41666667ul)/4)+128ull)/256ull) / 8 - (((((41666667ul)/4)+128ull)/256ull) / 128)) / 2);
}

compower_accumulate(&compower_idle_activity);
}

static void
send_stream_probe(void *dummy)
{
#line 478 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
turn_radio_on();
#line 481 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
send_probe();
#line 484 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
is_streaming = 1;
}
#line 488 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
static int
num_packets_to_send(void)
{
#line 503 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
return list_length(queued_packets_list);
}
#line 512 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
static int
dutycycle(void *ptr)
{
struct ctimer *t = ptr;

{ char PT_YIELD_FLAG = 1; if (PT_YIELD_FLAG) {;} switch((&dutycycle_pt)->lc) { case 0:;

while(1) {
#line 538 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
turn_radio_on();
#line 541 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
send_probe();
#line 544 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
ctimer_set(t, (((((41666667ul)/4)+128ull)/256ull) / 128), (void (*)(void *))dutycycle, t);
do { PT_YIELD_FLAG = 0; (&dutycycle_pt)->lc = 545; case 545:; if(PT_YIELD_FLAG == 0) { return 1; } } while(0);
#line 568 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
if(num_packets_to_send() == 0) {
#line 572 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
if(is_listening == 0) {
int current_off_time;
if(!nullradio_driver.receiving_packet()) {
turn_radio_off();
compower_accumulate(&compower_idle_activity);
}
current_off_time = off_time - off_time_adjustment;
if(current_off_time < (((((41666667ul)/4)+128ull)/256ull) / 128) * 2) {
current_off_time = (((((41666667ul)/4)+128ull)/256ull) / 128) * 2;
}
off_time_adjustment = 0;
ctimer_set(t, current_off_time, (void (*)(void *))dutycycle, t);
do { PT_YIELD_FLAG = 0; (&dutycycle_pt)->lc = 584; case 584:; if(PT_YIELD_FLAG == 0) { return 1; } } while(0);
#line 593 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
} else {
#line 596 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
is_listening--;
ctimer_set(t, (((((41666667ul)/4)+128ull)/256ull) / 8 - (((((41666667ul)/4)+128ull)/256ull) / 128)), (void (*)(void *))dutycycle, t);
do { PT_YIELD_FLAG = 0; (&dutycycle_pt)->lc = 598; case 598:; if(PT_YIELD_FLAG == 0) { return 1; } } while(0);
}
} else {
#line 603 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
ctimer_set(t, off_time, (void (*)(void *))dutycycle, t);
do { PT_YIELD_FLAG = 0; (&dutycycle_pt)->lc = 604; case 604:; if(PT_YIELD_FLAG == 0) { return 1; } } while(0);
}
}

}; PT_YIELD_FLAG = 0; (&dutycycle_pt)->lc = 0;; return 3; };
}

static void
restart_dutycycle(clock_time_t initial_wait)
{
(&dutycycle_pt)->lc = 0;;
ctimer_set(&timer, initial_wait, (void (*)(void *))dutycycle, &timer); 
}
#line 632 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
static void
send_packet(mac_callback_t sent, void *ptr)
{
struct lpp_hdr hdr;
clock_time_t timeout;
uint8_t is_broadcast = 0;

rimeaddr_copy(&hdr.sender, &rimeaddr_node_addr);
rimeaddr_copy(&hdr.receiver, packetbuf_addr(PACKETBUF_ADDR_RECEIVER));
if(rimeaddr_cmp(&hdr.receiver, &rimeaddr_null)) {
is_broadcast = 1;
}
hdr.type = 2;

packetbuf_hdralloc(sizeof(struct lpp_hdr));
memcpy(packetbuf_hdrptr(), &hdr, sizeof(struct lpp_hdr));
packetbuf_compact();

packetbuf_set_attr(PACKETBUF_ATTR_MAC_ACK, 1);

{
int hdrlen = framer_nullmac.create();
if(hdrlen < 0) {

mac_call_sent_callback(sent, ptr, MAC_TX_ERR_FATAL, 0);
return;
}
}

;
#line 679 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
{
struct queue_list_item *i;
i = memb_alloc(&queued_packets_memb);
if(i != 0) {
i->sent_callback = sent;
i->sent_callback_ptr = ptr;
i->num_transmissions = 0;
i->packet = queuebuf_new_from_packetbuf();
if(i->packet == 0) {
memb_free(&queued_packets_memb, i);
printf("null packet\n");
mac_call_sent_callback(sent, ptr, MAC_TX_ERR, 0);
return;
} else {
if(is_broadcast) {
timeout = ((((((41666667ul)/4)+128ull)/256ull) / 128) + (((((41666667ul)/4)+128ull)/256ull) / 8 - (((((41666667ul)/4)+128ull)/256ull) / 128)));
#line 707 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
} else {
timeout = (1 * ((((((41666667ul)/4)+128ull)/256ull) / 128) + (((((41666667ul)/4)+128ull)/256ull) / 8 - (((((41666667ul)/4)+128ull)/256ull) / 128))) + ((((((41666667ul)/4)+128ull)/256ull) / 128) + (((((41666667ul)/4)+128ull)/256ull) / 8 - (((((41666667ul)/4)+128ull)/256ull) / 128))) / 2);
#line 712 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
}
ctimer_set(&i->removal_timer, timeout,
remove_queued_old_packet_callback, i);
#line 719 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
turn_radio_on_for_neighbor(&hdr.receiver, i);

}
} else {
printf("i == NULL\n");
mac_call_sent_callback(sent, ptr, MAC_TX_ERR, 0);
}
}
}

static void
send_list(mac_callback_t sent, void *ptr, struct rdc_buf_list *buf_list)
{
if(buf_list != 0) {
queuebuf_to_packetbuf(buf_list->buf);
send_packet(sent, ptr);
}
}

static int
detect_ack(void)
{
#line 744 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
rtimer_clock_t wt;
uint8_t ack_received = 0;

wt = rtimer_arch_now();
leds_on(1);
while(((int16_t)((rtimer_arch_now())-( wt + ((((41666667ul)/4)+128ull)/256ull) / 5000))<0)) { }
leds_off(1);

if((nullradio_driver.receiving_packet() ||
nullradio_driver.pending_packet() ||
nullradio_driver.channel_clear() == 0)) {
int len;
uint8_t ackbuf[3 + 2];

wt = rtimer_arch_now();
while(((int16_t)((rtimer_arch_now())-( wt + ((((41666667ul)/4)+128ull)/256ull) / 1000))<0)) { }

len = nullradio_driver.read(ackbuf, 3);
if(len == 3) {
ack_received = 1;
}
}
if(ack_received) {
leds_toggle(4);
}
return ack_received;
}
#line 778 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
static void
input_packet(void)
{
struct lpp_hdr hdr;
clock_time_t reception_time;
int ret;

reception_time = clock_time();

if(framer_nullmac.parse() < 0) {
printf("lpp input_packet framer error\n");
}

memcpy(&hdr, packetbuf_dataptr(), sizeof(struct lpp_hdr));;
packetbuf_hdrreduce(sizeof(struct lpp_hdr));
#line 795 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
if(hdr.type == 1) {
struct announcement_msg adata;
#line 800 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
register_encounter(&hdr.sender, reception_time);
#line 803 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
memcpy(&adata, packetbuf_dataptr(),
((packetbuf_datalen()) < ( sizeof(adata))? (packetbuf_datalen()) : ( sizeof(adata))));
#line 831 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
if(list_length(queued_packets_list) > 0) {
struct queue_list_item *i;
for(i = list_head(queued_packets_list); i != 0; i = list_item_next(i)) {
const rimeaddr_t *receiver;
uint8_t sent;

sent = 0;

receiver = queuebuf_addr(i->packet, PACKETBUF_ADDR_RECEIVER);
if(rimeaddr_cmp(receiver, &hdr.sender) ||
rimeaddr_cmp(receiver, &rimeaddr_null)) {
queuebuf_to_packetbuf(i->packet);
#line 862 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
i->num_transmissions = 1;
ret = nullradio_driver.send(queuebuf_dataptr(i->packet),
queuebuf_datalen(i->packet));
;
#line 875 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
compower_accumulate(&i->compower);
#line 881 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
if(!rimeaddr_cmp(receiver, &rimeaddr_null)) {
#line 890 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
if(detect_ack()) {
remove_queued_packet(i, 1);
} else {
remove_queued_packet(i, 0);
}
#line 905 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
if(is_streaming) {
ctimer_set(&stream_probe_timer, ((((41666667ul)/4)+128ull)/256ull) / 128,
send_stream_probe, 0);
}
}
#line 912 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
if(sent) {
turn_radio_off();
}
#line 925 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
}
}
}

} else if(hdr.type == 2) {
turn_radio_off();
if(!rimeaddr_cmp(&hdr.receiver, &rimeaddr_null)) {
if(!rimeaddr_cmp(&hdr.receiver, &rimeaddr_node_addr)) {

;
return;
}
packetbuf_set_addr(PACKETBUF_ADDR_RECEIVER, &hdr.receiver);
}
packetbuf_set_addr(PACKETBUF_ADDR_SENDER, &hdr.sender);
#line 943 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
;
#line 948 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
compower_accumulate(&current_packet);
#line 953 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
compower_attrconv(&current_packet);
#line 957 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
compower_clear(&current_packet);
#line 1000 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/lpp.c"
nullmac_driver.input();
}
}

static int
on(void)
{
lpp_is_on = 1;
turn_radio_on();
return 1;
}

static int
off(int keep_radio_on)
{
lpp_is_on = 0;
if(keep_radio_on) {
turn_radio_on();
} else {
turn_radio_off();
}
return 1;
}

static unsigned short
channel_check_interval(void)
{
return (((((41666667ul)/4)+128ull)/256ull) / 8 - (((((41666667ul)/4)+128ull)/256ull) / 128)) + (((((41666667ul)/4)+128ull)/256ull) / 128);
}

static void
init(void)
{
restart_dutycycle(random_rand() % (((((41666667ul)/4)+128ull)/256ull) / 8 - (((((41666667ul)/4)+128ull)/256ull) / 128)));

lpp_is_on = 1;

announcement_register_listen_callback(listen_callback);

memb_init(&queued_packets_memb);
list_init(queued_packets_list);
list_init(pending_packets_list);
}

const struct rdc_driver lpp_driver = {
"LPP",
init,
send_packet,
send_list,
input_packet,
on,
off,
channel_check_interval,
};
