################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/mozanunal_SimpleDSP/accelerated_ffta.c \
../src/mozanunal_SimpleDSP/defines.c \
../src/mozanunal_SimpleDSP/input_generator.c \
../src/mozanunal_SimpleDSP/self_contained_code.c \
../src/mozanunal_SimpleDSP/wrapper.c 

SRC_OBJS += \
./src/mozanunal_SimpleDSP/accelerated_ffta.doj \
./src/mozanunal_SimpleDSP/defines.doj \
./src/mozanunal_SimpleDSP/input_generator.doj \
./src/mozanunal_SimpleDSP/self_contained_code.doj \
./src/mozanunal_SimpleDSP/wrapper.doj 

C_DEPS += \
./src/mozanunal_SimpleDSP/accelerated_ffta.d \
./src/mozanunal_SimpleDSP/defines.d \
./src/mozanunal_SimpleDSP/input_generator.d \
./src/mozanunal_SimpleDSP/self_contained_code.d \
./src/mozanunal_SimpleDSP/wrapper.d 


# Each subdirectory must supply rules for building sources it contributes
src/mozanunal_SimpleDSP/accelerated_ffta.doj: ../src/mozanunal_SimpleDSP/accelerated_ffta.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/mozanunal_SimpleDSP/accelerated_ffta.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/mozanunal_SimpleDSP/defines.doj: ../src/mozanunal_SimpleDSP/defines.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/mozanunal_SimpleDSP/defines.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/mozanunal_SimpleDSP/input_generator.doj: ../src/mozanunal_SimpleDSP/input_generator.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/mozanunal_SimpleDSP/input_generator.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/mozanunal_SimpleDSP/self_contained_code.doj: ../src/mozanunal_SimpleDSP/self_contained_code.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/mozanunal_SimpleDSP/self_contained_code.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/mozanunal_SimpleDSP/wrapper.doj: ../src/mozanunal_SimpleDSP/wrapper.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/mozanunal_SimpleDSP/wrapper.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


