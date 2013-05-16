#include "contiki-conf.h"


typedef uint16_t rtimer_clock_t;

// : The number of ticks per second.
#define RTIMER_ARCH_SECOND ((GetPeripheralClock()+128ull)/256ull)

// : Initialize the rtimer architecture code.
void rtimer_arch_init(void);

//: Get the current time.
rtimer_clock_t rtimer_time();

rtimer_clock_t
rtimer_arch_now(void);
