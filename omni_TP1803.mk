#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from TP1803 device
$(call inherit-product, device/nubia/TP1803/device.mk)

PRODUCT_DEVICE := TP1803
PRODUCT_NAME := omni_TP1803
PRODUCT_BRAND := Nubia
PRODUCT_MODEL := Mini 5G
PRODUCT_MANUFACTURER := nubia

PRODUCT_GMS_CLIENTID_BASE := android-nubia

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lineage_TP1803-userdebug 13 TQ3A.230901.001 efe4acdbc1 release-keys"

BUILD_FINGERPRINT := Nubia/lineage_TP1803/TP1803:13/TQ3A.230901.001/efe4acdbc1:userdebug/release-keys
