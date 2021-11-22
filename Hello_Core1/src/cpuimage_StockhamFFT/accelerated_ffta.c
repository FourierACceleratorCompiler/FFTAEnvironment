/* Orignal skeleton is: 
Pre: SKELETON:

With the array index wrappers adi_acc_output,Annon
And (fromvars) []
Under dimensions [adi_acc_n = n]
With conversion function IdentityConversion

>(new binding): 

With the array index wrappers adi_acc_n
And (fromvars) [n]
Under dimensions []
With conversion function IdentityConversion

>(new binding): 

With the array index wrappers adi_acc_input,re
And (fromvars) [input, real]
Under dimensions [adi_acc_n = n]
With conversion function IdentityConversion

>(new binding): 

With the array index wrappers adi_acc_input,im
And (fromvars) [input, imag]
Under dimensions [adi_acc_n = n]
With conversion function IdentityConversion
Post: SKELETON:

With the array index wrappers output,imag
And (fromvars) [adi_acc_output, im]
Under dimensions [n = adi_acc_n]
With conversion function IdentityConversion

>(new binding): 

With the array index wrappers output,real
And (fromvars) [adi_acc_output, re]
Under dimensions [n = adi_acc_n]
With conversion function IdentityConversion
*/

#include "../Hello_Core1.h"
#ifdef PROJ_cpuimage_StockhamFFT

extern "C" {
#include "self_contained_code.h"
}
#include "defines.h"

#include "../clib/synthesizer.h"
#include "../clib/fft_synth/lib.h"
#include<time.h>
#include "../adi_interface.h"
#include <filter.h>
#include "../Hello_Core1.h"
#include <stdio.h>
#include <stdlib.h>
char *output_file; 
char *pre_accel_dump_file; // optional dump file. 


clock_t AcceleratorStart;
clock_t AcceleratorTotalNanos = 0;
void StartAcceleratorTimer() {
	AcceleratorStart = clock();
}

void StopAcceleratorTimer() {
	AcceleratorTotalNanos +=
		(clock()) - AcceleratorStart;
}


void fft_accel_internal(complex_t * x,int n) {

if ((PRIM_EQUAL(n, 16384)) || ((PRIM_EQUAL(n, 8192)) || ((PRIM_EQUAL(n, 4096)) || ((PRIM_EQUAL(n, 2048)) || ((PRIM_EQUAL(n, 1024)) || ((PRIM_EQUAL(n, 512)) || ((PRIM_EQUAL(n, 256)) || ((PRIM_EQUAL(n, 128)) || (PRIM_EQUAL(n, 64)))))))))) {
static complex_float adi_acc_output[16384]__attribute__((__aligned__(64)));;
        static int adi_acc_n;;
        adi_acc_n = n;;
        static complex_float adi_acc_input[16384]__attribute__((__aligned__(64)));;
        for (int i2 = 0; i2 < adi_acc_n; i2++) {
                adi_acc_input[i2].re = x[i2].real;
        };
        for (int i3 = 0; i3 < adi_acc_n; i3++) {
                adi_acc_input[i3].im = x[i3].imag;
        };
        StartAcceleratorTimer();;
        accel_cfft_wrapper(adi_acc_input, adi_acc_output, adi_acc_n);;
        StopAcceleratorTimer();;
        for (int i4 = 0; i4 < adi_acc_n; i4++) {
                x[i4].real = adi_acc_output[i4].re;
        };
        for (int i5 = 0; i5 < adi_acc_n; i5++) {
                x[i5].imag = adi_acc_output[i5].im;
        };

;

;

;

if (GREATER_THAN(n, -1)) {
		ARRAY_NORM(x, real, n)
        ARRAY_NORM(x, imag, n)
} else {
;
}
} else {
fft(x, n);
}
}
void fft_accel(complex_t * x, int n) {
fft_accel_internal((complex_t *) x, (int) n);
}

void run_accelerator(int n) {
AcceleratorTotalNanos = 0;

complex_t *input = cpuimage_StockhamFFT_generate_input(n);

clock_t begin = clock();
for (int i = 0; i < TIMES; i ++) {
	fft_accel(input, n);
}
clock_t end = clock();
printf("Time: %.12f\n", (double) (end - begin) / CLOCKS_PER_SEC);
printf("AccTime: %.12f\n", (double) AcceleratorTotalNanos / CLOCKS_PER_SEC);
free(input);
}

#endif
