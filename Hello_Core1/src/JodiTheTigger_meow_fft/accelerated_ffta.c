/* Orignal skeleton is: 
Pre: SKELETON:

With the array index wrappers adi_acc_output,Annon
And (fromvars) []
Under dimensions [adi_acc_n = data.N]
With conversion function IdentityConversion

>(new binding): 

With the array index wrappers adi_acc_n
And (fromvars) [data.N]
Under dimensions []
With conversion function IdentityConversion

>(new binding): 

With the array index wrappers adi_acc_input,re
And (fromvars) [in, r]
Under dimensions [adi_acc_n = data.N]
With conversion function IdentityConversion

>(new binding): 

With the array index wrappers adi_acc_input,im
And (fromvars) [in, j]
Under dimensions [adi_acc_n = data.N]
With conversion function IdentityConversion
Post: SKELETON:

With the array index wrappers out,j
And (fromvars) [adi_acc_output, im]
Under dimensions [data.N = adi_acc_n]
With conversion function IdentityConversion

>(new binding): 

With the array index wrappers out,r
And (fromvars) [adi_acc_output, re]
Under dimensions [data.N = adi_acc_n]
With conversion function IdentityConversion
*/
#include "../Hello_Core1.h"

#ifdef PROJ_JodiTheTigger_meow_fft


extern "C" {
#include "context_code.h"
}

#include "defines.h"

#include "../clib/synthesizer.h"
#include<time.h>
#include "../adi_interface.h"
#include <filter.h>
#include "../Hello_Core1.h"
#include <stdio.h>
#include <stdlib.h>
#include "defines.h"

clock_t AcceleratorStart;
long AcceleratorTotalNanos = 0;
void StartAcceleratorTimer() {
	AcceleratorStart = clock();
}

void StopAcceleratorTimer() {
	AcceleratorTotalNanos +=
		(clock()) - AcceleratorStart;
}

void meow_fft_accel_internal(Meow_FFT_Workset * data,Meow_FFT_Complex * in,Meow_FFT_Complex * out) {
static complex_float adi_acc_output[16384]__attribute__((__aligned__(64)));;
        static int adi_acc_n;;
        adi_acc_n = data->N;;
        static complex_float adi_acc_input[16384]__attribute__((__aligned__(64)));;
        for (int i47 = 0; i47 < adi_acc_n; i47++) {
                adi_acc_input[i47].re = in[i47].r;
        };
        for (int i48 = 0; i48 < adi_acc_n; i48++) {
                adi_acc_input[i48].im = in[i48].j;
        };
        StartAcceleratorTimer();;                                                                                                                 accel_cfft_wrapper(adi_acc_input, adi_acc_output, adi_acc_n);;
        StopAcceleratorTimer();;
        for (int i49 = 0; i49 < data->N; i49++) {
                out[i49].j = adi_acc_output[i49].im;                                                                                              };                                                                                                                                        for (int i50 = 0; i50 < data->N; i50++) {
                out[i50].r = adi_acc_output[i50].re;
        };

;

;


}

void meow_fft_accel(Meow_FFT_Workset * data, Meow_FFT_Complex * in, Meow_FFT_Complex * out) {
meow_fft_accel_internal((Meow_FFT_Workset *) data, (Meow_FFT_Complex *) in, (Meow_FFT_Complex *) out);
}
void run_accelerator(int n) {
	AcceleratorTotalNanos = 0;
Meow_FFT_Complex *in = JodiTheTigger_meow_fft_generate_inputs(n);
size_t workset_bytes = meow_fft_generate_workset(n, NULL);
Meow_FFT_Workset* data =
	(Meow_FFT_Workset *) malloc(workset_bytes);
meow_fft_generate_workset(n, data);
Meow_FFT_Complex out[data->N];
clock_t begin = clock();
for (int i = 0; i < TIMES; i ++) {
	meow_fft_accel(data, in, out);
}
clock_t end = clock();
printf("Time: %.12f\n", (double) (end - begin) / CLOCKS_PER_SEC);
printf("AccTime: %.12f\n", (double) AcceleratorTotalNanos / CLOCKS_PER_SEC);
free(in);
free(data);
}

#endif
