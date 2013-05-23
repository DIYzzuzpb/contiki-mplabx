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
#line 64 "/home/jarojuda/GitHub/contiki/core/cfs/cfs.h"
typedef int cfs_offset_t;
#line 69 "/home/jarojuda/GitHub/contiki/core/cfs/cfs.h"
struct cfs_dir {
char dummy_space[32];
};

struct cfs_dirent {
char name[32];
cfs_offset_t size;
};
#line 166 "/home/jarojuda/GitHub/contiki/core/cfs/cfs.h"
int cfs_open(const char *name, int flags);
#line 177 "/home/jarojuda/GitHub/contiki/core/cfs/cfs.h"
void cfs_close(int fd);
#line 192 "/home/jarojuda/GitHub/contiki/core/cfs/cfs.h"
int cfs_read(int fd, void *buf, unsigned int len);
#line 207 "/home/jarojuda/GitHub/contiki/core/cfs/cfs.h"
int cfs_write(int fd, const void *buf, unsigned int len);
#line 228 "/home/jarojuda/GitHub/contiki/core/cfs/cfs.h"
cfs_offset_t cfs_seek(int fd, cfs_offset_t offset, int whence);
#line 238 "/home/jarojuda/GitHub/contiki/core/cfs/cfs.h"
int cfs_remove(const char *name);
#line 251 "/home/jarojuda/GitHub/contiki/core/cfs/cfs.h"
int cfs_opendir(struct cfs_dir *dirp, const char *name);
#line 265 "/home/jarojuda/GitHub/contiki/core/cfs/cfs.h"
int cfs_readdir(struct cfs_dir *dirp, struct cfs_dirent *dirent);
#line 276 "/home/jarojuda/GitHub/contiki/core/cfs/cfs.h"
void cfs_closedir(struct cfs_dir *dirp);
#line 127 "/home/jarojuda/GitHub/contiki/core/loader/elfloader.h"
void elfloader_init(void);
#line 148 "/home/jarojuda/GitHub/contiki/core/loader/elfloader.h"
int elfloader_load(int fd);
#line 153 "/home/jarojuda/GitHub/contiki/core/loader/elfloader.h"
extern struct process * const * elfloader_autostart_processes;
#line 159 "/home/jarojuda/GitHub/contiki/core/loader/elfloader.h"
extern char elfloader_unknown[30];
#line 177 "/home/jarojuda/GitHub/contiki/core/loader/elfloader.h"
typedef unsigned long elf32_word;
typedef signed long elf32_sword;
typedef unsigned short elf32_half;
typedef unsigned long elf32_off;
typedef unsigned long elf32_addr;

struct elf32_rela {
elf32_addr r_offset; 
elf32_word r_info; 
elf32_sword r_addend; 
};
#line 82 "/home/jarojuda/GitHub/contiki/core/loader/elfloader-arch.h"
void *elfloader_arch_allocate_ram(int size);
#line 97 "/home/jarojuda/GitHub/contiki/core/loader/elfloader-arch.h"
void *elfloader_arch_allocate_rom(int size);
#line 118 "/home/jarojuda/GitHub/contiki/core/loader/elfloader-arch.h"
void elfloader_arch_relocate(int fd, unsigned int sectionoffset,
char *sectionaddr,
struct elf32_rela *rela, char *addr);
#line 134 "/home/jarojuda/GitHub/contiki/core/loader/elfloader-arch.h"
void elfloader_arch_write_rom(int fd, unsigned short textoff, unsigned int size, char *mem);
#line 35 "/home/jarojuda/GitHub/contiki/core/loader/symtab.h"
void *symtab_lookup(const char *name);
#include <stddef.h>
#include <string.h>
#include <stdio.h>
#line 56 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/loader/elfloader.c"
struct elf32_ehdr {
unsigned char e_ident[16]; 
elf32_half e_type; 
elf32_half e_machine; 
elf32_word e_version; 
elf32_addr e_entry; 
elf32_off e_phoff; 
elf32_off e_shoff; 
elf32_word e_flags; 
elf32_half e_ehsize; 
elf32_half e_phentsize; 
elf32_half e_phnum; 
elf32_half e_shentsize; 
elf32_half e_shnum; 
elf32_half e_shstrndx; 
};
#line 80 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/loader/elfloader.c"
struct elf32_shdr {
elf32_word sh_name; 
elf32_word sh_type; 
elf32_word sh_flags; 
elf32_addr sh_addr; 
elf32_off sh_offset; 
elf32_word sh_size; 
elf32_word sh_link; 
elf32_word sh_info; 
elf32_word sh_addralign; 
elf32_word sh_entsize; 
};
#line 111 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/loader/elfloader.c"
struct elf32_rel {
elf32_addr r_offset; 
elf32_word r_info; 
};

struct elf32_sym {
elf32_word st_name; 
elf32_addr st_value; 
elf32_word st_size; 
unsigned char st_info; 
unsigned char st_other; 
elf32_half st_shndx; 
};
#line 128 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/loader/elfloader.c"
struct relevant_section {
unsigned char number;
unsigned int offset;
char *address;
};

char elfloader_unknown[30];	

struct process * const * elfloader_autostart_processes;

static struct relevant_section bss, data, rodata, text;

static const unsigned char elf_magic_header[] =
{0x7f, 0x45, 0x4c, 0x46, 
0x01, 
0x01, 
0x01, 
};
#line 148 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/loader/elfloader.c"
static void
seek_read(int fd, unsigned int offset, char *buf, int len)
{
cfs_seek(fd, offset, 0);
cfs_read(fd, buf, len);
#line 164 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/loader/elfloader.c"
}
#line 175 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/loader/elfloader.c"
static void *
find_local_symbol(int fd, const char *symbol,
unsigned int symtab, unsigned short symtabsize,
unsigned int strtab)
{
struct elf32_sym s;
unsigned int a;
char name[30];
struct relevant_section *sect;

for(a = symtab; a < symtab + symtabsize; a += sizeof(s)) {
seek_read(fd, a, (char *)&s, sizeof(s));

if(s.st_name != 0) {
seek_read(fd, strtab + s.st_name, name, sizeof(name));
if(strcmp(name, symbol) == 0) {
if(s.st_shndx == bss.number) {
sect = &bss;
} else if(s.st_shndx == data.number) {
sect = &data;
} else if(s.st_shndx == text.number) {
sect = &text;
} else {
return 0;
}
return &(sect->address[s.st_value]);
}
}
}
return 0;
}

static int
relocate_section(int fd,
unsigned int section, unsigned short size,
unsigned int sectionaddr,
char *sectionbase,
unsigned int strs,
unsigned int strtab,
unsigned int symtab, unsigned short symtabsize,
unsigned char using_relas)
{

struct elf32_rela rela; 
int rel_size = 0;
struct elf32_sym s;
unsigned int a;
char name[30];
char *addr;
struct relevant_section *sect;
#line 227 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/loader/elfloader.c"
if(using_relas) {
rel_size = sizeof(struct elf32_rela);
} else {
rel_size = sizeof(struct elf32_rel);
}

for(a = section; a < section + size; a += rel_size) {
seek_read(fd, a, (char *)&rela, rel_size);
seek_read(fd,
symtab + sizeof(struct elf32_sym) * ((rela.r_info) >> 8),
(char *)&s, sizeof(s));
if(s.st_name != 0) {
seek_read(fd, strtab + s.st_name, name, sizeof(name));
do {} while (0);
addr = (char *)symtab_lookup(name);

if(addr == 0) {
do {} while (0);
addr = find_local_symbol(fd, name, symtab, symtabsize, strtab);
do {} while (0);
}
if(addr == 0) {
if(s.st_shndx == bss.number) {
sect = &bss;
} else if(s.st_shndx == data.number) {
sect = &data;
} else if(s.st_shndx == rodata.number) {
sect = &rodata;
} else if(s.st_shndx == text.number) {
sect = &text;
} else {
do {} while (0);
memcpy(elfloader_unknown, name, sizeof(elfloader_unknown));
elfloader_unknown[sizeof(elfloader_unknown) - 1] = 0;
return 5;
}
addr = sect->address;
}
} else {
if(s.st_shndx == bss.number) {
sect = &bss;
} else if(s.st_shndx == data.number) {
sect = &data;
} else if(s.st_shndx == rodata.number) {
sect = &rodata;
} else if(s.st_shndx == text.number) {
sect = &text;
} else {
return 6;
}

addr = sect->address;
}

if(!using_relas) {

seek_read(fd, sectionaddr + rela.r_offset, (char *)&rela.r_addend, 4);
}

elfloader_arch_relocate(fd, sectionaddr, sectionbase, &rela, addr);
}
return 0;
}

static void *
find_program_processes(int fd,
unsigned int symtab, unsigned short size,
unsigned int strtab)
{
struct elf32_sym s;
unsigned int a;
char name[30];

for(a = symtab; a < symtab + size; a += sizeof(s)) {
seek_read(fd, a, (char *)&s, sizeof(s));

if(s.st_name != 0) {
seek_read(fd, strtab + s.st_name, name, sizeof(name));
if(strcmp(name, "autostart_processes") == 0) {
return &data.address[s.st_value];
}
}
}
return 0;

}

void
elfloader_init(void)
{
elfloader_autostart_processes = 0;
}
#line 336 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/loader/elfloader.c"
int
elfloader_load(int fd)
{
struct elf32_ehdr ehdr;
struct elf32_shdr shdr;
struct elf32_shdr strtable;
unsigned int strs;
unsigned int shdrptr;
unsigned int nameptr;
char name[12];

int i;
unsigned short shdrnum, shdrsize;

unsigned char using_relas = -1;
unsigned short textoff = 0, textsize, textrelaoff = 0, textrelasize;
unsigned short dataoff = 0, datasize, datarelaoff = 0, datarelasize;
unsigned short rodataoff = 0, rodatasize, rodatarelaoff = 0, rodatarelasize;
unsigned short symtaboff = 0, symtabsize;
unsigned short strtaboff = 0, strtabsize;
unsigned short bsssize = 0;

struct process **process;
int ret;

elfloader_unknown[0] = 0;
#line 364 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/loader/elfloader.c"
seek_read(fd, 0, (char *)&ehdr, sizeof(ehdr));
#line 369 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/loader/elfloader.c"
if(memcmp(ehdr.e_ident, elf_magic_header, sizeof(elf_magic_header)) != 0) {
do {} while (0);
return 1;
}
#line 375 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/loader/elfloader.c"
shdrptr = ehdr.e_shoff;
seek_read(fd, shdrptr, (char *)&shdr, sizeof(shdr));
#line 379 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/loader/elfloader.c"
shdrsize = ehdr.e_shentsize;
shdrnum = ehdr.e_shnum;

do {} while (0);
#line 385 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/loader/elfloader.c"
seek_read(fd, ehdr.e_shoff + shdrsize * ehdr.e_shstrndx,
(char *)&strtable, sizeof(strtable));
#line 391 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/loader/elfloader.c"
strs = strtable.sh_offset;

do {} while (0);
#line 413 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/loader/elfloader.c"
textsize = textrelasize = datasize = datarelasize =
rodatasize = rodatarelasize = symtabsize = strtabsize = 0;

bss.number = data.number = rodata.number = text.number = -1;

shdrptr = ehdr.e_shoff;
for(i = 0; i < shdrnum; ++i) {

seek_read(fd, shdrptr, (char *)&shdr, sizeof(shdr));
#line 424 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/loader/elfloader.c"
nameptr = strs + shdr.sh_name;
seek_read(fd, nameptr, name, sizeof(name));
do {} while (0);
#line 435 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/loader/elfloader.c"
if(shdr.sh_type == 2 ) {
do {} while (0);
symtaboff = shdr.sh_offset;
symtabsize = shdr.sh_size;
} else if(shdr.sh_type == 3 ) {
do {} while (0);
strtaboff = shdr.sh_offset;
strtabsize = shdr.sh_size;
} else if(strncmp(name, ".text", 5) == 0) {
textoff = shdr.sh_offset;
textsize = shdr.sh_size;
text.number = i;
text.offset = textoff;
} else if(strncmp(name, ".rel.text", 9) == 0) {
using_relas = 0;
textrelaoff = shdr.sh_offset;
textrelasize = shdr.sh_size;
} else if(strncmp(name, ".rela.text", 10) == 0) {
using_relas = 1;
textrelaoff = shdr.sh_offset;
textrelasize = shdr.sh_size;
} else if(strncmp(name, ".data", 5) == 0) {
dataoff = shdr.sh_offset;
datasize = shdr.sh_size;
data.number = i;
data.offset = dataoff;
} else if(strncmp(name, ".rodata", 7) == 0) {

rodataoff = shdr.sh_offset;
rodatasize = shdr.sh_size;
rodata.number = i;
rodata.offset = rodataoff;
} else if(strncmp(name, ".rel.rodata", 11) == 0) {

using_relas = 0;
rodatarelaoff = shdr.sh_offset;
rodatarelasize = shdr.sh_size;
} else if(strncmp(name, ".rela.rodata", 12) == 0) {
using_relas = 1;
rodatarelaoff = shdr.sh_offset;
rodatarelasize = shdr.sh_size;
} else if(strncmp(name, ".rel.data", 9) == 0) {

using_relas = 0;
datarelaoff = shdr.sh_offset;
datarelasize = shdr.sh_size;
} else if(strncmp(name, ".rela.data", 10) == 0) {
using_relas = 1;
datarelaoff = shdr.sh_offset;
datarelasize = shdr.sh_size;
} else if(strncmp(name, ".bss", 4) == 0) {
bsssize = shdr.sh_size;
bss.number = i;
bss.offset = 0;
}
#line 492 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/loader/elfloader.c"
shdrptr += shdrsize;
}

if(symtabsize == 0) {
return 2;
}
if(strtabsize == 0) {
return 3;
}
if(textsize == 0) {
return 4;
}

do {} while (0);
bss.address = (char *)elfloader_arch_allocate_ram(bsssize + datasize);
data.address = (char *)bss.address + bsssize;
do {} while (0);
text.address = (char *)elfloader_arch_allocate_rom(textsize + rodatasize);
rodata.address = (char *)text.address + textsize;
#line 513 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/loader/elfloader.c"
do {} while (0);
do {} while (0);
do {} while (0);
do {} while (0);
#line 520 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/loader/elfloader.c"
do {} while (0);
if(textrelasize > 0) {
ret = relocate_section(fd,
textrelaoff, textrelasize,
textoff,
text.address,
strs,
strtaboff,
symtaboff, symtabsize, using_relas);
if(ret != 0) {
return ret;
}
}
#line 535 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/loader/elfloader.c"
do {} while (0);
if(rodatarelasize > 0) {
ret = relocate_section(fd,
rodatarelaoff, rodatarelasize,
rodataoff,
rodata.address,
strs,
strtaboff,
symtaboff, symtabsize, using_relas);
if(ret != 0) {
do {} while (0);
return ret;
}
}
#line 551 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/loader/elfloader.c"
do {} while (0);
if(datarelasize > 0) {
ret = relocate_section(fd,
datarelaoff, datarelasize,
dataoff,
data.address,
strs,
strtaboff,
symtaboff, symtabsize, using_relas);
if(ret != 0) {
do {} while (0);
return ret;
}
}
#line 567 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/loader/elfloader.c"
elfloader_arch_write_rom(fd, textoff, textsize, text.address);
elfloader_arch_write_rom(fd, rodataoff, rodatasize, rodata.address);

memset(bss.address, 0, bsssize);
seek_read(fd, dataoff, data.address, datasize);

do {} while (0);
process = (struct process **) find_local_symbol(fd, "autostart_processes", symtaboff, symtabsize, strtaboff);
if(process != 0) {
do {} while (0);
elfloader_autostart_processes = process;
return 0;
} else {
do {} while (0);
process = (struct process **) find_program_processes(fd, symtaboff, symtabsize, strtaboff);
if(process != 0) {
do {} while (0);
}
return 7;
}
}
