/*
 * defines.h
 *
 *  Created on: 16 Jun 2021
 *      Author: woodr
 */
#include "../Hello_Core1.h"

#ifdef PROJ_omnister_fftp

typedef struct cplex {
	double re;
	double im;
} COMPLEX;

#ifndef omnister_fftp_H_
#define omnister_fftp_H_
#include "../Hello_Core1.h"

extern void RUNFUN(int n);
extern void RUNFUN(int n);

COMPLEX *omnister_fftp_generate_input(int size);

#define SIZES 9
#define TEST_SIZES omnister_fftp_sizes

extern int omnister_fftp_sizes[];

#endif /* omnister_fftp_H_ */

#endif
