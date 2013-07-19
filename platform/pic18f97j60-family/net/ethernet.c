/*
 * Copyright (c) 2013, Jaroslaw Juda.
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
 * 3. All advertising materials mentioning features or use of this software
 *    must display the following acknowledgement:
 *      This product includes software developed by Adam Dunkels.
 * 4. The name of the author may not be used to endorse or promote
 *    products derived from this software without specific prior
 *    written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS
 * OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
 * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
 * GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 * This file is part of the uIP TCP/IP stack
 * for the PIC18F97J60 family of microcontrollers.
 *
 */




#include "net/uip.h"
#include "net/uipopt.h"

#include "net/MAC.h"


#if !UIP_CONF_IPV6

#include "contiki-net.h"




#define DROP 0

#if DROP
static int drop = 0;
#endif

APP_CONFIG AppConfig;

static int fd;

static unsigned long lasttime;

#define BUF ((struct uip_eth_hdr *)&uip_buf[0])

#define DEBUG 0
#if DEBUG
#define PRINTF(...) fprintf(stderr, __VA_ARGS__)
#else
#define PRINTF(...)
#endif

/*---------------------------------------------------------------------------*/
void
ethernet_init(void) {
    MACInit();
}

/*---------------------------------------------------------------------------*/
uint16_t
ethernet_poll(void) {
    if()

    int ret;

    return ret;
}

/*---------------------------------------------------------------------------*/
void
ethernet_send(void) {

}

/*---------------------------------------------------------------------------*/
void
ethernet_exit(void) {
}
/*---------------------------------------------------------------------------*/

#endif /* !UIP_CONF_IPV6 */
