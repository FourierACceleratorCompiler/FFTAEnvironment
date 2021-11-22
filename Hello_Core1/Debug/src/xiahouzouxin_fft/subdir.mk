################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/xiahouzouxin_fft/accelerated_ffta.c \
../src/xiahouzouxin_fft/defines.c \
../src/xiahouzouxin_fft/input_generator.c \
../src/xiahouzouxin_fft/self_contained_code.c \
../src/xiahouzouxin_fft/wrapper.c 

SRC_OBJS += \
./src/xiahouzouxin_fft/accelerated_ffta.doj \
./src/xiahouzouxin_fft/defines.doj \
./src/xiahouzouxin_fft/input_generator.doj \
./src/xiahouzouxin_fft/self_contained_code.doj \
./src/xiahouzouxin_fft/wrapper.doj 

C_DEPS += \
./src/xiahouzouxin_fft/accelerated_ffta.d \
./src/xiahouzouxin_fft/defines.d \
./src/xiahouzouxin_fft/input_generator.d \
./src/xiahouzouxin_fft/self_contained_code.d \
./src/xiahouzouxin_fft/wrapper.d 


# Each subdirectory must supply rules for building sources it contributes
src/xiahouzouxin_fft/accelerated_ffta.doj: ../src/xiahouzouxin_fft/accelerated_ffta.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/xiahouzouxin_fft/accelerated_ffta.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/xiahouzouxin_fft/defines.doj: ../src/xiahouzouxin_fft/defines.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/xiahouzouxin_fft/defines.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/xiahouzouxin_fft/input_generator.doj: ../src/xiahouzouxin_fft/input_generator.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/xiahouzouxin_fft/input_generator.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/xiahouzouxin_fft/self_contained_code.doj: ../src/xiahouzouxin_fft/self_contained_code.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/xiahouzouxin_fft/self_contained_code.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/xiahouzouxin_fft/wrapper.doj: ../src/xiahouzouxin_fft/wrapper.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/xiahouzouxin_fft/wrapper.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


