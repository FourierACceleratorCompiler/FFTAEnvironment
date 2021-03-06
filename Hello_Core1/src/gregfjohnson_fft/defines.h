/*
 * defines.h
 *
 *  Created on: 16 Jun 2021
 *      Author: woodr
 */
#include "../Hello_Core1.h"

#ifdef PROJ_gregfjohnson_fft

#ifndef gregfjohnson_fft_H_
#define gregfjohnson_fft_H_
#include "self_contained_code.h"
#include "../Hello_Core1.h"

extern void RUNFUN(int n);

_complex_double_ *gregfjohnson_fft_generate_inputs(int size);

#define SIZES 9
#define TEST_SIZES gregfjohnson_fft_sizes

extern int gregfjohnson_fft_sizes[];

#endif /* gregfjohnson_fft_H_ */

#endif
