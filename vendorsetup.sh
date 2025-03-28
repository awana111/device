rm -rf kernel/asus/sdm660
git clone --depth=1 --recursive https://github.com/Tiktodz/android_kernel_asus_sdm660 -b wip kernel/asus/sdm660
rm -rf kernel/asus/sdm660/KernelSU-Next/userspace
rm -rf kernel/asus/sdm660/KernelSU-Next/website
rm -rf kernel/asus/sdm660/KernelSU-Next/scripts
rm -rf kernel/asus/sdm660/KernelSU-Next/docs

rm -rf device/asus/sdm660-common
#rm -rf device
git clone --depth=1 https://github.com/ikwfahmi/common -b rising device/asus/sdm660-common
#git clone --depth=1 https://github.com/ikwfahmi/device -b rising device/asus/X00TD

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
