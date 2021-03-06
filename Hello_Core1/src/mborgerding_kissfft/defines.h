/*
 * defines.h
 *
 *  Created on: 16 Jun 2021
 *      Author: woodr
 */
#include "../Hello_Core1.h"

#ifdef PROJ_mborgerding_kissfft

#ifndef mborgerding_kissfft_H_
#define mborgerding_kissfft_H_
#include "self_contained_code.h"
#include "../Hello_Core1.h"

extern void RUNFUN(int n);
extern void RUNFUN(int n);

kiss_fft_cpx *mborgerding_kissfft_generate_inputs(int size);

#define SIZES 9
#define TEST_SIZES mborgerding_kissfft_sizes

extern int mborgerding_kissfft_sizes[];

#endif /* mborgerding_kissfft_H_ */

#endif
