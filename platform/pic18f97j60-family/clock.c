/*********************************************************************
 *
 *                  Tick Manager for Timekeeping
 *
 *********************************************************************
 * FileName:        Tick.c
 * Dependencies:    Timer 0 (PIC18) or Timer 1 (PIC24F, PIC24H, 
 *					dsPIC30F, dsPIC33F, PIC32)
 * Processor:       PIC18, PIC24F, PIC24H, dsPIC30F, dsPIC33F, PIC32
 * Compiler:        Microchip C32 v1.10b or higher
 *					Microchip C30 v3.12 or higher
 *					Microchip C18 v3.30 or higher
 *					HI-TECH PICC-18 PRO 9.63PL2 or higher
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement
 *
 * Copyright (C) 2002-2010 Microchip Technology Inc.  All rights
 * reserved.
 *
 * Microchip licenses to you the right to use, modify, copy, and
 * distribute:
 * (i)  the Software when embedded on a Microchip microcontroller or
 *      digital signal controller product ("Device") which is
 *      integrated into Licensee's product; or
 * (ii) ONLY the Software driver source files ENC28J60.c, ENC28J60.h,
 *		ENCX24J600.c and ENCX24J600.h ported to a non-Microchip device
 *		used in conjunction with a Microchip ethernet controller for
 *		the sole purpose of interfacing with the ethernet controller.
 *
 * You should refer to the license agreement accompanying this
 * Software for additional information regarding your rights and
 * obligations.
 *
 * THE SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT
 * WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT
 * LIMITATION, ANY WARRANTY OF MERCHANTABILITY, FITNESS FOR A
 * PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT SHALL
 * MICROCHIP BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR
 * CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF
 * PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
 * BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE
 * THEREOF), ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER
 * SIMILAR COSTS, WHETHER ASSERTED ON THE BASIS OF CONTRACT, TORT
 * (INCLUDING NEGLIGENCE), BREACH OF WARRANTY, OR OTHERWISE.
 *
 *
 * Author               Date        Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Nilesh Rajbharti     6/28/01     Original        (Rev 1.0)
 * Nilesh Rajbharti     2/9/02      Cleanup
 * Nilesh Rajbharti     5/22/02     Rev 2.0 (See version.log for detail)
 * Howard Schlunder		6/13/07		Changed to use timer without 
 *									writing for perfect accuracy.
 ********************************************************************/
/* Jaroslaw Juda		16th May 2013 Contiki Port */

#include "contiki-conf.h"
#include "sys/clock.h"

volatile uint32_t dwInternalTicks;
volatile uint32_t clock_seconds_counter;
volatile WORD_VAL clock_seconds_correction;

// 6-byte value to store Ticks.  Allows for use over longer periods of time.
static uint8_t vTickReading[6];

static void GetTickCopy(void);

void clock_init(void) {

    dwInternalTicks = 0u;
    clock_seconds_counter= 0u;
    clock_seconds_correction.Val = 0ul;

    // Use Timer0 for 8 bit processors
    // Initialize the time
    TMR0H = 0;
    TMR0L = 0;

    // Set up the timer interrupt
    INTCON2bits.TMR0IP = 0; // Low priority
    INTCONbits.TMR0IF = 0;
    INTCONbits.TMR0IE = 1; // Enable interrupt

    // Timer0 on, 16-bit, internal timer, 1:256 prescaler
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

/**
 * From SNTP.c
 * @return number of seconds since startup
 */
uint32_t clock_seconds(void) {
    uint32_t tmp;
    DISABLE_INTERRUPTS();
    tmp=clock_seconds_counter;
    ENABLE_INTERRUPTS();
    return tmp;
}

void clock_set_seconds(uint32_t sec) {
    DISABLE_INTERRUPTS();
    clock_seconds_counter = sec;
    ENABLE_INTERRUPTS();
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
