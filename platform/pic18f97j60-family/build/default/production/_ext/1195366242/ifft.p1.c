#include <Compiler.h>
#include <GenericTypeDefs.h>
#include <stdint.h>
#include <limits.h>
#line 16 "/home/jarojuda/GitHub/contiki/platform/pic18f97j60-family/contiki-conf.h"
typedef unsigned long clock_time_t;
#line 24 "/home/jarojuda/GitHub/contiki/platform/pic18f97j60-family/contiki-conf.h"
typedef unsigned short uip_stats_t;
#line 56 "/home/jarojuda/GitHub/contiki/core/lib/ifft.h"
void ifft(int16_t xre[], int16_t xim[], uint16_t n);
#line 47 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/ifft.c"
static const int8_t SIN_TAB[] = {
0,6,13,20,26,33,39,45,52,58,63,69,75,80,
85,90,95,99,103,107,110,114,116,119,121,
123,125,126,127,127,127,127,127,126,125,
123,121,119,116,114,110,107,103,99,95,90,
85,80,75,69,63,58,52,45,39,33,26,20,13,6,
0,-6,-13,-20,-26,-33,-39,-45,-52,-58,-63,
-69,-75,-80,-85,-90,-95,-99,-103,-107,-110,
-114,-116,-119,-121,-123,-125,-126,-127,-127,
-127,-127,-127,-126,-125,-123,-121,-119,-116,
-114,-110,-107,-103,-99,-95,-90,-85,-80,-75,
-69,-63,-58,-52,-45,-39,-33,-26,-20,-13,-6
};
#line 62 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/ifft.c"
static uint16_t bitrev(uint16_t j, uint16_t nu)
{
uint16_t k;
k = 0;
for (; nu > 0; nu--) {
k = (k << 1) + (j & 1);
j = j >> 1;
}
return k;
}
#line 75 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/ifft.c"
static int16_t sinI(uint16_t angleMilli)
{
uint16_t pos;
pos = (uint16_t) ((120 * (uint32_t) angleMilli) / 1000);
return SIN_TAB[pos % 120];
}

static int16_t cosI(uint16_t angleMilli)
{
return sinI(angleMilli + 250);
}

static uint16_t ilog2(uint16_t val)
{
uint16_t log;
log = 0;
val = val >> 1; 
while (val > 0) {
val = val >> 1;
log++;
}
return log;
}
#line 113 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/ifft.c"
void
ifft(int16_t xre[], int16_t xim[], uint16_t n)
{
uint16_t nu;
uint16_t n2;
uint16_t nu1;
int p, k, l, i;
int32_t c, s, tr, ti;

nu = ilog2(n);
nu1 = nu - 1;
n2 = n / 2;

for (i = 0; i < n; i++)
xim[i] = 0;

for (l = 1; l <= nu; l++) {
for (k = 0; k < n; k += n2) {
for (i = 1; i <= n2; i++) {
p = bitrev(k >> nu1, nu);
c = cosI((1000 * p) / n);
s = sinI((1000 * p) / n);

tr = ((xre[k + n2] * c + xim[k + n2] * s) >> 7);
ti = ((xim[k + n2] * c - xre[k + n2] * s) >> 7);

xre[k + n2] = xre[k] - tr;
xim[k + n2] = xim[k] - ti;
xre[k] += tr;
xim[k] += ti;
k++;
}
}
nu1--;
n2 = n2 / 2;
}

for (k = 0; k < n; k++) {
p = bitrev(k, nu);
if (p > k) {
n2 = xre[k];
xre[k] = xre[p];
xre[p] = n2;

n2 = xim[k];
xim[k] = xim[p];
xim[p] = n2;
}
}
#line 165 "/home/jarojuda/GitHub/contiki-mplabx/platform/pic18f97j60-family/../../../contiki/core/lib/ifft.c"
for (i = 0, n2 = n / 2; i < n2; i++) {
xre[i] = ((xre[i] < 0 ? -xre[i] : xre[i]) + (xim[i] < 0 ? -xim[i] : xim[i]));
}
}
