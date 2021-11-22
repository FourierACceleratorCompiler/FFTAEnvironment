################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/liscio_fft_2/defines.c \
../src/liscio_fft_2/input_generator.c \
../src/liscio_fft_2/self_contained_code.c \
../src/liscio_fft_2/wrapper.c 

SRC_OBJS += \
./src/liscio_fft_2/defines.o \
./src/liscio_fft_2/input_generator.o \
./src/liscio_fft_2/self_contained_code.o \
./src/liscio_fft_2/wrapper.o 

C_DEPS += \
./src/liscio_fft_2/defines.d \
./src/liscio_fft_2/input_generator.d \
./src/liscio_fft_2/self_contained_code.d \
./src/liscio_fft_2/wrapper.d 


# Each subdirectory must supply rules for building sources it contributes
src/liscio_fft_2/defines.o: ../src/liscio_fft_2/defines.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/liscio_fft_2/defines.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/liscio_fft_2/input_generator.o: ../src/liscio_fft_2/input_generator.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/liscio_fft_2/input_generator.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/liscio_fft_2/self_contained_code.o: ../src/liscio_fft_2/self_contained_code.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/liscio_fft_2/self_contained_code.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/liscio_fft_2/wrapper.o: ../src/liscio_fft_2/wrapper.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/liscio_fft_2/wrapper.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


