#include "contiki"

volatile uint16_t

void rtimer_arch_init(void){
    T3CON = 0b1;

}

rtimer_clock_t rtimer_arch_now(void){
    return TMR3;
}

void rtimer_arch_schedule(rtimer_clock_t t){
    TMR3 = t;
}
