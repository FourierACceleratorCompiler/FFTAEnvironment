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
#ifdef PROJ_jtfell_c_fft


#include "self_contained_code.h"
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

jcomplex * DFT_naive_accel_internal(jcomplex * x,int N) {

if ((PRIM_EQUAL(N, 16384)) || ((PRIM_EQUAL(N, 8192)) || ((PRIM_EQUAL(N, 4096)) || ((PRIM_EQUAL(N, 2048)) || ((PRIM_EQUAL(N, 1024)) || ((PRIM_EQUAL(N, 512)) || ((PRIM_EQUAL(N, 256)) || ((PRIM_EQUAL(N, 128)) || ((PRIM_EQUAL(N, 64)) || ((PRIM_EQUAL(N, 32)) || ((PRIM_EQUAL(N, 16)) || ((PRIM_EQUAL(N, 8)) || ((PRIM_EQUAL(N, 4)) || ((PRIM_EQUAL(N, 2)) || (PRIM_EQUAL(N, 1)))))))))))))))) {
static complex_float adi_acc_output[16384]__attribute__((__aligned__(64)));;
        static int adi_acc_n;;
        adi_acc_n = N;;
        static complex_float adi_acc_input[16384]__attribute__((__aligned__(64)));;
        for (int i8 = 0; i8 < adi_acc_n; i8++) {
                adi_acc_input[i8].re = x[i8].re;
        };
        for (int i9 = 0; i9 < adi_acc_n; i9++) {
                adi_acc_input[i9].im = x[i9].im;
        };
        StartAcceleratorTimer();;
        accel_cfft_wrapper(adi_acc_input, adi_acc_output, adi_acc_n);;
        StopAcceleratorTimer();;
        jcomplex* returnv = (jcomplex*) facc_malloc (0, sizeof(jcomplex)*N);;
        for (int i11 = 0; i11 < N; i11++) {
                returnv[i11].im = adi_acc_output[i11].im;
        };
        for (int i12 = 0; i12 < N; i12++) {
                returnv[i12].re = adi_acc_output[i12].re;
        };

return returnv;;

;

;


} else {

return DFT_naive(x, N);;
}
}

jcomplex * DFT_naive_accel(jcomplex * x, int N) {
return (jcomplex *)DFT_naive_accel_internal((jcomplex *) x, (int) N);
}

void run_accelerator(int n) {
jcomplex *x = jtfell_c_fft_generate_inputs(n);

AcceleratorTotalNanos = 0;
clock_t begin = clock();
for (int i = 0; i < TIMES; i ++) {
	jcomplex * returnv = DFT_naive_accel(x, n);
	facc_free(returnv);
}
clock_t end = clock();


printf("Time: %.12f\n", (double) (end - begin) / CLOCKS_PER_SEC);
printf("AccTime: %.12f\n", (double) AcceleratorTotalNanos / CLOCKS_PER_SEC);
}

#endif
