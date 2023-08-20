#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Include GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch.mk)

PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-impl.recovery \
    android.hardware.boot@1.2-service

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_vendor=true \
    POSTINSTALL_PATH_vendor=bin/checkpoint_gc \
    FILESYSTEM_TYPE_vendor=ext4 \
    POSTINSTALL_OPTIONAL_vendor=true

PRODUCT_PACKAGES += \
    checkpoint_gc \
    otapreopt_script

# ANT+
PRODUCT_PACKAGES += \
    AntHalService

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *
PRODUCT_PACKAGES += \
    CarrierConfigOverlay \
    WifiResTarget

# Partitions
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := nosdcard

# Rootdir
PRODUCT_PACKAGES += \
    init.class_main.sh \
    qca6234-service.sh \
    init.qcom.coex.sh \
    init.qcom.sh \
    init.qcom.early_boot.sh \
    init.qcom.sensors.sh \
    init.qti.display_boot.sh \
    init.qti.chg_policy.sh \
    init.qcom.usb.sh \
    init.mdm.sh \
    init.qcom.efs.sync.sh \
    init.qcom.post_boot.sh \
    init.qti.early_init.sh \
    init.qcom.class_core.sh \
    init.qcom.sdio.sh \
    init.qti.qcv.sh \
    init.qti.dcvs.sh \
    init.crda.sh \
    init.qti.media.sh \

PRODUCT_PACKAGES += \
    fstab.emmc \
    vendor.oem_ftm.rc \
    init.qcom.usb.rc \
    init.qcom.rc \
    init.oem_ftm.rc \
    init.target.rc \
    init.qcom.factory.rc \
    init.qti.ufs.rc \
    vendor.oem_ftm_svc_disable.rc \
    ueventd.qcom.rc \
    init.aging.rc \
    init.recovery.qcom.rc \

# Shipping API level
BOBOARD_API_LEVEL := 30
BOARD_SHIPPING_API_LEVEL := 30
PRODUCT_SHIPPING_API_LEVEL := 31

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/realme/messi/messi-vendor.mk)
