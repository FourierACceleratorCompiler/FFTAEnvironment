
#include "../Hello_Core1.h"
#ifdef PROJ_dlinyj_fft

extern "C" {
#include "defines.h"
#include "self_contained_code.h"
}

float *dlinyj_fft_generate_inputs(int n) {
	float *data = (float *) malloc(2 * n * sizeof(float));

	for (int i = 0; i < 2 * n; i ++) {
		data[i] = 2.0;
	}

	return data;
}

#endif
