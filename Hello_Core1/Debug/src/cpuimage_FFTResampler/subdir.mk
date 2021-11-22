################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/cpuimage_FFTResampler/accelerated_ffta.c \
../src/cpuimage_FFTResampler/defines.c \
../src/cpuimage_FFTResampler/input_generator.c \
../src/cpuimage_FFTResampler/self_contained_code.c \
../src/cpuimage_FFTResampler/wrapper.c 

SRC_OBJS += \
./src/cpuimage_FFTResampler/accelerated_ffta.doj \
./src/cpuimage_FFTResampler/defines.doj \
./src/cpuimage_FFTResampler/input_generator.doj \
./src/cpuimage_FFTResampler/self_contained_code.doj \
./src/cpuimage_FFTResampler/wrapper.doj 

C_DEPS += \
./src/cpuimage_FFTResampler/accelerated_ffta.d \
./src/cpuimage_FFTResampler/defines.d \
./src/cpuimage_FFTResampler/input_generator.d \
./src/cpuimage_FFTResampler/self_contained_code.d \
./src/cpuimage_FFTResampler/wrapper.d 


# Each subdirectory must supply rules for building sources it contributes
src/cpuimage_FFTResampler/accelerated_ffta.doj: ../src/cpuimage_FFTResampler/accelerated_ffta.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/cpuimage_FFTResampler/accelerated_ffta.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/cpuimage_FFTResampler/defines.doj: ../src/cpuimage_FFTResampler/defines.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/cpuimage_FFTResampler/defines.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/cpuimage_FFTResampler/input_generator.doj: ../src/cpuimage_FFTResampler/input_generator.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/cpuimage_FFTResampler/input_generator.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/cpuimage_FFTResampler/self_contained_code.doj: ../src/cpuimage_FFTResampler/self_contained_code.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/cpuimage_FFTResampler/self_contained_code.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/cpuimage_FFTResampler/wrapper.doj: ../src/cpuimage_FFTResampler/wrapper.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/cpuimage_FFTResampler/wrapper.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


