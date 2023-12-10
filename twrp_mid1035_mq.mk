#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Release name
PRODUCT_RELEASE_NAME := mid1035_mq

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/onn/mid1035_mq/device.mk)

## Device identifier, this must come after all inclusions
PRODUCT_NAME := twrp_mid1035_mq
PRODUCT_DEVICE := mid1035_mq
PRODUCT_MODEL := 100003562
PRODUCT_BRAND := onn
PRODUCT_MANUFACTURER := onn

PRODUCT_GMS_CLIENTID_BASE := android-digiland

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_mid1035a_mq-user 11 RP1A.200720.011 mp1V8137 release-keys"

BUILD_FINGERPRINT := onn/100003562/mid1035_mq:11/RP1A.200720.011/qyh20210812:user/release-keys
