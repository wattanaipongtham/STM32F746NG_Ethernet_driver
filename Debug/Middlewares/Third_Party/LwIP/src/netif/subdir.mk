################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/LwIP/src/netif/bridgeif.c \
../Middlewares/Third_Party/LwIP/src/netif/bridgeif_fdb.c \
../Middlewares/Third_Party/LwIP/src/netif/ethernet.c \
../Middlewares/Third_Party/LwIP/src/netif/lowpan6.c \
../Middlewares/Third_Party/LwIP/src/netif/lowpan6_ble.c \
../Middlewares/Third_Party/LwIP/src/netif/lowpan6_common.c \
../Middlewares/Third_Party/LwIP/src/netif/slipif.c \
../Middlewares/Third_Party/LwIP/src/netif/zepif.c 

OBJS += \
./Middlewares/Third_Party/LwIP/src/netif/bridgeif.o \
./Middlewares/Third_Party/LwIP/src/netif/bridgeif_fdb.o \
./Middlewares/Third_Party/LwIP/src/netif/ethernet.o \
./Middlewares/Third_Party/LwIP/src/netif/lowpan6.o \
./Middlewares/Third_Party/LwIP/src/netif/lowpan6_ble.o \
./Middlewares/Third_Party/LwIP/src/netif/lowpan6_common.o \
./Middlewares/Third_Party/LwIP/src/netif/slipif.o \
./Middlewares/Third_Party/LwIP/src/netif/zepif.o 

C_DEPS += \
./Middlewares/Third_Party/LwIP/src/netif/bridgeif.d \
./Middlewares/Third_Party/LwIP/src/netif/bridgeif_fdb.d \
./Middlewares/Third_Party/LwIP/src/netif/ethernet.d \
./Middlewares/Third_Party/LwIP/src/netif/lowpan6.d \
./Middlewares/Third_Party/LwIP/src/netif/lowpan6_ble.d \
./Middlewares/Third_Party/LwIP/src/netif/lowpan6_common.d \
./Middlewares/Third_Party/LwIP/src/netif/slipif.d \
./Middlewares/Third_Party/LwIP/src/netif/zepif.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/LwIP/src/netif/%.o Middlewares/Third_Party/LwIP/src/netif/%.su Middlewares/Third_Party/LwIP/src/netif/%.cyclo: ../Middlewares/Third_Party/LwIP/src/netif/%.c Middlewares/Third_Party/LwIP/src/netif/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32F746xx -c -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/src/apps" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/src/include/lwip/apps" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/src/include/lwip" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/system/arch" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/src/include/netif" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/src/include/lwip/prot" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/src/include/lwip/priv" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/src/apps/http" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Core/Inc" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Drivers/CMSIS/Include" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Drivers/CMSIS/Device/ST/STM32F7xx/Include" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/LWIP/App" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/LWIP/Target" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/src/include" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Middlewares/Third_Party/LwIP/system" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Driver/CMSIS/Device/ST/STM32F7xx/Include" -I"D:/STM32CubeIDE_1.13.1/Workspaces/STM32F746NG_ETHERNET_DRIVER/Driver/CMSIS/Include" -O2 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-LwIP-2f-src-2f-netif

clean-Middlewares-2f-Third_Party-2f-LwIP-2f-src-2f-netif:
	-$(RM) ./Middlewares/Third_Party/LwIP/src/netif/bridgeif.cyclo ./Middlewares/Third_Party/LwIP/src/netif/bridgeif.d ./Middlewares/Third_Party/LwIP/src/netif/bridgeif.o ./Middlewares/Third_Party/LwIP/src/netif/bridgeif.su ./Middlewares/Third_Party/LwIP/src/netif/bridgeif_fdb.cyclo ./Middlewares/Third_Party/LwIP/src/netif/bridgeif_fdb.d ./Middlewares/Third_Party/LwIP/src/netif/bridgeif_fdb.o ./Middlewares/Third_Party/LwIP/src/netif/bridgeif_fdb.su ./Middlewares/Third_Party/LwIP/src/netif/ethernet.cyclo ./Middlewares/Third_Party/LwIP/src/netif/ethernet.d ./Middlewares/Third_Party/LwIP/src/netif/ethernet.o ./Middlewares/Third_Party/LwIP/src/netif/ethernet.su ./Middlewares/Third_Party/LwIP/src/netif/lowpan6.cyclo ./Middlewares/Third_Party/LwIP/src/netif/lowpan6.d ./Middlewares/Third_Party/LwIP/src/netif/lowpan6.o ./Middlewares/Third_Party/LwIP/src/netif/lowpan6.su ./Middlewares/Third_Party/LwIP/src/netif/lowpan6_ble.cyclo ./Middlewares/Third_Party/LwIP/src/netif/lowpan6_ble.d ./Middlewares/Third_Party/LwIP/src/netif/lowpan6_ble.o ./Middlewares/Third_Party/LwIP/src/netif/lowpan6_ble.su ./Middlewares/Third_Party/LwIP/src/netif/lowpan6_common.cyclo ./Middlewares/Third_Party/LwIP/src/netif/lowpan6_common.d ./Middlewares/Third_Party/LwIP/src/netif/lowpan6_common.o ./Middlewares/Third_Party/LwIP/src/netif/lowpan6_common.su ./Middlewares/Third_Party/LwIP/src/netif/slipif.cyclo ./Middlewares/Third_Party/LwIP/src/netif/slipif.d ./Middlewares/Third_Party/LwIP/src/netif/slipif.o ./Middlewares/Third_Party/LwIP/src/netif/slipif.su ./Middlewares/Third_Party/LwIP/src/netif/zepif.cyclo ./Middlewares/Third_Party/LwIP/src/netif/zepif.d ./Middlewares/Third_Party/LwIP/src/netif/zepif.o ./Middlewares/Third_Party/LwIP/src/netif/zepif.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-LwIP-2f-src-2f-netif

