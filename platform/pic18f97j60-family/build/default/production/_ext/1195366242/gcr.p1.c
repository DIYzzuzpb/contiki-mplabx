#line 43 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/gcr.c"
static const unsigned char GCR_encode[16] = {
0x0a, 0x0b, 0x12, 0x13,
0x0e, 0x0f, 0x16, 0x17,
0x09, 0x19, 0x1a, 0x1b,
0x0d, 0x1d, 0x1e, 0x15
};
#line 51 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/gcr.c"
static const unsigned char GCR_decode[32] = {
0xff, 0xff, 0xff, 0xff, 
0xff, 0xff, 0xff, 0xff, 
0xff, 0x08, 0x00, 0x01, 
0xff, 0x0c, 0x04, 0x05, 

0xff, 0xff, 0x02, 0x03, 
0xff, 0x0f, 0x06, 0x07, 
0xff, 0x09, 0x0a, 0x0b, 
0xff, 0x0d, 0x0e, 0xff, 
};

static unsigned char gcr_bits = 0;
static unsigned short gcr_val = 0;
#line 67 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/gcr.c"
void gcr_init() {
gcr_val = 0;
gcr_bits = 0;
}
#line 73 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/gcr.c"
unsigned char gcr_finished() {
return gcr_bits == 0;
}
#line 78 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/gcr.c"
void gcr_encode(unsigned char raw_data) {
gcr_val |=
((GCR_encode[raw_data >> 4u] << 5u ) |
GCR_encode[raw_data & 0xf]) << gcr_bits;
gcr_bits += 10;
}
#line 86 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/gcr.c"
unsigned char gcr_get_encoded(unsigned char *raw_data) {
if (gcr_bits >= 8) {
*raw_data = (unsigned char) (gcr_val & 0xff);
gcr_val = gcr_val >> 8u;
gcr_bits = gcr_bits - 8;
return 1;
}
return 0;
}
#line 97 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/gcr.c"
void gcr_decode(unsigned char gcr_data) {
gcr_val |= gcr_data << gcr_bits;
gcr_bits += 8;
}
#line 103 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/gcr.c"
unsigned char gcr_valid() {
if (gcr_bits >= 10) {
unsigned short val = gcr_val & 0x3ff;
if ((GCR_decode[val >> 5u] << 4u) == 0xff ||
(GCR_decode[val & 0x1f]) == 0xff) {
return 0;
}
}
return 1;
}
#line 115 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/gcr.c"
unsigned char gcr_get_decoded(unsigned char *raw_data) {
if (gcr_bits >= 10) {
unsigned short val = gcr_val & 0x3ff;
*raw_data = (unsigned char) ((GCR_decode[val >> 5] << 4) |
(GCR_decode[val & 0x1f]));
gcr_val = gcr_val >> 10;
gcr_bits = gcr_bits - 10;
return 1;
}
return 0;
}
