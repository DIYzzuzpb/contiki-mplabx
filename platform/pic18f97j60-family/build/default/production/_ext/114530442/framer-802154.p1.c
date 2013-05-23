#line 46 "/home/jarojuda/GitHub/contiki/core/net/mac/framer.h"
struct framer {

int (* create)(void);
int (* parse)(void);

};
#line 44 "/home/jarojuda/GitHub/contiki/core/net/mac/framer-802154.h"
extern const struct framer framer_802154;
#include <Compiler.h>
#include <GenericTypeDefs.h>
#include <stdint.h>
#include <limits.h>
#line 16 "/home/jarojuda/GitHub/contiki/platform/pic18f97j60-family/contiki-conf.h"
typedef unsigned long clock_time_t;
#line 24 "/home/jarojuda/GitHub/contiki/platform/pic18f97j60-family/contiki-conf.h"
typedef unsigned short uip_stats_t;
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
#line 39 "/home/jarojuda/GitHub/contiki/core/lib/random.h"
void random_init(unsigned short seed);
#line 46 "/home/jarojuda/GitHub/contiki/core/lib/random.h"
unsigned short random_rand(void);
#include <string.h>
#line 60 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/framer-802154.c"
static uint8_t mac_dsn;

static uint8_t initialized = 0;
#line 68 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/framer-802154.c"
static const uint16_t mac_dst_pan_id = 0xABCD;
#line 74 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/framer-802154.c"
static const uint16_t mac_src_pan_id = 0xABCD;
#line 77 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/framer-802154.c"
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

static int
create(void)
{
frame802154_t params;
int len;
#line 96 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/framer-802154.c"
memset(&params, 0, sizeof(params));

if(!initialized) {
initialized = 1;
mac_dsn = random_rand() & 0xff;
}
#line 104 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/framer-802154.c"
params.fcf.frame_type = (0x01);
params.fcf.security_enabled = 0;
params.fcf.frame_pending = packetbuf_attr(PACKETBUF_ATTR_PENDING);
if(rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_RECEIVER), &rimeaddr_null)) {
params.fcf.ack_required = 0;
} else {
params.fcf.ack_required = packetbuf_attr(PACKETBUF_ATTR_MAC_ACK);
}
params.fcf.panid_compression = 0;
#line 115 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/framer-802154.c"
params.fcf.frame_version = (0x00);
#line 118 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/framer-802154.c"
if(packetbuf_attr(PACKETBUF_ATTR_MAC_SEQNO)) {
params.seq = packetbuf_attr(PACKETBUF_ATTR_MAC_SEQNO);
} else {
params.seq = mac_dsn++;
packetbuf_set_attr(PACKETBUF_ATTR_MAC_SEQNO, params.seq);
}
#line 131 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/framer-802154.c"
if(sizeof(rimeaddr_t) == 2) {

params.fcf.src_addr_mode = (0x02);
} else {
params.fcf.src_addr_mode = (0x03);
}
params.dest_pid = mac_dst_pan_id;
#line 143 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/framer-802154.c"
if(rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_RECEIVER), &rimeaddr_null)) {

params.fcf.dest_addr_mode = (0x02);
params.dest_addr[0] = 0xFF;
params.dest_addr[1] = 0xFF;

} else {
rimeaddr_copy((rimeaddr_t *)&params.dest_addr,
packetbuf_addr(PACKETBUF_ADDR_RECEIVER));

if(sizeof(rimeaddr_t) == 2) {
params.fcf.dest_addr_mode = (0x02);
} else {
params.fcf.dest_addr_mode = (0x03);
}
}
#line 161 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/framer-802154.c"
params.src_pid = mac_src_pan_id;
#line 167 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/framer-802154.c"
rimeaddr_copy((rimeaddr_t *)&params.src_addr, &rimeaddr_node_addr);

params.payload = packetbuf_dataptr();
params.payload_len = packetbuf_datalen();
len = frame802154_hdrlen(&params);
if(packetbuf_hdralloc(len)) {
frame802154_create(&params, packetbuf_hdrptr(), len);

;
;
;

return len;
} else {
;
return -1;
}
}

static int
parse(void)
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
return -1;
}
if(!is_broadcast_addr(frame.fcf.dest_addr_mode, frame.dest_addr)) {
packetbuf_set_addr(PACKETBUF_ADDR_RECEIVER, (rimeaddr_t *)&frame.dest_addr);
}
}
packetbuf_set_addr(PACKETBUF_ADDR_SENDER, (rimeaddr_t *)&frame.src_addr);
packetbuf_set_attr(PACKETBUF_ATTR_PENDING, frame.fcf.frame_pending);

packetbuf_set_attr(PACKETBUF_ATTR_PACKET_ID, frame.seq);

;
;
;
;

return len - frame.payload_len;
}
return -1;
}

const struct framer framer_802154 = {
create, parse
};
