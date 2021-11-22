#include "../Hello_Core1.h"

#ifdef PROJ_tasimon_FFT

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

void fft64_accel_internal(facc_2xf32_t * Z) {
static complex_float adi_acc_output[64]__attribute__((__aligned__(64)));;
        static int adi_acc_n;;
        adi_acc_n = 64;;
        static complex_float adi_acc_input[64]__attribute__((__aligned__(64)));;
        for (int i12 = 0; i12 < 64; i12++) {
                adi_acc_input[i12].re = Z[i12].f32_2;
        };
        for (int i13 = 0; i13 < 64; i13++) {
                adi_acc_input[i13].im = Z[i13].f32_1;
        };
        StartAcceleratorTimer();;
        accel_cfft_wrapper(adi_acc_input, adi_acc_output, adi_acc_n);;
        StopAcceleratorTimer();;
        for (int i14 = 0; i14 < 64; i14++) {
                Z[i14].f32_2 = adi_acc_output[i14].re;
        };
        for (int i15 = 0; i15 < 64; i15++) {
                Z[i15].f32_1 = adi_acc_output[i15].im;
        };

;

;


}
void fft64_accel(float * Z) {
fft64_accel_internal((facc_2xf32_t *) Z);
}

void run_accelerator(int n) {
AcceleratorTotalNanos = 0;

float *input = tasimon_FFT_generate_inputs(n);

clock_t begin = clock();

for (int i = 0; i < TIMES; i ++) {
	fft64_accel(input);
}
clock_t end = clock();
printf("Time: %.12f\n", (double) (end - begin) / CLOCKS_PER_SEC);
printf("AccTime: %.12f\n", (double) AcceleratorTotalNanos / CLOCKS_PER_SEC);
}
free(input);

#endif
