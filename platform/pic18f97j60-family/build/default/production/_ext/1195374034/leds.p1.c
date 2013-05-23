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
#include <Compiler.h>
#include <GenericTypeDefs.h>
#include <stdint.h>
#include <limits.h>
#line 16 "/home/jarojuda/GitHub/contiki/platform/pic18f97j60-family/contiki-conf.h"
typedef unsigned long clock_time_t;
#line 24 "/home/jarojuda/GitHub/contiki/platform/pic18f97j60-family/contiki-conf.h"
typedef unsigned short uip_stats_t;
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
#line 37 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/dev/leds.c"
static unsigned char leds, invert;

static void
show_leds(unsigned char changed)
{
if(changed & 1) {

if((invert ^ leds) & 1) {
do { } while(0);
} else {
do { } while(0);
}
}
if(changed & 2) {
if((invert ^ leds) & 2) {
do { } while(0);
} else {
do { } while(0);
}
}
if(changed & 4) {
if((invert ^ leds) & 4) {
do { } while(0);
} else {
do { } while(0);
}
}
leds_arch_set(leds ^ invert);
}

void
leds_init(void)
{
leds_arch_init();
leds = invert = 0;
}

void
leds_blink(void)
{

unsigned char inv;
inv = ~(leds ^ invert);
leds_invert(inv);

clock_delay(400);

leds_invert(inv);
}

unsigned char
leds_get(void) {
return leds_arch_get();
}

void
leds_on(unsigned char ledv)
{
unsigned char changed;
changed = (~leds) & ledv;
leds |= ledv;
show_leds(changed);
}

void
leds_off(unsigned char ledv)
{
unsigned char changed;
changed = leds & ledv;
leds &= ~ledv;
show_leds(changed);
}

void
leds_toggle(unsigned char ledv)
{
leds_invert(ledv);
}
#line 117 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/dev/leds.c"
void
leds_invert(unsigned char ledv) {
invert = invert ^ ledv;
show_leds(ledv);
}
