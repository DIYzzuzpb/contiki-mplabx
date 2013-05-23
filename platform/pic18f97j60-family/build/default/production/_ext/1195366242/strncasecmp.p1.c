#line 47 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/strncasecmp.c"
int strncmp(const char *s1, const char *s2, int len);
#line 52 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/strncasecmp.c"
unsigned char
strncasecmp(const char *s1, const char *s2, unsigned char n)
{
unsigned char len;

return strncmp(s1, s2, n);
#line 68 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/strncasecmp.c"
}
