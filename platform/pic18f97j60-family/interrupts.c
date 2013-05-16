#include "contiki.h"

void high_isr(void);
void low_isr(void);

extern volatile uint32_t clock_ticks;
extern volatile uint32_t rtimer_arch_ticks;

#pragma code _high_isr=0x0D000
#pragma interrupt high_isr

void high_isr(void) {

}

#pragma code _low_isr=0x0D800
#pragma interruptlow low_isr

void low_isr(void) {
    volatile uint16_t tmp;
    if (INTCONbits.TMR0IF && INTCONbits.TMR0IE) {
        dwInternalTicks++;
        INTCONbits.TMR0IF = 0;
    } else if (PIR2bits.TMR3IF && PIE2bits.TMR3IE) {
        rtimer_arch_ticks++;

        PIR2bits.TMR3IF = 0;
    } else if (PIR1bits.TMR2IF && PIE1bits.TMR2IE) {

        PIR1bits.TMR2IF = 0;
    }
}

#pragma code low_vector=0x18

void interrupt_at_low_vector(void) {
    _asm GOTO low_isr _endasm
}
#pragma code /* return to the default code section */

#pragma code high_vector=0x08

void interrupt_at_high_vector(void) {
    _asm GOTO high_isr _endasm
}
#pragma code /* return to the default code section */
