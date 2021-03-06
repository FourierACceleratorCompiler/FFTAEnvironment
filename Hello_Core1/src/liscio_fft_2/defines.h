/*
 * defines.h
 *
 *  Created on: 16 Jun 2021
 *      Author: woodr
 */
#include "../Hello_Core1.h"

#ifdef PROJ_liscio_fft_2

#ifndef liscio_fft_2_H_
#define liscio_fft_2_H_
#include "self_contained_code.h"
#include "../Hello_Core1.h"

extern void RUNFUN(int n);
extern void RUNFUN(int n);

_complex_double_ *liscio_fft_2_generate_input(int size);

#define SIZES 9
#define TEST_SIZES liscio_fft_2_sizes

extern int liscio_fft_2_sizes[];

#endif /* liscio_fft_H_ */

#endif
