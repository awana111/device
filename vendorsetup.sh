#!/bin/bash

rm -rf kernel/asus/sdm660
git clone --depth=1 --recursive https://github.com/Tiktodz/android_kernel_asus_sdm660 -b master kernel/asus/sdm660
rm -rf kernel/asus/sdm660/KernelSU-Next/userspace

rm -rf device/asus/sdm660-common
git clone https://github.com/ikwfahmi/common -b aosp device/asus/sdm660-common

rm -rf vendor/asus
git clone --depth=1 https://github.com/sotodrom/proprietary_vendor_asus -b 15 vendor/asus

rm -rf vendor/lineage-priv/keys
rm -rf vendor/lineage/signing/keys
mkdir -p vendor/lineage-priv/keys
git clone https://github.com/electrolaboratory/public-keys vendor/lineage-priv/keys/

export BUILD_USER=kenkyou
export KBUILD_BUILD_USER=kenkyou
export TZ=Asia/Jakarta
