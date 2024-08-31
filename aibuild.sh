#!/bin/bash

make mrproper
# make imx_v7_defconfig
make imx_100ask_emmc_defconfig
make zImage -j4
echo "############################### build zImage end #######################."
make dtbs
echo "############################### build dtbs end #######################."

# 将生成的zImage和imx6ull-100ask-emmc.dtb拷贝到SD卡的boot分区中

# sudo dd if=arch/arm/boot/zImage of=/dev/sdb bs=512 seek=2048 conv=fsync && sync
# sudo dd if=arch/arm/boot/dts/imx6ull-100ask-emmc.dtb of=/dev/sdb bs=512 seek=20480 conv=fsync && sync

