################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/tasimon_FFT/defines.c \
../src/tasimon_FFT/input_generator.c \
../src/tasimon_FFT/self_contained_code.c \
../src/tasimon_FFT/wrapper.c 

SRC_OBJS += \
./src/tasimon_FFT/defines.o \
./src/tasimon_FFT/input_generator.o \
./src/tasimon_FFT/self_contained_code.o \
./src/tasimon_FFT/wrapper.o 

C_DEPS += \
./src/tasimon_FFT/defines.d \
./src/tasimon_FFT/input_generator.d \
./src/tasimon_FFT/self_contained_code.d \
./src/tasimon_FFT/wrapper.d 


# Each subdirectory must supply rules for building sources it contributes
src/tasimon_FFT/defines.o: ../src/tasimon_FFT/defines.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/tasimon_FFT/defines.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/tasimon_FFT/input_generator.o: ../src/tasimon_FFT/input_generator.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/tasimon_FFT/input_generator.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/tasimon_FFT/self_contained_code.o: ../src/tasimon_FFT/self_contained_code.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/tasimon_FFT/self_contained_code.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/tasimon_FFT/wrapper.o: ../src/tasimon_FFT/wrapper.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/tasimon_FFT/wrapper.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


