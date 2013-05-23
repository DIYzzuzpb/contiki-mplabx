#include <Compiler.h>
#include <GenericTypeDefs.h>
#include <stdint.h>
#include <limits.h>
#line 16 "/home/jarojuda/GitHub/contiki/platform/pic18f97j60-family/contiki-conf.h"
typedef unsigned long clock_time_t;
#line 24 "/home/jarojuda/GitHub/contiki/platform/pic18f97j60-family/contiki-conf.h"
typedef unsigned short uip_stats_t;
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
#line 47 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/mac.h"
typedef void (* mac_callback_t)(void *ptr, int status, int transmissions);

void mac_call_sent_callback(mac_callback_t sent, void *ptr, int status, int num_tx);
#line 54 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/mac.h"
struct mac_driver {
const char *name;
#line 58 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/mac.h"
void (* init)(void);
#line 61 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/mac.h"
void (* send)(mac_callback_t sent_callback, void *ptr);
#line 64 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/mac.h"
void (* input)(void);
#line 67 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/mac.h"
int (* on)(void);
#line 70 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/mac.h"
int (* off)(int keep_radio_on);
#line 73 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/mac.h"
unsigned short (* channel_check_interval)(void);
};
#line 77 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/mac.h"
enum {

MAC_TX_OK,
#line 83 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/mac.h"
MAC_TX_COLLISION,
#line 86 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/mac.h"
MAC_TX_NOACK,
#line 89 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/mac.h"
MAC_TX_DEFERRED,
#line 93 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/mac.h"
MAC_TX_ERR,
#line 98 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/mac.h"
MAC_TX_ERR_FATAL,
};
#line 48 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/rdc.h"
struct rdc_buf_list {
struct rdc_buf_list *next;
struct queuebuf *buf;
void *ptr;
};
#line 57 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/rdc.h"
struct rdc_driver {
const char *name;
#line 61 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/rdc.h"
void (* init)(void);
#line 64 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/rdc.h"
void (* send)(mac_callback_t sent_callback, void *ptr);
#line 67 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/rdc.h"
void (* send_list)(mac_callback_t sent_callback, void *ptr, struct rdc_buf_list *list);
#line 70 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/rdc.h"
void (* input)(void);
#line 73 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/rdc.h"
int (* on)(void);
#line 76 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/rdc.h"
int (* off)(int keep_radio_on);
#line 79 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/mac/rdc.h"
unsigned short (* channel_check_interval)(void);
};
#line 46 "/home/jarojuda/GitHub/contiki/core/net/mac/nullrdc.h"
extern const struct rdc_driver nullrdc_driver;
#line 65 "/home/jarojuda/GitHub/contiki/core/net/rime/rimeaddr.h"
typedef union {
unsigned char u8[2];
} rimeaddr_t;
#line 79 "/home/jarojuda/GitHub/contiki/core/net/rime/rimeaddr.h"
void rimeaddr_copy(rimeaddr_t *dest, const rimeaddr_t *from);
#line 93 "/home/jarojuda/GitHub/contiki/core/net/rime/rimeaddr.h"
int rimeaddr_cmp(const rimeaddr_t *addr1, const rimeaddr_t *addr2);
#line 103 "/home/jarojuda/GitHub/contiki/core/net/rime/rimeaddr.h"
void rimeaddr_set_node_addr(rimeaddr_t *addr);
#line 114 "/home/jarojuda/GitHub/contiki/core/net/rime/rimeaddr.h"
extern rimeaddr_t rimeaddr_node_addr;
#line 127 "/home/jarojuda/GitHub/contiki/core/net/rime/rimeaddr.h"
extern const rimeaddr_t rimeaddr_null;
#line 85 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
void packetbuf_clear(void);
#line 98 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
void packetbuf_clear_hdr(void);

void packetbuf_hdr_remove(int bytes);
#line 120 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
void *packetbuf_dataptr(void);
#line 132 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
void *packetbuf_hdrptr(void);
#line 145 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
uint8_t packetbuf_hdrlen(void);
#line 164 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
uint16_t packetbuf_datalen(void);
#line 171 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
uint16_t packetbuf_totlen(void);
#line 181 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
void packetbuf_set_datalen(uint16_t len);
#line 194 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
void packetbuf_reference(void *ptr, uint16_t len);
#line 206 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
int packetbuf_is_reference(void);
#line 219 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
void *packetbuf_reference_ptr(void);
#line 235 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
void packetbuf_compact(void);
#line 250 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
int packetbuf_copyfrom(const void *from, uint16_t len);
#line 270 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
int packetbuf_copyto(void *to);
#line 286 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
int packetbuf_copyto_hdr(uint8_t *to);
#line 300 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
int packetbuf_hdralloc(int size);
#line 314 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
int packetbuf_hdrreduce(int size);
#line 318 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
typedef uint16_t packetbuf_attr_t;

struct packetbuf_attr {

packetbuf_attr_t val;
};
struct packetbuf_addr {

rimeaddr_t addr;
};
#line 335 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
enum {
PACKETBUF_ATTR_NONE,
#line 339 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
PACKETBUF_ATTR_CHANNEL,
PACKETBUF_ATTR_NETWORK_ID,
PACKETBUF_ATTR_LINK_QUALITY,
PACKETBUF_ATTR_RSSI,
PACKETBUF_ATTR_TIMESTAMP,
PACKETBUF_ATTR_RADIO_TXPOWER,
PACKETBUF_ATTR_LISTEN_TIME,
PACKETBUF_ATTR_TRANSMIT_TIME,
PACKETBUF_ATTR_MAX_MAC_TRANSMISSIONS,
PACKETBUF_ATTR_MAC_SEQNO,
PACKETBUF_ATTR_MAC_ACK,
#line 352 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
PACKETBUF_ATTR_RELIABLE,
PACKETBUF_ATTR_PACKET_ID,
PACKETBUF_ATTR_PACKET_TYPE,
PACKETBUF_ATTR_REXMIT,
PACKETBUF_ATTR_MAX_REXMIT,
PACKETBUF_ATTR_NUM_REXMIT,
PACKETBUF_ATTR_PENDING,
#line 361 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
PACKETBUF_ATTR_HOPS,
PACKETBUF_ATTR_TTL,
PACKETBUF_ATTR_EPACKET_ID,
PACKETBUF_ATTR_EPACKET_TYPE,
PACKETBUF_ATTR_ERELIABLE,
#line 368 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
PACKETBUF_ADDR_SENDER,
PACKETBUF_ADDR_RECEIVER,
PACKETBUF_ADDR_ESENDER,
PACKETBUF_ADDR_ERECEIVER,

PACKETBUF_ATTR_MAX
};
#line 419 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
int packetbuf_set_attr(uint8_t type, const packetbuf_attr_t val);
packetbuf_attr_t packetbuf_attr(uint8_t type);
int packetbuf_set_addr(uint8_t type, const rimeaddr_t *addr);
const rimeaddr_t *packetbuf_addr(uint8_t type);
#line 425 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
void packetbuf_attr_clear(void);

void packetbuf_attr_copyto(struct packetbuf_attr *attrs,
struct packetbuf_addr *addrs);
void packetbuf_attr_copyfrom(struct packetbuf_attr *attrs,
struct packetbuf_addr *addrs);
#line 439 "/home/jarojuda/GitHub/contiki/core/net/packetbuf.h"
struct packetbuf_attrlist {
uint8_t type;
uint8_t len;
};
#line 88 "/home/jarojuda/GitHub/contiki/core/net/queuebuf.h"
struct queuebuf;

void queuebuf_init(void);
#line 96 "/home/jarojuda/GitHub/contiki/core/net/queuebuf.h"
struct queuebuf *queuebuf_new_from_packetbuf(void);
void queuebuf_update_attr_from_packetbuf(struct queuebuf *b);
#line 100 "/home/jarojuda/GitHub/contiki/core/net/queuebuf.h"
void queuebuf_to_packetbuf(struct queuebuf *b);
void queuebuf_free(struct queuebuf *b);

void *queuebuf_dataptr(struct queuebuf *b);
int queuebuf_datalen(struct queuebuf *b);

rimeaddr_t *queuebuf_addr(struct queuebuf *b, uint8_t type);
packetbuf_attr_t queuebuf_attr(struct queuebuf *b, uint8_t type);

void queuebuf_debug_print(void);
#line 46 "/home/jarojuda/GitHub/contiki/core/net/mac/framer.h"
struct framer {

int (* create)(void);
int (* parse)(void);

};
#line 107 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/netstack.h"
struct network_driver {
const char *name;
#line 111 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/netstack.h"
void (* init)(void);
#line 114 "/home/jarojuda/GitHub/contiki/cpu/microchip-mplabx/xc8/net/netstack.h"
void (* input)(void);
};

extern const struct network_driver rime_driver;
extern const struct rdc_driver nullrdc_driver;
extern const struct mac_driver nullmac_driver;
extern const struct radio_driver nullradio_driver;
extern const struct framer framer_nullmac;

void netstack_init(void);
#line 43 "/home/jarojuda/GitHub/contiki/core/net/rime/rimestats.h"
struct rimestats {
unsigned long tx, rx;

unsigned long reliabletx, reliablerx,
rexmit, acktx, noacktx, ackrx, timedout, badackrx;
#line 50 "/home/jarojuda/GitHub/contiki/core/net/rime/rimestats.h"
unsigned long toolong, tooshort, badsynch, badcrc;

unsigned long contentiondrop, 
sendingdrop; 

unsigned long lltx, llrx;
};
#include <string.h>
#line 122 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/nullrdc.c"
static void
send_packet(mac_callback_t sent, void *ptr)
{
int ret;
packetbuf_set_addr(PACKETBUF_ADDR_SENDER, &rimeaddr_node_addr);
#line 131 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/nullrdc.c"
if(framer_nullmac.create() < 0) {

;
ret = MAC_TX_ERR_FATAL;
} else {
#line 214 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/nullrdc.c"
switch(nullradio_driver.send(packetbuf_hdrptr(), packetbuf_totlen())) {
case RADIO_TX_OK:
ret = MAC_TX_OK;
break;
case RADIO_TX_COLLISION:
ret = MAC_TX_COLLISION;
break;
case RADIO_TX_NOACK:
ret = MAC_TX_NOACK;
break;
default:
ret = MAC_TX_ERR;
break;
}
#line 230 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/nullrdc.c"
}
mac_call_sent_callback(sent, ptr, ret, 1);
}

static void
send_list(mac_callback_t sent, void *ptr, struct rdc_buf_list *buf_list)
{
while(buf_list != NULL) {
queuebuf_to_packetbuf(buf_list->buf);
send_packet(sent, ptr);
buf_list = buf_list->next;
}
}

static void
packet_input(void)
{
#line 257 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/nullrdc.c"
if(framer_nullmac.parse() < 0) {
;

} else if(!rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_RECEIVER),
&rimeaddr_node_addr) &&
!rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_RECEIVER),
&rimeaddr_null)) {
;
} else {
#line 307 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/nullrdc.c"
nullmac_driver.input();
}
}

static int
on(void)
{
return nullradio_driver.on();
}

static int
off(int keep_radio_on)
{
if(keep_radio_on) {
return nullradio_driver.on();
} else {
return nullradio_driver.off();
}
}

static unsigned short
channel_check_interval(void)
{
return 0;
}

static void
init(void)
{
on();
}

const struct rdc_driver nullrdc_driver = {
"nullrdc",
init,
send_packet,
send_list,
packet_input,
on,
off,
channel_check_interval,
};
