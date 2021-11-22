################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../system/sru/sru_config.c 

SRC_OBJS += \
./system/sru/sru_config.o 

C_DEPS += \
./system/sru/sru_config.d 


# Each subdirectory must supply rules for building sources it contributes
system/sru/sru_config.o: ../system/sru/sru_config.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"system/sru/sru_config.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


