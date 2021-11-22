#include "../Hello_Core1.h"

#ifdef PROJ_gregfjohnson_fft

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

void recFFT_wrapper_accel_internal(_complex_double_ * outvec,_complex_double_ * invec,unsigned int n,bool forward) {

if ((PRIM_EQUAL(n, 16384)) || ((PRIM_EQUAL(n, 8192)) || ((PRIM_EQUAL(n, 4096)) || ((PRIM_EQUAL(n, 2048)) || ((PRIM_EQUAL(n, 1024)) || ((PRIM_EQUAL(n, 512)) || ((PRIM_EQUAL(n, 256)) || ((PRIM_EQUAL(n, 128)) || (PRIM_EQUAL(n, 64)))))))))) {
static complex_float adi_acc_output[16384]__attribute__((__aligned__(64)));;
        static int adi_acc_n;;
        adi_acc_n = n;;
        static complex_float adi_acc_input[16384]__attribute__((__aligned__(64)));;
        for (int i12 = 0; i12 < adi_acc_n; i12++) {
                adi_acc_input[i12].re = invec[i12].im;
        };
        for (int i13 = 0; i13 < adi_acc_n; i13++) {
                adi_acc_input[i13].im = invec[i13].re;
        };
        StartAcceleratorTimer();;
        accel_cfft_wrapper(adi_acc_input, adi_acc_output, adi_acc_n);;
        StopAcceleratorTimer();;
        for (int i14 = 0; i14 < adi_acc_n; i14++) {
                outvec[i14].im = adi_acc_output[i14].re;
        };
        for (int i15 = 0; i15 < adi_acc_n; i15++) {
                outvec[i15].re = adi_acc_output[i15].im;
        };

;

;


} else {
recFFT_wrapper(outvec, invec, n, forward);
}
}
void recFFT_wrapper_accel(_complex_double_ * outvec, _complex_double_ * invec, unsigned int n, bool forward) {
recFFT_wrapper_accel_internal((_complex_double_ *) outvec, (_complex_double_ *) invec, (unsigned int) n, (bool) forward);
}

void run_accelerator(int n) {
AcceleratorTotalNanos = 0;

_complex_double_ *input = gregfjohnson_fft_generate_inputs(n);
_complex_double_ output[n];

clock_t begin = clock();

for (int i = 0; i < TIMES; i ++) {
	recFFT_wrapper_accel(output, input, n, true);
}
clock_t end = clock();
printf("Time: %.12f\n", (double) (end - begin) / CLOCKS_PER_SEC);
printf("AccTime: %.12f\n", (double) AcceleratorTotalNanos / CLOCKS_PER_SEC);

free(input);
}

#endif
