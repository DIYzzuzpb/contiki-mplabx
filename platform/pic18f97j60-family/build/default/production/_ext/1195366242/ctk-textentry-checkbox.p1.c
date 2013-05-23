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
#line 80 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
struct ctk_widget;
#line 113 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
struct ctk_separator {
struct ctk_widget *next;
struct ctk_window *window;
unsigned char x, y;
unsigned char type;
unsigned char w, h;
#line 122 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
};
#line 142 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
struct ctk_button {
struct ctk_widget *next;
struct ctk_window *window;
unsigned char x, y;
unsigned char type;
unsigned char w, h;
#line 151 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
char *text;
};
#line 173 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
struct ctk_label {
struct ctk_widget *next;
struct ctk_window *window;
unsigned char x, y;
unsigned char type;
unsigned char w, h;
#line 182 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
char *text;
};
#line 204 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
struct ctk_hyperlink {
struct ctk_widget *next;
struct ctk_window *window;
unsigned char x, y;
unsigned char type;
unsigned char w, h;
#line 213 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
char *text;
char *url;
};
#line 236 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
typedef char ctk_arch_key_t;
#line 243 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
struct ctk_textentry;
typedef unsigned char (* ctk_textentry_input)(ctk_arch_key_t c,
struct ctk_textentry *t);
#line 280 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
struct ctk_textentry {
struct ctk_widget *next;
struct ctk_window *window;
unsigned char x, y;
unsigned char type;
unsigned char w, h;
#line 289 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
char *text;
unsigned char len;
unsigned char state;
unsigned char xpos, ypos;
ctk_textentry_input input;
};
#line 385 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
struct ctk_widget_button {
char *text; 
};
#line 392 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
struct ctk_widget_label {
char *text; 
};
#line 399 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
struct ctk_widget_hyperlink {
char *text; 
char *url; 
};

struct ctk_widget_textentry {
char *text;
unsigned char len;
unsigned char state;
unsigned char xpos, ypos;
ctk_textentry_input input;
};

struct ctk_widget_icon {
char *title;
struct process *owner;
unsigned char *bitmap;
char *textmap;
};

struct ctk_widget_bitmap {
unsigned char *bitmap;
unsigned short bw, bh;
};
#line 442 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
struct ctk_widget {
struct ctk_widget *next; 
#line 446 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
struct ctk_window *window; 

unsigned char x, 
#line 451 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
y; 
#line 454 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
unsigned char type; 
#line 461 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
unsigned char w, 

h; 
#line 469 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
union {
struct ctk_widget_label label;
struct ctk_widget_button button;
struct ctk_widget_hyperlink hyperlink;
struct ctk_widget_textentry textentry;
struct ctk_widget_icon icon;
struct ctk_widget_bitmap bitmap;
} widget; 
#line 479 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
};
#line 482 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
struct ctk_desktop;
#line 504 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
struct ctk_window {
struct ctk_window *next, 
#line 508 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
*prev; 

struct ctk_desktop *desktop;
#line 513 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
struct process *owner; 
#line 518 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
char *title; 

unsigned char titlelen; 
#line 528 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
struct ctk_label closebutton;
#line 537 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
struct ctk_label titlebutton;
#line 546 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
unsigned char w, 

h; 
#line 552 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
struct ctk_widget *inactive; 
#line 556 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
struct ctk_widget *active; 
#line 560 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
struct ctk_widget *focused; 
#line 564 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
};
#line 569 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
struct ctk_menuitem {
char *title; 
unsigned char titlelen;

};
#line 584 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
struct ctk_menu {
struct ctk_menu *next; 
#line 590 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
char *title; 
unsigned char titlelen;
#line 597 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
unsigned char nitems; 

unsigned char active; 
struct ctk_menuitem items[8];
#line 604 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
};
#line 609 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
struct ctk_menus {
struct ctk_menu *menus; 
#line 613 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
struct ctk_menu *open; 
#line 616 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
struct ctk_menu *desktopmenu; 
#line 621 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
};
#line 629 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
struct ctk_desktop {
char *name; 

struct ctk_window desktop_window; 

struct ctk_window *windows; 
struct ctk_window *dialog; 
#line 644 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
unsigned char height, 
width; 
#line 668 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
unsigned char redraw; 

struct ctk_widget *redraw_widgets[8]; 
unsigned char redraw_widgetptr; 

struct ctk_window *redraw_windows[8]; 
unsigned char redraw_windowptr; 

unsigned char redraw_y1, 
redraw_y2; 
};
#line 688 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
extern struct process ctk_process;
void ctk_init(void);
void ctk_restore(void);

void ctk_mode_set(unsigned char mode);
unsigned char ctk_mode_get(void);
#line 697 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
void ctk_window_new(struct ctk_window *window,
unsigned char w, unsigned char h,
char *title);
void ctk_window_clear(struct ctk_window *w);
void ctk_window_open(struct ctk_window *w);

void ctk_window_close(struct ctk_window *w);
void ctk_window_redraw(struct ctk_window *w);
#line 709 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
void ctk_dialog_new(struct ctk_window *window,
unsigned char w, unsigned char h);
void ctk_dialog_open(struct ctk_window *d);
void ctk_dialog_close(void);
#line 715 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
void ctk_menu_new(struct ctk_menu *menu, char *title);
void ctk_menu_add(struct ctk_menu *menu);
void ctk_menu_remove(struct ctk_menu *menu);
unsigned char ctk_menuitem_add(struct ctk_menu *menu, char *name);
#line 734 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
void ctk_icon_add(struct ctk_widget *icon, struct process *p);
#line 746 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
void ctk_widget_add(struct ctk_window *window,
struct ctk_widget *widget);
#line 765 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
void ctk_widget_redraw(struct ctk_widget *w);
#line 931 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
void ctk_desktop_redraw(struct ctk_desktop *d);
unsigned char ctk_desktop_width(struct ctk_desktop *d);
unsigned char ctk_desktop_height(struct ctk_desktop *d);
#line 936 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
extern process_event_t ctk_signal_keypress,
ctk_signal_widget_activate,
ctk_signal_widget_select,
ctk_signal_timer,
ctk_signal_menu_activate,
ctk_signal_window_close,
ctk_signal_pointer_move,
ctk_signal_pointer_button;
#line 965 "/home/jarojuda/GitHub/contiki/core/ctk/ctk.h"
extern process_event_t ctk_signal_button_activate,
ctk_signal_button_hover,
ctk_signal_hyperlink_activate,
ctk_signal_hyperlink_hover;
#line 37 "/home/jarojuda/GitHub/contiki/core/lib/ctk-textentry-checkbox.h"
unsigned char ctk_textentry_checkbox_input(ctk_arch_key_t c,
struct ctk_textentry *t);
#line 40 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/ctk-textentry-checkbox.c"
unsigned char
ctk_textentry_checkbox_input(ctk_arch_key_t c,
struct ctk_textentry *t)
{
switch(c) {
case 'X':
case 'x':
*t->text = 'x';
return 1;

case ' ':
*t->text = *t->text == 'x'? 0:'x';
return 1;

case CH_DEL:
case '\n':
case CTK_CONF_WIDGETDOWN_KEY:
case CTK_CONF_WIDGETUP_KEY:
return 0;
}
return 1;
}
