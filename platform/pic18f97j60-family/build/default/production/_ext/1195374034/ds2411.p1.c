#include <string.h>
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
#line 37 "/home/jarojuda/GitHub/contiki/core/dev/ds2411.h"
extern unsigned char ds2411_id[8];
extern int ds2411_init();
#line 55 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/dev/ds2411.c"
unsigned char ds2411_id[8];
#line 114 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/dev/ds2411.c"
static int
owreset(void)
{
int result;
OUTP_0();
udelay(480);
OUTP_1(); 
udelay(70);
result = INP();
udelay(410);
return result;
}

static void
owwriteb(unsigned byte)
{
int i = 7;
do {
if(byte & 0x01) {
OUTP_0();
udelay_6();
OUTP_1(); 
udelay(64);
} else {
OUTP_0();
udelay(60);
OUTP_1(); 
udelay(10);
}
if(i == 0) {
return;
}
i--;
byte >>= 1;
} while(1);
}

static unsigned
owreadb(void)
{
unsigned result = 0;
int i = 7;
do {
OUTP_0();
udelay_6();
OUTP_1(); 
udelay(9);
if(INP()) {
result |= 0x80; 
}
udelay(55);
if(i == 0) {
return result;
}
i--;
result >>= 1;
} while(1);
}
#line 174 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/dev/ds2411.c"
static unsigned
crc8_add(unsigned acc, unsigned byte)
{
int i;
acc ^= byte;
for(i = 0; i < 8; i++) {
if(acc & 1) {
acc = (acc >> 1) ^ 0x8c;
} else {
acc >>= 1;
}
}
return acc;
}

int
ds2411_init()
{
int i;
unsigned family, crc, acc;

PIN_INIT();

if(owreset() == 0) {	
#line 201 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/dev/ds2411.c"
int s = splhigh();
owwriteb(0x33); 
family = owreadb();

for(i = 7; i >= 2; i--) {
ds2411_id[i] = owreadb();
}
crc = owreadb();
splx(s);
#line 212 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/dev/ds2411.c"
if(family != 0x01) {
goto fail;
}
acc = crc8_add(0x0, family);
for(i = 7; i >= 2; i--) {
acc = crc8_add(acc, ds2411_id[i]);
}
if(acc == crc) {
return 1; 
}
}
#line 230 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/dev/ds2411.c"
fail:
memset(ds2411_id, 0x0, sizeof(ds2411_id));
return 0; 
}
