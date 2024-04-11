#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),A3A_8_4G)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
