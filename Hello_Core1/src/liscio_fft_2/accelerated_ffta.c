#include "../Hello_Core1.h"

#ifdef PROJ_liscio_fft_2

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

_complex_double_ * FFT_wrapper_accel_internal(_complex_double_ * x,int N) {

if ((PRIM_EQUAL(N, 16384)) || ((PRIM_EQUAL(N, 8192)) || ((PRIM_EQUAL(N, 4096)) || ((PRIM_EQUAL(N, 2048)) || ((PRIM_EQUAL(N, 1024)) || ((PRIM_EQUAL(N, 512)) || ((PRIM_EQUAL(N, 256)) || ((PRIM_EQUAL(N, 128)) || (PRIM_EQUAL(N, 64)))))))))) {
static complex_float adi_acc_output[16384]__attribute__((__aligned__(64)));;
        static int adi_acc_n;;
        adi_acc_n = N;;
        static complex_float adi_acc_input[16384]__attribute__((__aligned__(64)));;
        for (int i12 = 0; i12 < adi_acc_n; i12++) {
                adi_acc_input[i12].re = x[i12].im;
        };
        for (int i13 = 0; i13 < adi_acc_n; i13++) {
                adi_acc_input[i13].im = x[i13].re;
        };
        StartAcceleratorTimer();;
        accel_cfft_wrapper(adi_acc_input, adi_acc_output, adi_acc_n);;
        StopAcceleratorTimer();;
        _complex_double_* returnvar = (_complex_double_*) facc_malloc (0, sizeof(_complex_double_)*N);;
        for (int i14 = 0; i14 < adi_acc_n; i14++) {
                returnvar[i14].im = adi_acc_output[i14].re;
        };
        for (int i15 = 0; i15 < adi_acc_n; i15++) {
                returnvar[i15].re = adi_acc_output[i15].im;
        };

return returnvar;;
                                                                                                                                      ;
;

                                                                                                                                      } else {
return FFT_wrapper(x, N);;
}
}

_complex_double_ * FFT_wrapper_accel(_complex_double_ * x, int N) {
return (_complex_double_ *)FFT_wrapper_accel_internal((_complex_double_ *) x, (int) N);
}

void run_accelerator(int n) {
AcceleratorTotalNanos = 0;
_complex_double_ *x = liscio_fft_2_generate_inputs(n);
int N = n;
clock_t begin = clock();
for (int i = 0; i < TIMES; i ++) {
	_complex_double_ * returnv = FFT_wrapper_accel(x, N);
	facc_free(returnv);
}
clock_t end = clock();
printf("Time: %.12f\n", (double) (end - begin) / CLOCKS_PER_SEC);
printf("AccTime: %.12f\n", (double) AcceleratorTotalNanos / CLOCKS_PER_SEC);
}

#endif
