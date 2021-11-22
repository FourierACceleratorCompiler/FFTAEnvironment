################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/mborgerding_kissfft/defines.c \
../src/mborgerding_kissfft/input_generator.c \
../src/mborgerding_kissfft/self_contained_code.c \
../src/mborgerding_kissfft/wrapper.c 

SRC_OBJS += \
./src/mborgerding_kissfft/defines.o \
./src/mborgerding_kissfft/input_generator.o \
./src/mborgerding_kissfft/self_contained_code.o \
./src/mborgerding_kissfft/wrapper.o 

C_DEPS += \
./src/mborgerding_kissfft/defines.d \
./src/mborgerding_kissfft/input_generator.d \
./src/mborgerding_kissfft/self_contained_code.d \
./src/mborgerding_kissfft/wrapper.d 


# Each subdirectory must supply rules for building sources it contributes
src/mborgerding_kissfft/defines.o: ../src/mborgerding_kissfft/defines.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/mborgerding_kissfft/defines.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/mborgerding_kissfft/input_generator.o: ../src/mborgerding_kissfft/input_generator.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/mborgerding_kissfft/input_generator.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/mborgerding_kissfft/self_contained_code.o: ../src/mborgerding_kissfft/self_contained_code.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/mborgerding_kissfft/self_contained_code.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/mborgerding_kissfft/wrapper.o: ../src/mborgerding_kissfft/wrapper.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"src/mborgerding_kissfft/wrapper.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


