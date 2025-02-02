#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/tcl/A3A_8_4G

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := generic

TARGET_USES_64_BIT_BINDER := true

# APEX
OVERRIDE_TARGET_FLATTEN_APEX := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := a3a84g
TARGET_NO_BOOTLOADER := true

# Display
TARGET_SCREEN_DENSITY := 240

# Kernel
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_CMDLINE := bootopt=64S3,32S1,32S1 buildvariant=user
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_IMAGE_NAME := Image
TARGET_KERNEL_CONFIG := A3A_8_4G_defconfig
TARGET_KERNEL_SOURCE := kernel/tcl/A3A_8_4G

# Kernel - prebuilt
TARGET_FORCE_PREBUILT_KERNEL := true
ifeq ($(TARGET_FORCE_PREBUILT_KERNEL),true)
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilts/kernel
endif

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE := 25165824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 25165824

# Platform
TARGET_BOARD_PLATFORM := mt6739

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.mt6739
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Security patch level
VENDOR_SECURITY_PATCH := 2019-01-05

# VINTF
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Inherit the proprietary files
include vendor/tcl/A3A_8_4G/BoardConfigVendor.mk
