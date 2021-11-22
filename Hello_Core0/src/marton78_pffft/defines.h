/*
 * defines.h
 *
 *  Created on: 16 Jun 2021
 *      Author: woodr
 */
#include "../Hello_Core0.h"

#ifdef PROJ_marton78_pffft

#ifndef marton78_pffft_H_
#define marton78_pffft_H_
#include "self_contained_code.h"
#include "../Hello_Core0.h"

extern void RUNFUN(int n);
extern void RUNFUN(int n);

float *marton78_pffft_generate_inputs(int size);

#define SIZES 5
#define TEST_SIZES marton78_pffft_sizes

extern int marton78_pffft_sizes[];

#endif /* marton78_pffft_H_ */

#endif
