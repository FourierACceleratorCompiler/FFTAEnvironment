#include "../Hello_Core1.h"

#ifdef PROJ_xbarin02_uFFT_2

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

int fft_wrapper_accel_internal(_float_complex_ * vector,long int N) {

if ((PRIM_EQUAL(N, 16384)) || ((PRIM_EQUAL(N, 8192)) || ((PRIM_EQUAL(N, 4096)) || ((PRIM_EQUAL(N, 2048)) || ((PRIM_EQUAL(N, 1024)) || ((PRIM_EQUAL(N, 512)) || ((PRIM_EQUAL(N, 256)) || ((PRIM_EQUAL(N, 128)) || (PRIM_EQUAL(N, 64)))))))))) {
static complex_float adi_acc_output[16384]__attribute__((__aligned__(64)));;
        static int adi_acc_n;;
        adi_acc_n = N;;
        static complex_float adi_acc_input[16384]__attribute__((__aligned__(64)));;
        for (int i17 = 0; i17 < adi_acc_n; i17++) {
                adi_acc_input[i17].re = vector[i17].re;
        };
        for (int i18 = 0; i18 < adi_acc_n; i18++) {
                adi_acc_input[i18].im = vector[i18].im;
        };
        StartAcceleratorTimer();;
        accel_cfft_wrapper(adi_acc_input, adi_acc_output, adi_acc_n);;
        StopAcceleratorTimer();;
        for (int i19 = 0; i19 < adi_acc_n; i19++) {
                vector[i19].im = adi_acc_output[i19].im;
        };
        for (int i20 = 0; i20 < adi_acc_n; i20++) {
                vector[i20].re = adi_acc_output[i20].re;
        };
        static int returnv;;
        returnv = 0;;

return returnv;;

;

;


} else {

return fft_wrapper(vector, N);;
}
}
int fft_wrapper_accel(_float_complex_ * vector, long int N) {
return (int)fft_wrapper_accel_internal((_float_complex_ *) vector, (long int) N);
}

void run_accelerator(int n) {
AcceleratorTotalNanos = 0;

_float_complex_ *input = xbarin02_uFFT_2_generate_inputs(n);

clock_t begin = clock();

for (int i = 0; i < TIMES; i ++) {
	int returnv = fft_wrapper_accel(input, n);
}
clock_t end = clock();
printf("Time: %.12f\n", (double) (end - begin) / CLOCKS_PER_SEC);
printf("AccTime: %.12f\n", (double) AcceleratorTotalNanos / CLOCKS_PER_SEC);
}
free(input);

#endif
