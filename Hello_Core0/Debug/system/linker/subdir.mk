################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../system/linker/apt.c 

SRC_OBJS += \
./system/linker/apt.o 

C_DEPS += \
./system/linker/apt.d 


# Each subdirectory must supply rules for building sources it contributes
system/linker/apt.o: ../system/linker/apt.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"system/linker/apt.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


