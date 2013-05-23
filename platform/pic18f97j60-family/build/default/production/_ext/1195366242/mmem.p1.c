#line 77 "/home/jarojuda/GitHub/contiki/core/lib/mmem.h"
struct mmem {
struct mmem *next;
unsigned int size;
void *ptr;
};
#line 86 "/home/jarojuda/GitHub/contiki/core/lib/mmem.h"
int mmem_alloc(struct mmem *m, unsigned int size);
void mmem_free(struct mmem *);
void mmem_init(void);
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
#include <Compiler.h>
#include <GenericTypeDefs.h>
#include <stdint.h>
#include <limits.h>
#line 16 "/home/jarojuda/GitHub/contiki/platform/pic18f97j60-family/contiki-conf.h"
typedef unsigned long clock_time_t;
#line 24 "/home/jarojuda/GitHub/contiki/platform/pic18f97j60-family/contiki-conf.h"
typedef unsigned short uip_stats_t;
#include <string.h>
#line 58 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/mmem.c"
static void *mmemlist_list = NULL; static list_t mmemlist = (list_t)&mmemlist_list;
unsigned int avail_memory;
static char memory[4096];
#line 82 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/mmem.c"
int
mmem_alloc(struct mmem *m, unsigned int size)
{

if(avail_memory < size) {
return 0;
}
#line 92 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/mmem.c"
list_add(mmemlist, m);
#line 96 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/mmem.c"
m->ptr = &memory[4096 - avail_memory];
#line 99 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/mmem.c"
m->size = size;
#line 102 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/mmem.c"
avail_memory -= size;
#line 106 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/mmem.c"
return 1;
}
#line 118 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/mmem.c"
void
mmem_free(struct mmem *m)
{
struct mmem *n;

if(m->next != NULL) {
#line 126 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/mmem.c"
memmove(m->ptr, m->next->ptr,
&memory[4096 - avail_memory] - (char *)m->next->ptr);
#line 131 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/mmem.c"
for(n = m->next; n != NULL; n = n->next) {
n->ptr = (void *)((char *)n->ptr - m->size);
}
}

avail_memory += m->size;
#line 139 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/mmem.c"
list_remove(mmemlist, m);
}
#line 151 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/mmem.c"
void
mmem_init(void)
{
list_init(mmemlist);
avail_memory = 4096;
}
