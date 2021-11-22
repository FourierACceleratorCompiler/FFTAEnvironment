#include "../Hello_Core1.h"
#ifdef PROJ_cpuimage_cpuFFT
extern "C" {
#include "defines.h"
}

cmplx *cpuimage_cpuFFT_generate_input(int size) {
	cmplx *data = (cmplx *) malloc(size * sizeof(cmplx));

	for (int i = 0; i < size; i ++) {
		data[i].real = 1.0;
		data[i].imag = 2.0;
	}

	return data;
}

#endif
