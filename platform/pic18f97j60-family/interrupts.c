#include "contiki.h"


extern volatile uint32_t dwInternalTicks;

void interrupt high_isr(void) @(0xD000) {

}

void interrupt low_priority low_isr(void) @(0xD800) {
    volatile uint16_t tmp;
    if (INTCONbits.TMR0IF && INTCONbits.TMR0IE) {
        dwInternalTicks++;
        INTCONbits.TMR0IF = 0;
    } else if (PIR2bits.TMR3IF && PIE2bits.TMR3IE) {
        PIR2bits.TMR3IF = 0;
    } else if (PIR1bits.TMR2IF && PIE1bits.TMR2IE) {

        PIR1bits.TMR2IF = 0;
    }
}

