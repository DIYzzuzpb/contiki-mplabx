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
#line 61 "/home/jarojuda/GitHub/contiki/core/net/uip_arp.h"
struct uip_eth_hdr {
struct uip_eth_addr dest;
struct uip_eth_addr src;
uint16_t type;
};
#line 74 "/home/jarojuda/GitHub/contiki/core/net/uip_arp.h"
void uip_arp_init(void);
#line 90 "/home/jarojuda/GitHub/contiki/core/net/uip_arp.h"
void uip_arp_arpin(void);
#line 102 "/home/jarojuda/GitHub/contiki/core/net/uip_arp.h"
void uip_arp_out(void);
#line 106 "/home/jarojuda/GitHub/contiki/core/net/uip_arp.h"
void uip_arp_timer(void);
#line 83 "/home/jarojuda/GitHub/contiki/core/net/uip_arch.h"
void uip_add32(uint8_t *op32, uint16_t op16);
#line 104 "/home/jarojuda/GitHub/contiki/core/net/uip_arch.h"
uint16_t uip_chksum(uint16_t *buf, uint16_t len);
#line 115 "/home/jarojuda/GitHub/contiki/core/net/uip_arch.h"
uint16_t uip_ipchksum(void);
#line 130 "/home/jarojuda/GitHub/contiki/core/net/uip_arch.h"
uint16_t uip_tcpchksum(void);

uint16_t uip_udpchksum(void);
#include <string.h>
#line 105 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
uip_ipaddr_t uip_hostaddr, uip_draddr, uip_netmask;
#line 108 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
const uip_ipaddr_t uip_broadcast_addr =
#line 113 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
{ { 0xff, 0xff, 0xff, 0xff } };
const uip_ipaddr_t uip_all_zeroes_addr = { { 0x0, } };
#line 125 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
uip_lladdr_t uip_lladdr = {{0,0,0,0,0,0}};
#line 129 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
uip_buf_t uip_aligned_buf;

void *uip_appdata; 

void *uip_sappdata; 
#line 143 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
uint16_t uip_len, uip_slen;
#line 148 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
uint8_t uip_flags; 
#line 151 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
struct uip_conn *uip_conn; 
#line 154 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
struct uip_conn uip_conns[10];
#line 157 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
uint16_t uip_listenports[20];
#line 161 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
struct uip_udp_conn *uip_udp_conn;
struct uip_udp_conn uip_udp_conns[10];
#line 165 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
static uint16_t ipid; 
#line 169 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
void uip_setipid(uint16_t id) { ipid = id; }

static uint8_t iss[4]; 
#line 175 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
static uint16_t lastport; 
#line 180 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
uint8_t uip_acc32[4];
static uint8_t c, opt;
static uint16_t tmp16;
#line 239 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
void
uip_add32(uint8_t *op32, uint16_t op16)
{
uip_acc32[3] = op32[3] + (op16 & 0xff);
uip_acc32[2] = op32[2] + (op16 >> 8);
uip_acc32[1] = op32[1];
uip_acc32[0] = op32[0];

if(uip_acc32[2] < (op16 >> 8)) {
++uip_acc32[1];
if(uip_acc32[1] == 0) {
++uip_acc32[0];
}
}
#line 255 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if(uip_acc32[3] < (op16 & 0xff)) {
++uip_acc32[2];
if(uip_acc32[2] == 0) {
++uip_acc32[1];
if(uip_acc32[1] == 0) {
++uip_acc32[0];
}
}
}
}
#line 270 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
static uint16_t
chksum(uint16_t sum, const uint8_t *data, uint16_t len)
{
uint16_t t;
const uint8_t *dataptr;
const uint8_t *last_byte;

dataptr = data;
last_byte = data + len - 1;

while(dataptr < last_byte) {	
t = (dataptr[0] << 8) + dataptr[1];
sum += t;
if(sum < t) {
sum++; 
}
dataptr += 2;
}

if(dataptr == last_byte) {
t = (dataptr[0] << 8) + 0;
sum += t;
if(sum < t) {
sum++; 
}
}
#line 298 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
return sum;
}

uint16_t
uip_chksum(uint16_t *data, uint16_t len)
{
return uip_htons(chksum(0, (uint8_t *)data, len));
}
#line 308 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
uint16_t
uip_ipchksum(void)
{
uint16_t sum;

sum = chksum(0, &(uip_aligned_buf.u8)[14], 20);
;
return (sum == 0) ? 0xffff : uip_htons(sum);
}
#line 319 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
static uint16_t
upper_layer_chksum(uint8_t proto)
{
uint16_t upper_layer_len;
uint16_t sum;
#line 328 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
upper_layer_len = (((uint16_t)(((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->len[0]) << 8) + ((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->len[1]) - 20;
#line 334 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
sum = upper_layer_len + proto;

sum = chksum(sum, (uint8_t *)&((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->srcipaddr, 2 * sizeof(uip_ipaddr_t));
#line 339 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
sum = chksum(sum, &(uip_aligned_buf.u8)[20 + 14],
upper_layer_len);

return (sum == 0) ? 0xffff : uip_htons(sum);
}
#line 354 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
uint16_t
uip_tcpchksum(void)
{
return upper_layer_chksum(6);
}
#line 369 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
void
uip_init(void)
{
for(c = 0; c < 20; ++c) {
uip_listenports[c] = 0;
}
for(c = 0; c < 10; ++c) {
uip_conns[c].tcpstateflags = 0;
}

lastport = 1024;
#line 383 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
for(c = 0; c < 10; ++c) {
uip_udp_conns[c].lport = 0;
}
#line 394 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
}
#line 397 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
struct uip_conn *
uip_connect(uip_ipaddr_t *ripaddr, uint16_t rport)
{
register struct uip_conn *conn, *cconn;
#line 403 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
again:
++lastport;

if(lastport >= 32000) {
lastport = 4096;
}
#line 412 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
for(c = 0; c < 10; ++c) {
conn = &uip_conns[c];
if(conn->tcpstateflags != 0 &&
conn->lport == uip_htons(lastport)) {
goto again;
}
}

conn = 0;
for(c = 0; c < 10; ++c) {
cconn = &uip_conns[c];
if(cconn->tcpstateflags == 0) {
conn = cconn;
break;
}
if(cconn->tcpstateflags == 7) {
if(conn == 0 ||
cconn->timer > conn->timer) {
conn = cconn;
}
}
}

if(conn == 0) {
return 0;
}

conn->tcpstateflags = 2;

conn->snd_nxt[0] = iss[0];
conn->snd_nxt[1] = iss[1];
conn->snd_nxt[2] = iss[2];
conn->snd_nxt[3] = iss[3];

conn->initialmss = conn->mss = ((1280 + 14) - 14 - (20 + 20));

conn->len = 1; 
conn->nrtx = 0;
conn->timer = 1; 
conn->rto = 3;
conn->sa = 0;
conn->sv = 16; 
conn->lport = uip_htons(lastport);
conn->rport = rport;
(*(&conn->ripaddr) = *( ripaddr));

return conn;
}
#line 463 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
struct uip_udp_conn *
uip_udp_new(const uip_ipaddr_t *ripaddr, uint16_t rport)
{
register struct uip_udp_conn *conn;
#line 469 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
again:
++lastport;

if(lastport >= 32000) {
lastport = 4096;
}

for(c = 0; c < 10; ++c) {
if(uip_udp_conns[c].lport == uip_htons(lastport)) {
goto again;
}
}
#line 483 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
conn = 0;
for(c = 0; c < 10; ++c) {
if(uip_udp_conns[c].lport == 0) {
conn = &uip_udp_conns[c];
break;
}
}

if(conn == 0) {
return 0;
}

conn->lport = (uint16_t)((((uint16_t) (lastport)) << 8) | (((uint16_t) (lastport)) >> 8));
conn->rport = rport;
if(ripaddr == 0) {
memset(&conn->ripaddr, 0, sizeof(uip_ipaddr_t));
} else {
(*(&conn->ripaddr) = *( ripaddr));
}
conn->ttl = 64;

return conn;
}
#line 508 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
void
uip_unlisten(uint16_t port)
{
for(c = 0; c < 20; ++c) {
if(uip_listenports[c] == port) {
uip_listenports[c] = 0;
return;
}
}
}

void
uip_listen(uint16_t port)
{
for(c = 0; c < 20; ++c) {
if(uip_listenports[c] == 0) {
uip_listenports[c] = port;
return;
}
}
}
#line 662 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
static void
uip_add_rcv_nxt(uint16_t n)
{
uip_add32(uip_conn->rcv_nxt, n);
uip_conn->rcv_nxt[0] = uip_acc32[0];
uip_conn->rcv_nxt[1] = uip_acc32[1];
uip_conn->rcv_nxt[2] = uip_acc32[2];
uip_conn->rcv_nxt[3] = uip_acc32[3];
}

void
uip_process(uint8_t flag)
{
register struct uip_conn *uip_connr = uip_conn;
#line 678 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if(flag == 4) {
goto udp_send;
}
#line 683 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
uip_sappdata = uip_appdata = &(uip_aligned_buf.u8)[(20 + 20) + 14];
#line 687 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if(flag == 3) {
if((uip_connr->tcpstateflags & 15) == 3 &&
!((uip_connr)->len)) {
uip_flags = 8;
tcpip_uipcall();
goto appsend;

} else if((uip_connr->tcpstateflags & 15) == 2) {

((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->flags = 0;
goto tcp_send_syn;
}
goto drop;
#line 703 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
} else if(flag == 2) {
#line 710 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if(++iss[3] == 0) {
if(++iss[2] == 0) {
if(++iss[1] == 0) {
++iss[0];
}
}
}
#line 719 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
uip_len = 0;
uip_slen = 0;
#line 726 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if(uip_connr->tcpstateflags == 7 ||
uip_connr->tcpstateflags == 5) {
++(uip_connr->timer);
if(uip_connr->timer == 120) {
uip_connr->tcpstateflags = 0;
}
} else if(uip_connr->tcpstateflags != 0) {
#line 737 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if(((uip_connr)->len)) {
if(uip_connr->timer-- == 0) {
if(uip_connr->nrtx == 8 ||
((uip_connr->tcpstateflags == 2 ||
uip_connr->tcpstateflags == 1) &&
uip_connr->nrtx == 5)) {
uip_connr->tcpstateflags = 0;
#line 748 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
uip_flags = 128;
tcpip_uipcall();
#line 752 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->flags = 0x04 | 0x10;
goto tcp_send_nodata;
}
#line 757 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
uip_connr->timer = 3 << (uip_connr->nrtx > 4?
4:
uip_connr->nrtx);
++(uip_connr->nrtx);
#line 768 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
;
switch(uip_connr->tcpstateflags & 15) {
case 1:
#line 773 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
goto tcp_send_synack;
#line 776 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
case 2:

((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->flags = 0;
goto tcp_send_syn;
#line 782 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
case 3:
#line 787 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
uip_flags = 4;
tcpip_uipcall();
goto apprexmit;

case 4:
case 6:
case 8:

goto tcp_send_finack;

}
}
} else if((uip_connr->tcpstateflags & 15) == 3) {
#line 802 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
uip_flags = 8;
tcpip_uipcall();
goto appsend;
}
}
goto drop;
}

if(flag == 5) {
if(uip_udp_conn->lport != 0) {
uip_conn = 0;
uip_sappdata = uip_appdata = &(uip_aligned_buf.u8)[14 + (8 + 20)];
uip_len = uip_slen = 0;
uip_flags = 8;
tcpip_uipcall();
goto udp_send;
} else {
goto drop;
}
}
#line 825 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
;
#line 839 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if(((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->vhl != 0x45) { 
;
;
;
goto drop;
}
#line 854 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if((((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->len[0] << 8) + ((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->len[1] <= uip_len) {
uip_len = (((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->len[0] << 8) + ((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->len[1];
#line 867 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
} else {
;
goto drop;
}
#line 874 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if((((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->ipoffset[0] & 0x3f) != 0 ||
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->ipoffset[1] != 0) {
#line 882 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
;
;
;
goto drop;
}
#line 890 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if(((&uip_hostaddr)->u16[0] == ( &uip_all_zeroes_addr)->u16[0] && (&uip_hostaddr)->u16[1] == ( &uip_all_zeroes_addr)->u16[1])) {
#line 904 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
} else {
#line 926 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if(!((&((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->destipaddr)->u16[0] == ( &uip_hostaddr)->u16[0] && (&((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->destipaddr)->u16[1] == ( &uip_hostaddr)->u16[1])) {
;
goto drop;
}
}
#line 945 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if(uip_ipchksum() != 0xffff) { 

;
;
;
goto drop;
}
#line 954 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if(((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->proto == 6) { 
#line 957 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
goto tcp_input;
}
#line 961 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if(((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->proto == 17) {
goto udp_input;
}
#line 968 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if(((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->proto != 1) { 

;
;
;
goto drop;
}
#line 979 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
;
#line 984 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if(((struct uip_icmpip_hdr *)&(uip_aligned_buf.u8)[14])->type != 8) {
;
;
;
goto drop;
}
#line 1000 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
((struct uip_icmpip_hdr *)&(uip_aligned_buf.u8)[14])->type = 0;

if(((struct uip_icmpip_hdr *)&(uip_aligned_buf.u8)[14])->icmpchksum >= (uint16_t)((((uint16_t) (0xffff - (8 << 8))) << 8) | (((uint16_t) (0xffff - (8 << 8))) >> 8))) {
((struct uip_icmpip_hdr *)&(uip_aligned_buf.u8)[14])->icmpchksum += (uint16_t)((((uint16_t) (8 << 8)) << 8) | (((uint16_t) (8 << 8)) >> 8)) + 1;
} else {
((struct uip_icmpip_hdr *)&(uip_aligned_buf.u8)[14])->icmpchksum += (uint16_t)((((uint16_t) (8 << 8)) << 8) | (((uint16_t) (8 << 8)) >> 8));
}
#line 1009 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
(*(&((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->destipaddr) = *( &((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->srcipaddr));
(*(&((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->srcipaddr) = *( &uip_hostaddr));

;
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->ttl = 64;
goto ip_send_nolen;
#line 1089 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
udp_input:
#line 1104 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
uip_len = uip_len - (8 + 20);
#line 1108 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if(((struct uip_udpip_hdr *)&(uip_aligned_buf.u8)[14])->destport == 0) {
;
goto drop;
}
#line 1114 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
for(uip_udp_conn = &uip_udp_conns[0];
uip_udp_conn < &uip_udp_conns[10];
++uip_udp_conn) {
#line 1124 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if(uip_udp_conn->lport != 0 &&
((struct uip_udpip_hdr *)&(uip_aligned_buf.u8)[14])->destport == uip_udp_conn->lport &&
(uip_udp_conn->rport == 0 ||
((struct uip_udpip_hdr *)&(uip_aligned_buf.u8)[14])->srcport == uip_udp_conn->rport) &&
(((&uip_udp_conn->ripaddr)->u16[0] == ( &uip_all_zeroes_addr)->u16[0] && (&uip_udp_conn->ripaddr)->u16[1] == ( &uip_all_zeroes_addr)->u16[1]) ||
((&uip_udp_conn->ripaddr)->u16[0] == ( &uip_broadcast_addr)->u16[0] && (&uip_udp_conn->ripaddr)->u16[1] == ( &uip_broadcast_addr)->u16[1]) ||
((&((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->srcipaddr)->u16[0] == ( &uip_udp_conn->ripaddr)->u16[0] && (&((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->srcipaddr)->u16[1] == ( &uip_udp_conn->ripaddr)->u16[1]))) {
goto udp_found;
}
}
;
#line 1164 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
goto drop;
#line 1167 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
udp_found:
uip_conn = 0;
uip_flags = 2;
uip_sappdata = uip_appdata = &(uip_aligned_buf.u8)[14 + (8 + 20)];
uip_slen = 0;
tcpip_uipcall();

udp_send:
if(uip_slen == 0) {
goto drop;
}
uip_len = uip_slen + (8 + 20);
#line 1186 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->len[0] = (uip_len >> 8);
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->len[1] = (uip_len & 0xff);
#line 1190 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->ttl = uip_udp_conn->ttl;
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->proto = 17;

((struct uip_udpip_hdr *)&(uip_aligned_buf.u8)[14])->udplen = (uint16_t)((((uint16_t) (uip_slen + 8)) << 8) | (((uint16_t) (uip_slen + 8)) >> 8));
((struct uip_udpip_hdr *)&(uip_aligned_buf.u8)[14])->udpchksum = 0;

((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->srcport = uip_udp_conn->lport;
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->destport = uip_udp_conn->rport;

(*(&((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->srcipaddr) = *( &uip_hostaddr));
(*(&((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->destipaddr) = *( &uip_udp_conn->ripaddr));

uip_appdata = &(uip_aligned_buf.u8)[14 + (20 + 20)];
#line 1212 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
goto ip_send_nolen;
#line 1216 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
tcp_input:
;
#line 1221 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if(uip_tcpchksum() != 0xffff) { 

;
;
;
goto drop;
}
#line 1230 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if(((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->destport == 0 || ((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->srcport == 0) {
;
goto drop;
}
#line 1237 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
for(uip_connr = &uip_conns[0]; uip_connr <= &uip_conns[10 - 1];
++uip_connr) {
if(uip_connr->tcpstateflags != 0 &&
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->destport == uip_connr->lport &&
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->srcport == uip_connr->rport &&
((&((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->srcipaddr)->u16[0] == ( &uip_connr->ripaddr)->u16[0] && (&((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->srcipaddr)->u16[1] == ( &uip_connr->ripaddr)->u16[1])) {
goto found;
}
}
#line 1251 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if((((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->flags & 0x3f) != 0x02) {
goto reset;
}

tmp16 = ((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->destport;

for(c = 0; c < 20; ++c) {
if(tmp16 == uip_listenports[c]) {
goto found_listen;
}
}
#line 1264 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
;

reset:

if(((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->flags & 0x04) {
goto drop;
}

;

((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->flags = 0x04 | 0x10;
uip_len = (20 + 20);
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->tcpoffset = 5 << 4;
#line 1279 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
c = ((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->seqno[3];
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->seqno[3] = ((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->ackno[3];
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->ackno[3] = c;

c = ((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->seqno[2];
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->seqno[2] = ((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->ackno[2];
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->ackno[2] = c;

c = ((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->seqno[1];
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->seqno[1] = ((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->ackno[1];
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->ackno[1] = c;

c = ((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->seqno[0];
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->seqno[0] = ((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->ackno[0];
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->ackno[0] = c;
#line 1298 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if(++((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->ackno[3] == 0) {
if(++((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->ackno[2] == 0) {
if(++((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->ackno[1] == 0) {
++((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->ackno[0];
}
}
}
#line 1307 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
tmp16 = ((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->srcport;
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->srcport = ((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->destport;
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->destport = tmp16;
#line 1312 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
(*(&((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->destipaddr) = *( &((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->srcipaddr));
(*(&((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->srcipaddr) = *( &uip_hostaddr));
#line 1316 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
goto tcp_send_noconn;
#line 1321 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
found_listen:
#line 1328 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
uip_connr = 0;
for(c = 0; c < 10; ++c) {
if(uip_conns[c].tcpstateflags == 0) {
uip_connr = &uip_conns[c];
break;
}
if(uip_conns[c].tcpstateflags == 7) {
if(uip_connr == 0 ||
uip_conns[c].timer > uip_connr->timer) {
uip_connr = &uip_conns[c];
}
}
}

if(uip_connr == 0) {
#line 1346 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
;
;
goto drop;
}
uip_conn = uip_connr;
#line 1353 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
uip_connr->rto = uip_connr->timer = 3;
uip_connr->sa = 0;
uip_connr->sv = 4;
uip_connr->nrtx = 0;
uip_connr->lport = ((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->destport;
uip_connr->rport = ((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->srcport;
(*(&uip_connr->ripaddr) = *( &((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->srcipaddr));
uip_connr->tcpstateflags = 1;

uip_connr->snd_nxt[0] = iss[0];
uip_connr->snd_nxt[1] = iss[1];
uip_connr->snd_nxt[2] = iss[2];
uip_connr->snd_nxt[3] = iss[3];
uip_connr->len = 1;
#line 1369 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
uip_connr->rcv_nxt[3] = ((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->seqno[3];
uip_connr->rcv_nxt[2] = ((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->seqno[2];
uip_connr->rcv_nxt[1] = ((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->seqno[1];
uip_connr->rcv_nxt[0] = ((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->seqno[0];
uip_add_rcv_nxt(1);
#line 1376 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if((((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->tcpoffset & 0xf0) > 0x50) {
for(c = 0; c < ((((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->tcpoffset >> 4) - 5) << 2 ;) {
opt = (uip_aligned_buf.u8)[(20 + 20) + 14 + c];
if(opt == 0) {

break;
} else if(opt == 1) {
++c;

} else if(opt == 2 &&
(uip_aligned_buf.u8)[(20 + 20) + 14 + 1 + c] == 4) {

tmp16 = ((uint16_t)(uip_aligned_buf.u8)[(20 + 20) + 14 + 2 + c] << 8) |
(uint16_t)(uip_aligned_buf.u8)[(20 + 20) + 14 + 3 + c];
uip_connr->initialmss = uip_connr->mss =
tmp16 > ((1280 + 14) - 14 - (20 + 20))? ((1280 + 14) - 14 - (20 + 20)): tmp16;
#line 1394 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
break;
} else {
#line 1398 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if((uip_aligned_buf.u8)[(20 + 20) + 14 + 1 + c] == 0) {
#line 1401 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
break;
}
c += (uip_aligned_buf.u8)[(20 + 20) + 14 + 1 + c];
}
}
}
#line 1410 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
tcp_send_synack:
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->flags = 0x10;

tcp_send_syn:
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->flags |= 0x02;
#line 1422 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->optdata[0] = 2;
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->optdata[1] = 4;
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->optdata[2] = (((1280 + 14) - 14 - (20 + 20))) / 256;
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->optdata[3] = (((1280 + 14) - 14 - (20 + 20))) & 255;
uip_len = (20 + 20) + 4;
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->tcpoffset = ((20 + 4) / 4) << 4;
goto tcp_send;
#line 1431 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
found:
uip_conn = uip_connr;
uip_flags = 0;
#line 1438 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if(((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->flags & 0x04) {
uip_connr->tcpstateflags = 0;
;
uip_flags = 32;
tcpip_uipcall();
goto drop;
}
#line 1447 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
c = (((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->tcpoffset >> 4) << 2;
#line 1451 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
uip_len = uip_len - c - 20;
#line 1458 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if(!((((uip_connr->tcpstateflags & 15) == 2) &&
((((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->flags & 0x3f) == (0x02 | 0x10))) ||
(((uip_connr->tcpstateflags & 15) == 1) &&
((((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->flags & 0x3f) == 0x02)))) {
if((uip_len > 0 || ((((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->flags & (0x02 | 0x01)) != 0)) &&
(((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->seqno[0] != uip_connr->rcv_nxt[0] ||
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->seqno[1] != uip_connr->rcv_nxt[1] ||
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->seqno[2] != uip_connr->rcv_nxt[2] ||
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->seqno[3] != uip_connr->rcv_nxt[3])) {
goto tcp_send_ack;
}
}
#line 1475 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if((((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->flags & 0x10) && ((uip_connr)->len)) {
uip_add32(uip_connr->snd_nxt, uip_connr->len);

if(((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->ackno[0] == uip_acc32[0] &&
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->ackno[1] == uip_acc32[1] &&
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->ackno[2] == uip_acc32[2] &&
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->ackno[3] == uip_acc32[3]) {

uip_connr->snd_nxt[0] = uip_acc32[0];
uip_connr->snd_nxt[1] = uip_acc32[1];
uip_connr->snd_nxt[2] = uip_acc32[2];
uip_connr->snd_nxt[3] = uip_acc32[3];
#line 1489 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if(uip_connr->nrtx == 0) {
signed char m;
m = uip_connr->rto - uip_connr->timer;

m = m - (uip_connr->sa >> 3);
uip_connr->sa += m;
if(m < 0) {
m = -m;
}
m = m - (uip_connr->sv >> 2);
uip_connr->sv += m;
uip_connr->rto = (uip_connr->sa >> 3) + uip_connr->sv;

}

uip_flags = 1;

uip_connr->timer = uip_connr->rto;
#line 1509 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
uip_connr->len = 0;
}

}
#line 1515 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
switch(uip_connr->tcpstateflags & 15) {
#line 1520 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
case 1:
#line 1525 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if(uip_flags & 1) {
uip_connr->tcpstateflags = 3;
uip_flags = 64;
uip_connr->len = 0;
if(uip_len > 0) {
uip_flags |= 2;
uip_add_rcv_nxt(uip_len);
}
uip_slen = 0;
tcpip_uipcall();
goto appsend;
}

if((((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->flags & 0x3f) == 0x02) {
goto tcp_send_synack;
}
goto drop;

case 2:
#line 1548 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if((uip_flags & 1) &&
(((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->flags & 0x3f) == (0x02 | 0x10)) {
#line 1552 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if((((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->tcpoffset & 0xf0) > 0x50) {
for(c = 0; c < ((((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->tcpoffset >> 4) - 5) << 2 ;) {
opt = (uip_aligned_buf.u8)[(20 + 20) + 14 + c];
if(opt == 0) {

break;
} else if(opt == 1) {
++c;

} else if(opt == 2 &&
(uip_aligned_buf.u8)[(20 + 20) + 14 + 1 + c] == 4) {

tmp16 = ((uip_aligned_buf.u8)[(20 + 20) + 14 + 2 + c] << 8) |
(uip_aligned_buf.u8)[(20 + 20) + 14 + 3 + c];
uip_connr->initialmss =
uip_connr->mss = tmp16 > ((1280 + 14) - 14 - (20 + 20))? ((1280 + 14) - 14 - (20 + 20)): tmp16;
#line 1570 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
break;
} else {
#line 1574 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if((uip_aligned_buf.u8)[(20 + 20) + 14 + 1 + c] == 0) {
#line 1577 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
break;
}
c += (uip_aligned_buf.u8)[(20 + 20) + 14 + 1 + c];
}
}
}
uip_connr->tcpstateflags = 3;
uip_connr->rcv_nxt[0] = ((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->seqno[0];
uip_connr->rcv_nxt[1] = ((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->seqno[1];
uip_connr->rcv_nxt[2] = ((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->seqno[2];
uip_connr->rcv_nxt[3] = ((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->seqno[3];
uip_add_rcv_nxt(1);
uip_flags = 64 | 2;
uip_connr->len = 0;
uip_len = 0;
uip_slen = 0;
tcpip_uipcall();
goto appsend;
}

uip_flags = 32;
tcpip_uipcall();

uip_conn->tcpstateflags = 0;
goto reset;
#line 1604 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
case 3:
#line 1616 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if(((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->flags & 0x01 && !(uip_connr->tcpstateflags & 16)) {
if(((uip_connr)->len)) {
goto drop;
}
uip_add_rcv_nxt(1 + uip_len);
uip_flags |= 16;
if(uip_len > 0) {
uip_flags |= 2;
}
tcpip_uipcall();
uip_connr->len = 1;
uip_connr->tcpstateflags = 8;
uip_connr->nrtx = 0;
tcp_send_finack:
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->flags = 0x01 | 0x10;
goto tcp_send_nodata;
}
#line 1636 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if((((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->flags & 0x20) != 0) {
#line 1650 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
uip_appdata = ((char *)uip_appdata) + ((((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->urgp[0] << 8) | ((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->urgp[1]);
uip_len -= (((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->urgp[0] << 8) | ((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->urgp[1];
}
#line 1660 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if(uip_len > 0 && !(uip_connr->tcpstateflags & 16)) {
uip_flags |= 2;
uip_add_rcv_nxt(uip_len);
}
#line 1677 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
tmp16 = ((uint16_t)((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->wnd[0] << 8) + (uint16_t)((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->wnd[1];
if(tmp16 > uip_connr->initialmss ||
tmp16 == 0) {
tmp16 = uip_connr->initialmss;
}
uip_connr->mss = tmp16;
#line 1700 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if(uip_flags & (2 | 1)) {
uip_slen = 0;
tcpip_uipcall();

appsend:

if(uip_flags & 32) {
uip_slen = 0;
uip_connr->tcpstateflags = 0;
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->flags = 0x04 | 0x10;
goto tcp_send_nodata;
}

if(uip_flags & 16) {
uip_slen = 0;
uip_connr->len = 1;
uip_connr->tcpstateflags = 4;
uip_connr->nrtx = 0;
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->flags = 0x01 | 0x10;
goto tcp_send_nodata;
}
#line 1723 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if(uip_slen > 0) {
#line 1727 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if((uip_flags & 1) != 0) {
uip_connr->len = 0;
}
#line 1734 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if(uip_connr->len == 0) {
#line 1739 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if(uip_slen > uip_connr->mss) {
uip_slen = uip_connr->mss;
}
#line 1745 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
uip_connr->len = uip_slen;
} else {
#line 1751 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
uip_slen = uip_connr->len;
}
}
uip_connr->nrtx = 0;
apprexmit:
uip_appdata = uip_sappdata;
#line 1760 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if(uip_slen > 0 && uip_connr->len > 0) {

uip_len = uip_connr->len + (20 + 20);

((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->flags = 0x10 | 0x08;

goto tcp_send_noopts;
}
#line 1770 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if(uip_flags & 2) {
uip_len = (20 + 20);
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->flags = 0x10;
goto tcp_send_noopts;
}
}
goto drop;
case 8:
#line 1780 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if(uip_flags & 1) {
uip_connr->tcpstateflags = 0;
uip_flags = 16;
tcpip_uipcall();
}
break;

case 4:
#line 1791 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
if(uip_len > 0) {
uip_add_rcv_nxt(uip_len);
}
if(((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->flags & 0x01) {
if(uip_flags & 1) {
uip_connr->tcpstateflags = 7;
uip_connr->timer = 0;
uip_connr->len = 0;
} else {
uip_connr->tcpstateflags = 6;
}
uip_add_rcv_nxt(1);
uip_flags = 16;
tcpip_uipcall();
goto tcp_send_ack;
} else if(uip_flags & 1) {
uip_connr->tcpstateflags = 5;
uip_connr->len = 0;
goto drop;
}
if(uip_len > 0) {
goto tcp_send_ack;
}
goto drop;

case 5:
if(uip_len > 0) {
uip_add_rcv_nxt(uip_len);
}
if(((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->flags & 0x01) {
uip_connr->tcpstateflags = 7;
uip_connr->timer = 0;
uip_add_rcv_nxt(1);
uip_flags = 16;
tcpip_uipcall();
goto tcp_send_ack;
}
if(uip_len > 0) {
goto tcp_send_ack;
}
goto drop;

case 7:
goto tcp_send_ack;

case 6:
if(uip_flags & 1) {
uip_connr->tcpstateflags = 7;
uip_connr->timer = 0;
}
}
goto drop;
#line 1846 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
tcp_send_ack:
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->flags = 0x10;

tcp_send_nodata:
uip_len = (20 + 20);

tcp_send_noopts:
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->tcpoffset = (20 / 4) << 4;
#line 1859 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
tcp_send:
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->ackno[0] = uip_connr->rcv_nxt[0];
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->ackno[1] = uip_connr->rcv_nxt[1];
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->ackno[2] = uip_connr->rcv_nxt[2];
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->ackno[3] = uip_connr->rcv_nxt[3];

((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->seqno[0] = uip_connr->snd_nxt[0];
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->seqno[1] = uip_connr->snd_nxt[1];
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->seqno[2] = uip_connr->snd_nxt[2];
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->seqno[3] = uip_connr->snd_nxt[3];

((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->proto = 6;

((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->srcport = uip_connr->lport;
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->destport = uip_connr->rport;

(*(&((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->srcipaddr) = *( &uip_hostaddr));
(*(&((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->destipaddr) = *( &uip_connr->ripaddr));

if(uip_connr->tcpstateflags & 16) {
#line 1881 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->wnd[0] = ((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->wnd[1] = 0;
} else {
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->wnd[0] = (((((1280 + 14) - 14 - (20 + 20)))) >> 8);
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->wnd[1] = (((((1280 + 14) - 14 - (20 + 20)))) & 0xff);
}

tcp_send_noconn:
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->ttl = 64;
#line 1895 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->len[0] = (uip_len >> 8);
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->len[1] = (uip_len & 0xff);
#line 1899 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->urgp[0] = ((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->urgp[1] = 0;
#line 1902 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->tcpchksum = 0;
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->tcpchksum = ~(uip_tcpchksum());

ip_send_nolen:
#line 1911 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->vhl = 0x45;
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->tos = 0;
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->ipoffset[0] = ((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->ipoffset[1] = 0;
++ipid;
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->ipid[0] = ipid >> 8;
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->ipid[1] = ipid & 0xff;

((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->ipchksum = 0;
((struct uip_tcpip_hdr *)&(uip_aligned_buf.u8)[14])->ipchksum = ~(uip_ipchksum());
;
;
#line 1926 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
;
#line 1929 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/uip.c"
;

uip_flags = 0;
return;

drop:
uip_len = 0;
uip_flags = 0;
return;
}

uint16_t
uip_htons(uint16_t val)
{
return (uint16_t)((((uint16_t) (val)) << 8) | (((uint16_t) (val)) >> 8));
}

uint32_t
uip_htonl(uint32_t val)
{
return (((uint32_t)(uint16_t)((((uint16_t) (val)) << 8) | (((uint16_t) (val)) >> 8)) << 16) | (uint16_t)((((uint16_t) ((uint32_t)(val) >> 16)) << 8) | (((uint16_t) ((uint32_t)(val) >> 16)) >> 8)));
}

void
uip_send(const void *data, int len)
{
int copylen;

copylen = ((len) < ( (1280 + 14) - 14 - (20 + 20) - (int)((char *)uip_sappdata - (char *)&(uip_aligned_buf.u8)[14 + (20 + 20)]))? (len): ( (1280 + 14) - 14 - (20 + 20) - (int)((char *)uip_sappdata - (char *)&(uip_aligned_buf.u8)[14 + (20 + 20)])));

if(copylen > 0) {
uip_slen = copylen;
if(data != uip_sappdata) {
memcpy(uip_sappdata, (data), uip_slen);
}
}
}
