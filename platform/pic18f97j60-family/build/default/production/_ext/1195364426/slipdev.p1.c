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
#line 53 "/home/jarojuda/GitHub/contiki/core/net/uip-fw.h"
struct uip_fw_netif {
struct uip_fw_netif *next; 

uip_ipaddr_t ipaddr; 
uip_ipaddr_t netmask; 
uint8_t (* output)(void);
#line 61 "/home/jarojuda/GitHub/contiki/core/net/uip-fw.h"
};
#line 110 "/home/jarojuda/GitHub/contiki/core/net/uip-fw.h"
void uip_fw_init(void);
uint8_t uip_fw_forward(void);
uint8_t uip_fw_output(void);
void uip_fw_register(struct uip_fw_netif *netif);
void uip_fw_default(struct uip_fw_netif *netif);
void uip_fw_periodic(void);
#line 59 "/home/jarojuda/GitHub/contiki/core/net/slipdev.h"
void slipdev_char_put(uint8_t c);
#line 79 "/home/jarojuda/GitHub/contiki/core/net/slipdev.h"
uint8_t slipdev_char_poll(uint8_t *c);

void slipdev_init(void);
uint8_t slipdev_send(void);
uint16_t slipdev_poll(void);
#include <string.h>
#line 78 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/slipdev.c"
static uint8_t slip_buf[(1280 + 14)];

static uint16_t len, tmplen;
static uint8_t lastc;
#line 95 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/slipdev.c"
uint8_t
slipdev_send(void)
{
uint16_t i;
uint8_t *ptr;
uint8_t c;

slipdev_char_put(0300);

ptr = &(uip_aligned_buf.u8)[14];
for(i = 0; i < uip_len; ++i) {
if(i == (20 + 20)) {
ptr = (char *)uip_appdata;
}
c = *ptr++;
switch(c) {
case 0300:
slipdev_char_put(0333);
slipdev_char_put(0334);
break;
case 0333:
slipdev_char_put(0333);
slipdev_char_put(0335);
break;
default:
slipdev_char_put(c);
break;
}
}
slipdev_char_put(0300);

return 0;
}
#line 142 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/slipdev.c"
uint16_t
slipdev_poll(void)
{
uint8_t c;

while(slipdev_char_poll(&c)) {
switch(c) {
case 0333:
lastc = c;
break;

case 0300:
lastc = c;
#line 157 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/slipdev.c"
memcpy(&(uip_aligned_buf.u8)[14], slip_buf, len);
tmplen = len;
len = 0;
return tmplen;

default: 
if(lastc == 0333) {
lastc = c;
#line 167 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/slipdev.c"
switch(c) {
case 0334:
c = 0300;
break;
case 0335:
c = 0333;
break;
}
} else {
lastc = c;
}

slip_buf[len] = c;
++len;

if(len > (1280 + 14)) {
len = 0;
}

break;
}
}
return 0;
}
#line 199 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/slipdev.c"
void
slipdev_init(void)
{
lastc = len = 0;
}
