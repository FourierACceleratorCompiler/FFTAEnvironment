#include "../Hello_Core0.h"

#ifdef PROJ_jtfell_c_fft

#include "../clib/synthesizer.h"
#include "self_contained_code.h"
#include <stdio.h>
#include "defines.h"
#include <time.h>
#include <cycle_count.h>


void run_original(int n) {

jcomplex *x = jtfell_c_fft_generate_inputs(n);
cycle_stats_t S;
CYCLES_INIT(S);
CYCLES_START(S);
jcomplex *returnv;
for (int i = 0; i < TIMES; i ++) {
	returnv = DFT_naive(x, n);
	free(returnv); // Could be done outside the loop, but the FFTA is very low on memory, so best done here.  Done for both original and accelerated.
}

CYCLES_STOP(S);
//printf("Done\n");
//clock_t end = clock();
printf("Time: %.12f\n", (double) (S._cycles) / CYCLES_PER_SECOND);
printf("AccTime: %.12f\n", (double) 0);

free(x);
}

#endif
