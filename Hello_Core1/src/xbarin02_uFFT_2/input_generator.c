
#include "../Hello_Core1.h"
#ifdef PROJ_xbarin02_uFFT_2

extern "C" {
#include "defines.h"
#include "self_contained_code.h"
}

_float_complex_ *xbarin02_uFFT_2_generate_inputs(int n) {
	_float_complex_ *data = (_float_complex_ *) malloc(n * sizeof(_float_complex_));

	for (int i = 0; i < n; i ++) {
		data[i].re = 2.0;
		data[i].im = 1.0;
	}

	return data;
}

#endif
