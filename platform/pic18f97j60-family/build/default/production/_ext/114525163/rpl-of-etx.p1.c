#include <Compiler.h>
#include <GenericTypeDefs.h>
#include <stdint.h>
#include <limits.h>
#line 16 "/home/jarojuda/GitHub/contiki/platform/pic18f97j60-family/contiki-conf.h"
typedef unsigned long clock_time_t;
#line 24 "/home/jarojuda/GitHub/contiki/platform/pic18f97j60-family/contiki-conf.h"
typedef unsigned short uip_stats_t;
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
#line 571 "/home/jarojuda/GitHub/contiki/core/net/uipopt.h"
void uip_log(char *msg);
#line 62 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
typedef union uip_ip4addr_t {
uint8_t u8[4]; 
uint16_t u16[2];
} uip_ip4addr_t;

typedef union uip_ip6addr_t {
uint8_t u8[16]; 
uint16_t u16[8];
} uip_ip6addr_t;
#line 75 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
typedef uip_ip4addr_t uip_ipaddr_t;
#line 82 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
typedef struct uip_802154_shortaddr {
uint8_t addr[2];
} uip_802154_shortaddr;

typedef struct uip_802154_longaddr {
uint8_t addr[8];
} uip_802154_longaddr;
#line 91 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
typedef struct uip_80211_addr {
uint8_t addr[6];
} uip_80211_addr;
#line 96 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
typedef struct uip_eth_addr {
uint8_t addr[6];
} uip_eth_addr;
#line 114 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
typedef uip_eth_addr uip_lladdr_t;
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
#line 71 "/home/jarojuda/GitHub/contiki/core/net/tcpip.h"
struct uip_conn;

struct tcpip_uipstate {
struct process *p;
void *state;
};
#line 84 "/home/jarojuda/GitHub/contiki/core/net/tcpip.h"
typedef struct tcpip_uipstate uip_udp_appstate_t;
typedef struct tcpip_uipstate uip_tcp_appstate_t;
typedef struct tcpip_uipstate uip_icmp6_appstate_t;
#line 88 "/home/jarojuda/GitHub/contiki/core/net/tcpip.h"
void tcpip_uipcall(void);
#line 110 "/home/jarojuda/GitHub/contiki/core/net/tcpip.h"
void tcp_attach(struct uip_conn *conn,
void *appstate);
#line 128 "/home/jarojuda/GitHub/contiki/core/net/tcpip.h"
void tcp_listen(uint16_t port);
#line 142 "/home/jarojuda/GitHub/contiki/core/net/tcpip.h"
void tcp_unlisten(uint16_t port);
#line 167 "/home/jarojuda/GitHub/contiki/core/net/tcpip.h"
struct uip_conn *tcp_connect(uip_ipaddr_t *ripaddr, uint16_t port,
void *appstate);
#line 181 "/home/jarojuda/GitHub/contiki/core/net/tcpip.h"
void tcpip_poll_tcp(struct uip_conn *conn);
#line 190 "/home/jarojuda/GitHub/contiki/core/net/tcpip.h"
struct uip_udp_conn;
#line 206 "/home/jarojuda/GitHub/contiki/core/net/tcpip.h"
void udp_attach(struct uip_udp_conn *conn,
void *appstate);
#line 228 "/home/jarojuda/GitHub/contiki/core/net/tcpip.h"
struct uip_udp_conn *udp_new(const uip_ipaddr_t *ripaddr, uint16_t port,
void *appstate);
#line 243 "/home/jarojuda/GitHub/contiki/core/net/tcpip.h"
struct uip_udp_conn *udp_broadcast_new(uint16_t port, void *appstate);
#line 274 "/home/jarojuda/GitHub/contiki/core/net/tcpip.h"
void tcpip_poll_udp(struct uip_udp_conn *conn);
#line 320 "/home/jarojuda/GitHub/contiki/core/net/tcpip.h"
extern process_event_t tcpip_event;
#line 336 "/home/jarojuda/GitHub/contiki/core/net/tcpip.h"
void tcpip_input(void);
#line 346 "/home/jarojuda/GitHub/contiki/core/net/tcpip.h"
uint8_t tcpip_output(void);
void tcpip_set_outputfunc(uint8_t (* f)(void));
#line 360 "/home/jarojuda/GitHub/contiki/core/net/tcpip.h"
extern unsigned char tcpip_do_forwarding;
#line 365 "/home/jarojuda/GitHub/contiki/core/net/tcpip.h"
extern unsigned char tcpip_is_forwarding;
#line 372 "/home/jarojuda/GitHub/contiki/core/net/tcpip.h"
extern struct process tcpip_process;
#line 238 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
void uip_init(void);
#line 245 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
void uip_setipid(uint16_t id);
#line 448 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
void uip_reass_over(void);
#line 477 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
typedef union {
uint32_t u32[((1280 + 14) + 3) / 4];
uint8_t u8[(1280 + 14)];
} uip_buf_t;

extern uip_buf_t uip_aligned_buf;
#line 512 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
void uip_listen(uint16_t port);
#line 526 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
void uip_unlisten(uint16_t port);
#line 560 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
struct uip_conn *uip_connect(uip_ipaddr_t *ripaddr, uint16_t port);
#line 600 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
void uip_send(const void *data, int len);
#line 828 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
struct uip_udp_conn *uip_udp_new(const uip_ipaddr_t *ripaddr, uint16_t rport);
#line 1217 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
uint16_t uip_htons(uint16_t val);
#line 1224 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
uint32_t uip_htonl(uint32_t val);
#line 1239 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
extern void *uip_appdata;
#line 1274 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
extern uint16_t uip_len;
#line 1279 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
extern uint8_t uip_ext_len;
#line 1297 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
struct uip_conn {
uip_ipaddr_t ripaddr; 

uint16_t lport; 
uint16_t rport; 
#line 1304 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
uint8_t rcv_nxt[4]; 

uint8_t snd_nxt[4]; 

uint16_t len; 
uint16_t mss; 

uint16_t initialmss; 

uint8_t sa; 

uint8_t sv; 

uint8_t rto; 
uint8_t tcpstateflags; 
uint8_t timer; 
uint8_t nrtx; 
#line 1324 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
uip_tcp_appstate_t appstate;
};
#line 1335 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
extern struct uip_conn *uip_conn;
#line 1338 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
extern struct uip_conn uip_conns[10];
#line 1349 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
extern uint8_t uip_acc32[4];
#line 1355 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
struct uip_udp_conn {
uip_ipaddr_t ripaddr; 
uint16_t lport; 
uint16_t rport; 
uint8_t ttl; 
#line 1362 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
uip_udp_appstate_t appstate;
};
#line 1368 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
extern struct uip_udp_conn *uip_udp_conn;
extern struct uip_udp_conn uip_udp_conns[10];

struct uip_fallback_interface {
void (*init)(void);
void (*output)(void);
};
#line 1400 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
struct uip_stats {
struct {
uip_stats_t recv; 

uip_stats_t sent; 

uip_stats_t forwarded;

uip_stats_t drop; 

uip_stats_t vhlerr; 

uip_stats_t hblenerr; 

uip_stats_t lblenerr; 

uip_stats_t fragerr; 

uip_stats_t chkerr; 

uip_stats_t protoerr; 

} ip; 
struct {
uip_stats_t recv; 
uip_stats_t sent; 
uip_stats_t drop; 
uip_stats_t typeerr; 

uip_stats_t chkerr; 

} icmp; 

struct {
uip_stats_t recv; 
uip_stats_t sent; 
uip_stats_t drop; 
uip_stats_t chkerr; 

uip_stats_t ackerr; 

uip_stats_t rst; 
uip_stats_t rexmit; 
uip_stats_t syndrop; 

uip_stats_t synrst; 

} tcp; 
#line 1450 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
struct {
uip_stats_t drop; 
uip_stats_t recv; 
uip_stats_t sent; 
uip_stats_t chkerr; 

} udp; 
#line 1465 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
};
#line 1482 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
extern uint8_t uip_flags;
#line 1534 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
void uip_process(uint8_t flag);
#line 1573 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
struct uip_tcpip_hdr {
#line 1584 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
uint8_t vhl,
tos,
len[2],
ipid[2],
ipoffset[2],
ttl,
proto;
uint16_t ipchksum;
uip_ipaddr_t srcipaddr, destipaddr;
#line 1596 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
uint16_t srcport,
destport;
uint8_t seqno[4],
ackno[4],
tcpoffset,
flags,
wnd[2];
uint16_t tcpchksum;
uint8_t urgp[2];
uint8_t optdata[4];
};
#line 1609 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
struct uip_icmpip_hdr {
#line 1620 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
uint8_t vhl,
tos,
len[2],
ipid[2],
ipoffset[2],
ttl,
proto;
uint16_t ipchksum;
uip_ipaddr_t srcipaddr, destipaddr;
#line 1632 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
uint8_t type, icode;
uint16_t icmpchksum;

uint16_t id, seqno;
uint8_t payload[1];
};
#line 1642 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
struct uip_udpip_hdr {
#line 1653 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
uint8_t vhl,
tos,
len[2],
ipid[2],
ipoffset[2],
ttl,
proto;
uint16_t ipchksum;
uip_ipaddr_t srcipaddr, destipaddr;
#line 1665 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
uint16_t srcport,
destport;
uint16_t udplen;
uint16_t udpchksum;
};
#line 1677 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
struct uip_ip_hdr {
#line 1688 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
uint8_t vhl,
tos,
len[2],
ipid[2],
ipoffset[2],
ttl,
proto;
uint16_t ipchksum;
uip_ipaddr_t srcipaddr, destipaddr;
};
#line 1722 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
typedef struct uip_ext_hdr {
uint8_t next;
uint8_t len;
} uip_ext_hdr;
#line 1728 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
typedef struct uip_hbho_hdr {
uint8_t next;
uint8_t len;
} uip_hbho_hdr;
#line 1734 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
typedef struct uip_desto_hdr {
uint8_t next;
uint8_t len;
} uip_desto_hdr;
#line 1749 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
typedef struct uip_routing_hdr {
uint8_t next;
uint8_t len;
uint8_t routing_type;
uint8_t seg_left;
} uip_routing_hdr;
#line 1757 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
typedef struct uip_frag_hdr {
uint8_t next;
uint8_t res;
uint16_t offsetresmore;
uint32_t id;
} uip_frag_hdr;
#line 1768 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
typedef struct uip_ext_hdr_opt {
uint8_t type;
uint8_t len;
} uip_ext_hdr_opt;
#line 1774 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
typedef struct uip_ext_hdr_opt_padn {
uint8_t opt_type;
uint8_t opt_len;
} uip_ext_hdr_opt_padn;
#line 1780 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
typedef struct uip_ext_hdr_opt_rpl {
uint8_t opt_type;
uint8_t opt_len;
uint8_t flags;
uint8_t instance;
uint16_t senderrank;
} uip_ext_hdr_opt_rpl;
#line 1789 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
struct uip_tcp_hdr {
uint16_t srcport;
uint16_t destport;
uint8_t seqno[4];
uint8_t ackno[4];
uint8_t tcpoffset;
uint8_t flags;
uint8_t wnd[2];
uint16_t tcpchksum;
uint8_t urgp[2];
uint8_t optdata[4];
};
#line 1803 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
struct uip_icmp_hdr {
uint8_t type, icode;
uint16_t icmpchksum;

uint16_t id, seqno;
};
#line 1813 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
struct uip_udp_hdr {
uint16_t srcport;
uint16_t destport;
uint16_t udplen;
uint16_t udpchksum;
};
#line 1925 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
extern uip_ipaddr_t uip_hostaddr, uip_netmask, uip_draddr;
extern const uip_ipaddr_t uip_broadcast_addr;
extern const uip_ipaddr_t uip_all_zeroes_addr;
#line 1933 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
extern uip_lladdr_t uip_lladdr;
#line 2153 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
uint16_t uip_chksum(uint16_t *buf, uint16_t len);
#line 2164 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
uint16_t uip_ipchksum(void);
#line 2175 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
uint16_t uip_tcpchksum(void);
#line 2186 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
uint16_t uip_udpchksum(void);
#line 2193 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
uint16_t uip_icmp6chksum(void);
#line 81 "/home/jarojuda/GitHub/contiki/core/sys/stimer.h"
struct stimer {
unsigned long start;
unsigned long interval;
};

void stimer_set(struct stimer *t, unsigned long interval);
void stimer_reset(struct stimer *t);
void stimer_restart(struct stimer *t);
int stimer_expired(struct stimer *t);
unsigned long stimer_remaining(struct stimer *t);
unsigned long stimer_elapsed(struct stimer *t);
#line 196 "/home/jarojuda/GitHub/contiki/core/net/uip-nd6.h"
typedef struct uip_nd6_ns {
uint32_t reserved;
uip_ipaddr_t tgtipaddr;
} uip_nd6_ns;
#line 206 "/home/jarojuda/GitHub/contiki/core/net/uip-nd6.h"
typedef struct uip_nd6_na {
uint8_t flagsreserved;
uint8_t reserved[3];
uip_ipaddr_t tgtipaddr;
} uip_nd6_na;
#line 217 "/home/jarojuda/GitHub/contiki/core/net/uip-nd6.h"
typedef struct uip_nd6_rs {
uint32_t reserved;
} uip_nd6_rs;
#line 226 "/home/jarojuda/GitHub/contiki/core/net/uip-nd6.h"
typedef struct uip_nd6_ra {
uint8_t cur_ttl;
uint8_t flags_reserved;
uint16_t router_lifetime;
uint32_t reachable_time;
uint32_t retrans_timer;
} uip_nd6_ra;
#line 239 "/home/jarojuda/GitHub/contiki/core/net/uip-nd6.h"
typedef struct uip_nd6_redirect {
uint32_t reserved;
uip_ipaddr_t tgtipaddress;
uip_ipaddr_t destipaddress;
} uip_nd6_redirect;
#line 252 "/home/jarojuda/GitHub/contiki/core/net/uip-nd6.h"
typedef struct uip_nd6_opt_hdr {
uint8_t type;
uint8_t len;
} uip_nd6_opt_hdr;
#line 258 "/home/jarojuda/GitHub/contiki/core/net/uip-nd6.h"
typedef struct uip_nd6_opt_prefix_info {
uint8_t type;
uint8_t len;
uint8_t preflen;
uint8_t flagsreserved1;
uint32_t validlt;
uint32_t preferredlt;
uint32_t reserved2;
uip_ipaddr_t prefix;
} uip_nd6_opt_prefix_info ;
#line 270 "/home/jarojuda/GitHub/contiki/core/net/uip-nd6.h"
typedef struct uip_nd6_opt_mtu {
uint8_t type;
uint8_t len;
uint16_t reserved;
uint32_t mtu;
} uip_nd6_opt_mtu;
#line 278 "/home/jarojuda/GitHub/contiki/core/net/uip-nd6.h"
typedef struct uip_nd6_opt_redirected_hdr {
uint8_t type;
uint8_t len;
uint8_t reserved[6];
} uip_nd6_opt_redirected_hdr;
#line 310 "/home/jarojuda/GitHub/contiki/core/net/uip-nd6.h"
void
uip_nd6_ns_input(void);
#line 333 "/home/jarojuda/GitHub/contiki/core/net/uip-nd6.h"
void
uip_nd6_ns_output(uip_ipaddr_t *src, uip_ipaddr_t *dest, uip_ipaddr_t *tgt);
#line 353 "/home/jarojuda/GitHub/contiki/core/net/uip-nd6.h"
void
uip_nd6_na_input(void);
#line 362 "/home/jarojuda/GitHub/contiki/core/net/uip-nd6.h"
void uip_nd6_rs_input(void);
#line 369 "/home/jarojuda/GitHub/contiki/core/net/uip-nd6.h"
void uip_nd6_ra_output(uip_ipaddr_t *dest);
#line 384 "/home/jarojuda/GitHub/contiki/core/net/uip-nd6.h"
void uip_nd6_rs_output(void);
#line 396 "/home/jarojuda/GitHub/contiki/core/net/uip-nd6.h"
void
uip_nd6_ra_input(void);
#line 401 "/home/jarojuda/GitHub/contiki/core/net/uip-nd6.h"
void
uip_appserver_addr_get(uip_ipaddr_t *ipaddr);
#line 35 "/home/jarojuda/GitHub/contiki/core/net/uip-ds6-route.h"
void uip_ds6_route_init(void);
#line 47 "/home/jarojuda/GitHub/contiki/core/net/uip-ds6-route.h"
typedef void (* uip_ds6_notification_callback)(int event,
uip_ipaddr_t *route,
uip_ipaddr_t *nexthop,
int num_routes);
struct uip_ds6_notification {
struct uip_ds6_notification *next;
uip_ds6_notification_callback callback;
};

void uip_ds6_notification_add(struct uip_ds6_notification *n,
uip_ds6_notification_callback c);
#line 77 "/home/jarojuda/GitHub/contiki/core/net/uip-ds6-route.h"
typedef struct rpl_route_entry {
uint32_t lifetime;
uint32_t saved_lifetime;
void *dag;
uint8_t learned_from;
} rpl_route_entry_t;
#line 88 "/home/jarojuda/GitHub/contiki/core/net/uip-ds6-route.h"
typedef struct uip_ds6_route {
struct uip_ds6_route *next;
uip_ipaddr_t ipaddr;
uip_ipaddr_t nexthop;
uint8_t length;
uint8_t metric;
rpl_route_entry_t state;
} uip_ds6_route_t;
#line 102 "/home/jarojuda/GitHub/contiki/core/net/uip-ds6-route.h"
typedef struct uip_ds6_defrt {
struct uip_ds6_defrt *next;
uip_ipaddr_t ipaddr;
struct stimer lifetime;
uint8_t isinfinite;
} uip_ds6_defrt_t;
#line 111 "/home/jarojuda/GitHub/contiki/core/net/uip-ds6-route.h"
uip_ds6_defrt_t *uip_ds6_defrt_add(uip_ipaddr_t *ipaddr,
unsigned long interval);
void uip_ds6_defrt_rm(uip_ds6_defrt_t *defrt);
uip_ds6_defrt_t *uip_ds6_defrt_lookup(uip_ipaddr_t *ipaddr);
uip_ipaddr_t *uip_ds6_defrt_choose(void);

void uip_ds6_defrt_periodic(void);
#line 123 "/home/jarojuda/GitHub/contiki/core/net/uip-ds6-route.h"
uip_ds6_route_t *uip_ds6_route_lookup(uip_ipaddr_t *destipaddr);
uip_ds6_route_t *uip_ds6_route_add(uip_ipaddr_t *ipaddr, uint8_t length,
uip_ipaddr_t *next_hop, uint8_t metric);
void uip_ds6_route_rm(uip_ds6_route_t *route);
void uip_ds6_route_rm_by_nexthop(uip_ipaddr_t *nexthop);

int uip_ds6_route_num_routes(void);
uip_ds6_route_t *uip_ds6_route_list_head(void);
#line 159 "/home/jarojuda/GitHub/contiki/core/net/uip-ds6.h"
typedef struct uip_ds6_nbr {
uint8_t isused;
uip_ipaddr_t ipaddr;
uip_lladdr_t lladdr;
struct stimer reachable;
struct stimer sendns;
clock_time_t last_lookup;
uint8_t nscount;
uint8_t isrouter;
uint8_t state;
#line 173 "/home/jarojuda/GitHub/contiki/core/net/uip-ds6.h"
} uip_ds6_nbr_t;
#line 177 "/home/jarojuda/GitHub/contiki/core/net/uip-ds6.h"
typedef struct uip_ds6_prefix {
uint8_t isused;
uip_ipaddr_t ipaddr;
uint8_t length;
uint8_t advertise;
uint32_t vlifetime;
uint32_t plifetime;
uint8_t l_a_reserved; 
} uip_ds6_prefix_t;
#line 197 "/home/jarojuda/GitHub/contiki/core/net/uip-ds6.h"
typedef struct uip_ds6_addr {
uint8_t isused;
uip_ipaddr_t ipaddr;
uint8_t state;
uint8_t type;
uint8_t isinfinite;
struct stimer vlifetime;

struct timer dadtimer;
uint8_t dadnscount;
} uip_ds6_addr_t;
#line 211 "/home/jarojuda/GitHub/contiki/core/net/uip-ds6.h"
typedef struct uip_ds6_aaddr {
uint8_t isused;
uip_ipaddr_t ipaddr;
} uip_ds6_aaddr_t;
#line 217 "/home/jarojuda/GitHub/contiki/core/net/uip-ds6.h"
typedef struct uip_ds6_maddr {
uint8_t isused;
uip_ipaddr_t ipaddr;
} uip_ds6_maddr_t;
#line 232 "/home/jarojuda/GitHub/contiki/core/net/uip-ds6.h"
typedef struct uip_ds6_netif {
uint32_t link_mtu;
uint8_t cur_hop_limit;
uint32_t base_reachable_time; 
uint32_t reachable_time; 
uint32_t retrans_timer; 
uint8_t maxdadns;
uip_ds6_addr_t addr_list[1 + 2];
uip_ds6_aaddr_t aaddr_list[1 + 2 - 1 + 0];
uip_ds6_maddr_t maddr_list[2 + 1 + 2 + 0];
} uip_ds6_netif_t;
#line 245 "/home/jarojuda/GitHub/contiki/core/net/uip-ds6.h"
typedef struct uip_ds6_element {
uint8_t isused;
uip_ipaddr_t ipaddr;
} uip_ds6_element_t;
#line 252 "/home/jarojuda/GitHub/contiki/core/net/uip-ds6.h"
extern uip_ds6_netif_t uip_ds6_if;
extern struct etimer uip_ds6_timer_periodic;
#line 256 "/home/jarojuda/GitHub/contiki/core/net/uip-ds6.h"
extern uip_ds6_prefix_t uip_ds6_prefix_list[1 + 2];
#line 264 "/home/jarojuda/GitHub/contiki/core/net/uip-ds6.h"
void uip_ds6_init(void);
#line 267 "/home/jarojuda/GitHub/contiki/core/net/uip-ds6.h"
void uip_ds6_periodic(void);
#line 271 "/home/jarojuda/GitHub/contiki/core/net/uip-ds6.h"
uint8_t uip_ds6_list_loop(uip_ds6_element_t *list, uint8_t size,
uint16_t elementsize, uip_ipaddr_t *ipaddr,
uint8_t ipaddrlen,
uip_ds6_element_t **out_element);
#line 278 "/home/jarojuda/GitHub/contiki/core/net/uip-ds6.h"
uip_ds6_nbr_t *uip_ds6_nbr_add(uip_ipaddr_t *ipaddr, uip_lladdr_t *lladdr,
uint8_t isrouter, uint8_t state);
void uip_ds6_nbr_rm(uip_ds6_nbr_t *nbr);
uip_ds6_nbr_t *uip_ds6_nbr_lookup(uip_ipaddr_t *ipaddr);
uip_ds6_nbr_t *uip_ds6_nbr_ll_lookup(uip_lladdr_t *lladdr);
#line 290 "/home/jarojuda/GitHub/contiki/core/net/uip-ds6.h"
uip_ds6_prefix_t *uip_ds6_prefix_add(uip_ipaddr_t *ipaddr, uint8_t length,
uint8_t advertise, uint8_t flags,
unsigned long vtime,
unsigned long ptime);
void uip_ds6_prefix_rm(uip_ds6_prefix_t *prefix);
uip_ds6_prefix_t *uip_ds6_prefix_lookup(uip_ipaddr_t *ipaddr,
uint8_t ipaddrlen);
uint8_t uip_ds6_is_addr_onlink(uip_ipaddr_t *ipaddr);
#line 307 "/home/jarojuda/GitHub/contiki/core/net/uip-ds6.h"
uip_ds6_addr_t *uip_ds6_addr_add(uip_ipaddr_t *ipaddr,
unsigned long vlifetime, uint8_t type);
void uip_ds6_addr_rm(uip_ds6_addr_t *addr);
uip_ds6_addr_t *uip_ds6_addr_lookup(uip_ipaddr_t *ipaddr);
uip_ds6_addr_t *uip_ds6_get_link_local(int8_t state);
uip_ds6_addr_t *uip_ds6_get_global(int8_t state);
#line 318 "/home/jarojuda/GitHub/contiki/core/net/uip-ds6.h"
uip_ds6_maddr_t *uip_ds6_maddr_add(const uip_ipaddr_t *ipaddr);
void uip_ds6_maddr_rm(uip_ds6_maddr_t *maddr);
uip_ds6_maddr_t *uip_ds6_maddr_lookup(const uip_ipaddr_t *ipaddr);
#line 326 "/home/jarojuda/GitHub/contiki/core/net/uip-ds6.h"
uip_ds6_aaddr_t *uip_ds6_aaddr_add(uip_ipaddr_t *ipaddr);
void uip_ds6_aaddr_rm(uip_ds6_aaddr_t *aaddr);
uip_ds6_aaddr_t *uip_ds6_aaddr_lookup(uip_ipaddr_t *ipaddr);
#line 334 "/home/jarojuda/GitHub/contiki/core/net/uip-ds6.h"
void uip_ds6_set_addr_iid(uip_ipaddr_t *ipaddr, uip_lladdr_t *lladdr);
#line 337 "/home/jarojuda/GitHub/contiki/core/net/uip-ds6.h"
uint8_t get_match_length(uip_ipaddr_t *src, uip_ipaddr_t *dst);
#line 341 "/home/jarojuda/GitHub/contiki/core/net/uip-ds6.h"
void uip_ds6_dad(uip_ds6_addr_t *ifaddr);
#line 344 "/home/jarojuda/GitHub/contiki/core/net/uip-ds6.h"
int uip_ds6_dad_failed(uip_ds6_addr_t *ifaddr);
#line 348 "/home/jarojuda/GitHub/contiki/core/net/uip-ds6.h"
void uip_ds6_select_src(uip_ipaddr_t *src, uip_ipaddr_t *dst);
#line 353 "/home/jarojuda/GitHub/contiki/core/net/uip-ds6.h"
void uip_ds6_send_ra_sollicited(void);
#line 356 "/home/jarojuda/GitHub/contiki/core/net/uip-ds6.h"
void uip_ds6_send_ra_periodic(void);
#line 364 "/home/jarojuda/GitHub/contiki/core/net/uip-ds6.h"
uint32_t uip_ds6_compute_reachable_time(void); 
#line 52 "/home/jarojuda/GitHub/contiki/core/net/rpl/rpl.h"
typedef uint16_t rpl_rank_t;
typedef uint16_t rpl_ocp_t;
#line 88 "/home/jarojuda/GitHub/contiki/core/net/rpl/rpl.h"
struct rpl_metric_object_energy {
uint8_t flags;
uint8_t energy_est;
};
#line 94 "/home/jarojuda/GitHub/contiki/core/net/rpl/rpl.h"
struct rpl_metric_container {
uint8_t type;
uint8_t flags;
uint8_t aggr;
uint8_t prec;
uint8_t length;
union metric_object {
struct rpl_metric_object_energy energy;
uint16_t etx;
} obj;
};
typedef struct rpl_metric_container rpl_metric_container_t;

struct rpl_instance;
struct rpl_dag;

struct rpl_parent {
struct rpl_parent *next;
struct rpl_dag *dag;
rpl_metric_container_t mc;
uip_ipaddr_t addr;
rpl_rank_t rank;
uint8_t link_metric;
uint8_t dtsn;
uint8_t updated;
};
typedef struct rpl_parent rpl_parent_t;
#line 123 "/home/jarojuda/GitHub/contiki/core/net/rpl/rpl.h"
struct rpl_prefix {
uip_ipaddr_t prefix;
uint32_t lifetime;
uint8_t length;
uint8_t flags;
};
typedef struct rpl_prefix rpl_prefix_t;
#line 132 "/home/jarojuda/GitHub/contiki/core/net/rpl/rpl.h"
struct rpl_dag {
uip_ipaddr_t dag_id;
rpl_rank_t min_rank; 
uint8_t version;
uint8_t grounded;
uint8_t preference;
uint8_t used;

uint8_t joined;
rpl_parent_t *preferred_parent;
rpl_rank_t rank;
struct rpl_instance *instance;
void *parents_list; list_t parents;
rpl_prefix_t prefix_info;
};
typedef struct rpl_dag rpl_dag_t;
typedef struct rpl_instance rpl_instance_t;
#line 185 "/home/jarojuda/GitHub/contiki/core/net/rpl/rpl.h"
struct rpl_of {
void (*reset)(struct rpl_dag *);
void (*parent_state_callback)(rpl_parent_t *, int, int);
rpl_parent_t *(*best_parent)(rpl_parent_t *, rpl_parent_t *);
rpl_dag_t *(*best_dag)(rpl_dag_t *, rpl_dag_t *);
rpl_rank_t (*calculate_rank)(rpl_parent_t *, rpl_rank_t);
void (*update_metric_container)( rpl_instance_t *);
rpl_ocp_t ocp;
};
typedef struct rpl_of rpl_of_t;
#line 197 "/home/jarojuda/GitHub/contiki/core/net/rpl/rpl.h"
struct rpl_instance {

rpl_metric_container_t mc;
rpl_of_t *of;
rpl_dag_t *current_dag;
rpl_dag_t dag_table[2];

uip_ds6_defrt_t *def_route;
uint8_t instance_id;
uint8_t used;
uint8_t dtsn_out;
uint8_t mop;
uint8_t dio_intdoubl;
uint8_t dio_intmin;
uint8_t dio_redundancy;
uint8_t default_lifetime;
uint8_t dio_intcurrent;
uint8_t dio_send; 
uint8_t dio_counter;
rpl_rank_t max_rankinc;
rpl_rank_t min_hoprankinc;
uint16_t lifetime_unit; 
#line 224 "/home/jarojuda/GitHub/contiki/core/net/rpl/rpl.h"
clock_time_t dio_next_delay; 
struct ctimer dio_timer;
struct ctimer dao_timer;
};
#line 231 "/home/jarojuda/GitHub/contiki/core/net/rpl/rpl.h"
void rpl_init(void);
void uip_rpl_input(void);
rpl_dag_t *rpl_set_root(uint8_t instance_id, uip_ipaddr_t * dag_id);
int rpl_set_prefix(rpl_dag_t *dag, uip_ipaddr_t *prefix, unsigned len);
int rpl_repair_root(uint8_t instance_id);
int rpl_set_default_route(rpl_instance_t *instance, uip_ipaddr_t *from);
rpl_dag_t *rpl_get_any_dag(void);
rpl_instance_t *rpl_get_instance(uint8_t instance_id);
void rpl_update_header_empty(void);
int rpl_update_header_final(uip_ipaddr_t *addr);
int rpl_verify_header(int);
void rpl_remove_header(void);
uint8_t rpl_invert_header(void);
#line 219 "/home/jarojuda/GitHub/contiki/core/net/rpl/rpl-private.h"
struct rpl_dio {
uip_ipaddr_t dag_id;
rpl_ocp_t ocp;
rpl_rank_t rank;
uint8_t grounded;
uint8_t mop;
uint8_t preference;
uint8_t version;
uint8_t instance_id;
uint8_t dtsn;
uint8_t dag_intdoubl;
uint8_t dag_intmin;
uint8_t dag_redund;
uint8_t default_lifetime;
uint16_t lifetime_unit;
rpl_rank_t dag_max_rankinc;
rpl_rank_t dag_min_hoprankinc;
rpl_prefix_t destination_prefix;
rpl_prefix_t prefix_info;
struct rpl_metric_container mc;
};
typedef struct rpl_dio rpl_dio_t;
#line 266 "/home/jarojuda/GitHub/contiki/core/net/rpl/rpl-private.h"
extern rpl_instance_t instance_table[];
extern rpl_instance_t *default_instance;
#line 270 "/home/jarojuda/GitHub/contiki/core/net/rpl/rpl-private.h"
void dis_output(uip_ipaddr_t *addr);
void dio_output(rpl_instance_t *, uip_ipaddr_t *uc_addr);
void dao_output(rpl_parent_t *, uint8_t lifetime);
void dao_ack_output(rpl_instance_t *, uip_ipaddr_t *, uint8_t);
#line 276 "/home/jarojuda/GitHub/contiki/core/net/rpl/rpl-private.h"
void rpl_join_dag(uip_ipaddr_t *from, rpl_dio_t *dio);
void rpl_join_instance(uip_ipaddr_t *from, rpl_dio_t *dio);
void rpl_local_repair(rpl_instance_t *instance);
void rpl_process_dio(uip_ipaddr_t *, rpl_dio_t *);
int rpl_process_parent_event(rpl_instance_t *, rpl_parent_t *);
#line 283 "/home/jarojuda/GitHub/contiki/core/net/rpl/rpl-private.h"
rpl_dag_t *rpl_alloc_dag(uint8_t, uip_ipaddr_t *);
rpl_instance_t *rpl_alloc_instance(uint8_t);
void rpl_free_dag(rpl_dag_t *);
void rpl_free_instance(rpl_instance_t *);
#line 289 "/home/jarojuda/GitHub/contiki/core/net/rpl/rpl-private.h"
rpl_parent_t *rpl_add_parent(rpl_dag_t *, rpl_dio_t *dio, uip_ipaddr_t *);
rpl_parent_t *rpl_find_parent(rpl_dag_t *, uip_ipaddr_t *);
rpl_parent_t *rpl_find_parent_any_dag(rpl_instance_t *instance, uip_ipaddr_t *addr);
void rpl_nullify_parent(rpl_dag_t *, rpl_parent_t *);
void rpl_remove_parent(rpl_dag_t *, rpl_parent_t *);
void rpl_move_parent(rpl_dag_t *dag_src, rpl_dag_t *dag_dst, rpl_parent_t *parent);
rpl_parent_t *rpl_select_parent(rpl_dag_t *dag);
rpl_dag_t *rpl_select_dag(rpl_instance_t *instance,rpl_parent_t *parent);
void rpl_recalculate_ranks(void);
#line 300 "/home/jarojuda/GitHub/contiki/core/net/rpl/rpl-private.h"
void rpl_remove_routes(rpl_dag_t *dag);
void rpl_remove_routes_by_nexthop(uip_ipaddr_t *nexthop, rpl_dag_t *dag);
uip_ds6_route_t *rpl_add_route(rpl_dag_t *dag, uip_ipaddr_t *prefix,
int prefix_len, uip_ipaddr_t *next_hop);
void rpl_purge_routes(void);
#line 307 "/home/jarojuda/GitHub/contiki/core/net/rpl/rpl-private.h"
rpl_of_t *rpl_find_of(rpl_ocp_t);
#line 310 "/home/jarojuda/GitHub/contiki/core/net/rpl/rpl-private.h"
void rpl_schedule_dao(rpl_instance_t *);
void rpl_reset_dio_timer(rpl_instance_t *);
void rpl_reset_periodic_timer(void);
#line 315 "/home/jarojuda/GitHub/contiki/core/net/rpl/rpl-private.h"
void rpl_poison_routes(rpl_dag_t *, rpl_parent_t *);
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
#line 50 "/home/jarojuda/GitHub/contiki/core/net/neighbor-attr.h"
struct neighbor_addr {
struct neighbor_addr *next;
rimeaddr_t addr;
uint16_t time;
uint16_t index;
};
#line 60 "/home/jarojuda/GitHub/contiki/core/net/neighbor-attr.h"
struct neighbor_attr {
struct neighbor_attr *next;
uint16_t size;
void *default_value;
void *data;
};
#line 97 "/home/jarojuda/GitHub/contiki/core/net/neighbor-attr.h"
int neighbor_attr_register(struct neighbor_attr *);
#line 102 "/home/jarojuda/GitHub/contiki/core/net/neighbor-attr.h"
struct neighbor_addr *neighbor_attr_list_neighbors(void);
#line 108 "/home/jarojuda/GitHub/contiki/core/net/neighbor-attr.h"
int neighbor_attr_has_neighbor(const rimeaddr_t *addr);
#line 115 "/home/jarojuda/GitHub/contiki/core/net/neighbor-attr.h"
int neighbor_attr_add_neighbor(const rimeaddr_t *addr);
#line 121 "/home/jarojuda/GitHub/contiki/core/net/neighbor-attr.h"
int neighbor_attr_remove_neighbor(const rimeaddr_t *addr);
#line 134 "/home/jarojuda/GitHub/contiki/core/net/neighbor-attr.h"
void *neighbor_attr_get_data(struct neighbor_attr *, const rimeaddr_t *addr);
#line 144 "/home/jarojuda/GitHub/contiki/core/net/neighbor-attr.h"
int neighbor_attr_set_data(struct neighbor_attr *, const rimeaddr_t *addr,
void *data);
#line 151 "/home/jarojuda/GitHub/contiki/core/net/neighbor-attr.h"
void neighbor_attr_set_timeout(uint16_t);
#line 156 "/home/jarojuda/GitHub/contiki/core/net/neighbor-attr.h"
uint16_t neighbor_attr_get_timeout(void);
#line 161 "/home/jarojuda/GitHub/contiki/core/net/neighbor-attr.h"
void neighbor_attr_tick(const rimeaddr_t *);
#line 54 "/home/jarojuda/GitHub/contiki/core/net/neighbor-info.h"
typedef void (*neighbor_info_subscriber_t)(const rimeaddr_t *, int known, int etx);
typedef uint8_t link_metric_t;

extern struct neighbor_attr attr_etx;
extern struct neighbor_attr attr_timestamp;
#line 68 "/home/jarojuda/GitHub/contiki/core/net/neighbor-info.h"
void neighbor_info_packet_sent(int status, int numtx);
#line 77 "/home/jarojuda/GitHub/contiki/core/net/neighbor-info.h"
void neighbor_info_packet_received(void);
#line 84 "/home/jarojuda/GitHub/contiki/core/net/neighbor-info.h"
int neighbor_info_subscribe(neighbor_info_subscriber_t);
#line 92 "/home/jarojuda/GitHub/contiki/core/net/neighbor-info.h"
link_metric_t neighbor_info_get_metric(const rimeaddr_t *addr);
#include <stdio.h>
#line 47 "/home/jarojuda/GitHub/contiki/core/net/uip-debug.h"
void uip_debug_ipaddr_print(const uip_ipaddr_t *addr);
void uip_debug_lladdr_print(const uip_lladdr_t *addr);
#line 52 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rpl/rpl-of-etx.c"
static void reset(rpl_dag_t *);
static void parent_state_callback(rpl_parent_t *, int, int);
static rpl_parent_t *best_parent(rpl_parent_t *, rpl_parent_t *);
static rpl_dag_t *best_dag(rpl_dag_t *, rpl_dag_t *);
static rpl_rank_t calculate_rank(rpl_parent_t *, rpl_rank_t);
static void update_metric_container(rpl_instance_t *);

rpl_of_t rpl_of_etx = {
reset,
parent_state_callback,
best_parent,
best_dag,
calculate_rank,
update_metric_container,
1
};
#line 81 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rpl/rpl-of-etx.c"
typedef uint16_t rpl_path_metric_t;

static rpl_path_metric_t
calculate_path_metric(rpl_parent_t *p)
{
if(p == 0 || (p->mc.obj.etx == 0 && p->rank > (p->dag->instance)->min_hoprankinc)) {
return 100 * 128;
} else {
long etx = p->link_metric;
etx = (etx * 128) / 16;
return p->mc.obj.etx + (uint16_t) etx;
}
}

static void
reset(rpl_dag_t *sag)
{
}

static void
parent_state_callback(rpl_parent_t *parent, int known, int etx)
{
}

static rpl_rank_t
calculate_rank(rpl_parent_t *p, rpl_rank_t base_rank)
{
rpl_rank_t new_rank;
rpl_rank_t rank_increase;

if(p == 0) {
if(base_rank == 0) {
return 0xffff;
}
rank_increase = ((((5) * 16)) / 16) * 256;
} else {

rank_increase = ((p->link_metric * p->dag->instance->min_hoprankinc) / 16);
if(base_rank == 0) {
base_rank = p->rank;
}
}

if(0xffff - base_rank < rank_increase) {

new_rank = 0xffff;
} else {
#line 130 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rpl/rpl-of-etx.c"
new_rank = base_rank + rank_increase;
}

return new_rank;
}

static rpl_dag_t *
best_dag(rpl_dag_t *d1, rpl_dag_t *d2)
{
if(d1->grounded != d2->grounded) {
return d1->grounded ? d1 : d2;
}

if(d1->preference != d2->preference) {
return d1->preference > d2->preference ? d1 : d2;
}

return d1->rank < d2->rank ? d1 : d2;
}

static rpl_parent_t *
best_parent(rpl_parent_t *p1, rpl_parent_t *p2)
{
rpl_dag_t *dag;
rpl_path_metric_t min_diff;
rpl_path_metric_t p1_metric;
rpl_path_metric_t p2_metric;

dag = p1->dag; 

min_diff = 128 /
2;

p1_metric = calculate_path_metric(p1);
p2_metric = calculate_path_metric(p2);
#line 167 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rpl/rpl-of-etx.c"
if(p1 == dag->preferred_parent || p2 == dag->preferred_parent) {
if(p1_metric < p2_metric + min_diff &&
p1_metric > p2_metric - min_diff) {
;
#line 174 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rpl/rpl-of-etx.c"
return dag->preferred_parent;
}
}

return p1_metric < p2_metric ? p1 : p2;
}

static void
update_metric_container(rpl_instance_t *instance)
{
rpl_path_metric_t path_metric;
rpl_dag_t *dag;
#line 190 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rpl/rpl-of-etx.c"
instance->mc.flags = 0x8;
instance->mc.aggr = 0;
instance->mc.prec = 0;

dag = instance->current_dag;

if (!dag->joined) {

return;
}

if(dag->rank == (instance)->min_hoprankinc) {
path_metric = 0;
} else {
path_metric = calculate_path_metric(dag->preferred_parent);
}
#line 209 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rpl/rpl-of-etx.c"
instance->mc.type = 7;
instance->mc.length = sizeof(instance->mc.obj.etx);
instance->mc.obj.etx = path_metric;

;
#line 236 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/rpl/rpl-of-etx.c"
}