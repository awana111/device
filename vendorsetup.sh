#!/bin/bash

rm -rf kernel/asus/sdm660
git clone --depth=1 --recursive https://github.com/Tiktodz/android_kernel_asus_sdm660 -b master kernel/asus/sdm660
rm -rf kernel/asus/sdm660/KernelSU-Next/userspace

sed -i 's/CONFIG_DEBUG_INFO=.*/CONFIG_DEBUG_INFO=n/g' kernel/asus/sdm660/arch/arm64/configs/asus/X00TD_defconfig

rm -rf device/asus/sdm660-common
git clone --depth=1 https://github.com/Tiktodz/android_device_asus_sdm660-common-4.19 device/asus/sdm660-common
cd device/asus/sdm660-common && git revert 56949d983dca547d91dffec95e1ec6c636b239c8 --no-edit
cd ../../..

rm -rf vendor/asus
git clone --depth=1 https://github.com/electrolaboratory/vendor_common -b v vendor/asus

rm -rf vendor/lineage-priv/keys
git clone https://github.com/ardia-kun/vendor -b 14-backup sig && cp -R sig/* vendor/
rm -rf sig

export PIXELAGE_BUILD=X00TD
export BUILD_USER=queen
export KBUILD_BUILD_USER=queen
export TZ=Asia/Jakarta
