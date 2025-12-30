################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp.c \
../Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_if_template.c \
../Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_opt.c \
../Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_storage.c 

OBJS += \
./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp.o \
./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_if_template.o \
./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_opt.o \
./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_storage.o 

C_DEPS += \
./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp.d \
./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_if_template.d \
./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_opt.d \
./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_storage.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/%.o Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/%.su Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/%.cyclo: ../Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/%.c Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32F746xx -c -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/src/apps" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/src/include/lwip/apps" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/src/include/lwip" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/system/arch" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/src/include/netif" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/src/include/lwip/prot" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/src/include/lwip/priv" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/src/apps/http" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Core/Inc" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Drivers/CMSIS/Include" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Drivers/CMSIS/Device/ST/STM32F7xx/Include" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/LWIP/App" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/LWIP/Target" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/src/include" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/system" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-ST-2f-STM32_USB_Device_Library-2f-Class-2f-MTP-2f-Src

clean-Middlewares-2f-ST-2f-STM32_USB_Device_Library-2f-Class-2f-MTP-2f-Src:
	-$(RM) ./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp.cyclo ./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp.d ./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp.o ./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp.su ./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_if_template.cyclo ./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_if_template.d ./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_if_template.o ./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_if_template.su ./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_opt.cyclo ./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_opt.d ./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_opt.o ./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_opt.su ./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_storage.cyclo ./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_storage.d ./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_storage.o ./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_storage.su

.PHONY: clean-Middlewares-2f-ST-2f-STM32_USB_Device_Library-2f-Class-2f-MTP-2f-Src

