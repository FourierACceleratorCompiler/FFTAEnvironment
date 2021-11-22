################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/omnister_fftp/accelerated_ffta.c \
../src/omnister_fftp/defines.c \
../src/omnister_fftp/input_generator.c \
../src/omnister_fftp/self_contained_code.c \
../src/omnister_fftp/wrapper.c 

SRC_OBJS += \
./src/omnister_fftp/accelerated_ffta.doj \
./src/omnister_fftp/defines.doj \
./src/omnister_fftp/input_generator.doj \
./src/omnister_fftp/self_contained_code.doj \
./src/omnister_fftp/wrapper.doj 

C_DEPS += \
./src/omnister_fftp/accelerated_ffta.d \
./src/omnister_fftp/defines.d \
./src/omnister_fftp/input_generator.d \
./src/omnister_fftp/self_contained_code.d \
./src/omnister_fftp/wrapper.d 


# Each subdirectory must supply rules for building sources it contributes
src/omnister_fftp/accelerated_ffta.doj: ../src/omnister_fftp/accelerated_ffta.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/omnister_fftp/accelerated_ffta.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/omnister_fftp/defines.doj: ../src/omnister_fftp/defines.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/omnister_fftp/defines.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/omnister_fftp/input_generator.doj: ../src/omnister_fftp/input_generator.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/omnister_fftp/input_generator.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/omnister_fftp/self_contained_code.doj: ../src/omnister_fftp/self_contained_code.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/omnister_fftp/self_contained_code.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/omnister_fftp/wrapper.doj: ../src/omnister_fftp/wrapper.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/omnister_fftp/wrapper.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


