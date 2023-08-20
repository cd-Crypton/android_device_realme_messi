#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from messi device
$(call inherit-product, device/realme/messi/device.mk)

PRODUCT_DEVICE := messi
PRODUCT_NAME := lineage_messi
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme 9 4G
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_SYSTEM_NAME := RMX3521
PRODUCT_SYSTEM_DEVICE := RMX3521

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX3521-user 13 TP1A.220905.001 S.e3b4a5_66a4_66a5 release-keys"
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := realme/RMX3521/RE54E2L1:13/TP1A.220905.001/S.e3b4a5_66a4_66a5:user/release-keys
