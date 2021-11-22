################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/tasimon_FFT/accelerated_ffta.c \
../src/tasimon_FFT/defines.c \
../src/tasimon_FFT/input_generator.c \
../src/tasimon_FFT/self_contained_code.c \
../src/tasimon_FFT/wrapper.c 

SRC_OBJS += \
./src/tasimon_FFT/accelerated_ffta.doj \
./src/tasimon_FFT/defines.doj \
./src/tasimon_FFT/input_generator.doj \
./src/tasimon_FFT/self_contained_code.doj \
./src/tasimon_FFT/wrapper.doj 

C_DEPS += \
./src/tasimon_FFT/accelerated_ffta.d \
./src/tasimon_FFT/defines.d \
./src/tasimon_FFT/input_generator.d \
./src/tasimon_FFT/self_contained_code.d \
./src/tasimon_FFT/wrapper.d 


# Each subdirectory must supply rules for building sources it contributes
src/tasimon_FFT/accelerated_ffta.doj: ../src/tasimon_FFT/accelerated_ffta.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/tasimon_FFT/accelerated_ffta.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/tasimon_FFT/defines.doj: ../src/tasimon_FFT/defines.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/tasimon_FFT/defines.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/tasimon_FFT/input_generator.doj: ../src/tasimon_FFT/input_generator.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/tasimon_FFT/input_generator.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/tasimon_FFT/self_contained_code.doj: ../src/tasimon_FFT/self_contained_code.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/tasimon_FFT/self_contained_code.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/tasimon_FFT/wrapper.doj: ../src/tasimon_FFT/wrapper.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/tasimon_FFT/wrapper.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


