################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Analog\ Devices/CrossCore\ Embedded\ Studio\ 2.9.4/ARM/arm-none-eabi/arm-none-eabi/lib/src/cortex-a5/services/Source/pcg/adi_pcg.c 

SRC_OBJS += \
./system/services/pcg/adi_pcg.o 

C_DEPS += \
./system/services/pcg/adi_pcg.d 


# Each subdirectory must supply rules for building sources it contributes
system/services/pcg/adi_pcg.o: C:/Analog\ Devices/CrossCore\ Embedded\ Studio\ 2.9.4/ARM/arm-none-eabi/arm-none-eabi/lib/src/cortex-a5/services/Source/pcg/adi_pcg.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"system/services/pcg/adi_pcg.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


