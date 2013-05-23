#line 60 "/home/jarojuda/GitHub/contiki/core/dev/radio.h"
struct radio_driver {

int (* init)(void);
#line 65 "/home/jarojuda/GitHub/contiki/core/dev/radio.h"
int (* prepare)(const void *payload, unsigned short payload_len);
#line 68 "/home/jarojuda/GitHub/contiki/core/dev/radio.h"
int (* transmit)(unsigned short transmit_len);
#line 71 "/home/jarojuda/GitHub/contiki/core/dev/radio.h"
int (* send)(const void *payload, unsigned short payload_len);
#line 74 "/home/jarojuda/GitHub/contiki/core/dev/radio.h"
int (* read)(void *buf, unsigned short buf_len);
#line 78 "/home/jarojuda/GitHub/contiki/core/dev/radio.h"
int (* channel_clear)(void);
#line 81 "/home/jarojuda/GitHub/contiki/core/dev/radio.h"
int (* receiving_packet)(void);
#line 84 "/home/jarojuda/GitHub/contiki/core/dev/radio.h"
int (* pending_packet)(void);
#line 87 "/home/jarojuda/GitHub/contiki/core/dev/radio.h"
int (* on)(void);
#line 90 "/home/jarojuda/GitHub/contiki/core/dev/radio.h"
int (* off)(void);
};
#line 94 "/home/jarojuda/GitHub/contiki/core/dev/radio.h"
enum {
RADIO_TX_OK,
RADIO_TX_ERR,
RADIO_TX_COLLISION,
RADIO_TX_NOACK,
};
#line 6 "/home/jarojuda/GitHub/contiki/core/dev/nullradio.h"
extern const struct radio_driver nullradio_driver;
#line 5 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/dev/nullradio.c"
static int
init(void)
{
return 0;
}

static int
prepare(const void *payload, unsigned short payload_len)
{
return 1;
}

static int
transmit(unsigned short transmit_len)
{
return RADIO_TX_OK;
}

static int
send(const void *payload, unsigned short payload_len)
{
prepare(payload, payload_len);
return transmit(payload_len);
}

static int
read(void *buf, unsigned short buf_len)
{
return 0;
}

static int
channel_clear(void)
{
return 1;
}

static int
receiving_packet(void)
{
return 0;
}

static int
pending_packet(void)
{
return 0;
}

static int
on(void)
{
return 0;
}

static int
off(void)
{
return 0;
}

const struct radio_driver nullradio_driver =
{
init,
prepare,
transmit,
send,
read,
channel_clear,
receiving_packet,
pending_packet,
on,
off,
};
