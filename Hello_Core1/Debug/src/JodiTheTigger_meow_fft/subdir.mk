################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/JodiTheTigger_meow_fft/accelerated_ffta.c \
../src/JodiTheTigger_meow_fft/context_code.c \
../src/JodiTheTigger_meow_fft/defines.c \
../src/JodiTheTigger_meow_fft/in_context_original.c \
../src/JodiTheTigger_meow_fft/input_generator.c 

SRC_OBJS += \
./src/JodiTheTigger_meow_fft/accelerated_ffta.doj \
./src/JodiTheTigger_meow_fft/context_code.doj \
./src/JodiTheTigger_meow_fft/defines.doj \
./src/JodiTheTigger_meow_fft/in_context_original.doj \
./src/JodiTheTigger_meow_fft/input_generator.doj 

C_DEPS += \
./src/JodiTheTigger_meow_fft/accelerated_ffta.d \
./src/JodiTheTigger_meow_fft/context_code.d \
./src/JodiTheTigger_meow_fft/defines.d \
./src/JodiTheTigger_meow_fft/in_context_original.d \
./src/JodiTheTigger_meow_fft/input_generator.d 


# Each subdirectory must supply rules for building sources it contributes
src/JodiTheTigger_meow_fft/accelerated_ffta.doj: ../src/JodiTheTigger_meow_fft/accelerated_ffta.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/JodiTheTigger_meow_fft/accelerated_ffta.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/JodiTheTigger_meow_fft/context_code.doj: ../src/JodiTheTigger_meow_fft/context_code.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/JodiTheTigger_meow_fft/context_code.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/JodiTheTigger_meow_fft/defines.doj: ../src/JodiTheTigger_meow_fft/defines.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/JodiTheTigger_meow_fft/defines.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/JodiTheTigger_meow_fft/in_context_original.doj: ../src/JodiTheTigger_meow_fft/in_context_original.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/JodiTheTigger_meow_fft/in_context_original.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/JodiTheTigger_meow_fft/input_generator.doj: ../src/JodiTheTigger_meow_fft/input_generator.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/JodiTheTigger_meow_fft/input_generator.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


