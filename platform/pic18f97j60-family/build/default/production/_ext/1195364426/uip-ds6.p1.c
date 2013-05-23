#include <string.h>
#include <stdlib.h>
#include <stddef.h>
#line 39 "/home/jarojuda/GitHub/contiki/core/lib/random.h"
void random_init(unsigned short seed);
#line 46 "/home/jarojuda/GitHub/contiki/core/lib/random.h"
unsigned short random_rand(void);
#include <Compiler.h>
#include <GenericTypeDefs.h>
#include <stdint.h>
#include <limits.h>
#line 16 "/home/jarojuda/GitHub/contiki/platform/pic18f97j60-family/contiki-conf.h"
typedef unsigned long clock_time_t;
#line 24 "/home/jarojuda/GitHub/contiki/platform/pic18f97j60-family/contiki-conf.h"
typedef unsigned short uip_stats_t;
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
#line 6 "/home/jarojuda/GitHub/contiki/core/net/uip-packetqueue.h"
struct uip_packetqueue_handle;

struct uip_packetqueue_packet {
struct uip_ds6_queued_packet *next;
uint8_t queue_buf[(1280 + 14) - 14];
uint16_t queue_buf_len;
struct ctimer lifetimer;
struct uip_packetqueue_handle *handle;
};

struct uip_packetqueue_handle {
struct uip_packetqueue_packet *packet;
};

void uip_packetqueue_new(struct uip_packetqueue_handle *handle);
#line 23 "/home/jarojuda/GitHub/contiki/core/net/uip-packetqueue.h"
struct uip_packetqueue_packet *
uip_packetqueue_alloc(struct uip_packetqueue_handle *handle, clock_time_t lifetime);
#line 27 "/home/jarojuda/GitHub/contiki/core/net/uip-packetqueue.h"
void
uip_packetqueue_free(struct uip_packetqueue_handle *handle);

uint8_t *uip_packetqueue_buf(struct uip_packetqueue_handle *h);
uint16_t uip_packetqueue_buflen(struct uip_packetqueue_handle *h);
void uip_packetqueue_set_buflen(struct uip_packetqueue_handle *h, uint16_t len);
