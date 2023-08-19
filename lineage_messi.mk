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

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="bengal-user 12 RKQ1.211119.001 1670223239400 release-keys"

BUILD_FINGERPRINT := qti/bengal/bengal:12/RKQ1.211119.001/1670223239400:user/release-keys
