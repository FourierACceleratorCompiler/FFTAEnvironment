################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/mborgerding_kissfft/accelerated_ffta.c \
../src/mborgerding_kissfft/defines.c \
../src/mborgerding_kissfft/input_generator.c \
../src/mborgerding_kissfft/self_contained_code.c \
../src/mborgerding_kissfft/wrapper.c 

SRC_OBJS += \
./src/mborgerding_kissfft/accelerated_ffta.doj \
./src/mborgerding_kissfft/defines.doj \
./src/mborgerding_kissfft/input_generator.doj \
./src/mborgerding_kissfft/self_contained_code.doj \
./src/mborgerding_kissfft/wrapper.doj 

C_DEPS += \
./src/mborgerding_kissfft/accelerated_ffta.d \
./src/mborgerding_kissfft/defines.d \
./src/mborgerding_kissfft/input_generator.d \
./src/mborgerding_kissfft/self_contained_code.d \
./src/mborgerding_kissfft/wrapper.d 


# Each subdirectory must supply rules for building sources it contributes
src/mborgerding_kissfft/accelerated_ffta.doj: ../src/mborgerding_kissfft/accelerated_ffta.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/mborgerding_kissfft/accelerated_ffta.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/mborgerding_kissfft/defines.doj: ../src/mborgerding_kissfft/defines.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/mborgerding_kissfft/defines.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/mborgerding_kissfft/input_generator.doj: ../src/mborgerding_kissfft/input_generator.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/mborgerding_kissfft/input_generator.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/mborgerding_kissfft/self_contained_code.doj: ../src/mborgerding_kissfft/self_contained_code.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/mborgerding_kissfft/self_contained_code.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/mborgerding_kissfft/wrapper.doj: ../src/mborgerding_kissfft/wrapper.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore SHARC C/C++ Compiler'
	cc21k -c -file-attr ProjectName="Hello_Core1" -proc ADSP-SC589 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -never-inline -DCORE1 -D_DEBUG -DADI_MCAPI @includes-94c17a7b858b4e2359ca93eeb405caa2.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -char-size-8 -swc -gnu-style-dependencies -MD -Mo "src/mborgerding_kissfft/wrapper.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


