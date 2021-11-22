/*
 * defines.h
 *
 *  Created on: 16 Jun 2021
 *      Author: woodr
 */
#include "../Hello_Core0.h"

#ifdef PROJ_mozanunal_SimpleDSP

#ifndef mozanunal_SimpleDSP_H_
#define mozanunal_SimpleDSP_H_
#include "self_contained_code.h"
#include "../Hello_Core0.h"

extern void RUNFUN(int n);

COMPLEX *mozanunal_SimpleDSP_generate_inputs(int size);

#define SIZES 3
#define TEST_SIZES mozanunal_SimpleDSP_sizes

extern int mozanunal_SimpleDSP_sizes[];

#endif /* mozanunal_SimpleDSP_H_ */

#endif
