#include "sys/clock.h"




static volatile uint32_t dwInternalTicks = 0;

// 6-byte value to store Ticks.  Allows for use over longer periods of time.
static uint8_t vTickReading[6];

static void GetTickCopy(void);

void clock_init(void) {
    // Use Timer0 for 8 bit processors
    // Initialize the time
    TMR0H = 0;
    TMR0L = 0;

    // Set up the timer interrupt
    INTCON2bits.TMR0IP = 0; // Low priority
    INTCONbits.TMR0IF = 0;
    INTCONbits.TMR0IE = 1; // Enable interrupt

    // Timer0 on, 16-bit, internal timer, 1:256 prescalar
    T0CON = 0x87;
}

/*---------------------------------------------------------------------------*/
clock_time_t
clock_time(void) {
    GetTickCopy();
    return *((clock_time_t*) & vTickReading[0]);
}

/*---------------------------------------------------------------------------*/
void
clock_delay(unsigned int d) {
    /* Does not do anything. */
}

/*---------------------------------------------------------------------------*/


static void GetTickCopy(void) {
    do {
        INTCONbits.TMR0IE = 1; // Enable interrupt
        Nop();
        INTCONbits.TMR0IE = 0; // Disable interrupt
        vTickReading[0] = TMR0L;
        vTickReading[1] = TMR0H;
        *((DWORD*) & vTickReading[2]) = dwInternalTicks;
    } while (INTCONbits.TMR0IF);
    INTCONbits.TMR0IE = 1; // Enable interrupt
}
