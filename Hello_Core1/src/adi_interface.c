#include <filter.h>
#include <complex.h>
#include "adi_fft_wrapper.h"
#include "adi_initialize.h"
#include "Hello_Core1.h"
#include <stdio.h>

// So, the idea here is to, as stated in the paper:
// Provide an API without too much needless sparsity.
// We could target the accel_cfft_large function directly,
// it would just require a bit more information in the
// apispec.json file --- it's just easier to target this
// this way.

// We could also support return values, but it just
// saves programming effort to not use the return values.
// (Have yet to be implemented in FACC at time of writing.)


void accel_cfft_wrapper(const complex_float dm input[],
						complex_float dm output[],
						int n) {
	// set error handler.
	#ifdef DEBUG_FFTA_INTERFACE
	accel_fft_set_error_handler(accel_fft_error_handler_print);
	printf("Alignments are %p, %p\n", input, output);
	#endif

	if (n > 2048) {
		int stride = 1;
		const complex_float pm *twiddles = accel_twiddles_32768;
		if (n <= 32768) {
			stride = 32768 / n;
		} else {
			// TODO -- something would be good to e.g. generate the twiddle factors
		}
		accel_cfft_large(input, output, twiddles, stride, 1.0, n);
	} else {
		accel_cfft_small(input, output, 1.0, n);
	}
}
