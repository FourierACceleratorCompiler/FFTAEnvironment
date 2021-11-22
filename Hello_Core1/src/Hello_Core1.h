/*****************************************************************************
 * Hello_Core1.h
 *****************************************************************************/

#ifndef __HELLO_CORE1_H__
#define __HELLO_CORE1_H__

#define __LONG_LONG_PROCESSOR_TIME__

//#define EVAL_CORE1

// uncomment for ffta debugging:
//#define DEBUG_FFTA_INTERFACE


// Uncomment the define for the project you wish to benchmark.
// #define PROJ_MiBench 1
//#define PROJ_akw0088_fft
//#define PROJ_cpuimage_FFTResampler 1
//#define PROJ_cpuimage_StockhamFFT 1
//#define PROJ_cpuimage_cpuFFT 1
//#define PROJ_dlinyj_fft 1
//#define PROJ_gregfjohnson_fft 1
//#define PROJ_JodiTheTigger_meow_fft 1
//#define PROJ_jtfell_c_fft 1
//#define PROJ_liscio_fft 1
//#define PROJ_liscio_fft_2 1
//#define PROJ_marton78_pffft 1
//#define PROJ_mborgerding_kissfft 1
//#define PROJ_MiBench_MiBench 1
//#define PROJ_mozanunal_SimpleDSP 1
#define PROJ_omnister_fftp 1
//#define PROJ_tasimon_FFT 1
//#define PROJ_xbarin02_uFFT 1
//#define PROJ_xbarin02_uFFT_2 1
//#define PROJ_xiahouzouxin_fft 1


// Define one of the below to run either the original or the accelerator.
#define RUNFUN run_original
//#define RUNFUN run_accelerator


/* Add your custom header content here */
#define TIMES 1 // How many times to do FFT per loop
#define BENCHMARK_TIMES 2 // How many times to loop over the entire suite:
// timings are deterministic, so just loop enough to show that.

#endif /* __HELLO_CORE1_H__ */
