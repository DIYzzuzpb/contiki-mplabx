#include "contiki.h"

void rtimer_arch_init(void){
    T3CON = 1;

}

rtimer_clock_t rtimer_arch_now(void){
    rtimer_clock_t tmp;
    tmp = TMR3L;
    tmp+=(TMR3H<<8u);
    return tmp;
}

void rtimer_arch_schedule(rtimer_clock_t t){
    TMR3H = t>>8ul;
    TMR3L = (uint8_t)t;
}
