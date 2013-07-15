#include "contiki.h"

extern volatile uint32_t dwInternalTicks;
extern volatile uint32_t clock_seconds_counter;
extern volatile WORD_VAL clock_seconds_correction;
static volatile uint8_t clock_seconds_ticks = 0;


#ifdef __XC8

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

#else
void high_isr(void);
void low_isr(void);

#pragma code _high_isr=0x0D000
#pragma interrupt high_isr

void high_isr(void) {

}
#pragma code


#pragma code _low_isr=0x0D800
#pragma interruptlow low_isr

void low_isr(void) {
    if (INTCONbits.TMR0IF && INTCONbits.TMR0IE) {
        dwInternalTicks++;
        if (++clock_seconds_ticks == STIMER_TICK_UPDATE_FREQ) {
            clock_seconds_ticks = 0;
            clock_seconds_counter++;
            clock_seconds_correction.Val += STIMER_TICK_CORRECTION;
            if (clock_seconds_correction.byte.HB) {
                clock_seconds_counter++;
                clock_seconds_correction.Val = 0;
            }
        }
        INTCONbits.TMR0IF = 0;
    } else if (PIR2bits.TMR3IF && PIE2bits.TMR3IE) {
        PIR2bits.TMR3IF = 0;
    } else if (PIR1bits.TMR2IF && PIE1bits.TMR2IE) {

        PIR1bits.TMR2IF = 0;
    }
}

#pragma code

#endif
