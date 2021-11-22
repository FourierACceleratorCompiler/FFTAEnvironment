################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Analog\ Devices/CrossCore\ Embedded\ Studio\ 2.9.4/ARM/arm-none-eabi/arm-none-eabi/lib/src/cortex-a5/services/Source/stdio/adi_stdio.c \
C:/Analog\ Devices/CrossCore\ Embedded\ Studio\ 2.9.4/ARM/arm-none-eabi/arm-none-eabi/lib/src/cortex-a5/services/Source/stdio/adi_stdio_jtag.c \
C:/Analog\ Devices/CrossCore\ Embedded\ Studio\ 2.9.4/ARM/arm-none-eabi/arm-none-eabi/lib/src/cortex-a5/services/Source/stdio/adi_stdio_null.c \
C:/Analog\ Devices/CrossCore\ Embedded\ Studio\ 2.9.4/ARM/arm-none-eabi/arm-none-eabi/lib/src/cortex-a5/services/Source/stdio/adi_stdio_uart.c 

SRC_OBJS += \
./system/services/stdio/adi_stdio.o \
./system/services/stdio/adi_stdio_jtag.o \
./system/services/stdio/adi_stdio_null.o \
./system/services/stdio/adi_stdio_uart.o 

C_DEPS += \
./system/services/stdio/adi_stdio.d \
./system/services/stdio/adi_stdio_jtag.d \
./system/services/stdio/adi_stdio_null.d \
./system/services/stdio/adi_stdio_uart.d 


# Each subdirectory must supply rules for building sources it contributes
system/services/stdio/adi_stdio.o: C:/Analog\ Devices/CrossCore\ Embedded\ Studio\ 2.9.4/ARM/arm-none-eabi/arm-none-eabi/lib/src/cortex-a5/services/Source/stdio/adi_stdio.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"system/services/stdio/adi_stdio.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

system/services/stdio/adi_stdio_jtag.o: C:/Analog\ Devices/CrossCore\ Embedded\ Studio\ 2.9.4/ARM/arm-none-eabi/arm-none-eabi/lib/src/cortex-a5/services/Source/stdio/adi_stdio_jtag.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"system/services/stdio/adi_stdio_jtag.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

system/services/stdio/adi_stdio_null.o: C:/Analog\ Devices/CrossCore\ Embedded\ Studio\ 2.9.4/ARM/arm-none-eabi/arm-none-eabi/lib/src/cortex-a5/services/Source/stdio/adi_stdio_null.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"system/services/stdio/adi_stdio_null.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

system/services/stdio/adi_stdio_uart.o: C:/Analog\ Devices/CrossCore\ Embedded\ Studio\ 2.9.4/ARM/arm-none-eabi/arm-none-eabi/lib/src/cortex-a5/services/Source/stdio/adi_stdio_uart.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore ARM Bare Metal C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -ffunction-sections -fdata-sections -DCORE0 -D_DEBUG -DADI_MCAPI -DADI_DEBUG @includes-85d9d6f49dcbb1ddb1736368bafd168b.txt -Wall -e -lc -c -mproc=ADSP-SC589 -msi-revision=any -MMD -MP -MF"system/services/stdio/adi_stdio_uart.d" -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


