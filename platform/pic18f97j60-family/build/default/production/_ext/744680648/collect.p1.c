#include <Compiler.h>
#include <GenericTypeDefs.h>
#include <stdint.h>
#include <limits.h>
#line 16 "/home/jarojuda/GitHub/contiki/platform/pic18f97j60-family/contiki-conf.h"
typedef unsigned long clock_time_t;
#line 24 "/home/jarojuda/GitHub/contiki/platform/pic18f97j60-family/contiki-conf.h"
typedef unsigned short uip_stats_t;
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
#line 57 "/home/jarojuda/GitHub/contiki/core/sys/autostart.h"
extern struct process * const autostart_processes[];

void autostart_start(struct process * const processes[]);
void autostart_exit(struct process * const processes[]);
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
#line 42 "/home/jarojuda/GitHub/contiki/core/sys/procinit.h"
void procinit_init(void);
#line 45 "/home/jarojuda/GitHub/contiki/core/sys/energest.h"
typedef struct {

unsigned long current;
} energest_t;

enum energest_type {
ENERGEST_TYPE_CPU,
ENERGEST_TYPE_LPM,
ENERGEST_TYPE_IRQ,
ENERGEST_TYPE_LED_GREEN,
ENERGEST_TYPE_LED_YELLOW,
ENERGEST_TYPE_LED_RED,
ENERGEST_TYPE_TRANSMIT,
ENERGEST_TYPE_LISTEN,

ENERGEST_TYPE_FLASH_READ,
ENERGEST_TYPE_FLASH_WRITE,

ENERGEST_TYPE_SENSORS,

ENERGEST_TYPE_SERIAL,

ENERGEST_TYPE_MAX
};

void energest_init(void);
unsigned long energest_type_time(int type);
void energest_type_set(int type, unsigned long value);
void energest_flush(void);
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
#line 55 "/home/jarojuda/GitHub/contiki/core/lib/sensors.h"
struct sensors_sensor {
char * type;
int (* value) (int type);
int (* configure) (int type, int value);
int (* status) (int type);
};

const struct sensors_sensor *sensors_find(const char *type);
const struct sensors_sensor *sensors_next(const struct sensors_sensor *s);
const struct sensors_sensor *sensors_first(void);

void sensors_changed(const struct sensors_sensor *s);

extern process_event_t sensors_event;

extern struct process sensors_process;
#line 37 "/home/jarojuda/GitHub/contiki/core/dev/radio-sensor.h"
extern const struct sensors_sensor radio_sensor;
#line 44 "/home/jarojuda/GitHub/contiki/core/dev/radio-sensor.h"
extern unsigned int radio_sensor_signal;
#line 39 "/home/jarojuda/GitHub/contiki/core/lib/random.h"
void random_init(unsigned short seed);
#line 46 "/home/jarojuda/GitHub/contiki/core/lib/random.h"
unsigned short random_rand(void);
#include <string.h>
#include <stdio.h>
#include <stddef.h>
#line 62 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
static const struct packetbuf_attrlist attributes[] =
{
{ PACKETBUF_ADDR_ESENDER, (sizeof(rimeaddr_t) * 8) }, { PACKETBUF_ATTR_EPACKET_ID, 1 * 8 }, { PACKETBUF_ATTR_PACKET_ID, 1 * 8 }, { PACKETBUF_ATTR_TTL, 1 * 4 }, { PACKETBUF_ATTR_HOPS, 1 * 4 }, { PACKETBUF_ATTR_MAX_REXMIT, 1 * 5 }, { PACKETBUF_ATTR_PACKET_TYPE, 1 }, { PACKETBUF_ADDR_RECEIVER, (sizeof(rimeaddr_t) * 8) }, { PACKETBUF_ADDR_SENDER, (sizeof(rimeaddr_t) * 8) },
{ PACKETBUF_ATTR_NONE, 0 }
};
#line 75 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
struct recent_packet {
struct collect_conn *conn;
rimeaddr_t originator;
uint8_t eseqno;
};

static struct recent_packet recent_packets[16];
static uint8_t recent_packet_ptr;
#line 89 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
struct data_msg_hdr {
uint8_t flags, dummy;
uint16_t rtmetric;
};
#line 104 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
struct ack_msg {
uint8_t flags, dummy;
uint16_t rtmetric;
};
#line 135 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
static char send_queue_memb_memb_count[ 3 * 8 / 4]; static struct packetqueue_item send_queue_memb_memb_mem[ 3 * 8 / 4]; static struct memb send_queue_memb = {sizeof( struct packetqueue_item), 3 * 8 / 4, send_queue_memb_memb_count, (void *)send_queue_memb_memb_mem};
#line 174 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
struct {
uint32_t foundroute;
uint32_t newparent;
uint32_t routelost;

uint32_t acksent;
uint32_t datasent;

uint32_t datarecv;
uint32_t ackrecv;
uint32_t badack;
uint32_t duprecv;

uint32_t qdrop;
uint32_t rtdrop;
uint32_t ttldrop;
uint32_t ackdrop;
uint32_t timedout;
} stats;
#line 205 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
static void send_queued_packet(struct collect_conn *c);
static void retransmit_callback(void *ptr);
static void retransmit_not_sent_callback(void *ptr);
static void set_keepalive_timer(struct collect_conn *c);
#line 217 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
static uint16_t
rtmetric_compute(struct collect_conn *tc)
{
struct collect_neighbor *n;
uint16_t rtmetric = (8 * 64 - 1);
#line 230 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
n = collect_neighbor_list_find(&tc->neighbor_list, &tc->parent);
#line 234 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
if(n == 0) {
rtmetric = (8 * 64 - 1);
} else {
#line 239 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
rtmetric = collect_neighbor_rtmetric_link_estimate(n);
}

return rtmetric;
}
#line 250 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
static void
bump_advertisement(struct collect_conn *c)
{
#line 256 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
announcement_bump(&c->announcement);
}
#line 267 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
static void
update_parent(struct collect_conn *tc)
{
struct collect_neighbor *current;
struct collect_neighbor *best;
#line 274 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
current = collect_neighbor_list_find(&tc->neighbor_list, &tc->parent);
#line 278 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
best = collect_neighbor_list_best(&tc->neighbor_list);
#line 297 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
if(best != 0) {
rimeaddr_t previous_parent;

if(0) {
rimeaddr_copy(&previous_parent, &tc->parent);
}

if(current == 0) {

;
rimeaddr_copy(&tc->parent, &best->addr);
stats.foundroute++;
bump_advertisement(tc);
} else {
if(0) {
;
}
if(collect_neighbor_rtmetric_link_estimate(best) +
(8 + 8 / 2) <
collect_neighbor_rtmetric_link_estimate(current)) {
#line 320 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
;
rimeaddr_copy(&tc->parent, &best->addr);
stats.newparent++;
#line 329 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
bump_advertisement(tc);

if(0) {
;
#line 343 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
}
} else {
if(0) {
;
#line 357 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
}
}
}
if(0) {
if(!rimeaddr_cmp(&previous_parent, &tc->parent)) {
if(!rimeaddr_cmp(&previous_parent, &rimeaddr_null)) {
;
}
;
}
}
} else {

if(!rimeaddr_cmp(&tc->parent, &rimeaddr_null)) {
if(0) {
;
}
stats.routelost++;
}
rimeaddr_copy(&tc->parent, &rimeaddr_null);
}
}
#line 388 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
static void
update_rtmetric(struct collect_conn *tc)
{
;
#line 394 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
if(tc->rtmetric != 0) {
uint16_t old_rtmetric, new_rtmetric;
#line 398 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
old_rtmetric = tc->rtmetric;
#line 401 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
update_parent(tc);
#line 404 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
new_rtmetric = rtmetric_compute(tc);
#line 407 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
if(new_rtmetric == 0) {
#line 413 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
new_rtmetric = (8 * 64 - 1);
}
#line 418 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
tc->rtmetric = new_rtmetric;

if(tc->is_router) {
#line 423 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
announcement_set_value(&tc->announcement, tc->rtmetric);
#line 428 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
}
;
#line 434 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
if(old_rtmetric == (8 * 64 - 1) && new_rtmetric != (8 * 64 - 1)) {
;
send_queued_packet(tc);
}
if(0) {
if(old_rtmetric != new_rtmetric) {
;
}
}
}
}

static int
enqueue_dummy_packet(struct collect_conn *c, int rexmits)
{
struct collect_neighbor *n;

packetbuf_clear();
packetbuf_set_attr(PACKETBUF_ATTR_EPACKET_ID, c->eseqno - 1);
packetbuf_set_addr(PACKETBUF_ADDR_ESENDER, &rimeaddr_node_addr);
packetbuf_set_attr(PACKETBUF_ATTR_HOPS, 1);
packetbuf_set_attr(PACKETBUF_ATTR_TTL, 1);
packetbuf_set_attr(PACKETBUF_ATTR_MAX_REXMIT, rexmits);

;
#line 464 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
packetbuf_hdralloc(sizeof(struct data_msg_hdr));

n = collect_neighbor_list_find(&c->neighbor_list, &c->parent);
if(n != 0) {
return packetqueue_enqueue_packetbuf(&c->send_queue,
(((((41666667ul)/4)+128ull)/256ull) * 32 / 8) * 2 * rexmits,
c);
}
return 0;
}

static void
send_packet(struct collect_conn *c, struct collect_neighbor *n)
{
clock_time_t time;

;
#line 487 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
time = 16 * (((((41666667ul)/4)+128ull)/256ull) * 32 / 8);
ctimer_set(&c->retransmission_timer, time,
retransmit_not_sent_callback, c);
c->send_time = clock_time();

unicast_send(&c->unicast_conn, &n->addr);
}

static void
proactive_probing_callback(void *ptr)
{
struct collect_conn *c = ptr;
struct packetqueue_item *i;

ctimer_set(&c->proactive_probing_timer, (random_rand() % ((((41666667ul)/4)+128ull)/256ull) * 60),
proactive_probing_callback, ptr);
#line 506 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
if(c->rtmetric != 0 && c->rtmetric != (8 * 64 - 1)) {
#line 509 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
i = packetqueue_first(&c->send_queue);
if(i == 0) {
#line 516 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
struct collect_neighbor *n;
#line 519 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
for(n = list_head(collect_neighbor_list(&c->neighbor_list));
n != 0; n = list_item_next(n)) {
if(n->rtmetric + 8 < c->rtmetric &&
collect_link_estimate_num_estimates(&n->le) == 0) {
rimeaddr_t current_parent;

;
#line 528 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
rimeaddr_copy(&current_parent, &c->parent);
rimeaddr_copy(&c->parent, &n->addr);
if(enqueue_dummy_packet(c, 15)) {
send_queued_packet(c);
}
rimeaddr_copy(&c->parent, &current_parent);
return;
}
}
}
;

return;
}
}
#line 551 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
static void
send_queued_packet(struct collect_conn *c)
{
struct queuebuf *q;
struct collect_neighbor *n;
struct packetqueue_item *i;
struct data_msg_hdr hdr;
int max_mac_rexmits;
#line 562 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
if(c->sending) {
;

return;
}
#line 570 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
i = packetqueue_first(&c->send_queue);
if(i == 0) {
;
#line 575 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
return;
}
#line 579 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
q = packetqueue_queuebuf(i);
if(q != 0) {

queuebuf_to_packetbuf(q);
#line 586 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
n = collect_neighbor_list_find(&c->neighbor_list, &c->parent);

if(n != 0) {
#line 594 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
;
#line 600 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
c->sending = 1;
#line 603 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
rimeaddr_copy(&c->current_parent, &c->parent);
#line 607 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
c->transmissions = 0;
#line 612 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
c->max_rexmits = packetbuf_attr(PACKETBUF_ATTR_MAX_REXMIT);
#line 618 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
packetbuf_set_attr(PACKETBUF_ATTR_RELIABLE, 1);

max_mac_rexmits = c->max_rexmits > 2?
2 : c->max_rexmits;
packetbuf_set_attr(PACKETBUF_ATTR_MAX_MAC_TRANSMISSIONS, max_mac_rexmits);
packetbuf_set_attr(PACKETBUF_ATTR_PACKET_ID, c->seqno);

stats.datasent++;
#line 629 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
memset(&hdr, 0, sizeof(hdr));
hdr.rtmetric = c->rtmetric;
memcpy(packetbuf_dataptr(), &hdr, sizeof(struct data_msg_hdr));
#line 634 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
send_packet(c, n);

} else {
#line 644 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
if(c->is_router) {
announcement_set_value(&c->announcement, (8 * 64 - 1));
announcement_bump(&c->announcement);
}
}
}
}
#line 659 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
static void
retransmit_current_packet(struct collect_conn *c)
{
struct queuebuf *q;
struct collect_neighbor *n;
struct packetqueue_item *i;
struct data_msg_hdr hdr;
int max_mac_rexmits;
#line 670 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
i = packetqueue_first(&c->send_queue);
if(i == 0) {
;
#line 675 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
return;
}
#line 679 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
q = packetqueue_queuebuf(i);
if(q != 0) {

update_rtmetric(c);
#line 685 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
queuebuf_to_packetbuf(q);
#line 691 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
if(!rimeaddr_cmp(&c->current_parent, &c->parent)) {
#line 699 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
;
#line 704 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
rimeaddr_copy(&c->current_parent, &c->parent);
c->transmissions = 0;
}
n = collect_neighbor_list_find(&c->neighbor_list, &c->current_parent);

if(n != 0) {
#line 715 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
;
#line 721 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
c->sending = 1;
packetbuf_set_attr(PACKETBUF_ATTR_RELIABLE, 1);
max_mac_rexmits = c->max_rexmits - c->transmissions > 2?
2 : c->max_rexmits - c->transmissions;
packetbuf_set_attr(PACKETBUF_ATTR_MAX_MAC_TRANSMISSIONS, max_mac_rexmits);
packetbuf_set_attr(PACKETBUF_ATTR_PACKET_ID, c->seqno);
#line 730 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
memset(&hdr, 0, sizeof(hdr));
hdr.rtmetric = c->rtmetric;
memcpy(packetbuf_dataptr(), &hdr, sizeof(struct data_msg_hdr));
#line 735 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
send_packet(c, n);
}
}

}

static void
send_next_packet(struct collect_conn *tc)
{

packetqueue_dequeue(&tc->send_queue);
tc->seqno = (tc->seqno + 1) % (1 << 8);
#line 749 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
ctimer_stop(&tc->retransmission_timer);
tc->sending = 0;
tc->transmissions = 0;

;
#line 757 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
send_queued_packet(tc);
}

static void
handle_ack(struct collect_conn *tc)
{
struct ack_msg msg;
struct collect_neighbor *n;

;
if(rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_SENDER),
&tc->current_parent) &&
packetbuf_attr(PACKETBUF_ATTR_PACKET_ID) == tc->seqno) {
#line 781 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
stats.ackrecv++;
memcpy(&msg, packetbuf_dataptr(), sizeof(struct ack_msg));
#line 790 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
if(tc->transmissions == 0) {
tc->transmissions = 2;
}
;

n = collect_neighbor_list_find(&tc->neighbor_list,
packetbuf_addr(PACKETBUF_ADDR_SENDER));

if(n != 0) {
collect_neighbor_tx(n, tc->transmissions);
collect_neighbor_update_rtmetric(n, msg.rtmetric);
update_rtmetric(tc);
}

;
#line 817 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
if(msg.flags & 0x80) {
;
if(n != 0) {
collect_neighbor_set_congested(n);
collect_neighbor_tx(n, tc->max_rexmits * 2);
}
update_rtmetric(tc);
}
if((msg.flags & 0x40) == 0) {

send_next_packet(tc);
} else {
#line 832 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
if((msg.flags & 0x20)) {
send_next_packet(tc);
} else {
#line 838 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
;
collect_neighbor_tx(n, tc->max_rexmits);
update_rtmetric(tc);

ctimer_set(&tc->retransmission_timer,
(((((41666667ul)/4)+128ull)/256ull) * 32 / 8) + (random_rand() % ((((((41666667ul)/4)+128ull)/256ull) * 32 / 8))),
retransmit_callback, tc);
}
}
#line 850 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
if(msg.flags & 0x10) {
bump_advertisement(tc);
}
set_keepalive_timer(tc);
} else {
stats.badack++;
}
}

static void
send_ack(struct collect_conn *tc, const rimeaddr_t *to, int flags)
{
struct ack_msg *ack;
uint16_t packet_seqno = packetbuf_attr(PACKETBUF_ATTR_PACKET_ID);

packetbuf_clear();
packetbuf_set_datalen(sizeof(struct ack_msg));
ack = packetbuf_dataptr();
memset(ack, 0, sizeof(struct ack_msg));
ack->rtmetric = tc->rtmetric;
ack->flags = flags;

packetbuf_set_addr(PACKETBUF_ADDR_RECEIVER, to);
packetbuf_set_attr(PACKETBUF_ATTR_PACKET_TYPE, 1);
packetbuf_set_attr(PACKETBUF_ATTR_RELIABLE, 0);
packetbuf_set_attr(PACKETBUF_ATTR_ERELIABLE, 0);
packetbuf_set_attr(PACKETBUF_ATTR_PACKET_ID, packet_seqno);
packetbuf_set_attr(PACKETBUF_ATTR_MAX_MAC_TRANSMISSIONS, 5);
unicast_send(&tc->unicast_conn, to);

;
#line 885 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
;
stats.acksent++;
}

static void
add_packet_to_recent_packets(struct collect_conn *tc)
{
#line 896 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
if(packetbuf_datalen() > sizeof(struct data_msg_hdr)) {
recent_packets[recent_packet_ptr].eseqno =
packetbuf_attr(PACKETBUF_ATTR_EPACKET_ID);
rimeaddr_copy(&recent_packets[recent_packet_ptr].originator,
packetbuf_addr(PACKETBUF_ADDR_ESENDER));
recent_packets[recent_packet_ptr].conn = tc;
recent_packet_ptr = (recent_packet_ptr + 1) % 16;
}
}

static void
node_packet_received(struct unicast_conn *c, const rimeaddr_t *from)
{
struct collect_conn *tc = (struct collect_conn *)
((char *)c - offsetof(struct collect_conn, unicast_conn));
int i;
struct data_msg_hdr hdr;
uint8_t ackflags = 0;
struct collect_neighbor *n;

memcpy(&hdr, packetbuf_dataptr(), sizeof(struct data_msg_hdr));
#line 920 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
;
n = collect_neighbor_list_find(&tc->neighbor_list,
packetbuf_addr(PACKETBUF_ADDR_SENDER));
if(n != 0) {
collect_neighbor_update_rtmetric(n, hdr.rtmetric);
update_rtmetric(tc);
}
#line 933 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
if(packetbuf_attr(PACKETBUF_ATTR_PACKET_TYPE) ==
0) {
rimeaddr_t ack_to;
uint8_t packet_seqno;

stats.datarecv++;
#line 942 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
rimeaddr_copy(&ack_to, packetbuf_addr(PACKETBUF_ADDR_SENDER));
packet_seqno = packetbuf_attr(PACKETBUF_ATTR_PACKET_ID);
#line 947 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
if(0) {
;
}
if(packetqueue_len(&tc->send_queue) >= 3 * 8 / 4 / 2) {
ackflags |= 0x80;
}

for(i = 0; i < 16; i++) {
if(recent_packets[i].conn == tc &&
recent_packets[i].eseqno == packetbuf_attr(PACKETBUF_ATTR_EPACKET_ID) &&
rimeaddr_cmp(&recent_packets[i].originator,
packetbuf_addr(PACKETBUF_ADDR_ESENDER))) {
#line 961 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
;
send_ack(tc, &ack_to, ackflags);
stats.duprecv++;
return;
}
}
#line 975 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
if(tc->rtmetric == 0) {
struct queuebuf *q;

add_packet_to_recent_packets(tc);
#line 982 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
q = queuebuf_new_from_packetbuf();
if(q != 0) {
send_ack(tc, &ack_to, 0);
queuebuf_to_packetbuf(q);
queuebuf_free(q);
} else {
;
#line 992 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
stats.ackdrop++;
}
#line 996 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
;
#line 1003 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
packetbuf_hdrreduce(sizeof(struct data_msg_hdr));

if(packetbuf_datalen() > 0 && tc->cb->recv != 0) {
tc->cb->recv(packetbuf_addr(PACKETBUF_ADDR_ESENDER),
packetbuf_attr(PACKETBUF_ATTR_EPACKET_ID),
packetbuf_attr(PACKETBUF_ATTR_HOPS));
}
return;
} else if(packetbuf_attr(PACKETBUF_ATTR_TTL) > 1 &&
tc->rtmetric != (8 * 64 - 1)) {
#line 1021 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
if(hdr.rtmetric <= tc->rtmetric) {
ackflags |= 0x10;
}

packetbuf_set_attr(PACKETBUF_ATTR_HOPS,
packetbuf_attr(PACKETBUF_ATTR_HOPS) + 1);
packetbuf_set_attr(PACKETBUF_ATTR_TTL,
packetbuf_attr(PACKETBUF_ATTR_TTL) - 1);
#line 1031 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
;
#line 1045 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
if(packetqueue_len(&tc->send_queue) <= 3 * 8 / 4 - 4 &&
packetqueue_enqueue_packetbuf(&tc->send_queue,
(((((41666667ul)/4)+128ull)/256ull) * 32 / 8) * 2 *
packetbuf_attr(PACKETBUF_ATTR_MAX_REXMIT),
tc)) {
add_packet_to_recent_packets(tc);
send_ack(tc, &ack_to, ackflags);
send_queued_packet(tc);
} else {
send_ack(tc, &ack_to,
ackflags | 0x40 | 0x80);
;

stats.qdrop++;
}
} else if(packetbuf_attr(PACKETBUF_ATTR_TTL) <= 1) {
;
#line 1064 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
send_ack(tc, &ack_to, ackflags |
0x40 | 0x20);
stats.ttldrop++;
}
} else if(packetbuf_attr(PACKETBUF_ATTR_PACKET_TYPE) ==
1) {
;
#line 1078 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
handle_ack(tc);
stats.ackrecv++;
}
return;
}

static void
timedout(struct collect_conn *tc)
{
struct collect_neighbor *n;
;
#line 1092 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
;
#line 1097 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
tc->sending = 0;
n = collect_neighbor_list_find(&tc->neighbor_list,
&tc->current_parent);
if(n != 0) {
collect_neighbor_tx_fail(n, tc->max_rexmits);
}
update_rtmetric(tc);
send_next_packet(tc);
set_keepalive_timer(tc);
}

static void
node_packet_sent(struct unicast_conn *c, int status, int transmissions)
{
struct collect_conn *tc = (struct collect_conn *)
((char *)c - offsetof(struct collect_conn, unicast_conn));
#line 1115 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
if(packetbuf_attr(PACKETBUF_ATTR_PACKET_TYPE) ==
0) {

tc->transmissions += transmissions;
; 
;
#line 1125 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
if(tc->transmissions >= tc->max_rexmits) {
timedout(tc);
stats.timedout++;
} else {
clock_time_t time = (((((41666667ul)/4)+128ull)/256ull) * 32 / 8) / 2 + (random_rand() % ((((((41666667ul)/4)+128ull)/256ull) * 32 / 8) / 2));
;
ctimer_set(&tc->retransmission_timer, time,
retransmit_callback, tc);
}
}
}
#line 1145 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
static void
retransmit_not_sent_callback(void *ptr)
{
struct collect_conn *c = ptr;

;
c->transmissions += 2 + 1;
retransmit_callback(c);
}
#line 1162 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
static void
retransmit_callback(void *ptr)
{
struct collect_conn *c = ptr;

;
if(c->transmissions >= c->max_rexmits) {
timedout(c);
stats.timedout++;
} else {
c->sending = 0;
retransmit_current_packet(c);
}
}
#line 1215 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
static void
received_announcement(struct announcement *a, const rimeaddr_t *from,
uint16_t id, uint16_t value)
{
struct collect_conn *tc = (struct collect_conn *)
((char *)a - offsetof(struct collect_conn, announcement));
struct collect_neighbor *n;

n = collect_neighbor_list_find(&tc->neighbor_list, from);

if(n == 0) {
#line 1228 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
if(value < tc->rtmetric) {
collect_neighbor_list_add(&tc->neighbor_list, from, value);
;
#line 1233 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
}
if(value == (8 * 64 - 1) && tc->rtmetric != (8 * 64 - 1)) {
bump_advertisement(tc);
}
} else {
#line 1246 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
if(value == (8 * 64 - 1) &&
collect_neighbor_rtmetric(n) != (8 * 64 - 1)) {
bump_advertisement(tc);
}
collect_neighbor_update_rtmetric(n, value);
;
#line 1254 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
}

update_rtmetric(tc);
#line 1259 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
if(value == (8 * 64 - 1) &&
tc->rtmetric != (8 * 64 - 1)) {
if(tc->is_router) {
announcement_bump(&tc->announcement);
}
}
}
#line 1269 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
static const struct unicast_callbacks unicast_callbacks = {node_packet_received,
node_packet_sent};
#line 1276 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
void
collect_open(struct collect_conn *tc, uint16_t channels,
uint8_t is_router,
const struct collect_callbacks *cb)
{
unicast_open(&tc->unicast_conn, channels + 1, &unicast_callbacks);
channel_set_attributes(channels + 1, attributes);
tc->rtmetric = (8 * 64 - 1);
tc->cb = cb;
tc->is_router = is_router;
tc->seqno = 10;
tc->eseqno = 0;
do { (tc)-> send_queue_list = &((tc)->send_queue_list_list); (tc)->send_queue_list_list = 0; list_init((tc)-> send_queue_list); } while(0);
collect_neighbor_list_new(&tc->neighbor_list);
tc->send_queue.list = &(tc->send_queue_list);
tc->send_queue.memb = &send_queue_memb;
collect_neighbor_init();
#line 1306 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
announcement_register(&tc->announcement, channels,
received_announcement);

if(tc->is_router) {
announcement_set_value(&tc->announcement, (8 * 64 - 1));
}
#line 1315 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
ctimer_set(&tc->proactive_probing_timer, (random_rand() % ((((41666667ul)/4)+128ull)/256ull) * 60),
proactive_probing_callback, tc);

}

static void
send_keepalive(void *ptr)
{
struct collect_conn *c = ptr;

set_keepalive_timer(c);
#line 1328 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
if(c->sending == 0 && packetqueue_len(&c->send_queue) == 0) {
if(enqueue_dummy_packet(c, 8)) {
;

send_queued_packet(c);
}
}
}

static void
set_keepalive_timer(struct collect_conn *c)
{
if(c->keepalive_period != 0) {
ctimer_set(&c->keepalive_timer, (c->keepalive_period / 2) +
(random_rand() % (c->keepalive_period / 2)),
send_keepalive, c);
} else {
ctimer_stop(&c->keepalive_timer);
}
}

void
collect_set_keepalive(struct collect_conn *c, clock_time_t period)
{
c->keepalive_period = period;
set_keepalive_timer(c);
}

void
collect_close(struct collect_conn *tc)
{

announcement_remove(&tc->announcement);
unicast_close(&tc->unicast_conn);
while(packetqueue_first(&tc->send_queue) != 0) {
packetqueue_dequeue(&tc->send_queue);
}
}
#line 1370 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
void
collect_set_sink(struct collect_conn *tc, int should_be_sink)
{
if(should_be_sink) {
tc->is_router = 1;
tc->rtmetric = 0;
;
bump_advertisement(tc);
#line 1380 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
while(packetqueue_len(&tc->send_queue) > 0) {
packetqueue_dequeue(&tc->send_queue);
}
#line 1385 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
ctimer_stop(&tc->retransmission_timer);
} else {
tc->rtmetric = (8 * 64 - 1);
}

announcement_set_value(&tc->announcement, tc->rtmetric);
update_rtmetric(tc);
#line 1394 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
bump_advertisement(tc);

if(0) {
;
}
}

int
collect_send(struct collect_conn *tc, int rexmits)
{
struct collect_neighbor *n;
int ret;

packetbuf_set_attr(PACKETBUF_ATTR_EPACKET_ID, tc->eseqno);
#line 1417 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
tc->eseqno = (tc->eseqno + 1) % (1 << 8);

if(tc->eseqno == 0) {
tc->eseqno = ((int)(1 << 8)) / 2;
}
packetbuf_set_addr(PACKETBUF_ADDR_ESENDER, &rimeaddr_node_addr);
packetbuf_set_attr(PACKETBUF_ATTR_HOPS, 1);
packetbuf_set_attr(PACKETBUF_ATTR_TTL, 15);
if(rexmits > 31) {
packetbuf_set_attr(PACKETBUF_ATTR_MAX_REXMIT, 31);
} else {
packetbuf_set_attr(PACKETBUF_ATTR_MAX_REXMIT, rexmits);
}

;
#line 1436 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
if(tc->rtmetric == 0) {
packetbuf_set_attr(PACKETBUF_ATTR_HOPS, 0);
if(tc->cb->recv != 0) {
tc->cb->recv(packetbuf_addr(PACKETBUF_ADDR_ESENDER),
packetbuf_attr(PACKETBUF_ATTR_EPACKET_ID),
packetbuf_attr(PACKETBUF_ATTR_HOPS));
}
return 1;
} else {
#line 1447 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
packetbuf_hdralloc(sizeof(struct data_msg_hdr));

if(packetqueue_enqueue_packetbuf(&tc->send_queue,
(((((41666667ul)/4)+128ull)/256ull) * 32 / 8) * 2 *
packetbuf_attr(PACKETBUF_ATTR_MAX_REXMIT),
tc)) {
send_queued_packet(tc);
ret = 1;
} else {
;

;
ret = 0;
}
#line 1464 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
n = collect_neighbor_list_find(&tc->neighbor_list, &tc->parent);
if(n != 0) {
;
#line 1469 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
} else {
;
#line 1479 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
if(tc->is_router) {
announcement_set_value(&tc->announcement, (8 * 64 - 1));
announcement_bump(&tc->announcement);
}
#line 1497 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
}
}
return ret;
}

int
collect_depth(struct collect_conn *tc)
{
return tc->rtmetric;
}

const rimeaddr_t *
collect_parent(struct collect_conn *tc)
{
return &tc->current_parent;
}

void
collect_purge(struct collect_conn *tc)
{
collect_neighbor_list_purge(&tc->neighbor_list);
rimeaddr_copy(&tc->parent, &rimeaddr_null);
update_rtmetric(tc);
if(0) {
;
}
rimeaddr_copy(&tc->parent, &rimeaddr_null);
}

void
collect_print_stats(void)
{
;
#line 1535 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rime/collect.c"
}
