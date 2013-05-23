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
#line 51 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/list.c"
struct list {
struct list *next;
};
#line 64 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/list.c"
void
list_init(list_t list)
{
*list = 0;
}
#line 81 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/list.c"
void *
list_head(list_t list)
{
return *list;
}
#line 99 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/list.c"
void
list_copy(list_t dest, list_t src)
{
*dest = *src;
}
#line 116 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/list.c"
void *
list_tail(list_t list)
{
struct list *l;

if(*list == 0) {
return 0;
}

for(l = *list; l->next != 0; l = l->next);

return l;
}
#line 141 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/list.c"
void
list_add(list_t list, void *item)
{
struct list *l;
#line 147 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/list.c"
list_remove(list, item);

((struct list *)item)->next = 0;

l = list_tail(list);

if(l == 0) {
*list = item;
} else {
l->next = item;
}
}
#line 163 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/list.c"
void
list_push(list_t list, void *item)
{
#line 169 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/list.c"
list_remove(list, item);

((struct list *)item)->next = *list;
*list = item;
}
#line 184 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/list.c"
void *
list_chop(list_t list)
{
struct list *l, *r;

if(*list == 0) {
return 0;
}
if(((struct list *)*list)->next == 0) {
l = *list;
*list = 0;
return l;
}

for(l = *list; l->next->next != 0; l = l->next);

r = l->next;
l->next = 0;

return r;
}
#line 216 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/list.c"
void *
list_pop(list_t list)
{
struct list *l;
l = *list;
if(*list != 0) {
*list = ((struct list *)*list)->next;
}

return l;
}
#line 238 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/list.c"
void
list_remove(list_t list, void *item)
{
struct list *l, *r;

if(*list == 0) {
return;
}

r = 0;
for(l = *list; l != 0; l = l->next) {
if(l == item) {
if(r == 0) {

*list = l->next;
} else {

r->next = l->next;
}
l->next = 0;
return;
}
r = l;
}
}
#line 273 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/list.c"
int
list_length(list_t list)
{
struct list *l;
int n = 0;

for(l = *list; l != 0; l = l->next) {
++n;
}

return n;
}
#line 301 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/list.c"
void
list_insert(list_t list, void *previtem, void *newitem)
{
if(previtem == 0) {
list_push(list, newitem);
} else {

((struct list *)newitem)->next = ((struct list *)previtem)->next;
((struct list *)previtem)->next = newitem;
}
}
#line 323 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/list.c"
void *
list_item_next(void *item)
{
return item == 0? 0: ((struct list *)item)->next;
}
