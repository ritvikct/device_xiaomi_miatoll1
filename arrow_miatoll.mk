#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Arrow-OS Extended stuff.
$(call inherit-product, vendor/arrow/config/common_full_phone.mk)

# Inherit from miatoll device
$(call inherit-product, device/xiaomi/miatoll/device.mk)

# Inherit Google Camera
$(call inherit-product, vendor/xiaomi/miatoll-gcam/miatoll-gcam-vendor.mk)

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_arrow_RECOVERY := true

PRODUCT_NAME := arrow_miatoll
PRODUCT_DEVICE := miatoll
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := SM6250

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="miatoll_global-user 12 SKQ1.211019.001 V13.0.2.0.SJWMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop 
BUILD_FINGERPRINT := "google/tokay_beta/tokay:15/BP11.241025.006/12620009:user/release-keys"
