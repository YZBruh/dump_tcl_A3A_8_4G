#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# API levels
PRODUCT_SHIPPING_API_LEVEL := 27

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Product characteristics
PRODUCT_CHARACTERISTICS := tablet

# Rootdir
PRODUCT_PACKAGES += \

PRODUCT_PACKAGES += \
    fstab.mt6739 \
    factory_init.connectivity.rc \
    factory_init.project.rc \
    factory_init.rc \
    init.aee.rc \
    init.ago.rc \
    init.connectivity.rc \
    init.modem.rc \
    init.mt6739.rc \
    init.mt6739.usb.rc \
    init.project.rc \
    init.sensor_1_0.rc \
    meta_init.connectivity.rc \
    meta_init.modem.rc \
    meta_init.project.rc \
    meta_init.rc \
    multi_init.rc \
    init.rc \
    init.recovery.mt6739.rc \
    ueventd.rc \

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/tcl/A3A_8_4G/A3A_8_4G-vendor.mk)
