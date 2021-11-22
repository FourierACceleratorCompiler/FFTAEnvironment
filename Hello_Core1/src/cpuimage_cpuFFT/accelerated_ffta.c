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
#ifdef PROJ_cpuimage_cpuFFT

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


void FFT_accel_internal(cmplx * input,cmplx * output,int n) {

	if ((PRIM_EQUAL(n, 16384)) || ((PRIM_EQUAL(n, 8192)) || ((PRIM_EQUAL(n, 4096)) || ((PRIM_EQUAL(n, 2048)) || ((PRIM_EQUAL(n, 1024)) || ((PRIM_EQUAL(n, 512)) || ((PRIM_EQUAL(n, 256)) || ((PRIM_EQUAL(n, 128)) || (PRIM_EQUAL(n, 64)))))))))) {
	static complex_float adi_acc_output[16384]__attribute__((__aligned__(64)));;
	        static int adi_acc_n;;
	        adi_acc_n = n;;
	        static complex_float adi_acc_input[16384]__attribute__((__aligned__(64)));;
	        for (int i7 = 0; i7 < adi_acc_n; i7++) {
	                adi_acc_input[i7].re = input[i7].real;
	        };
	        for (int i8 = 0; i8 < adi_acc_n; i8++) {
	                adi_acc_input[i8].im = input[i8].imag;
	        };
	        StartAcceleratorTimer();;
	        accel_cfft_wrapper(adi_acc_input, adi_acc_output, adi_acc_n);;
	        StopAcceleratorTimer();;
	        for (int i9 = 0; i9 < adi_acc_n; i9++) {
	                output[i9].imag = adi_acc_output[i9].im;
	        };
	        for (int i10 = 0; i10 < adi_acc_n; i10++) {
	                output[i10].real = adi_acc_output[i10].re;
	        };

	;

	;


	} else {
	FFT(input, output, n);
	}
	}
	void FFT_accel(cmplx * input, cmplx * output, int n) {
	FFT_accel_internal((cmplx *) input, (cmplx *) output, (int) n);
	}

void run_accelerator(int n) {
AcceleratorTotalNanos = 0;

cmplx *input = cpuimage_cpuFFT_generate_input(n);
cmplx output[n];

clock_t begin = clock();
for (int i = 0; i < TIMES; i ++) {
	FFT_accel(input, output, n);
}
clock_t end = clock();
printf("Time: %.12f\n", (double) (end - begin) / CLOCKS_PER_SEC);
printf("AccTime: %.12f\n", (double) AcceleratorTotalNanos / CLOCKS_PER_SEC);
free(input);
}

#endif
