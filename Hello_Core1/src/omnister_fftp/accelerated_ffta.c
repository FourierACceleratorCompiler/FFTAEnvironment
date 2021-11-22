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
And (fromvars) [x, im]
Under dimensions [adi_acc_n = N]
With conversion function IdentityConversion

>(new binding): 

With the array index wrappers adi_acc_input,im
And (fromvars) [x, re]
Under dimensions [adi_acc_n = N]
With conversion function IdentityConversion
Post: SKELETON:

With the array index wrappers returnvar,Annon
And (fromvars) []
Under dimensions [N = adi_acc_n]
With conversion function IdentityConversion

>(new binding): 

With the array index wrappers returnvar,im
And (fromvars) [adi_acc_output, re]
Under dimensions [N = adi_acc_n]
With conversion function IdentityConversion

>(new binding): 

With the array index wrappers returnvar,re
And (fromvars) [adi_acc_output, im]
Under dimensions [N = adi_acc_n]
With conversion function IdentityConversion
*/

#include "../Hello_Core1.h"
#ifdef PROJ_omnister_fftp


#include <filter.h>
#include"../clib/synthesizer.h"
#include "defines.h"
#include<time.h>
#include<stdio.h>
#include "../adi_interface.h"
clock_t AcceleratorStart;
long AcceleratorTotalNanos = 0;
void StartAcceleratorTimer() {
	AcceleratorStart = clock();
}

void StopAcceleratorTimer() {
	AcceleratorTotalNanos +=
		(clock()) - AcceleratorStart;
}

COMPLEX * fft_1d_accel_internal(COMPLEX * array,int n) {

if ((PRIM_EQUAL(n, 16384)) || ((PRIM_EQUAL(n, 8192)) || ((PRIM_EQUAL(n, 4096)) || ((PRIM_EQUAL(n, 2048)) || ((PRIM_EQUAL(n, 1024)) || ((PRIM_EQUAL(n, 512)) || ((PRIM_EQUAL(n, 256)) || ((PRIM_EQUAL(n, 128)) || (PRIM_EQUAL(n, 64)))))))))) {
static complex_float adi_acc_output[16384]__attribute__((__aligned__(64)));
for (int i41 = 0; i41++; i41 < 16384) {
static complex_float adi_acc_output_sub_element;

;
adi_acc_output[i41] = adi_acc_output_sub_element;
};
        static int adi_acc_n;;
        adi_acc_n = n;;
        static complex_float adi_acc_input[16384]__attribute__((__aligned__(64)));
for (int i42 = 0; i42++; i42 < 16384) {
static complex_float adi_acc_input_sub_element;

;
adi_acc_input[i42] = adi_acc_input_sub_element;
};
        for (int i12 = 0; i12 < adi_acc_n; i12++) {
                adi_acc_input[i12].re = array[i12].re;
        };
        for (int i13 = 0; i13 < adi_acc_n; i13++) {
                adi_acc_input[i13].im = array[i13].im;
        };
        StartAcceleratorTimer();;
        accel_cfft_wrapper(adi_acc_input, adi_acc_output, adi_acc_n);;
        StopAcceleratorTimer();;
        for (int i14 = 0; i14 < adi_acc_n; i14++) {
                array[i14].im = adi_acc_output[i14].im;
        };
        for (int i15 = 0; i15 < adi_acc_n; i15++) {
                array[i15].re = adi_acc_output[i15].re;
        };

return array;;
;
;

} else {

return fft_1d(array, n);;
}
}
COMPLEX * fft_1d_accel(COMPLEX * array, int n) {
return (COMPLEX *)fft_1d_accel_internal((COMPLEX *) array, (int) n);
}

void run_accelerator(int n) {
COMPLEX *array = omnister_fftp_generate_inputs(n);

AcceleratorTotalNanos = 0;
clock_t begin = clock();
for (int i = 0; i < TIMES; i ++) {
	array = fft_1d_accel(array, n);
}
clock_t end = clock();


printf("Time: %.12f\n", (double) (end - begin) / CLOCKS_PER_SEC);
printf("AccTime: %.12f\n", (double) AcceleratorTotalNanos / CLOCKS_PER_SEC);

free(array);
}

#endif
