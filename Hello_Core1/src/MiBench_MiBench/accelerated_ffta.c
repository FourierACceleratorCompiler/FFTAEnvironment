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
#ifdef PROJ_MiBench_MiBench

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


clock_t AcceleratorStart;
long AcceleratorTotalNanos = 0;
void StartAcceleratorTimer() {
	AcceleratorStart = clock();
}

void StopAcceleratorTimer() {
	AcceleratorTotalNanos +=
		(clock()) - AcceleratorStart;
}


void fft_float_accel_internal(int NumSamples,int InverseTransform,float * RealIn,float * ImagIn,float * RealOut,float * ImagOut) {

if ((PRIM_EQUAL(InverseTransform, 0)) && ((PRIM_EQUAL(NumSamples, 16384)) || ((PRIM_EQUAL(NumSamples, 8192)) || ((PRIM_EQUAL(NumSamples, 4096)) || ((PRIM_EQUAL(NumSamples, 2048)) || ((PRIM_EQUAL(NumSamples, 1024)) || ((PRIM_EQUAL(NumSamples, 512)) || ((PRIM_EQUAL(NumSamples, 256)) || ((PRIM_EQUAL(NumSamples, 128)) || (PRIM_EQUAL(NumSamples, 64))))))))))) {
static complex_float adi_acc_output[16384]__attribute__((__aligned__(64)));
for (int i49 = 0; i49++; i49 < 16384) {
static complex_float adi_acc_output_sub_element;

;
adi_acc_output[i49] = adi_acc_output_sub_element;
};
        static int adi_acc_n;;
        adi_acc_n = NumSamples;;
        static complex_float adi_acc_input[16384]__attribute__((__aligned__(64)));
for (int i50 = 0; i50++; i50 < 16384) {
static complex_float adi_acc_input_sub_element;

;
adi_acc_input[i50] = adi_acc_input_sub_element;
};
        for (int i7 = 0; i7 < adi_acc_n; i7++) {
                adi_acc_input[i7].re = ImagIn[i7];
        };
        for (int i8 = 0; i8 < adi_acc_n; i8++) {
                adi_acc_input[i8].im = RealIn[i8];
        };
        StartAcceleratorTimer();;
        accel_cfft_wrapper(adi_acc_input, adi_acc_output, adi_acc_n);;
        StopAcceleratorTimer();;
        for (int i9 = 0; i9 < adi_acc_n; i9++) {
                ImagOut[i9] = adi_acc_output[i9].re;
        };
        for (int i10 = 0; i10 < adi_acc_n; i10++) {
                RealOut[i10] = adi_acc_output[i10].im;
        };

;

;


} else {
fft_float(NumSamples, InverseTransform, RealIn, ImagIn, RealOut, ImagOut);
}
}
void fft_float_accel(int NumSamples, int InverseTransform, float * RealIn, float * ImagIn, float * RealOut, float * ImagOut) {
fft_float_accel_internal((int) NumSamples, (int) InverseTransform, (float *) RealIn, (float *) ImagIn, (float *) RealOut, (float *) ImagOut);
}

void run_accelerator(int n) {
AcceleratorTotalNanos = 0;

float *realin = MiBench_MiBench_generate_input(n);
float *imagin = MiBench_MiBench_generate_input(n);
float realout[n];
float imagout[n];

clock_t begin = clock();
for (int i = 0; i < TIMES; i ++) {
	fft_float_accel(n, 0, realin, imagin, realout, imagout);
}
clock_t end = clock();
printf("Time: %.12f\n", (double) (end - begin) / CLOCKS_PER_SEC);
printf("AccTime: %.12f\n", (double) AcceleratorTotalNanos / CLOCKS_PER_SEC);
free(realin);
free(imagin);
}

#endif
