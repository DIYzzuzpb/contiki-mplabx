#include <stdio.h>
#include <stdlib.h>
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
#line 47 "/home/jarojuda/GitHub/contiki/core/loader/elfloader_compat.h"
int elfloader_load(off_t eepromaddr);
void elfloader_unload(void);

extern struct process *elfloader_loaded_process;
extern void (*elfloader_fini)(void);
extern char elfloader_unknown[30];
#line 39 "/home/jarojuda/GitHub/contiki/core/loader/cle.h"
typedef uint16_t cle_off; 
typedef uint16_t cle_word;
typedef uint16_t cle_half;
#line 47 "/home/jarojuda/GitHub/contiki/core/loader/cle.h"
typedef uintptr_t cle_addr;
#line 50 "/home/jarojuda/GitHub/contiki/core/loader/cle.h"
typedef char cle_scratch[32];

struct cle_info {
cle_addr text;
void *data, *bss;

cle_off textrelaoff, datarelaoff;
cle_word textrelasize, datarelasize;

cle_off textoff, dataoff;
cle_word textsize, datasize, bsssize;

cle_off symtaboff, strtaboff;
cle_word symtabsize;

unsigned char text_shndx;
unsigned char data_shndx;
unsigned char bss_shndx;
unsigned char unused_shndx;

cle_scratch name; 
};

int
cle_read_info(struct cle_info *info,
int (*read)(void *, int, off_t),
off_t hdr);	

int
cle_relocate(struct cle_info *info,
int (*read)(void *, int, off_t),
off_t hdr, 
void *segmem, 
cle_off reloff,	
cle_word relsize);	

void *
cle_lookup(struct cle_info *info,
int (*read)(void *, int, off_t),
off_t hdr, 
const char *symbol);

struct elf32_rela; 

int cle_write_reloc(void *,
const struct elf32_rela *,
cle_addr,
const struct cle_info *);
#line 34 "/home/jarojuda/GitHub/contiki/core/dev/rom.h"
int rom_pread(void *buf, int nbytes, off_t offset);

int rom_pwrite(const void *buf, int nbytes, off_t offset);

int rom_erase(long nbytes, off_t offset);
#line 34 "/home/jarojuda/GitHub/contiki/core/dev/xmem.h"
void xmem_init(void);

int xmem_pread(void *buf, int nbytes, unsigned long offset);

int xmem_pwrite(const void *buf, int nbytes, unsigned long offset);

int xmem_erase(long nbytes, unsigned long offset);
#line 60 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/loader/elfloader_compat.c"
struct process *elfloader_loaded_process;
void (*elfloader_fini)(void);
#line 65 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/loader/elfloader_compat.c"
unsigned char *datamemory;
#include <sys/unistd.h>
#line 80 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/loader/elfloader_compat.c"
char elfloader_unknown[30];	
#line 83 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/loader/elfloader_compat.c"
int
elfloader_load(off_t eepromaddr)
{
struct cle_info h;
int ret;

void (*elfloader_init)(void);

elfloader_unknown[0] = 0;
#line 94 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/loader/elfloader_compat.c"
ret = cle_read_info(&h, xmem_pread, eepromaddr);

if(ret != 0) {
memcpy(elfloader_unknown, h.name, sizeof(elfloader_unknown));
elfloader_unknown[sizeof(elfloader_unknown) - 1] = 0;
return ret;
}

if(datamemory != 0) {
free(datamemory);
}
#line 108 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/loader/elfloader_compat.c"
datamemory = malloc((((h.textsize) > ( h.datasize + h.bsssize)) ? (h.textsize) : ( h.datasize + h.bsssize)));
if(datamemory == 0) {
return 9; 
}

h.data = datamemory;
h.bss = datamemory + h.datasize;
h.text = (cle_addr)(((uintptr_t)(&_etext + 1) + (uintptr_t)&_edata - (uintptr_t)&__data_start + ROM_ERASE_UNIT_SIZE) & ~(ROM_ERASE_UNIT_SIZE - 1));

do {} while (0);
ret = xmem_pread(datamemory, h.textsize, eepromaddr + h.textoff); 
((void)0);
if(h.textrelasize > 0) {
do {} while (0);
ret = cle_relocate(&h,
xmem_pread,
eepromaddr,
datamemory,
h.textrelaoff, h.textrelasize);
if(ret != 0) {
memcpy(elfloader_unknown, h.name, sizeof(elfloader_unknown));
elfloader_unknown[sizeof(elfloader_unknown) - 1] = 0;
return ret;
}
}

do {} while (0);
#line 138 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/loader/elfloader_compat.c"
ret = rom_erase((h.textsize+ROM_ERASE_UNIT_SIZE) & ~(ROM_ERASE_UNIT_SIZE-1),
h.text);
((void)0);
ret = rom_pwrite(datamemory, h.textsize, h.text);
((void)0);

do {} while (0);
ret = xmem_pread(datamemory, h.datasize, eepromaddr + h.dataoff); 
((void)0);
if(h.datarelasize > 0) {
do {} while (0);
ret = cle_relocate(&h,
xmem_pread,
eepromaddr,
datamemory,
h.datarelaoff, h.datarelasize);
if(ret != 0) {
memcpy(elfloader_unknown, h.name, sizeof(elfloader_unknown));
elfloader_unknown[sizeof(elfloader_unknown) - 1] = 0;
return ret;
}
}
#line 162 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/loader/elfloader_compat.c"
do {} while (0);
memset(h.bss, 0, h.bsssize);
#line 166 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/loader/elfloader_compat.c"
elfloader_loaded_process = cle_lookup(&h, xmem_pread, eepromaddr,
"autostart_processes");
elfloader_fini = cle_lookup(&h, xmem_pread, eepromaddr, "_fini");
elfloader_init = cle_lookup(&h, xmem_pread, eepromaddr, "_init");

if(elfloader_init != 0) {
do {} while (0);
(*elfloader_init)();
elfloader_loaded_process = 0;
return 0;
}

if(elfloader_loaded_process != 0) {
do {} while (0);
process_start(elfloader_loaded_process, 0);
elfloader_fini = 0;
return 0;
} else {
return 7;
}
}

void
elfloader_unload(void)
{
if(elfloader_fini != 0) {
(*elfloader_fini)();
elfloader_fini = 0;
} else if(elfloader_loaded_process != 0) {
process_exit(elfloader_loaded_process);
elfloader_loaded_process = 0;
}
if(datamemory != 0) {
free(datamemory);
datamemory = 0;
}
}
