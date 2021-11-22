################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/clib/synthesizer.c 

SRC_OBJS += \
./src/clib/synthesizer.o 

C_DEPS += \
./src/clib/synthesizer.d 


# Each subdirectory must supply rules for building sources it contributes
src/clib/synthesizer.o: ../src/clib/synthesizer.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/clib/synthesizer.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


