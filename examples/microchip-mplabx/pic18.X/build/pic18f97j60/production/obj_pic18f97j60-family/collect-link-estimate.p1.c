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
#line 91 "/home/jarojuda/contiki/core/sys/clock.h"
void clock_init(void);
#line 100 "/home/jarojuda/contiki/core/sys/clock.h"
clock_time_t clock_time(void);
#line 110 "/home/jarojuda/contiki/core/sys/clock.h"
unsigned long clock_seconds(void);
#line 117 "/home/jarojuda/contiki/core/sys/clock.h"
void clock_set_seconds(unsigned long sec);
#line 124 "/home/jarojuda/contiki/core/sys/clock.h"
void clock_wait(clock_time_t t);
#line 132 "/home/jarojuda/contiki/core/sys/clock.h"
void clock_delay_usec(uint16_t dt);
#line 138 "/home/jarojuda/contiki/core/sys/clock.h"
int clock_fine_max(void);
unsigned short clock_fine(void);
void clock_delay(unsigned int delay);
#line 86 "/home/jarojuda/contiki/core/sys/timer.h"
struct timer {
clock_time_t start;
clock_time_t interval;
};

void timer_set(struct timer *t, clock_time_t interval);
void timer_reset(struct timer *t);
void timer_restart(struct timer *t);
int timer_expired(struct timer *t);
clock_time_t timer_remaining(struct timer *t);
#line 63 "/home/jarojuda/contiki/core/sys/lc-switch.h"
typedef unsigned short lc_t;
#line 53 "/home/jarojuda/contiki/core/sys/pt.h"
struct pt {
lc_t lc;
};
#line 59 "/home/jarojuda/contiki/core/sys/process.h"
typedef unsigned char process_event_t;
typedef void * process_data_t;
typedef unsigned char process_num_events_t;
#line 315 "/home/jarojuda/contiki/core/sys/process.h"
struct process {
struct process *next;
#line 320 "/home/jarojuda/contiki/core/sys/process.h"
const char *name;
#line 323 "/home/jarojuda/contiki/core/sys/process.h"
char (* thread)(struct pt *, process_event_t, process_data_t);
struct pt pt;
unsigned char state, needspoll;
};
#line 342 "/home/jarojuda/contiki/core/sys/process.h"
void process_start(struct process *p, const char *arg);
#line 365 "/home/jarojuda/contiki/core/sys/process.h"
int process_post(struct process *p, process_event_t ev, void* data);
#line 377 "/home/jarojuda/contiki/core/sys/process.h"
void process_post_synch(struct process *p,
process_event_t ev, void* data);
#line 390 "/home/jarojuda/contiki/core/sys/process.h"
void process_exit(struct process *p);
#line 403 "/home/jarojuda/contiki/core/sys/process.h"
extern struct process *process_current;
#line 453 "/home/jarojuda/contiki/core/sys/process.h"
process_event_t process_alloc_event(void);
#line 470 "/home/jarojuda/contiki/core/sys/process.h"
void process_poll(struct process *p);
#line 485 "/home/jarojuda/contiki/core/sys/process.h"
void process_init(void);
#line 500 "/home/jarojuda/contiki/core/sys/process.h"
int process_run(void);
#line 512 "/home/jarojuda/contiki/core/sys/process.h"
int process_is_running(struct process *p);
#line 520 "/home/jarojuda/contiki/core/sys/process.h"
int process_nevents(void);
#line 524 "/home/jarojuda/contiki/core/sys/process.h"
extern struct process *process_list;
#line 76 "/home/jarojuda/contiki/core/sys/etimer.h"
struct etimer {
struct timer timer;
struct etimer *next;
struct process *p;
};
#line 98 "/home/jarojuda/contiki/core/sys/etimer.h"
void etimer_set(struct etimer *et, clock_time_t interval);
#line 115 "/home/jarojuda/contiki/core/sys/etimer.h"
void etimer_reset(struct etimer *et);
#line 132 "/home/jarojuda/contiki/core/sys/etimer.h"
void etimer_restart(struct etimer *et);
#line 154 "/home/jarojuda/contiki/core/sys/etimer.h"
void etimer_adjust(struct etimer *et, int td);
#line 163 "/home/jarojuda/contiki/core/sys/etimer.h"
clock_time_t etimer_expiration_time(struct etimer *et);
#line 173 "/home/jarojuda/contiki/core/sys/etimer.h"
clock_time_t etimer_start_time(struct etimer *et);
#line 183 "/home/jarojuda/contiki/core/sys/etimer.h"
int etimer_expired(struct etimer *et);
#line 195 "/home/jarojuda/contiki/core/sys/etimer.h"
void etimer_stop(struct etimer *et);
#line 212 "/home/jarojuda/contiki/core/sys/etimer.h"
void etimer_request_poll(void);
#line 222 "/home/jarojuda/contiki/core/sys/etimer.h"
int etimer_pending(void);
#line 233 "/home/jarojuda/contiki/core/sys/etimer.h"
clock_time_t etimer_next_expiration_time(void);
#line 238 "/home/jarojuda/contiki/core/sys/etimer.h"
extern struct process etimer_process;
#line 59 "/home/jarojuda/contiki/core/sys/ctimer.h"
struct ctimer {
struct ctimer *next;
struct etimer etimer;
struct process *p;
void (*f)(void *);
void *ptr;
};
#line 82 "/home/jarojuda/contiki/core/sys/ctimer.h"
void ctimer_reset(struct ctimer *c);
#line 99 "/home/jarojuda/contiki/core/sys/ctimer.h"
void ctimer_restart(struct ctimer *c);
#line 113 "/home/jarojuda/contiki/core/sys/ctimer.h"
void ctimer_set(struct ctimer *c, clock_time_t t,
void (*f)(void *), void *ptr);
#line 126 "/home/jarojuda/contiki/core/sys/ctimer.h"
void ctimer_stop(struct ctimer *c);
#line 136 "/home/jarojuda/contiki/core/sys/ctimer.h"
int ctimer_expired(struct ctimer *c);
#line 144 "/home/jarojuda/contiki/core/sys/ctimer.h"
void ctimer_init(void);
#line 85 "/home/jarojuda/contiki/core/net/packetbuf.h"
void packetbuf_clear(void);
#line 98 "/home/jarojuda/contiki/core/net/packetbuf.h"
void packetbuf_clear_hdr(void);

void packetbuf_hdr_remove(int bytes);
#line 120 "/home/jarojuda/contiki/core/net/packetbuf.h"
void *packetbuf_dataptr(void);
#line 132 "/home/jarojuda/contiki/core/net/packetbuf.h"
void *packetbuf_hdrptr(void);
#line 145 "/home/jarojuda/contiki/core/net/packetbuf.h"
uint8_t packetbuf_hdrlen(void);
#line 164 "/home/jarojuda/contiki/core/net/packetbuf.h"
uint16_t packetbuf_datalen(void);
#line 171 "/home/jarojuda/contiki/core/net/packetbuf.h"
uint16_t packetbuf_totlen(void);
#line 181 "/home/jarojuda/contiki/core/net/packetbuf.h"
void packetbuf_set_datalen(uint16_t len);
#line 194 "/home/jarojuda/contiki/core/net/packetbuf.h"
void packetbuf_reference(void *ptr, uint16_t len);
#line 206 "/home/jarojuda/contiki/core/net/packetbuf.h"
int packetbuf_is_reference(void);
#line 219 "/home/jarojuda/contiki/core/net/packetbuf.h"
void *packetbuf_reference_ptr(void);
#line 235 "/home/jarojuda/contiki/core/net/packetbuf.h"
void packetbuf_compact(void);
#line 250 "/home/jarojuda/contiki/core/net/packetbuf.h"
int packetbuf_copyfrom(const void *from, uint16_t len);
#line 270 "/home/jarojuda/contiki/core/net/packetbuf.h"
int packetbuf_copyto(void *to);
#line 286 "/home/jarojuda/contiki/core/net/packetbuf.h"
int packetbuf_copyto_hdr(uint8_t *to);
#line 300 "/home/jarojuda/contiki/core/net/packetbuf.h"
int packetbuf_hdralloc(int size);
#line 314 "/home/jarojuda/contiki/core/net/packetbuf.h"
int packetbuf_hdrreduce(int size);
#line 318 "/home/jarojuda/contiki/core/net/packetbuf.h"
typedef uint16_t packetbuf_attr_t;

struct packetbuf_attr {

packetbuf_attr_t val;
};
struct packetbuf_addr {

rimeaddr_t addr;
};
#line 335 "/home/jarojuda/contiki/core/net/packetbuf.h"
enum {
PACKETBUF_ATTR_NONE,
#line 339 "/home/jarojuda/contiki/core/net/packetbuf.h"
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
#line 352 "/home/jarojuda/contiki/core/net/packetbuf.h"
PACKETBUF_ATTR_RELIABLE,
PACKETBUF_ATTR_PACKET_ID,
PACKETBUF_ATTR_PACKET_TYPE,
PACKETBUF_ATTR_REXMIT,
PACKETBUF_ATTR_MAX_REXMIT,
PACKETBUF_ATTR_NUM_REXMIT,
PACKETBUF_ATTR_PENDING,
#line 361 "/home/jarojuda/contiki/core/net/packetbuf.h"
PACKETBUF_ATTR_HOPS,
PACKETBUF_ATTR_TTL,
PACKETBUF_ATTR_EPACKET_ID,
PACKETBUF_ATTR_EPACKET_TYPE,
PACKETBUF_ATTR_ERELIABLE,
#line 368 "/home/jarojuda/contiki/core/net/packetbuf.h"
PACKETBUF_ADDR_SENDER,
PACKETBUF_ADDR_RECEIVER,
PACKETBUF_ADDR_ESENDER,
PACKETBUF_ADDR_ERECEIVER,

PACKETBUF_ATTR_MAX
};
#line 419 "/home/jarojuda/contiki/core/net/packetbuf.h"
int packetbuf_set_attr(uint8_t type, const packetbuf_attr_t val);
packetbuf_attr_t packetbuf_attr(uint8_t type);
int packetbuf_set_addr(uint8_t type, const rimeaddr_t *addr);
const rimeaddr_t *packetbuf_addr(uint8_t type);
#line 425 "/home/jarojuda/contiki/core/net/packetbuf.h"
void packetbuf_attr_clear(void);

void packetbuf_attr_copyto(struct packetbuf_attr *attrs,
struct packetbuf_addr *addrs);
void packetbuf_attr_copyfrom(struct packetbuf_attr *attrs,
struct packetbuf_addr *addrs);
#line 439 "/home/jarojuda/contiki/core/net/packetbuf.h"
struct packetbuf_attrlist {
uint8_t type;
uint8_t len;
};
#line 43 "/home/jarojuda/contiki/core/net/rime/channel.h"
struct channel;
#line 45 "/home/jarojuda/contiki/core/net/rime/chameleon.h"
struct chameleon_module {
struct channel *(* input)(void);
int (* output)(struct channel *);
int (* hdrsize)(const struct packetbuf_attrlist *);
};

void chameleon_init(void);

int chameleon_hdrsize(const struct packetbuf_attrlist attrlist[]);
struct channel *chameleon_parse(void);
int chameleon_create(struct channel *c);
#line 49 "/home/jarojuda/contiki/core/net/rime/channel.h"
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
#line 63 "/home/jarojuda/contiki/core/net/rime/abc.h"
struct abc_conn;
#line 71 "/home/jarojuda/contiki/core/net/rime/abc.h"
struct abc_callbacks {

void (* recv)(struct abc_conn *ptr);
void (* sent)(struct abc_conn *ptr, int status, int num_tx);
};

struct abc_conn {
struct channel channel;
const struct abc_callbacks *u;
};
#line 98 "/home/jarojuda/contiki/core/net/rime/abc.h"
void abc_open(struct abc_conn *c, uint16_t channel,
const struct abc_callbacks *u);
#line 111 "/home/jarojuda/contiki/core/net/rime/abc.h"
void abc_close(struct abc_conn *c);
#line 126 "/home/jarojuda/contiki/core/net/rime/abc.h"
int abc_send(struct abc_conn *c);
#line 137 "/home/jarojuda/contiki/core/net/rime/abc.h"
void abc_input(struct channel *channel);

void abc_sent(struct channel *channel, int status, int num_tx);
#line 71 "/home/jarojuda/contiki/core/net/rime/broadcast.h"
struct broadcast_conn;
#line 80 "/home/jarojuda/contiki/core/net/rime/broadcast.h"
struct broadcast_callbacks {

void (* recv)(struct broadcast_conn *ptr, const rimeaddr_t *sender);
void (* sent)(struct broadcast_conn *ptr, int status, int num_tx);
};

struct broadcast_conn {
struct abc_conn c;
const struct broadcast_callbacks *u;
};
#line 107 "/home/jarojuda/contiki/core/net/rime/broadcast.h"
void broadcast_open(struct broadcast_conn *c, uint16_t channel,
const struct broadcast_callbacks *u);
#line 120 "/home/jarojuda/contiki/core/net/rime/broadcast.h"
void broadcast_close(struct broadcast_conn *c);
#line 135 "/home/jarojuda/contiki/core/net/rime/broadcast.h"
int broadcast_send(struct broadcast_conn *c);
#line 67 "/home/jarojuda/contiki/core/net/rime/unicast.h"
struct unicast_conn;
#line 72 "/home/jarojuda/contiki/core/net/rime/unicast.h"
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
#line 88 "/home/jarojuda/contiki/core/net/queuebuf.h"
struct queuebuf;

void queuebuf_init(void);
#line 96 "/home/jarojuda/contiki/core/net/queuebuf.h"
struct queuebuf *queuebuf_new_from_packetbuf(void);
void queuebuf_update_attr_from_packetbuf(struct queuebuf *b);
#line 100 "/home/jarojuda/contiki/core/net/queuebuf.h"
void queuebuf_to_packetbuf(struct queuebuf *b);
void queuebuf_free(struct queuebuf *b);

void *queuebuf_dataptr(struct queuebuf *b);
int queuebuf_datalen(struct queuebuf *b);

rimeaddr_t *queuebuf_addr(struct queuebuf *b, uint8_t type);
packetbuf_attr_t queuebuf_attr(struct queuebuf *b, uint8_t type);

void queuebuf_debug_print(void);
#line 79 "/home/jarojuda/contiki/core/net/rime/stunicast.h"
struct stunicast_conn;
#line 83 "/home/jarojuda/contiki/core/net/rime/stunicast.h"
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
#line 83 "/home/jarojuda/contiki/core/net/rime/runicast.h"
struct runicast_conn;
#line 91 "/home/jarojuda/contiki/core/net/rime/runicast.h"
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
#line 65 "/home/jarojuda/contiki/core/net/rime/neighbor-discovery.h"
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
#line 61 "/home/jarojuda/contiki/core/net/rime/collect-link-estimate.h"
struct collect_link_estimate {
uint32_t etx_accumulator;
uint8_t num_estimates;
};
#line 72 "/home/jarojuda/contiki/core/net/rime/collect-link-estimate.h"
void collect_link_estimate_new(struct collect_link_estimate *le);
#line 84 "/home/jarojuda/contiki/core/net/rime/collect-link-estimate.h"
void collect_link_estimate_update_tx(struct collect_link_estimate *le,
uint8_t num_tx);
#line 97 "/home/jarojuda/contiki/core/net/rime/collect-link-estimate.h"
void collect_link_estimate_update_tx_fail(struct collect_link_estimate *le,
uint8_t num_tx);
#line 109 "/home/jarojuda/contiki/core/net/rime/collect-link-estimate.h"
void collect_link_estimate_update_rx(struct collect_link_estimate *le);
#line 118 "/home/jarojuda/contiki/core/net/rime/collect-link-estimate.h"
uint16_t collect_link_estimate(struct collect_link_estimate *le);

int collect_link_estimate_num_estimates(struct collect_link_estimate *le);
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
#line 58 "/home/jarojuda/contiki/core/net/rime/collect-neighbor.h"
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
#line 96 "/home/jarojuda/contiki/core/lib/memb.h"
struct memb {
unsigned short size;
unsigned short num;
char *count;
void *mem;
};
#line 108 "/home/jarojuda/contiki/core/lib/memb.h"
void memb_init(struct memb *m);
#line 115 "/home/jarojuda/contiki/core/lib/memb.h"
void *memb_alloc(struct memb *m);
#line 129 "/home/jarojuda/contiki/core/lib/memb.h"
char memb_free(struct memb *m, void *ptr);

int memb_inmemb(struct memb *m, void *ptr);
#line 70 "/home/jarojuda/contiki/core/net/packetqueue.h"
struct packetqueue {
list_t *list;
struct memb *memb;
};
#line 86 "/home/jarojuda/contiki/core/net/packetqueue.h"
struct packetqueue_item {
struct packetqueue_item *next;
struct queuebuf *buf;
struct packetqueue *queue;
struct ctimer lifetimer;
void *ptr;
};
#line 121 "/home/jarojuda/contiki/core/net/packetqueue.h"
void packetqueue_init(struct packetqueue *q);
#line 152 "/home/jarojuda/contiki/core/net/packetqueue.h"
int packetqueue_enqueue_packetbuf(struct packetqueue *q, clock_time_t lifetime,
void *ptr);
#line 166 "/home/jarojuda/contiki/core/net/packetqueue.h"
struct packetqueue_item *packetqueue_first(struct packetqueue *q);
#line 179 "/home/jarojuda/contiki/core/net/packetqueue.h"
void packetqueue_dequeue(struct packetqueue *q);
#line 190 "/home/jarojuda/contiki/core/net/packetqueue.h"
int packetqueue_len(struct packetqueue *q);
#line 206 "/home/jarojuda/contiki/core/net/packetqueue.h"
struct queuebuf *packetqueue_queuebuf(struct packetqueue_item *i);
#line 213 "/home/jarojuda/contiki/core/net/packetqueue.h"
void *packetqueue_ptr(struct packetqueue_item *i);
#line 81 "/home/jarojuda/contiki/core/net/rime/collect.h"
struct collect_callbacks {
void (* recv)(const rimeaddr_t *originator, uint8_t seqno,
uint8_t hops);
};
#line 95 "/home/jarojuda/contiki/core/net/rime/collect.h"
struct collect_conn {
struct unicast_conn unicast_conn;
#line 100 "/home/jarojuda/contiki/core/net/rime/collect.h"
struct announcement announcement;
struct ctimer transmit_after_scan_timer;
const struct collect_callbacks *cb;
struct ctimer retransmission_timer;
void *send_queue_list_list; list_t send_queue_list;
struct packetqueue send_queue;
struct collect_neighbor_list neighbor_list;
#line 109 "/home/jarojuda/contiki/core/net/rime/collect.h"
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
#line 62 "/home/jarojuda/contiki-mplabx/examples/microchip-mplabx/pic18.X/../../../../contiki/core/net/rime/collect-link-estimate.c"
void
collect_link_estimate_new(struct collect_link_estimate *le)
{
if(le == 0) {
return;
}
le->num_estimates = 0;
le->etx_accumulator = 8;
}

void
collect_link_estimate_update_tx(struct collect_link_estimate *le, uint8_t tx)
{
if(le == 0) {
return;
}
if(tx == 0) {

return;
}
if(le != 0) {
if(le->num_estimates == 0) {
le->etx_accumulator = tx * 8;
}

if(le->num_estimates < 255) {
le->num_estimates++;
}

le->etx_accumulator = (((uint32_t)tx * 8) *
((3 * (8)) / 8) +
le->etx_accumulator * (8 -
((3 * (8)) / 8))) /
8;

}
}

void
collect_link_estimate_update_tx_fail(struct collect_link_estimate *le,
uint8_t tx)
{
if(le == 0) {
return;
}
collect_link_estimate_update_tx(le, tx * 2);
}

void
collect_link_estimate_update_rx(struct collect_link_estimate *n)
{

}

uint16_t
collect_link_estimate(struct collect_link_estimate *le)
{
if(le == 0) {
return 0;
}
if(le->num_estimates == 0) {
return 16 * 8;
}

return le->etx_accumulator;
}

int
collect_link_estimate_num_estimates(struct collect_link_estimate *le)
{
if(le != 0) {
return le->num_estimates;
}
return 0;
}
