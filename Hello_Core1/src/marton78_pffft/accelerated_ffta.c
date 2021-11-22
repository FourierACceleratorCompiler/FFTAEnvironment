#include "../Hello_Core1.h"

#ifdef PROJ_marton78_pffft

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

void desugared_transform_ordered_accel_internal(PFFFT_Setup_Desugar * setup,facc_2xf32_t * input,facc_2xf32_t * output,facc_2xf32_t * work,int direction) {

if ((PRIM_EQUAL(direction, 1)) || (PRIM_EQUAL(direction, 0))) {
static complex_float adi_acc_output[16384]__attribute__((__aligned__(64)));;                                                                      static int adi_acc_n;;
        adi_acc_n = setup->N;;
        static complex_float adi_acc_input[16384]__attribute__((__aligned__(64)));;                                                               for (int i82 = 0; i82 < adi_acc_n; i82++) {
                adi_acc_input[i82].re = input[i82].f32_1;
        };
        for (int i83 = 0; i83 < adi_acc_n; i83++) {
                adi_acc_input[i83].im = input[i83].f32_2;
        };
        StartAcceleratorTimer();;
        accel_cfft_wrapper(adi_acc_input, adi_acc_output, adi_acc_n);;                                                                            StopAcceleratorTimer();;
        for (int i84 = 0; i84 < setup->N; i84++) {
                output[i84].f32_1 = adi_acc_output[i84].re;
        };
        for (int i85 = 0; i85 < setup->N; i85++) {
                output[i85].f32_2 = adi_acc_output[i85].im;
        };

;
                                                                                                                                          ;


} else {
desugared_transform_ordered(setup, (float *)input, (float *)output, (float *)work, direction);                                            }
}
void desugared_transform_ordered_accel(PFFFT_Setup_Desugar * setup, float * input, float * output, float * work, int direction) {
desugared_transform_ordered_accel_internal((PFFFT_Setup_Desugar *) setup, (facc_2xf32_t *) input, (facc_2xf32_t *) output, (facc_2xf32_t *) work, (int) direction);
}
void run_accelerator(int n) {
AcceleratorTotalNanos = 0;

float*input = marton78_pffft_generate_inputs(n);
float work[2 * n];
float output[2 * n];

struct PFFFT_Setup *setup = pffft_new_setup(n, PFFFT_COMPLEX);
pffft_direction_t direction = PFFFT_FORWARD;
clock_t begin = clock(); // Measure after setup because a good codegen would do DCE on all of that.

for (int i = 0; i < TIMES; i ++) {
	desugared_transform_ordered_accel(setup, input, output, work, direction);
}
clock_t end = clock();
printf("Time: %.12f\n", (double) (end - begin) / CLOCKS_PER_SEC);
printf("AccTime: %.12f\n", (double) AcceleratorTotalNanos / CLOCKS_PER_SEC);
free(input);
}

#endif
