################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/marton78_pffft/defines.c \
../src/marton78_pffft/in_context_original.c \
../src/marton78_pffft/input_generator.c \
../src/marton78_pffft/self_contained_code.c 

SRC_OBJS += \
./src/marton78_pffft/defines.o \
./src/marton78_pffft/in_context_original.o \
./src/marton78_pffft/input_generator.o \
./src/marton78_pffft/self_contained_code.o 

C_DEPS += \
./src/marton78_pffft/defines.d \
./src/marton78_pffft/in_context_original.d \
./src/marton78_pffft/input_generator.d \
./src/marton78_pffft/self_contained_code.d 


# Each subdirectory must supply rules for building sources it contributes
src/marton78_pffft/defines.o: ../src/marton78_pffft/defines.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/marton78_pffft/defines.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/marton78_pffft/in_context_original.o: ../src/marton78_pffft/in_context_original.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/marton78_pffft/in_context_original.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/marton78_pffft/input_generator.o: ../src/marton78_pffft/input_generator.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/marton78_pffft/input_generator.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/marton78_pffft/self_contained_code.o: ../src/marton78_pffft/self_contained_code.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/marton78_pffft/self_contained_code.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


