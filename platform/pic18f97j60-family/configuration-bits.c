/*
 * File:   configuration-bits.c
 * Author: jarojuda
 *
 * Created on 16 grudzień 2011, 12:43
 */
#include "contiki.h"

#pragma config XINST=OFF, CP0=OFF, WDT=OFF, WDTPS=256, FOSC2=ON, FOSC=HSPLL, ETHLED=ON

//domyślne, ale muszą być, żeby programator nie wyświetlał ostrzeżenia

#pragma config FCMEN=OFF
#pragma config IESO=ON
#pragma config STVR=OFF

//#pragma romdata _config=0x1fffe
//static const rom uint16_t dumb = 0x0000;
//#pragma romdata
