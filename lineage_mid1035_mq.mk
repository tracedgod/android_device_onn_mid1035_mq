#
# Copyright (C) 2020-2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)


## Inherit some common Lineage stuff
$(call inherit-product, vendor/twrp/config/common.mk)

## Inherit from device
$(call inherit-product, device/onn/mid1035_mq/device.mk)

## Device identifier, this must come after all inclusions
PRODUCT_DEVICE := mid1035_mq
PRODUCT_NAME := lineage_mid1035_mq
PRODUCT_BRAND := onn
PRODUCT_MODEL := mid1035_mq
PRODUCT_MANUFACTURER := onn

PRODUCT_GMS_CLIENTID_BASE := android-digiland

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_mid1035a_mq-user 11 RP1A.200720.011 mp1V8137 release-keys"

BUILD_FINGERPRINT := onn/mid1035_mq:11/RP1A.200720.011/qyh20210812:user/release-keys
