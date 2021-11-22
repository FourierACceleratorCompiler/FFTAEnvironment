################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/Hello_Core2.c 

SRC_OBJS += \
./src/Hello_Core2.doj 

C_DEPS += \
./src/Hello_Core2.d 


# Each subdirectory must supply rules for building sources it contributes
src/Hello_Core2.doj: ../src/Hello_Core2.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core2" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -g -DCORE2 -D_DEBUG -DADI_MCAPI @includes-e0239feef75a9abe76cfe9673802a72e.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/Hello_Core2.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


