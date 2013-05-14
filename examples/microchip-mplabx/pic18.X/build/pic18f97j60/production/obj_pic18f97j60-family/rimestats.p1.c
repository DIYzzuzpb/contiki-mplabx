#line 43 "/home/jarojuda/contiki/core/net/rime/rimestats.h"
struct rimestats {
unsigned long tx, rx;

unsigned long reliabletx, reliablerx,
rexmit, acktx, noacktx, ackrx, timedout, badackrx;
#line 50 "/home/jarojuda/contiki/core/net/rime/rimestats.h"
unsigned long toolong, tooshort, badsynch, badcrc;

unsigned long contentiondrop, 
sendingdrop; 

unsigned long lltx, llrx;
};
#line 43 "/home/jarojuda/contiki-mplabx/examples/microchip-mplabx/pic18.X/../../../../contiki/core/net/rime/rimestats.c"
struct rimestats rimestats;
