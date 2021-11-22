################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL := ${ComSpec}

-include ../makefile.init

RM := clean

# All of the sources participating in the build are defined here
-include sources.mk
-include system/sru/subdir.mk
-include system/services/tmr/subdir.mk
-include system/services/stdio/subdir.mk
-include system/services/rtc/subdir.mk
-include system/services/pcg/subdir.mk
-include system/services/gpio/subdir.mk
-include system/pinmux/GeneratedSources/subdir.mk
-include system/mcapi/GeneratedSources/subdir.mk
-include system/linker/subdir.mk
-include system/heap_stack/subdir.mk
-include system/drivers/uart/subdir.mk
-include system/subdir.mk
-include src/xiahouzouxin_fft/subdir.mk
-include src/xbarin02_uFFT_2/subdir.mk
-include src/xbarin02_uFFT/subdir.mk
-include src/tasimon_FFT/subdir.mk
-include src/omnister_fftp/subdir.mk
-include src/mozanunal_SimpleDSP/subdir.mk
-include src/mborgerding_kissfft/subdir.mk
-include src/marton78_pffft/subdir.mk
-include src/liscio_fft_2/subdir.mk
-include src/liscio_fft/subdir.mk
-include src/jtfell_c-fft/subdir.mk
-include src/gregfjohnson_fft/subdir.mk
-include src/dlinyj_fft/subdir.mk
-include src/cpuimage_cpuFFT/subdir.mk
-include src/cpuimage_StockhamFFT/subdir.mk
-include src/cpuimage_FFTResampler/subdir.mk
-include src/clib/fft_synth/subdir.mk
-include src/clib/subdir.mk
-include src/akw0088_fft/subdir.mk
-include src/MiBench_MiBench/subdir.mk
-include src/JodiTheTigger_meow_fft/subdir.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
OBJS := $(SRC_OBJS)
# Quote makefile variable : OBJS 
OBJS := $(subst \ ,@, $(OBJS))
OBJS := $(foreach var, $(OBJS), "$(subst @, ,$(var))")
# Quote makefile variable : CC_DEPS 
CC_DEPS := $(subst \ ,@, $(CC_DEPS))
CC_DEPS := $(foreach var, $(CC_DEPS), "$(subst @, ,$(var))")
# Quote makefile variable : C++_DEPS 
C++_DEPS := $(subst \ ,@, $(C++_DEPS))
C++_DEPS := $(foreach var, $(C++_DEPS), "$(subst @, ,$(var))")
# Quote makefile variable : C_UPPER_DEPS 
C_UPPER_DEPS := $(subst \ ,@, $(C_UPPER_DEPS))
C_UPPER_DEPS := $(foreach var, $(C_UPPER_DEPS), "$(subst @, ,$(var))")
# Quote makefile variable : CXX_DEPS 
CXX_DEPS := $(subst \ ,@, $(CXX_DEPS))
CXX_DEPS := $(foreach var, $(CXX_DEPS), "$(subst @, ,$(var))")
# Quote makefile variable : C_DEPS 
C_DEPS := $(subst \ ,@, $(C_DEPS))
C_DEPS := $(foreach var, $(C_DEPS), "$(subst @, ,$(var))")
# Quote makefile variable : CPP_DEPS 
CPP_DEPS := $(subst \ ,@, $(CPP_DEPS))
CPP_DEPS := $(foreach var, $(CPP_DEPS), "$(subst @, ,$(var))")

# All Target
all: Hello_Core0

# Tool invocations

PREPROC:
	@echo 'Preprocessing LD script: Hello_Core0.ld'
	arm-none-eabi-cpp -E -P -DCORE0 -DDEBUG -o  "Hello_Core0.ld" "C:/Users/woodr/cces/HelloWorld/Hello/Hello_Core0/system/linker/app.ld"

Hello_Core0: $(USER_OBJS) $(SRC_OBJS) PREPROC
	@echo 'Building target: $@'
	@echo 'Invoking: CrossCore ARM Bare Metal C++ Linker'
	arm-none-eabi-g++ -mproc=ADSP-SC589 -msi-revision=any -THello_Core0.ld -s -DCORE0 -DDEBUG -Wl,--gc-sections -mdebug-libs -o  "Hello_Core0" @input-file.txt -lm
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(CC_DEPS)$(C++_DEPS)$(EXECUTABLES)$(OBJS)$(C_UPPER_DEPS)$(CXX_DEPS)$(C_DEPS)$(CPP_DEPS) Hello_Core0
	-@echo ' '

.PHONY: all clean dependents

-include ../makefile.targets
