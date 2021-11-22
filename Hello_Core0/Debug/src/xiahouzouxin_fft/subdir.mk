################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/xiahouzouxin_fft/defines.c \
../src/xiahouzouxin_fft/input_generator.c \
../src/xiahouzouxin_fft/self_contained_code.c \
../src/xiahouzouxin_fft/wrapper.c 

SRC_OBJS += \
./src/xiahouzouxin_fft/defines.o \
./src/xiahouzouxin_fft/input_generator.o \
./src/xiahouzouxin_fft/self_contained_code.o \
./src/xiahouzouxin_fft/wrapper.o 

C_DEPS += \
./src/xiahouzouxin_fft/defines.d \
./src/xiahouzouxin_fft/input_generator.d \
./src/xiahouzouxin_fft/self_contained_code.d \
./src/xiahouzouxin_fft/wrapper.d 


# Each subdirectory must supply rules for building sources it contributes
src/xiahouzouxin_fft/defines.o: ../src/xiahouzouxin_fft/defines.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/xiahouzouxin_fft/defines.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/xiahouzouxin_fft/input_generator.o: ../src/xiahouzouxin_fft/input_generator.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/xiahouzouxin_fft/input_generator.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/xiahouzouxin_fft/self_contained_code.o: ../src/xiahouzouxin_fft/self_contained_code.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/xiahouzouxin_fft/self_contained_code.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/xiahouzouxin_fft/wrapper.o: ../src/xiahouzouxin_fft/wrapper.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/xiahouzouxin_fft/wrapper.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


