
#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from X00TD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# crDroid stuff.
MISTOS_MAINTAINER=Kyura
TARGET_ENABLE_BLUR := false
PRODUCT_NO_CAMERA := false
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true
WITH_GMS := false
TARGET_DEFAULT_PIXEL_LAUNCHER := false
TARGET_HAS_UDFPS := false
EXTRA_UDFPS_ANIMATIONS := false

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_X00TD
PRODUCT_DEVICE := X00TD
PRODUCT_BRAND := asus
PRODUCT_MODEL := Zenfone Max Pro M1
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceProduct=ASUS_X00TD \
    BuildDesc="sdm660_64-user 10 QKQ1 72 release-keys" \
    BuildFingerprint=asus/ASUS_X00TD/ASUS_X00TD:10/QKQ1/17.2017.2012.438-20201203:user/release-keys
