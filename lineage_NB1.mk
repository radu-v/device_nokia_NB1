#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from NB1 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_NAME := lineage_NB1
PRODUCT_DEVICE := NB1
PRODUCT_MANUFACTURER := HMD Global
PRODUCT_BRAND := Nokia
PRODUCT_MODEL := Nokia 8

PRODUCT_GMS_CLIENTID_BASE := android-hmd-rev2

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=NB1 \
    PRODUCT_NAME=NB1_00WW_FIH \
    PRIVATE_BUILD_DESC="NB1_00WW_FIH-user 9 PPR1.180610.011 00WW_5_15K release-keys"	

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Nokia/NB1_00WW_FIH/NB1:9/PPR1.180610.011/00WW_5_15K:user/release-keys