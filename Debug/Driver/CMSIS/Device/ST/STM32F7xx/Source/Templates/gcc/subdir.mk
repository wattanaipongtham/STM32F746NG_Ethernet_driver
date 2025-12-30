################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f722xx.s \
../Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f723xx.s \
../Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f730xx.s \
../Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f732xx.s \
../Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f733xx.s \
../Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f745xx.s \
../Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f746xx.s \
../Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f750xx.s \
../Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f756xx.s \
../Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f765xx.s \
../Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f767xx.s \
../Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f769xx.s \
../Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f777xx.s \
../Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f779xx.s 

OBJS += \
./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f722xx.o \
./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f723xx.o \
./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f730xx.o \
./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f732xx.o \
./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f733xx.o \
./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f745xx.o \
./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f746xx.o \
./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f750xx.o \
./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f756xx.o \
./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f765xx.o \
./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f767xx.o \
./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f769xx.o \
./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f777xx.o \
./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f779xx.o 

S_DEPS += \
./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f722xx.d \
./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f723xx.d \
./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f730xx.d \
./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f732xx.d \
./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f733xx.d \
./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f745xx.d \
./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f746xx.d \
./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f750xx.d \
./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f756xx.d \
./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f765xx.d \
./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f767xx.d \
./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f769xx.d \
./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f777xx.d \
./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f779xx.d 


# Each subdirectory must supply rules for building sources it contributes
Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/%.o: ../Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/%.s Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m7 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Driver-2f-CMSIS-2f-Device-2f-ST-2f-STM32F7xx-2f-Source-2f-Templates-2f-gcc

clean-Driver-2f-CMSIS-2f-Device-2f-ST-2f-STM32F7xx-2f-Source-2f-Templates-2f-gcc:
	-$(RM) ./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f722xx.d ./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f722xx.o ./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f723xx.d ./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f723xx.o ./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f730xx.d ./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f730xx.o ./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f732xx.d ./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f732xx.o ./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f733xx.d ./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f733xx.o ./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f745xx.d ./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f745xx.o ./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f746xx.d ./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f746xx.o ./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f750xx.d ./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f750xx.o ./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f756xx.d ./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f756xx.o ./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f765xx.d ./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f765xx.o ./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f767xx.d ./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f767xx.o ./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f769xx.d ./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f769xx.o ./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f777xx.d ./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f777xx.o ./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f779xx.d ./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/gcc/startup_stm32f779xx.o

.PHONY: clean-Driver-2f-CMSIS-2f-Device-2f-ST-2f-STM32F7xx-2f-Source-2f-Templates-2f-gcc

