rm -rf kernel/asus/sdm660
git clone --depth=1 --recursive https://github.com/Tiktodz/android_kernel_asus_sdm660 -b  stable-release kernel/asus/sdm660
rm -rf kernel/asus/sdm660/KernelSU-Next/userspace

rm -rf device/asus/sdm660-common
git clone --depth=1 https://github.com/awana111/android_device_asus_sdm660-common-4.19 device/asus/sdm660-common

rm -rf vendor/asus
git clone --depth=1 https://github.com/electrolaboratory/vendor_common -b v vendor/asus

rm -rf vendor/lineage-priv/keys
rm -rf vendor/lineage/signing/keys
mkdir -p vendor/lineage-priv/keys
git clone https://github.com/electrolaboratory/public-keys vendor/lineage-priv/keys/

export KBUILD_BUILD_USER=kenkyou
export BUILD_USER=kenkyou
export BUILD_USERNAME=kenkyou
export TZ=Asia/Jakarta
