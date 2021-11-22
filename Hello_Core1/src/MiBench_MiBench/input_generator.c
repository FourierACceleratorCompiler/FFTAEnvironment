#include "../Hello_Core1.h"
#ifdef PROJ_MiBench_MiBench
extern "C" {
#include "defines.h"
}

float *MiBench_MiBench_generate_input(int size) {
	float *data = (float *) malloc(size * sizeof(float));

	for (int i = 0; i < size; i ++) {
		data[i] = 1.0;
	}

	return data;
}

#endif
