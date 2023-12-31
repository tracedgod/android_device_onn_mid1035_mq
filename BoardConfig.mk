#
# Copyright (C) 2020-2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE_PATH := device/onn/mid1035_mq
ALLOW_MISSING_DEPENDENCIES := true

# Bootloader
BOARD_VENDOR := onn
#TARGET_SOC :=
TARGET_BOOTLOADER_BOARD_NAME := mid1035a_mq
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_USES_UEFI := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_VARIANT_RUNTIME := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a53

TARGET_USES_64_BIT_BINDER := true

TARGET_CPU_SMP := true
ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# File systems
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Platform
TARGET_BOARD_PLATFORM := mt8768wa
# TARGET_BOARD_PLATFORM_GPU is not set

# Kernel
TARGET_FORCE_PREBUILT_KERNEL := true
ifeq ($(TARGET_FORCE_PREBUILT_KERNEL),true)
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_KERNEL_ARCH := arm64
endif

# Boot
BOARD_BOOT_HEADER_VERSION := 2
#BOARD_BOOT_HEADER_SIZE :=
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_PAGESIZE := 2048
#BOARD_KERNEL_OFFSET :=
BOARD_RAMDISK_OFFSET := 0x11a88000
#BOARD_KERNEL_SECOND_OFFSET :=
BOARD_KERNEL_TAGS_OFFSET := 0x07808000
#BOARD_DTB_OFFSET :=
#BOARD_DTB_SIZE :=
BOARD_MKBOOTIMG_ARGS := /
		--kernel_offset $(BOARD_KERNEL_OFFSET) \
		--ramdisk_offset $(BOARD_RAMDISK_OFFSET) \
		--tags_offset $(BOARD_KERNEL_TAGS_OFFSET) \
		--second_offset $(BOARD_KERNEL_SECOND_OFFSET) \
		--header_version $(BOARD_BOOT_HEADER_VERSION) \
		--pagesize $(BOARD_KERNEL_PAGESIZE) \
		--board "mid1035a_mq" \
		--dtb $(TARGET_PREBUILT_DTB) \
		--dtb_offset $(BOARD_DTB_OFFSET) \
		--recovery_dtbo $(BOARD_PREBUILT_DTBOIMAGE)

# Recovery
RECOVERY_VARIANT := twrp
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432

# Dynamic Partitions
BOARD_SUPER_PARTITION_SIZE := 9126805504 # TODO: Fix hardcoded value
BOARD_SUPER_PARTITION_GROUPS := onn_dynamic_partitions
BOARD_ONN_DYNAMIC_PARTITIONS_SIZE := 9122611200 # TODO: Fix hardcoded value
BOARD_ONN_DYNAMIC_PARTITIONS_PARTITION_LIST := system vendor product

# TWRP
ifeq ($(RECOVERY_VARIANT),twrp)
TW_DEVICE_VERSION := 1
TW_THEME := portrait_hdpi
TW_NO_REBOOT_BOOTLOADER := true
TARGET_SCREEN_WIDTH := 800
TARGET_SCREEN_HEIGHT := 1340
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
#TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 200
TW_INCLUDE_NTFS_3G := true
TW_EXCLUDE_TWRPAPP := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXTRA_LANGUAGES := false
TARGET_USES_MKE2FS := true
TW_NO_LEGACY_PROPS := true
TW_NO_BIND_SYSTEM := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
endif