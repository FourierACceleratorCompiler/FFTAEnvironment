/*****************************************************************************
 * Hello_Core1.c
 *****************************************************************************/

#include <sys/platform.h>
#include <sys/adi_core.h>
#include "adi_initialize.h"
#include "adi_fft_wrapper.h"
#include "Hello_Core1.h"
#include <stdio.h>
#include <complex.h>
#include <time.h>
#include <filter.h>

// Project-specific includes
#ifdef PROJ_akw0088_fft
#include "akw0088_fft/defines.h"
#endif
#ifdef PROJ_cpuimage_cpuFFT
#include "cpuimage_cpuFFT/defines.h"
#endif
#ifdef PROJ_cpuimage_FFTResampler
#include "cpuimage_FFTResampler/defines.h"
// #include "cpuimage_FFTResampler/accelerated_ffta.cpp"
// #include "cpuimage_FFTResampler/wrapper.cpp"
#endif
#ifdef PROJ_cpuimage_StockhamFFT
#include "cpuimage_StockhamFFT/defines.h"
#endif
#ifdef PROJ_gregfjohnson_fft
#include "gregfjohnson_fft/defines.h"
#endif
#ifdef PROJ_JodiTheTigger_meow_fft
#include "JodiTheTigger_meow_fft/defines.h"
#endif
#ifdef PROJ_dlinyj_fft
#include "dlinyj_fft/defines.h"
#endif
#ifdef PROJ_jtfell_c_fft
#include "jtfell_c-fft/defines.h"
#endif
#ifdef PROJ_liscio_fft
#include "liscio_fft/defines.h"
#endif
#ifdef PROJ_liscio_fft_2
#include "liscio_fft_2/defines.h"
#endif
#ifdef PROJ_marton78_pffft
#include "marton78_pffft/defines.h"
#endif
#ifdef PROJ_mborgerding_kissfft
#include "mborgerding_kissfft/defines.h"
#endif
#ifdef PROJ_MiBench_MiBench
#include "MiBench_MiBench/defines.h"
#endif
#ifdef PROJ_mozanunal_SimpleDSP
#include "mozanunal_SimpleDSP/defines.h"
#endif
#ifdef PROJ_omnister_fftp
#include "omnister_fftp/defines.h"
#endif
#ifdef PROJ_tasimon_FFT
#include "tasimon_FFT/defines.h"
#endif
#ifdef PROJ_xbarin02_uFFT
#include "xbarin02_uFFT/defines.h"
#endif
#ifdef PROJ_xbarin02_uFFT_2
#include "xbarin02_uFFT_2/defines.h"
#endif
#ifdef PROJ_xiahouzouxin_fft
#include "xiahouzouxin_fft/defines.h"
#endif


/** 
 * If you want to use command program arguments, then place them in the following string. 
 */
char __argv_string[] = "";

int main(int argc, char *argv[])
{
	/**
	 * Initialize managed drivers and/or services that have been added to 
	 * the project.
	 * @return zero on success 
	 */
	adi_initComponents();
#ifdef EVAL_CORE1
	printf("Hello World (c1: FFT Core)\n");
	
	// Start the evaluation:
	for (int i = 0; i < BENCHMARK_TIMES; i ++) {
		for (int i = 0; i < SIZES; i ++) {
			int runsize = TEST_SIZES[i];
			printf("Starting runs for size %d:\n", runsize);
			RUNFUN(runsize);
			printf("Runs finished for size %d\n", runsize);
		}
	}
	// #ifdef PRJ_MiBench
#endif

	/* Begin adding your custom code here */

	return 0;
}

