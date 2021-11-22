################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/marton78_pffft/accelerated_ffta.c \
../src/marton78_pffft/defines.c \
../src/marton78_pffft/in_context_original.c \
../src/marton78_pffft/input_generator.c \
../src/marton78_pffft/self_contained_code.c 

SRC_OBJS += \
./src/marton78_pffft/accelerated_ffta.doj \
./src/marton78_pffft/defines.doj \
./src/marton78_pffft/in_context_original.doj \
./src/marton78_pffft/input_generator.doj \
./src/marton78_pffft/self_contained_code.doj 

C_DEPS += \
./src/marton78_pffft/accelerated_ffta.d \
./src/marton78_pffft/defines.d \
./src/marton78_pffft/in_context_original.d \
./src/marton78_pffft/input_generator.d \
./src/marton78_pffft/self_contained_code.d 


# Each subdirectory must supply rules for building sources it contributes
src/marton78_pffft/accelerated_ffta.doj: ../src/marton78_pffft/accelerated_ffta.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/marton78_pffft/accelerated_ffta.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/marton78_pffft/defines.doj: ../src/marton78_pffft/defines.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/marton78_pffft/defines.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/marton78_pffft/in_context_original.doj: ../src/marton78_pffft/in_context_original.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/marton78_pffft/in_context_original.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/marton78_pffft/input_generator.doj: ../src/marton78_pffft/input_generator.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/marton78_pffft/input_generator.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/marton78_pffft/self_contained_code.doj: ../src/marton78_pffft/self_contained_code.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/marton78_pffft/self_contained_code.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


