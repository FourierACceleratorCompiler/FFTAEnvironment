#include "../Hello_Core0.h"
#ifdef PROJ_mborgerding_kissfft


#include "../clib/synthesizer.h"
#include <stdio.h>
#include<time.h>
#include "self_contained_code.h"
#include <cycle_count.h>

int run_original(int n) {
	kiss_fft_cpx *input = mborgerding_kissfft_generate_inputs(n);
	kiss_fft_cpx  out[n];

	cycle_stats_t S;
	CYCLES_INIT(S);
	CYCLES_START(S);
	for (int i = 0; i < TIMES; i ++) {
		kfc_fft(n, input, out);
	}

	CYCLES_STOP(S);
	//printf("Done\n");
	//clock_t end = clock();
	printf("Time: %.12f\n", (double) (S._cycles) / CYCLES_PER_SECOND);
	printf("AccTime: %.12f\n", (double) 0);
}
free(input);
#endif
