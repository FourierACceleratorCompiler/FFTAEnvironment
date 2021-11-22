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
#ifdef PROJ_akw0088_fft

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


void fft_c_accel_internal(int num,j_complex_t * x,j_complex_t * w) {

if ((PRIM_EQUAL(num, 16384)) || ((PRIM_EQUAL(num, 8192)) || ((PRIM_EQUAL(num, 4096)) || ((PRIM_EQUAL(num, 2048)) || ((PRIM_EQUAL(num, 1024)) || ((PRIM_EQUAL(num, 512)) || ((PRIM_EQUAL(num, 256)) || ((PRIM_EQUAL(num, 128)) || (PRIM_EQUAL(num, 64)))))))))) {
static complex_float adi_acc_output[16384]__attribute__((__aligned__(64)));;
        static int adi_acc_n;;
        adi_acc_n = num;;
        static complex_float adi_acc_input[16384]__attribute__((__aligned__(64)));;
        for (int i82 = 0; i82 < adi_acc_n; i82++) {
                adi_acc_input[i82].re = x[i82].real;
        };
        for (int i83 = 0; i83 < adi_acc_n; i83++) {
                adi_acc_input[i83].im = x[i83].imag;
        };
        StartAcceleratorTimer();;
        accel_cfft_wrapper(adi_acc_input, adi_acc_output, adi_acc_n);;
        StopAcceleratorTimer();;
        for (int i84 = 0; i84 < adi_acc_n; i84++) {
                x[i84].real = adi_acc_output[i84].re;
        };
        for (int i85 = 0; i85 < adi_acc_n; i85++) {
                x[i85].imag = adi_acc_output[i85].im;
        };

;

;


} else {
fft_c(num, x, w);
}
}
void fft_c_accel(int num, j_complex_t * x, j_complex_t * w) {
fft_c_accel_internal((int) num, (j_complex_t *) x, (j_complex_t *) w);
}

void run_accelerator(int n) {
AcceleratorTotalNanos = 0;

j_complex_t *input = akw0088_fft_generate_input(n);
j_complex_t w[n];
init_w(n, w); // would be dead-code eliminated

clock_t begin = clock();
for (int i = 0; i < TIMES; i ++) {
	fft_c_accel(n, input, w);
}
clock_t end = clock();
printf("Time: %.12f\n", (double) (end - begin) / CLOCKS_PER_SEC);
printf("AccTime: %.12f\n", (double) AcceleratorTotalNanos / CLOCKS_PER_SEC);
free(input);
}

#endif
