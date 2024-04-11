#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from A3A_8_4G device
$(call inherit-product, device/tcl/A3A_8_4G/device.mk)

PRODUCT_DEVICE := A3A_8_4G
PRODUCT_NAME := lineage_A3A_8_4G
PRODUCT_BRAND := TCL
PRODUCT_MODEL := 9027F
PRODUCT_MANUFACTURER := tcl

PRODUCT_GMS_CLIENTID_BASE := 

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="9027F-user 8.1.0 O11019 vB7B-0 release-keys"

BUILD_FINGERPRINT := TCL/9027F/A3A_8_4G:8.1.0/O11019/vB7B-0:user/release-keys
