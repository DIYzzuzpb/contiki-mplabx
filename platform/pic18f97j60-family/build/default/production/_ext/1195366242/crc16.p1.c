#line 46 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/crc16.c"
unsigned short
crc16_add(unsigned char b, unsigned short acc)
{
#line 57 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/crc16.c"
acc ^= b;
acc = (acc >> 8) | (acc << 8);
acc ^= (acc & 0xff00) << 4;
acc ^= (acc >> 8) >> 4;
acc ^= (acc & 0xff00) >> 5;
return acc;
}

unsigned short
crc16_data(const unsigned char *data, int len, unsigned short acc)
{
int i;

for(i = 0; i < len; ++i) {
acc = crc16_add(*data, acc);
++data;
}
return acc;
}
