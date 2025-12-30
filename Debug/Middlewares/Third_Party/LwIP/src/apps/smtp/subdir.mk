################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/LwIP/src/apps/smtp/smtp.c 

OBJS += \
./Middlewares/Third_Party/LwIP/src/apps/smtp/smtp.o 

C_DEPS += \
./Middlewares/Third_Party/LwIP/src/apps/smtp/smtp.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/LwIP/src/apps/smtp/%.o Middlewares/Third_Party/LwIP/src/apps/smtp/%.su Middlewares/Third_Party/LwIP/src/apps/smtp/%.cyclo: ../Middlewares/Third_Party/LwIP/src/apps/smtp/%.c Middlewares/Third_Party/LwIP/src/apps/smtp/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32F746xx -c -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/src/apps" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/src/include/lwip/apps" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/src/include/lwip" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/system/arch" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/src/include/netif" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/src/include/lwip/prot" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/src/include/lwip/priv" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/src/apps/http" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Core/Inc" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Drivers/CMSIS/Include" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Drivers/CMSIS/Device/ST/STM32F7xx/Include" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/LWIP/App" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/LWIP/Target" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/src/include" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/system" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Driver/CMSIS/Device/ST/STM32F7xx/Include" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Driver/CMSIS/Include" -O2 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-LwIP-2f-src-2f-apps-2f-smtp

clean-Middlewares-2f-Third_Party-2f-LwIP-2f-src-2f-apps-2f-smtp:
	-$(RM) ./Middlewares/Third_Party/LwIP/src/apps/smtp/smtp.cyclo ./Middlewares/Third_Party/LwIP/src/apps/smtp/smtp.d ./Middlewares/Third_Party/LwIP/src/apps/smtp/smtp.o ./Middlewares/Third_Party/LwIP/src/apps/smtp/smtp.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-LwIP-2f-src-2f-apps-2f-smtp

