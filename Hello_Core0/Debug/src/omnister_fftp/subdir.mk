################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/omnister_fftp/defines.c \
../src/omnister_fftp/input_generator.c \
../src/omnister_fftp/self_contained_code.c \
../src/omnister_fftp/wrapper.c 

SRC_OBJS += \
./src/omnister_fftp/defines.o \
./src/omnister_fftp/input_generator.o \
./src/omnister_fftp/self_contained_code.o \
./src/omnister_fftp/wrapper.o 

C_DEPS += \
./src/omnister_fftp/defines.d \
./src/omnister_fftp/input_generator.d \
./src/omnister_fftp/self_contained_code.d \
./src/omnister_fftp/wrapper.d 


# Each subdirectory must supply rules for building sources it contributes
src/omnister_fftp/defines.o: ../src/omnister_fftp/defines.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/omnister_fftp/defines.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/omnister_fftp/input_generator.o: ../src/omnister_fftp/input_generator.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/omnister_fftp/input_generator.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/omnister_fftp/self_contained_code.o: ../src/omnister_fftp/self_contained_code.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/omnister_fftp/self_contained_code.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/omnister_fftp/wrapper.o: ../src/omnister_fftp/wrapper.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/omnister_fftp/wrapper.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


