#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from E7544 device
$(call inherit-product, device/realme/RMX3261/device.mk)

PRODUCT_DEVICE := RMX3261
PRODUCT_NAME := twrp_RMX3261
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3261
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="S19610AA1_ctcc-user 11 RP1A.201005.001 33520 release-keys"

BUILD_FINGERPRINT := realme/RMX3263/RED8D1:11/RP1A.201005.001/1660911776000:user/release-keys
