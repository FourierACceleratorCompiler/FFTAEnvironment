#include "../Hello_Core0.h"
#ifdef PROJ_cpuimage_StockhamFFT

#include "../clib/synthesizer.h"
#include <time.h>
#include <stdio.h>
#include "self_contained_code.h"
#include "../Hello_Core0.h"
#include "defines.h"
#include<stdlib.h>
#include <cycle_count.h>

char *output_file; 
char *pre_accel_dump_file; // optional dump file. 

void run_original(int n) {

complex_t *input = cpuimage_StockhamFFT_generate_input(n);

cycle_stats_t S;
CYCLES_INIT(S);
CYCLES_START(S);
for (int i = 0; i < TIMES; i ++) {
	fft(input, n);
}

CYCLES_STOP(S);
//printf("Done\n");
//clock_t end = clock();
printf("Time: %.12f\n", (double) (S._cycles) / CYCLES_PER_SECOND);
printf("AccTime: 0\n");
free(input);
}

#endif
