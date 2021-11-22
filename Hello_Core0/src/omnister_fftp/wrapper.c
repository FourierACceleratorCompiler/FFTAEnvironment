#include "../Hello_Core0.h"

#ifdef PROJ_omnister_fftp

#include "../clib/synthesizer.h"
#include <stdio.h>
#include "defines.h"
#include <time.h>
#include <cycle_count.h>


void run_original(int n) {

	COMPLEX *array = omnister_fftp_generate_inputs(n);

	cycle_stats_t S;
	CYCLES_INIT(S);
	CYCLES_START(S);
	for (int i = 0; i < TIMES; i ++) {
		array = fft_1d(array, n);
	}
	CYCLES_STOP(S);
	//printf("Done\n");
//clock_t end = clock();
printf("Time: %.12f\n", (double) (S._cycles) / CYCLES_PER_SECOND);
	printf("AccTime: %.12f\n", (double) 0 / CLOCKS_PER_SEC);

	free(array);
}

#endif
