/*
 * Copyright (c) 2001, Swedish Institute of Computer Science.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
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
 * Author: Adam Dunkels <adam@sics.se>
 *
 */

#include "net/uip.h"
#include "net/uipopt.h"

#if !UIP_CONF_IPV6

#include "contiki-net.h"
#include "ethernet.h"
#include "TCPIP_Stack/MAC.h"

#define DROP 0

#if DROP
static int drop = 0;
#endif

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
    fd_set fdset;
    struct timeval tv;
    int ret;

    tv.tv_sec = 0;
    tv.tv_usec = 0;

    FD_ZERO(&fdset);
    if (fd > 0) {
        FD_SET(fd, &fdset);
    }

    ret = select(fd + 1, &fdset, NULL, NULL, &tv);

    if (ret == 0) {
        return 0;
    }
    ret = read(fd, uip_buf, UIP_BUFSIZE);
    PRINTF("ethernet_poll: read %d bytes\n", ret);

    if (ret == -1) {
        perror("ethernet_poll: read");
    }
    return ret;
}

/*---------------------------------------------------------------------------*/
void
ethernet_send(void) {
    int ret;

    if (fd <= 0) {
        return;
    }

    /*  printf("ethernet_send: sending %d bytes\n", size);*/
    /*  check_checksum(uip_buf, size);*/

#if DROP
    drop++;
    if (drop % 8 == 7) {
        fprintf(stderr, "Dropped an output packet!\n");
        return;
    }
#endif /* DROP */

    PRINTF("ethernet_send: sending %d bytes\n", uip_len);
    ret = write(fd, uip_buf, uip_len);

    if (ret == -1) {
        perror("tap_dev: ethernet_send: writev");
        exit(1);
    }
}

/*---------------------------------------------------------------------------*/
void
ethernet_exit(void) {
}
/*---------------------------------------------------------------------------*/

#endif /* !UIP_CONF_IPV6 */
