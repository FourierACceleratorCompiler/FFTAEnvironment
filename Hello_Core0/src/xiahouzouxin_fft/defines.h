/*
 * defines.h
 *
 *  Created on: 16 Jun 2021
 *      Author: woodr
 */
#include "../Hello_Core0.h"

#ifdef PROJ_xiahouzouxin_fft

#ifndef xiahouzouxin_fft_H_
#define xiahouzouxin_fft_H_
#include "self_contained_code.h"
#include "../Hello_Core0.h"

extern void RUNFUN(int n);
extern void RUNFUN(int n);

COMPLEX *xiahouzouxin_fft_generate_inputs(int size);

#define SIZES 6
#define TEST_SIZES xiahouzouxin_fft_sizes

extern int xiahouzouxin_fft_sizes[];

#endif /* xiahouzouxin_fft_H_ */

#endif
