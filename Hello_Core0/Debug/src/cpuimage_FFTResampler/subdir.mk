################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/cpuimage_FFTResampler/defines.c \
../src/cpuimage_FFTResampler/input_generator.c \
../src/cpuimage_FFTResampler/self_contained_code.c \
../src/cpuimage_FFTResampler/wrapper.c 

SRC_OBJS += \
./src/cpuimage_FFTResampler/defines.o \
./src/cpuimage_FFTResampler/input_generator.o \
./src/cpuimage_FFTResampler/self_contained_code.o \
./src/cpuimage_FFTResampler/wrapper.o 

C_DEPS += \
./src/cpuimage_FFTResampler/defines.d \
./src/cpuimage_FFTResampler/input_generator.d \
./src/cpuimage_FFTResampler/self_contained_code.d \
./src/cpuimage_FFTResampler/wrapper.d 


# Each subdirectory must supply rules for building sources it contributes
src/cpuimage_FFTResampler/defines.o: ../src/cpuimage_FFTResampler/defines.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/cpuimage_FFTResampler/defines.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/cpuimage_FFTResampler/input_generator.o: ../src/cpuimage_FFTResampler/input_generator.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/cpuimage_FFTResampler/input_generator.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/cpuimage_FFTResampler/self_contained_code.o: ../src/cpuimage_FFTResampler/self_contained_code.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/cpuimage_FFTResampler/self_contained_code.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/cpuimage_FFTResampler/wrapper.o: ../src/cpuimage_FFTResampler/wrapper.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/cpuimage_FFTResampler/wrapper.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


