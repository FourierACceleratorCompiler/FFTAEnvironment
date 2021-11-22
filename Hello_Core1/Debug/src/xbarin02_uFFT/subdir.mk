################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/xbarin02_uFFT/accelerated_ffta.c \
../src/xbarin02_uFFT/defines.c \
../src/xbarin02_uFFT/input_generator.c \
../src/xbarin02_uFFT/self_contained_code.c \
../src/xbarin02_uFFT/wrapper.c 

SRC_OBJS += \
./src/xbarin02_uFFT/accelerated_ffta.doj \
./src/xbarin02_uFFT/defines.doj \
./src/xbarin02_uFFT/input_generator.doj \
./src/xbarin02_uFFT/self_contained_code.doj \
./src/xbarin02_uFFT/wrapper.doj 

C_DEPS += \
./src/xbarin02_uFFT/accelerated_ffta.d \
./src/xbarin02_uFFT/defines.d \
./src/xbarin02_uFFT/input_generator.d \
./src/xbarin02_uFFT/self_contained_code.d \
./src/xbarin02_uFFT/wrapper.d 


# Each subdirectory must supply rules for building sources it contributes
src/xbarin02_uFFT/accelerated_ffta.doj: ../src/xbarin02_uFFT/accelerated_ffta.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/xbarin02_uFFT/accelerated_ffta.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/xbarin02_uFFT/defines.doj: ../src/xbarin02_uFFT/defines.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/xbarin02_uFFT/defines.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/xbarin02_uFFT/input_generator.doj: ../src/xbarin02_uFFT/input_generator.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/xbarin02_uFFT/input_generator.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/xbarin02_uFFT/self_contained_code.doj: ../src/xbarin02_uFFT/self_contained_code.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/xbarin02_uFFT/self_contained_code.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/xbarin02_uFFT/wrapper.doj: ../src/xbarin02_uFFT/wrapper.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/xbarin02_uFFT/wrapper.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


