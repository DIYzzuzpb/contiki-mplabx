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
#include <string.h>
#line 72 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/frame802154.c"
typedef struct {
uint8_t dest_pid_len; 
uint8_t dest_addr_len; 
uint8_t src_pid_len; 
uint8_t src_addr_len; 
uint8_t aux_sec_len; 
} field_length_t;
#line 81 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/frame802154.c"
static uint8_t
addr_len(uint8_t mode)
{
switch(mode) {
case (0x02): 
return 2;
case (0x03): 
return 8;
default:
return 0;
}
}

static void
field_len(frame802154_t *p, field_length_t *flen)
{

memset(flen, 0, sizeof(field_length_t));
#line 101 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/frame802154.c"
if(p->fcf.dest_addr_mode & 3) {
flen->dest_pid_len = 2;
}
if(p->fcf.src_addr_mode & 3) {
flen->src_pid_len = 2;
}
#line 109 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/frame802154.c"
if(p->fcf.dest_addr_mode & 3 && p->fcf.src_addr_mode & 3 &&
p->src_pid == p->dest_pid) {
p->fcf.panid_compression = 1;
#line 114 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/frame802154.c"
flen->src_pid_len = 0;
} else {
p->fcf.panid_compression = 0;
}
#line 120 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/frame802154.c"
flen->dest_addr_len = addr_len(p->fcf.dest_addr_mode & 3);
flen->src_addr_len = addr_len(p->fcf.src_addr_mode & 3);
#line 124 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/frame802154.c"
if(p->fcf.security_enabled & 1) {
#line 144 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/frame802154.c"
}
}
#line 156 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/frame802154.c"
int
frame802154_hdrlen(frame802154_t *p)
{
field_length_t flen;
field_len(p, &flen);
return 3 + flen.dest_pid_len + flen.dest_addr_len +
flen.src_pid_len + flen.src_addr_len + flen.aux_sec_len;
}
#line 179 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/frame802154.c"
int
frame802154_create(frame802154_t *p, uint8_t *buf, int buf_len)
{
int c;
field_length_t flen;
uint8_t *tx_frame_buffer;
uint8_t pos;

field_len(p, &flen);

if(3 + flen.dest_pid_len + flen.dest_addr_len +
flen.src_pid_len + flen.src_addr_len + flen.aux_sec_len > buf_len) {

return 0;
}
#line 197 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/frame802154.c"
tx_frame_buffer = buf;
tx_frame_buffer[0] = (p->fcf.frame_type & 7) |
((p->fcf.security_enabled & 1) << 3) |
((p->fcf.frame_pending & 1) << 4) |
((p->fcf.ack_required & 1) << 5) |
((p->fcf.panid_compression & 1) << 6);
tx_frame_buffer[1] = ((p->fcf.dest_addr_mode & 3) << 2) |
((p->fcf.frame_version & 3) << 4) |
((p->fcf.src_addr_mode & 3) << 6);
#line 208 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/frame802154.c"
tx_frame_buffer[2] = p->seq;
pos = 3;
#line 212 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/frame802154.c"
if(flen.dest_pid_len == 2) {
tx_frame_buffer[pos++] = p->dest_pid & 0xff;
tx_frame_buffer[pos++] = (p->dest_pid >> 8) & 0xff;
}
#line 218 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/frame802154.c"
for(c = flen.dest_addr_len; c > 0; c--) {
tx_frame_buffer[pos++] = p->dest_addr[c - 1];
}
#line 223 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/frame802154.c"
if(flen.src_pid_len == 2) {
tx_frame_buffer[pos++] = p->src_pid & 0xff;
tx_frame_buffer[pos++] = (p->src_pid >> 8) & 0xff;
}
#line 229 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/frame802154.c"
for(c = flen.src_addr_len; c > 0; c--) {
tx_frame_buffer[pos++] = p->src_addr[c - 1];
}
#line 234 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/frame802154.c"
if(flen.aux_sec_len) {
#line 237 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/frame802154.c"
}

return (int)pos;
}
#line 251 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/frame802154.c"
int
frame802154_parse(uint8_t *data, int len, frame802154_t *pf)
{
uint8_t *p;
frame802154_fcf_t fcf;
int c;

if(len < 3) {
return 0;
}

p = data;
#line 265 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/frame802154.c"
fcf.frame_type = p[0] & 7;
fcf.security_enabled = (p[0] >> 3) & 1;
fcf.frame_pending = (p[0] >> 4) & 1;
fcf.ack_required = (p[0] >> 5) & 1;
fcf.panid_compression = (p[0] >> 6) & 1;

fcf.dest_addr_mode = (p[1] >> 2) & 3;
fcf.frame_version = (p[1] >> 4) & 3;
fcf.src_addr_mode = (p[1] >> 6) & 3;
#line 276 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/frame802154.c"
memcpy(&pf->fcf, &fcf, sizeof(frame802154_fcf_t));
pf->seq = p[2];
p += 3; 
#line 281 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/frame802154.c"
if(fcf.dest_addr_mode) {

pf->dest_pid = p[0] + (p[1] << 8);
p += 2;
#line 292 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/frame802154.c"
if(fcf.dest_addr_mode == (0x02)) {
rimeaddr_copy((rimeaddr_t *)&(pf->dest_addr), &rimeaddr_null);
pf->dest_addr[0] = p[1];
pf->dest_addr[1] = p[0];
p += 2;
} else if(fcf.dest_addr_mode == (0x03)) {
for(c = 0; c < 8; c++) {
pf->dest_addr[c] = p[7 - c];
}
p += 8;
}
} else {
rimeaddr_copy((rimeaddr_t *)&(pf->dest_addr), &rimeaddr_null);
pf->dest_pid = 0;
}
#line 309 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/frame802154.c"
if(fcf.src_addr_mode) {

if(!fcf.panid_compression) {
pf->src_pid = p[0] + (p[1] << 8);
p += 2;
} else {
pf->src_pid = pf->dest_pid;
}
#line 324 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/frame802154.c"
if(fcf.src_addr_mode == (0x02)) {
rimeaddr_copy((rimeaddr_t *)&(pf->src_addr), &rimeaddr_null);
pf->src_addr[0] = p[1];
pf->src_addr[1] = p[0];
p += 2;
} else if(fcf.src_addr_mode == (0x03)) {
for(c = 0; c < 8; c++) {
pf->src_addr[c] = p[7 - c];
}
p += 8;
}
} else {
rimeaddr_copy((rimeaddr_t *)&(pf->src_addr), &rimeaddr_null);
pf->src_pid = 0;
}

if(fcf.security_enabled) {
#line 343 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/frame802154.c"
}
#line 346 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/frame802154.c"
c = p - data;

pf->payload_len = (uint8_t)(0xff & (len - c));

pf->payload = p;
#line 353 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/net/mac/frame802154.c"
return c > len ? 0 : c;
}
