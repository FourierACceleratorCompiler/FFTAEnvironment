#include "../Hello_Core1.h"

#ifdef PROJ_dlinyj_fft

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

void fft_calc_accel_internal(int p,facc_2xf32_t * c,facc_2xf32_t * in,facc_2xf32_t * out,int norm) {

if ((PRIM_EQUAL(norm, 1)) && ((PRIM_EQUAL(p, 14)) || ((PRIM_EQUAL(p, 13)) || ((PRIM_EQUAL(p, 12)) || ((PRIM_EQUAL(p, 11)) || ((PRIM_EQUAL(p, 10)) || ((PRIM_EQUAL(p, 9)) || ((PRIM_EQUAL(p, 8)) || ((PRIM_EQUAL(p, 7)) || (PRIM_EQUAL(p, 6))))))))))) {
static complex_float adi_acc_output[16384]__attribute__((__aligned__(64)));;
        static int adi_acc_n;;
        adi_acc_n = Pow2(p);;;
        static complex_float adi_acc_input[16384]__attribute__((__aligned__(64)));;
        for (int i22 = 0; i22 < adi_acc_n; i22++) {
                adi_acc_input[i22].re = in[i22].f32_1;
        };
        for (int i23 = 0; i23 < adi_acc_n; i23++) {
                adi_acc_input[i23].im = in[i23].f32_2;
        };
        StartAcceleratorTimer();;
        accel_cfft_wrapper(adi_acc_input, adi_acc_output, adi_acc_n);;
        StopAcceleratorTimer();;
        for (int i24 = 0; i24 < adi_acc_n; i24++) {
                out[i24].f32_1 = adi_acc_output[i24].re;
        };
        for (int i25 = 0; i25 < adi_acc_n; i25++) {
                out[i25].f32_2 = adi_acc_output[i25].im;
        };

;

;

;

if (GREATER_THAN(norm, -1)) {
static long int bi_1;;
        bi_1 = Pow2(p);;;
        ARRAY_HALF_NORM(out, f32_1, bi_1);;
        ARRAY_HALF_NORM(out, f32_2, bi_1);
} else {
;
}
} else {
fft_calc(p, (float *)c, (float *)in, (float *)out, norm);
}
}
void fft_calc_accel(int p, float * c, float * in, float * out, int norm) {
fft_calc_accel_internal((int) p, (facc_2xf32_t *) c, (facc_2xf32_t *) in, (facc_2xf32_t *) out, (int) norm);
}

void run_accelerator(int n) {
AcceleratorTotalNanos = 0;

float *input = dlinyj_fft_generate_inputs(n);
float output[2*n];
float c[n * 2];
int p = log(n);
fft_make(p, c);
clock_t begin = clock(); // Measure after setup because a good codegen would do DCE on all of that.

for (int i = 0; i < TIMES; i ++) {
	fft_calc_accel(p, c, input, output, 1);
}
clock_t end = clock();
printf("Time: %.12f\n", (double) (end - begin) / CLOCKS_PER_SEC);
printf("AccTime: %.12f\n", (double) AcceleratorTotalNanos / CLOCKS_PER_SEC);
}
free(input);

#endif
