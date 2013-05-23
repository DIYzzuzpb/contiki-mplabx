#line 35 "/home/jarojuda/GitHub/contiki/core/lib/me_tabs.h"
extern const unsigned short me_encode_tab[256];
extern const unsigned char me_decode_tab[256];
extern const unsigned char me_valid_tab[256];
#line 57 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/me.c"
unsigned short
me_encode(unsigned char c)
{
return me_encode_tab[c];
}
#line 74 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/me.c"
unsigned char
me_decode16(unsigned short m)
{
unsigned char m1, m2, c;

m1 = m >> 8;
m2 = m & 0xff;

c = (me_decode_tab[m1] << 4) |
me_decode_tab[m2];
return c;
}
#line 98 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/me.c"
unsigned char
me_decode8(unsigned char m)
{
return me_decode_tab[m];
}
#line 108 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/me.c"
unsigned char
me_valid(unsigned char m)
{
return me_valid_tab[m];
}
