################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/xbarin02_uFFT/defines.c \
../src/xbarin02_uFFT/input_generator.c \
../src/xbarin02_uFFT/self_contained_code.c \
../src/xbarin02_uFFT/wrapper.c 

SRC_OBJS += \
./src/xbarin02_uFFT/defines.o \
./src/xbarin02_uFFT/input_generator.o \
./src/xbarin02_uFFT/self_contained_code.o \
./src/xbarin02_uFFT/wrapper.o 

C_DEPS += \
./src/xbarin02_uFFT/defines.d \
./src/xbarin02_uFFT/input_generator.d \
./src/xbarin02_uFFT/self_contained_code.d \
./src/xbarin02_uFFT/wrapper.d 


# Each subdirectory must supply rules for building sources it contributes
src/xbarin02_uFFT/defines.o: ../src/xbarin02_uFFT/defines.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/xbarin02_uFFT/defines.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/xbarin02_uFFT/input_generator.o: ../src/xbarin02_uFFT/input_generator.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/xbarin02_uFFT/input_generator.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/xbarin02_uFFT/self_contained_code.o: ../src/xbarin02_uFFT/self_contained_code.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/xbarin02_uFFT/self_contained_code.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/xbarin02_uFFT/wrapper.o: ../src/xbarin02_uFFT/wrapper.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/xbarin02_uFFT/wrapper.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


