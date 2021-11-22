/*****************************************************************************
 * Hello_Core0.h
 *****************************************************************************/

#ifndef __HELLO_CORE0_H__
#define __HELLO_CORE0_H__

/* Add your custom header content here */
#define __LONG_LONG_PROCESSOR_TIME__
// 500MHz frequency according to https://www.analog.com/media/en/technical-documentation/data-sheets/ADSP-SC582_583_584_587_589_ADSP-21583_584_587.pdf
#define CYCLES_PER_SECOND 500000000
#define EVAL_CORE0

// uncomment for ffta debugging:
//#define DEBUG_FFTA_INTERFACE


// NOTE THAT THIS IS ONLY FOR CORE 0 --- PROJECTS FOR CORE 1 ARE IN HELLO_CORE1.H
// Uncomment the define for the project you wish to benchmark.
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
//#define PROJ_tasimon_FFT 1
//#define PROJ_xbarin02_uFFT 1
//#define PROJ_xbarin02_uFFT_2 1
#define PROJ_xiahouzouxin_fft 1


// Define one of the below to run either the original or the accelerator.
#define RUNFUN run_original
//#define RUNFUN run_accelerator DOES NOT WORK ON A7 --- RUN ON CORE 1.


/* Add your custom header content here */
#define TIMES 1 // How many times to do FFT per loop
#define BENCHMARK_TIMES 2 // How many times to loop over the entire suite:
// timings are deterministic, so just loop enough to show that.
#endif /* __HELLO_CORE0_H__ */
