################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/JodiTheTigger_meow_fft/context_code.c \
../src/JodiTheTigger_meow_fft/defines.c \
../src/JodiTheTigger_meow_fft/in_context_original.c \
../src/JodiTheTigger_meow_fft/input_generator.c 

SRC_OBJS += \
./src/JodiTheTigger_meow_fft/context_code.o \
./src/JodiTheTigger_meow_fft/defines.o \
./src/JodiTheTigger_meow_fft/in_context_original.o \
./src/JodiTheTigger_meow_fft/input_generator.o 

C_DEPS += \
./src/JodiTheTigger_meow_fft/context_code.d \
./src/JodiTheTigger_meow_fft/defines.d \
./src/JodiTheTigger_meow_fft/in_context_original.d \
./src/JodiTheTigger_meow_fft/input_generator.d 


# Each subdirectory must supply rules for building sources it contributes
src/JodiTheTigger_meow_fft/context_code.o: ../src/JodiTheTigger_meow_fft/context_code.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/JodiTheTigger_meow_fft/context_code.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/JodiTheTigger_meow_fft/defines.o: ../src/JodiTheTigger_meow_fft/defines.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/JodiTheTigger_meow_fft/defines.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/JodiTheTigger_meow_fft/in_context_original.o: ../src/JodiTheTigger_meow_fft/in_context_original.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/JodiTheTigger_meow_fft/in_context_original.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/JodiTheTigger_meow_fft/input_generator.o: ../src/JodiTheTigger_meow_fft/input_generator.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/JodiTheTigger_meow_fft/input_generator.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


