#include <string.h>
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
#line 51 "/home/jarojuda/GitHub/contiki/core/net/mac/sicslowmac.h"
extern const struct rdc_driver sicslowmac_driver;
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
#line 119 "/home/jarojuda/GitHub/contiki/core/net/mac/frame802154.h"
typedef struct {
uint8_t frame_type; 
uint8_t security_enabled; 
uint8_t frame_pending; 
uint8_t ack_required; 
uint8_t panid_compression; 

uint8_t dest_addr_mode; 
uint8_t frame_version; 
uint8_t src_addr_mode; 
} frame802154_fcf_t;
#line 132 "/home/jarojuda/GitHub/contiki/core/net/mac/frame802154.h"
typedef struct {
uint8_t security_level; 
uint8_t key_id_mode; 
uint8_t reserved; 
} frame802154_scf_t;
#line 139 "/home/jarojuda/GitHub/contiki/core/net/mac/frame802154.h"
typedef struct {
frame802154_scf_t security_control; 
uint32_t frame_counter; 
uint8_t key[9]; 
} frame802154_aux_hdr_t;
#line 149 "/home/jarojuda/GitHub/contiki/core/net/mac/frame802154.h"
typedef struct {
frame802154_fcf_t fcf; 
uint8_t seq; 
uint16_t dest_pid; 
uint8_t dest_addr[8]; 
uint16_t src_pid; 
uint8_t src_addr[8]; 
frame802154_aux_hdr_t aux_hdr; 
uint8_t *payload; 
uint8_t payload_len; 
} frame802154_t;
#line 163 "/home/jarojuda/GitHub/contiki/core/net/mac/frame802154.h"
int frame802154_hdrlen(frame802154_t *p);
int frame802154_create(frame802154_t *p, uint8_t *buf, int buf_len);
int frame802154_parse(uint8_t *data, int length, frame802154_t *pf);
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
#line 39 "/home/jarojuda/GitHub/contiki/core/lib/random.h"
void random_init(unsigned short seed);
#line 46 "/home/jarojuda/GitHub/contiki/core/lib/random.h"
unsigned short random_rand(void);
#line 69 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/sicslowmac.c"
static uint8_t mac_dsn;
#line 75 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/sicslowmac.c"
static uint16_t mac_dst_pan_id = 0xABCD;
#line 81 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/sicslowmac.c"
static uint16_t mac_src_pan_id = 0xABCD;
#line 84 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/sicslowmac.c"
static int
is_broadcast_addr(uint8_t mode, uint8_t *addr)
{
int i = mode == (0x02) ? 2 : 8;
while(i-- > 0) {
if(addr[i] != 0xff) {
return 0;
}
}
return 1;
}

static void
send_packet(mac_callback_t sent, void *ptr)
{
frame802154_t params;
uint8_t len;
#line 103 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/sicslowmac.c"
memset(&params, 0, sizeof(params));
#line 106 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/sicslowmac.c"
params.fcf.frame_type = (0x01);
params.fcf.security_enabled = 0;
params.fcf.frame_pending = 0;
params.fcf.ack_required = packetbuf_attr(PACKETBUF_ATTR_RELIABLE);
params.fcf.panid_compression = 0;
#line 113 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/sicslowmac.c"
params.fcf.frame_version = (0x00);
#line 116 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/sicslowmac.c"
params.seq = mac_dsn++;
#line 123 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/sicslowmac.c"
params.fcf.src_addr_mode = (0x03);
params.dest_pid = mac_dst_pan_id;
#line 130 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/sicslowmac.c"
if(rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_RECEIVER), &rimeaddr_null)) {

params.fcf.dest_addr_mode = (0x02);
params.dest_addr[0] = 0xFF;
params.dest_addr[1] = 0xFF;

} else {
rimeaddr_copy((rimeaddr_t *)&params.dest_addr,
packetbuf_addr(PACKETBUF_ADDR_RECEIVER));
params.fcf.dest_addr_mode = (0x03);
}
#line 143 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/sicslowmac.c"
params.src_pid = mac_src_pan_id;
#line 152 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/sicslowmac.c"
rimeaddr_copy((rimeaddr_t *)&params.src_addr, &rimeaddr_node_addr);
#line 155 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/sicslowmac.c"
params.payload = packetbuf_dataptr();
params.payload_len = packetbuf_datalen();
len = frame802154_hdrlen(&params);
if(packetbuf_hdralloc(len)) {
int ret;
frame802154_create(&params, packetbuf_hdrptr(), len);

;
;
;

ret = nullradio_driver.send(packetbuf_hdrptr(), packetbuf_totlen());
if(sent) {
switch(ret) {
case RADIO_TX_OK:
sent(ptr, MAC_TX_OK, 1);
break;
case RADIO_TX_ERR:
sent(ptr, MAC_TX_ERR, 1);
break;
}
}
} else {
;
}
}

void
send_list(mac_callback_t sent, void *ptr, struct rdc_buf_list *buf_list)
{
if(buf_list != NULL) {
queuebuf_to_packetbuf(buf_list->buf);
send_packet(sent, ptr);
}
}

static void
input_packet(void)
{
frame802154_t frame;
int len;

len = packetbuf_datalen();

if(frame802154_parse(packetbuf_dataptr(), len, &frame) &&
packetbuf_hdrreduce(len - frame.payload_len)) {
if(frame.fcf.dest_addr_mode) {
if(frame.dest_pid != mac_src_pan_id &&
frame.dest_pid != (0xFFFF)) {

;
return;
}
if(!is_broadcast_addr(frame.fcf.dest_addr_mode, frame.dest_addr)) {
packetbuf_set_addr(PACKETBUF_ADDR_RECEIVER, (rimeaddr_t *)&frame.dest_addr);

if(!rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_RECEIVER),
&rimeaddr_node_addr)) {

;
return;
}
}
}
packetbuf_set_addr(PACKETBUF_ADDR_SENDER, (rimeaddr_t *)&frame.src_addr);
#line 222 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/sicslowmac.c"
;
;
;
;
nullmac_driver.input();
} else {
;
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

static void
init(void)
{
mac_dsn = random_rand() % 256;

nullradio_driver.on();
}

static unsigned short
channel_check_interval(void)
{
return 0;
}

const struct rdc_driver sicslowmac_driver = {
"sicslowmac",
init,
send_packet,
send_list,
input_packet,
on,
off,
channel_check_interval
};
