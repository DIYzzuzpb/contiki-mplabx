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
#line 238 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
void uip_init(void);
#line 245 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
void uip_setipid(uint16_t id);
#line 448 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
void uip_reass_over(void);
#line 477 "/home/jarojuda/GitHub/contiki/core/net/uip.h"
typedef union {
uint32_t u32[((128) + 3) / 4];
uint8_t u8[(128)];
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
extern struct uip_conn uip_conns[(8)];
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
#line 101 "/home/jarojuda/GitHub/contiki/core/net/uip-icmp6.h"
typedef struct uip_icmp6_error{
uint32_t param;
} uip_icmp6_error;
#line 113 "/home/jarojuda/GitHub/contiki/core/net/uip-icmp6.h"
void
uip_icmp6_echo_request_input(void);
#line 122 "/home/jarojuda/GitHub/contiki/core/net/uip-icmp6.h"
void
uip_icmp6_error_output(uint8_t type, uint8_t code, uint32_t param); 
#line 132 "/home/jarojuda/GitHub/contiki/core/net/uip-icmp6.h"
void
uip_icmp6_send(uip_ipaddr_t *dest, int type, int code, int payload_len);
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
#include <limits.h>
#include <string.h>
#include <stdio.h>
#line 47 "/home/jarojuda/GitHub/contiki/core/net/uip-debug.h"
void uip_debug_ipaddr_print(const uip_ipaddr_t *addr);
void uip_debug_lladdr_print(const uip_lladdr_t *addr);
