#include "../Hello_Core1.h"

#ifdef PROJ_mozanunal_SimpleDSP

/* Orignal skeleton is: 
Pre: SKELETON:

With the array index wrappers adi_acc_output,Annon
And (fromvars) []
Under dimensions [adi_acc_n = N]
With conversion function IdentityConversion

>(new binding): 

With the array index wrappers adi_acc_n
And (fromvars) [N]
Under dimensions []
With conversion function IdentityConversion

>(new binding): 

With the array index wrappers adi_acc_input,re
And (fromvars) [x, re]
Under dimensions [adi_acc_n = N]
With conversion function IdentityConversion

>(new binding): 

With the array index wrappers adi_acc_input,im
And (fromvars) [x, im]
Under dimensions [adi_acc_n = N]
With conversion function IdentityConversion
Post: SKELETON:

With the array index wrappers returnv,Annon
And (fromvars) []
Under dimensions [N = adi_acc_n]
With conversion function IdentityConversion

>(new binding): 

With the array index wrappers returnv,im
And (fromvars) [adi_acc_output, im]
Under dimensions [N = adi_acc_n]
With conversion function IdentityConversion

>(new binding): 

With the array index wrappers returnv,re
And (fromvars) [adi_acc_output, re]
Under dimensions [N = adi_acc_n]
With conversion function IdentityConversion
*/


#include "self_contained_code.h"
#include <filter.h>
#include"../clib/synthesizer.h"
#include "../clib/fft_synth/lib.h"
#include "defines.h"
#include<time.h>
#include <filter.h>
#include<stdio.h>
#include "../adi_interface.h"
#include <complex.h>



clock_t AcceleratorStart;
long AcceleratorTotalNanos = 0;
void StartAcceleratorTimer() {
	AcceleratorStart = clock();
}

void StopAcceleratorTimer() {
	AcceleratorTotalNanos +=
		(clock()) - AcceleratorStart;
}

void FFT_accel_internal(COMPLEX * Y,int N) {

if (PRIM_EQUAL(N, 64)) {
static complex_float adi_acc_output[16384]__attribute__((__aligned__(64)));;
        static int adi_acc_n;;
        adi_acc_n = N;;
        static complex_float adi_acc_input[16384]__attribute__((__aligned__(64)));;
        for (int i2 = 0; i2 < adi_acc_n; i2++) {
                adi_acc_input[i2].re = Y[i2].real;
        };
        for (int i3 = 0; i3 < adi_acc_n; i3++) {
                adi_acc_input[i3].im = Y[i3].imag;
        };
        StartAcceleratorTimer();;
        accel_cfft_wrapper(adi_acc_input, adi_acc_output, adi_acc_n);;
        StopAcceleratorTimer();;
        for (int i4 = 0; i4 < adi_acc_n; i4++) {
                Y[i4].real = adi_acc_output[i4].re;
        };
        for (int i5 = 0; i5 < adi_acc_n; i5++) {
                Y[i5].imag = adi_acc_output[i5].im;
        };

;

;


} else {
FFT(Y, N);
}
}
void FFT_accel(COMPLEX * Y, int N) {
FFT_accel_internal((COMPLEX *) Y, (int) N);
}

void run_accelerator(int n) {
AcceleratorTotalNanos = 0;

COMPLEX *input = mozanunal_SimpleDSP_generate_inputs(n);

clock_t begin = clock();

for (int i = 0; i < TIMES; i ++) {
	FFT_accel(input, n);
}
clock_t end = clock();
printf("Time: %.12f\n", (double) (end - begin) / CLOCKS_PER_SEC);
printf("AccTime: %.12f\n", (double) AcceleratorTotalNanos / CLOCKS_PER_SEC);
}
free(input);

#endif
