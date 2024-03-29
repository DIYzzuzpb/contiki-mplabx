/*
 * Copyright (c) 2010, Swedish Institute of Computer Science.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the Institute nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE INSTITUTE AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE INSTITUTE OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 * This file is part of the Contiki operating system.
 *
 */

/**
 * \file
 *         Common functionality for phase optimization in duty cycling radio protocols
 * \author
 *         Adam Dunkels <adam@sics.se>
 */

#include "net/mac/phase.h"
#include "net/packetbuf.h"
#include "sys/clock.h"
#include "lib/memb.h"
#include "sys/ctimer.h"
#include "net/queuebuf.h"
#include "dev/watchdog.h"
#include "dev/leds.h"

struct phase_queueitem {
  struct ctimer timer;
  mac_callback_t mac_callback;
  void *mac_callback_ptr;
  struct queuebuf *q;
  struct rdc_buf_list *buf_list;
};

#define PHASE_DEFER_THRESHOLD 1
#define PHASE_QUEUESIZE       8

#define MAX_NOACKS            16

#define MAX_NOACKS_TIME       CLOCK_SECOND * 30

MEMB(queued_packets_memb, struct phase_queueitem, PHASE_QUEUESIZE);

#define DEBUG 0
#if DEBUG
#include <stdio.h>
#define PRINTF(...) printf(__VA_ARGS__)
#define PRINTDEBUG(...) printf(__VA_ARGS__)
#else
#define PRINTF(...)
#define PRINTDEBUG(...)
#endif
/*---------------------------------------------------------------------------*/
struct phase *
find_neighbor(const struct phase_list *list, const rimeaddr_t *addr)
{
  struct phase *e;
  for(e = list_head(*list->list); e != NULL; e = list_item_next(e)) {
    if(rimeaddr_cmp(addr, &e->neighbor)) {
      return e;
    }
  }
  return NULL;
}
/*---------------------------------------------------------------------------*/
void
phase_remove(const struct phase_list *list, const rimeaddr_t *neighbor)
{
  struct phase *e;
  e = find_neighbor(list, neighbor);
  if(e != NULL) {
    list_remove(*list->list, e);
    memb_free(list->memb, e);
  }
}
/*---------------------------------------------------------------------------*/
void
phase_update(const struct phase_list *list,
             const rimeaddr_t *neighbor, rtimer_clock_t time,
             int mac_status)
{
  struct phase *e;
  uint8_t tmp;

  /* If we have an entry for this neighbor already, we renew it. */
  e = find_neighbor(list, neighbor);
  if(e != NULL) {
    if(mac_status == MAC_TX_OK) {
#if PHASE_DRIFT_CORRECT
      e->drift = time-e->time;
#endif
      e->time = time;
    }
    /* If the neighbor didn't reply to us, it may have switched
       phase (rebooted). We try a number of transmissions to it
       before we drop it from the phase list. */
    if(mac_status == MAC_TX_NOACK) {
      PRINTF("phase noacks %d to %d.%d\n", e->noacks, neighbor->u8[0], neighbor->u8[1]);
      tmp=      e->noacks;
      e->noacks=tmp++;
      if(e->noacks == 1) {
        timer_set(&e->noacks_timer, MAX_NOACKS_TIME);
      }
      if(e->noacks >= MAX_NOACKS || timer_expired(&e->noacks_timer)) {
        PRINTF("drop %d\n", neighbor->u8[0]);
        list_remove(*list->list, e);
        memb_free(list->memb, e);
        return;
      }
    } else if(mac_status == MAC_TX_OK) {
      e->noacks = 0;
    }
  } else {
    /* No matching phase was found, so we allocate a new one. */
    if(mac_status == MAC_TX_OK && e == NULL) {
      e = memb_alloc(list->memb);
      if(e == NULL) {
        PRINTF("phase alloc NULL\n");
        /* We could not allocate memory for this phase, so we drop
           the last item on the list and reuse it for our phase. */
        e = list_chop(*list->list);
      }
      rimeaddr_copy(&e->neighbor, neighbor);
      e->time = time;
#if PHASE_DRIFT_CORRECT
      e->drift = 0;
#endif
      e->noacks = 0;
      list_push(*list->list, e);
    }
  }
}
/*---------------------------------------------------------------------------*/
static void
send_packet(void *ptr)
{
  struct phase_queueitem *p = ptr;

  if(p->buf_list == NULL) {
    queuebuf_to_packetbuf(p->q);
    queuebuf_free(p->q);
    NETSTACK_RDC.send(p->mac_callback, p->mac_callback_ptr);
  } else {
    NETSTACK_RDC.send_list(p->mac_callback, p->mac_callback_ptr, p->buf_list);
  }

  memb_free(&queued_packets_memb, p);
}
/*---------------------------------------------------------------------------*/
phase_status_t
phase_wait(struct phase_list *list,
           const rimeaddr_t *neighbor, rtimer_clock_t cycle_time,
           rtimer_clock_t guard_time,
           mac_callback_t mac_callback, void *mac_callback_ptr,
           struct rdc_buf_list *buf_list)
{
  struct phase *e;
  size_t tmp;
  //  const rimeaddr_t *neighbor = packetbuf_addr(PACKETBUF_ADDR_RECEIVER);
  /* We go through the list of phases to find if we have recorded a
     phase for this particular neighbor. If so, we can compute the
     time for the next expected phase and setup a ctimer to switch on
     the radio just before the phase. */
  e = find_neighbor(list, neighbor);
  if(e != NULL) {
    rtimer_clock_t wait, now, expected, sync;
    clock_time_t ctimewait;
    
    /* We expect phases to happen every CYCLE_TIME time
       units. The next expected phase is at time e->time +
       CYCLE_TIME. To compute a relative offset, we subtract
       with clock_time(). Because we are only interested in turning
       on the radio within the CYCLE_TIME period, we compute the
       waiting time with modulo CYCLE_TIME. */
    
    /*      printf("neighbor phase 0x%02x (cycle 0x%02x)\n", e->time & (cycle_time - 1),
            cycle_time);*/

    /*      if(e->noacks > 0) {
            printf("additional wait %d\n", additional_wait);
            }*/
    
    now = RTIMER_NOW();

    sync = (e == NULL) ? now : e->time;

#if PHASE_DRIFT_CORRECT
    {
      int32_t s;
      if(e->drift > cycle_time) {
        s = e->drift % cycle_time / (e->drift / cycle_time);  /* drift per cycle */
        s = s * (now - sync) / cycle_time;                    /* estimated drift to now */
        sync += s;                                            /* add it in */
      }
    }
#endif

    /* Check if cycle_time is a power of two */
    if(!(cycle_time & (cycle_time - 1))) {
      /* Faster if cycle_time is a power of two */
      wait = (rtimer_clock_t)((sync - now) & (cycle_time - 1));
    } else {
      /* Works generally */
      wait = cycle_time - (rtimer_clock_t)((now - sync) % cycle_time);
    }

    if(wait < guard_time) {
      wait += cycle_time;
    }

    ctimewait = (CLOCK_SECOND * (wait - guard_time)) / RTIMER_ARCH_SECOND;

    if(ctimewait > PHASE_DEFER_THRESHOLD) {
      struct phase_queueitem *p;
      
      p = memb_alloc(&queued_packets_memb);
      if(p != NULL) {
        if(buf_list == NULL) {
          p->q = queuebuf_new_from_packetbuf();
        }
        p->mac_callback = mac_callback;
        //What the hell !!
        memcpy(&(p->mac_callback_ptr),&(mac_callback_ptr),sizeof(p->mac_callback_ptr));
        memcpy(&(p->buf_list),&(buf_list),sizeof(p->buf_list));
        ctimer_set(&p->timer, ctimewait, send_packet, p);
        return PHASE_DEFERRED;
      } else {
        memb_free(&queued_packets_memb, p);
      }
    }

    expected = now + wait - guard_time;
    if(!RTIMER_CLOCK_LT(expected, now)) {
      /* Wait until the receiver is expected to be awake */
//    printf("%d ",expected%cycle_time);  //for spreadsheet export
      while(RTIMER_CLOCK_LT(RTIMER_NOW(), expected));
    }
    return PHASE_SEND_NOW;
  }
  return PHASE_UNKNOWN;
}
/*---------------------------------------------------------------------------*/
void
phase_init(struct phase_list *list)
{
  list_init(*list->list);
  memb_init(list->memb);
  memb_init(&queued_packets_memb);
}
/*---------------------------------------------------------------------------*/
