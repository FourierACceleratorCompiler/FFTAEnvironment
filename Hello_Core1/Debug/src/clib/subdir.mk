################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/clib/synthesizer.c 

SRC_OBJS += \
./src/clib/synthesizer.doj 

C_DEPS += \
./src/clib/synthesizer.d 


# Each subdirectory must supply rules for building sources it contributes
src/clib/synthesizer.doj: ../src/clib/synthesizer.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/clib/synthesizer.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


