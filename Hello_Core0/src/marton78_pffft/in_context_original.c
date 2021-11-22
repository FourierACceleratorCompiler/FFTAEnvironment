#include "../Hello_Core0.h"
#ifdef PROJ_marton78_pffft


#include "../clib/synthesizer.h"
#include <stdio.h>
#include<time.h>
#include "self_contained_code.h"
#include "defines.h"

#include <cycle_count.h>

void run_original(int n) {
float*input = marton78_pffft_generate_inputs(n);
float work[2 * n];
float output[2 * n];

struct PFFFT_Setup *setup = pffft_new_setup(n, PFFFT_COMPLEX);
pffft_direction_t direction = PFFFT_FORWARD;

cycle_stats_t S;
CYCLES_INIT(S);
CYCLES_START(S);
for (int i = 0; i < TIMES; i ++) {
	pffft_transform_ordered(setup, input, output, work, direction);
}

CYCLES_STOP(S);
//printf("Done\n");
//clock_t end = clock();
printf("Time: %.12f\n", (double) (S._cycles) / CYCLES_PER_SECOND);
printf("AccTime: %.12f\n", (double) 0);
free(input);
}
#endif
