################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jtfell_c-fft/defines.c \
../src/jtfell_c-fft/input_generator.c \
../src/jtfell_c-fft/self_contained_code.c \
../src/jtfell_c-fft/wrapper.c 

SRC_OBJS += \
./src/jtfell_c-fft/defines.o \
./src/jtfell_c-fft/input_generator.o \
./src/jtfell_c-fft/self_contained_code.o \
./src/jtfell_c-fft/wrapper.o 

C_DEPS += \
./src/jtfell_c-fft/defines.d \
./src/jtfell_c-fft/input_generator.d \
./src/jtfell_c-fft/self_contained_code.d \
./src/jtfell_c-fft/wrapper.d 


# Each subdirectory must supply rules for building sources it contributes
src/jtfell_c-fft/defines.o: ../src/jtfell_c-fft/defines.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/jtfell_c-fft/defines.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/jtfell_c-fft/input_generator.o: ../src/jtfell_c-fft/input_generator.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/jtfell_c-fft/input_generator.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/jtfell_c-fft/self_contained_code.o: ../src/jtfell_c-fft/self_contained_code.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/jtfell_c-fft/self_contained_code.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/jtfell_c-fft/wrapper.o: ../src/jtfell_c-fft/wrapper.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/jtfell_c-fft/wrapper.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


