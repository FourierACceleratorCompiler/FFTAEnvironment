################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jtfell_c-fft/accelerated_ffta.c \
../src/jtfell_c-fft/defines.c \
../src/jtfell_c-fft/input_generator.c \
../src/jtfell_c-fft/self_contained_code.c \
../src/jtfell_c-fft/wrapper.c 

SRC_OBJS += \
./src/jtfell_c-fft/accelerated_ffta.doj \
./src/jtfell_c-fft/defines.doj \
./src/jtfell_c-fft/input_generator.doj \
./src/jtfell_c-fft/self_contained_code.doj \
./src/jtfell_c-fft/wrapper.doj 

C_DEPS += \
./src/jtfell_c-fft/accelerated_ffta.d \
./src/jtfell_c-fft/defines.d \
./src/jtfell_c-fft/input_generator.d \
./src/jtfell_c-fft/self_contained_code.d \
./src/jtfell_c-fft/wrapper.d 


# Each subdirectory must supply rules for building sources it contributes
src/jtfell_c-fft/accelerated_ffta.doj: ../src/jtfell_c-fft/accelerated_ffta.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/jtfell_c-fft/accelerated_ffta.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/jtfell_c-fft/defines.doj: ../src/jtfell_c-fft/defines.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/jtfell_c-fft/defines.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/jtfell_c-fft/input_generator.doj: ../src/jtfell_c-fft/input_generator.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/jtfell_c-fft/input_generator.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/jtfell_c-fft/self_contained_code.doj: ../src/jtfell_c-fft/self_contained_code.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/jtfell_c-fft/self_contained_code.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/jtfell_c-fft/wrapper.doj: ../src/jtfell_c-fft/wrapper.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/jtfell_c-fft/wrapper.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


