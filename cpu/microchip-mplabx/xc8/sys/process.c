
#include <stdio.h>

#include "sys/process.h"
#include "sys/arg.h"

/*
 * Pointer to the currently running process structure.
 */
struct process *process_list = NULL;
struct process *process_current = NULL;

static process_event_t lastevent;

/*
 * Structure used for keeping the queue of active events.
 */
struct event_data {
    process_event_t ev;
    process_data_t data;
    struct process *p;
};

static process_num_events_t nevents, fevent;
static struct event_data events[PROCESS_CONF_NUMEVENTS];

#if PROCESS_CONF_STATS
process_num_events_t process_maxevents;
#endif

static volatile unsigned char poll_requested;

#define PROCESS_STATE_NONE        0
#define PROCESS_STATE_RUNNING     1
#define PROCESS_STATE_CALLED      2

// Auxiliary state for removing recursion in exit_process() function
#define PROCESS_STATE_MARKED_FOR_EXIT (128u)

static void call_process(struct process *p, process_event_t ev, process_data_t data);

#define DEBUG 0
#if DEBUG
#include <stdio.h>
#define PRINTF(...) printf(__VA_ARGS__)
#else
#define PRINTF(...)
#endif

/*---------------------------------------------------------------------------*/
process_event_t
process_alloc_event(void) {
    return lastevent++;
}

/*---------------------------------------------------------------------------*/
void
process_start(struct process *p, const char *arg) {
    struct process *q;

    /* First make sure that we don't try to start a process that is
       already running. */
    for (q = process_list; q != p && q != NULL; q = q->next);

    /* If we found the process on the process list, we bail out. */
    if (q == p) {
        return;
    }
    /* Put on the procs list.*/
    p->next = process_list;
    process_list = p;
    p->state = PROCESS_STATE_RUNNING;
    PT_INIT(&p->pt);

    PRINTF("process: starting '%s'\n", PROCESS_NAME_STRING(p));

    /* Post a synchronous initialization event to the process. */
    process_post_synch(p, PROCESS_EVENT_INIT, (process_data_t) arg);
}

/*---------------------------------------------------------------------------*/
static void
exit_process(struct process *p, struct process *fromprocess) {
    register struct process *q;
    register struct process *r;
    struct process * tmp_ptr;
    struct process *old_current = process_current;
    int ret;
    bool any_marked;
    uint8_t tmp;

    PRINTF("process: exit_process '%s'\n", PROCESS_NAME_STRING(p));

    /* Make sure the process is in the process list before we try to
       exit it. */
    for (q = process_list; q != p && q != NULL; q = q->next);
    if (q == NULL) {
        return;
    }

    if (process_is_running(p)) {
        /* Process was running */
        p->state = PROCESS_STATE_MARKED_FOR_EXIT;
    }
    do {
        any_marked = false;
        /*
         * Post a synchronous event to all processes to inform them that
         * this process is about to exit. This will allow services to
         * deallocate state associated with this process.
         */

        for (r = process_list; r != NULL; r = r->next) {
            if (r->state & PROCESS_STATE_MARKED_FOR_EXIT) {
                for (q = process_list; q != NULL; q = q->next) {
                    if ((q->state & PROCESS_STATE_MARKED_FOR_EXIT) == 0) {
                        //call_process(q, PROCESS_EVENT_EXITED, (process_data_t)p);
                        /******************************                    *
                         * removing recursion                              *
                         ***************************************************/
                        if ((q->state & PROCESS_STATE_RUNNING) &&
                                q->thread != NULL) {
                            PRINTF("process: calling process '%s' with event PROCESS_EVENT_EXITED \n", PROCESS_NAME_STRING(q));
                            process_current = q;
                            q->state = PROCESS_STATE_CALLED;
                            ret = q->thread(&q->pt, PROCESS_EVENT_EXITED, (process_data_t) r);
                            if (ret == PT_EXITED ||
                                    ret == PT_ENDED /*||
                            PROCESS_EVENT_EXITED == PROCESS_EVENT_EXIT*/) {
                                //exit_process(p,p);
                                tmp = q->state | PROCESS_STATE_MARKED_FOR_EXIT;
                                q->state = tmp;
                                any_marked = true;
                            } else {
                                q->state = PROCESS_STATE_RUNNING;
                            }
                        }
                    }
                }
            }
        }
    } while (any_marked); //We are repeating until no process need exit

    if (p->thread != NULL && p != fromprocess) {
        /* Post the exit event to the process that is about to exit. */
        process_current = p;
        p->thread(&p->pt, PROCESS_EVENT_EXIT, NULL);
    }

    // We are removing all processed marked for exit
    for (r = process_list; r != NULL; r = r->next) {
        if (r->state & PROCESS_STATE_MARKED_FOR_EXIT) {
            r->state = PROCESS_STATE_NONE;
            if (r == process_list) {
                process_list = process_list->next;
            } else {
                for (q = process_list; q != NULL; q = q->next) {
                    if (q->next == r) {
                        tmp_ptr = r->next;
                        q->next = tmp_ptr;
                        break;
                    }
                }
            }
        }
    }
    process_current = old_current;
}

/*---------------------------------------------------------------------------*/
static void
call_process(struct process *p, process_event_t ev, process_data_t data) {
    int ret;

#if DEBUG
    if (p->state == PROCESS_STATE_CALLED) {
        printf("process: process '%s' called again with event %d\n", PROCESS_NAME_STRING(p), ev);
    }
#endif /* DEBUG */

    if ((p->state & PROCESS_STATE_RUNNING) &&
            p->thread != NULL) {
        PRINTF("process: calling process '%s' with event %d\n", PROCESS_NAME_STRING(p), ev);
        process_current = p;
        p->state = PROCESS_STATE_CALLED;
        ret = p->thread(&p->pt, ev, data);
        if (ret == PT_EXITED ||
                ret == PT_ENDED ||
                ev == PROCESS_EVENT_EXIT) {
            exit_process(p, p);
        } else {

            p->state = PROCESS_STATE_RUNNING;
        }
    }
}

/*---------------------------------------------------------------------------*/
void
process_exit(struct process *p) {

    exit_process(p, PROCESS_CURRENT());
}

/*---------------------------------------------------------------------------*/
void
process_init(void) {

    lastevent = PROCESS_EVENT_MAX;

    nevents = fevent = 0;
#if PROCESS_CONF_STATS
    process_maxevents = 0;
#endif /* PROCESS_CONF_STATS */

    process_current = process_list = NULL;
}
/*---------------------------------------------------------------------------*/
/*
 * Call each process' poll handler.
 */

/*---------------------------------------------------------------------------*/
static void
do_poll(void) {
    struct process *p;

    poll_requested = 0;
    /* Call the processes that needs to be polled. */
    for (p = process_list; p != NULL; p = p->next) {
        if (p->needspoll) {

            p->state = PROCESS_STATE_RUNNING;
            p->needspoll = 0;
            call_process(p, PROCESS_EVENT_POLL, NULL);
        }
    }
}
/*---------------------------------------------------------------------------*/
/*
 * Process the next event in the event queue and deliver it to
 * listening processes.
 */

/*---------------------------------------------------------------------------*/
static void
do_event(void) {
    static process_event_t ev;
    static process_data_t data;
    static struct process *receiver;
    static struct process *p;

    /*
     * If there are any events in the queue, take the first one and walk
     * through the list of processes to see if the event should be
     * delivered to any of them. If so, we call the event handler
     * function for the process. We only process one event at a time and
     * call the poll handlers inbetween.
     */

    if (nevents > 0) {

        /* There are events that we should deliver. */
        ev = events[fevent].ev;

        data = events[fevent].data;
        receiver = events[fevent].p;

        /* Since we have seen the new event, we move pointer upwards
           and decrese the number of events. */
        fevent = (fevent + 1) % PROCESS_CONF_NUMEVENTS;
        --nevents;

        /* If this is a broadcast event, we deliver it to all events, in
           order of their priority. */
        if (receiver == PROCESS_BROADCAST) {
            for (p = process_list; p != NULL; p = p->next) {

                /* If we have been requested to poll a process, we do this in
                   between processing the broadcast event. */
                if (poll_requested) {
                    do_poll();
                }
                call_process(p, ev, data);
            }
        } else {
            /* This is not a broadcast event, so we deliver it to the
               specified process. */
            /* If the event was an INIT event, we should also update the
               state of the process. */
            if (ev == PROCESS_EVENT_INIT) {

                receiver->state = PROCESS_STATE_RUNNING;
            }

            /* Make sure that the process actually is running. */
            call_process(receiver, ev, data);
        }
    }
}

/*---------------------------------------------------------------------------*/
int
process_run(void) {
    /* Process poll events. */
    if (poll_requested) {
        do_poll();
    }

    /* Process one event from the queue */
    do_event();

    return nevents + poll_requested;
}

/*---------------------------------------------------------------------------*/
int
process_nevents(void) {

    return nevents + poll_requested;
}

/*---------------------------------------------------------------------------*/
int
process_post(struct process *p, process_event_t ev, process_data_t data) {
    static process_num_events_t snum;

    if (PROCESS_CURRENT() == NULL) {
        PRINTF("process_post: NULL process posts event %d to process '%s', nevents %d\n",
                ev, PROCESS_NAME_STRING(p), nevents);
    } else {
        PRINTF("process_post: Process '%s' posts event %d to process '%s', nevents %d\n",
                PROCESS_NAME_STRING(PROCESS_CURRENT()), ev,
                p == PROCESS_BROADCAST ? "<broadcast>" : PROCESS_NAME_STRING(p), nevents);
    }

    if (nevents == PROCESS_CONF_NUMEVENTS) {
#if DEBUG
        if (p == PROCESS_BROADCAST) {
            printf("soft panic: event queue is full when broadcast event %d was posted from %s\n", ev, PROCESS_NAME_STRING(process_current));
        } else {
            printf("soft panic: event queue is full when event %d was posted to %s frpm %s\n", ev, PROCESS_NAME_STRING(p), PROCESS_NAME_STRING(process_current));
        }
#endif /* DEBUG */
        return PROCESS_ERR_FULL;
    }

    snum = (process_num_events_t) (fevent + nevents) % PROCESS_CONF_NUMEVENTS;
    events[snum].ev = ev;
    events[snum].data = data;
    events[snum].p = p;
    ++nevents;

#if PROCESS_CONF_STATS
    if (nevents > process_maxevents) {

        process_maxevents = nevents;
    }
#endif /* PROCESS_CONF_STATS */

    return PROCESS_ERR_OK;
}

/*---------------------------------------------------------------------------*/
void
process_post_synch(struct process *p, process_event_t ev, process_data_t data) {

    struct process *caller = process_current;

    call_process(p, ev, data);
    process_current = caller;
}

/*---------------------------------------------------------------------------*/
void
process_poll(struct process *p) {
    if (p != NULL) {
        if (p->state == PROCESS_STATE_RUNNING ||
                p->state == PROCESS_STATE_CALLED) {

            p->needspoll = 1;
            poll_requested = 1;
        }
    }
}

/*---------------------------------------------------------------------------*/
int
process_is_running(struct process *p) {
    return p->state != PROCESS_STATE_NONE;
}
/*---------------------------------------------------------------------------*/
/** @} */
