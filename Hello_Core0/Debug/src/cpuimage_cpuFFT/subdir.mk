################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/cpuimage_cpuFFT/defines.c \
../src/cpuimage_cpuFFT/input_generator.c \
../src/cpuimage_cpuFFT/self_contained_code.c \
../src/cpuimage_cpuFFT/wrapper.c 

SRC_OBJS += \
./src/cpuimage_cpuFFT/defines.o \
./src/cpuimage_cpuFFT/input_generator.o \
./src/cpuimage_cpuFFT/self_contained_code.o \
./src/cpuimage_cpuFFT/wrapper.o 

C_DEPS += \
./src/cpuimage_cpuFFT/defines.d \
./src/cpuimage_cpuFFT/input_generator.d \
./src/cpuimage_cpuFFT/self_contained_code.d \
./src/cpuimage_cpuFFT/wrapper.d 


# Each subdirectory must supply rules for building sources it contributes
src/cpuimage_cpuFFT/defines.o: ../src/cpuimage_cpuFFT/defines.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/cpuimage_cpuFFT/defines.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/cpuimage_cpuFFT/input_generator.o: ../src/cpuimage_cpuFFT/input_generator.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/cpuimage_cpuFFT/input_generator.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/cpuimage_cpuFFT/self_contained_code.o: ../src/cpuimage_cpuFFT/self_contained_code.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/cpuimage_cpuFFT/self_contained_code.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/cpuimage_cpuFFT/wrapper.o: ../src/cpuimage_cpuFFT/wrapper.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/cpuimage_cpuFFT/wrapper.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


