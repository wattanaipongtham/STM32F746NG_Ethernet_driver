################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c 

OBJS += \
./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.o 

C_DEPS += \
./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.d 


# Each subdirectory must supply rules for building sources it contributes
Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/%.o Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/%.su Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/%.cyclo: ../Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/%.c Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32F746xx -c -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/src/apps" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/src/include/lwip/apps" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/src/include/lwip" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/system/arch" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/src/include/netif" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/src/include/lwip/prot" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/src/include/lwip/priv" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/src/apps/http" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Core/Inc" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Drivers/CMSIS/Include" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Drivers/CMSIS/Device/ST/STM32F7xx/Include" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/LWIP/App" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/LWIP/Target" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/src/include" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/system" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Driver/CMSIS/Device/ST/STM32F7xx/Include" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Driver/CMSIS/Include" -O2 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Driver-2f-CMSIS-2f-Device-2f-ST-2f-STM32F7xx-2f-Source-2f-Templates

clean-Driver-2f-CMSIS-2f-Device-2f-ST-2f-STM32F7xx-2f-Source-2f-Templates:
	-$(RM) ./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.cyclo ./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.d ./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.o ./Driver/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.su

.PHONY: clean-Driver-2f-CMSIS-2f-Device-2f-ST-2f-STM32F7xx-2f-Source-2f-Templates

