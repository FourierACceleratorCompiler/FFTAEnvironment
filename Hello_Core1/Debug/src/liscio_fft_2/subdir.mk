################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/liscio_fft_2/accelerated_ffta.c \
../src/liscio_fft_2/defines.c \
../src/liscio_fft_2/input_generator.c \
../src/liscio_fft_2/self_contained_code.c \
../src/liscio_fft_2/wrapper.c 

SRC_OBJS += \
./src/liscio_fft_2/accelerated_ffta.doj \
./src/liscio_fft_2/defines.doj \
./src/liscio_fft_2/input_generator.doj \
./src/liscio_fft_2/self_contained_code.doj \
./src/liscio_fft_2/wrapper.doj 

C_DEPS += \
./src/liscio_fft_2/accelerated_ffta.d \
./src/liscio_fft_2/defines.d \
./src/liscio_fft_2/input_generator.d \
./src/liscio_fft_2/self_contained_code.d \
./src/liscio_fft_2/wrapper.d 


# Each subdirectory must supply rules for building sources it contributes
src/liscio_fft_2/accelerated_ffta.doj: ../src/liscio_fft_2/accelerated_ffta.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/liscio_fft_2/accelerated_ffta.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/liscio_fft_2/defines.doj: ../src/liscio_fft_2/defines.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/liscio_fft_2/defines.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/liscio_fft_2/input_generator.doj: ../src/liscio_fft_2/input_generator.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/liscio_fft_2/input_generator.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/liscio_fft_2/self_contained_code.doj: ../src/liscio_fft_2/self_contained_code.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/liscio_fft_2/self_contained_code.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/liscio_fft_2/wrapper.doj: ../src/liscio_fft_2/wrapper.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/liscio_fft_2/wrapper.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


