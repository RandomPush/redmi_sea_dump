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

# Inherit from sea device
$(call inherit-product, device/xiaomi/sea/device.mk)

PRODUCT_DEVICE := sea
PRODUCT_NAME := lineage_sea
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := sea
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="missi_phone_global-user 14 UP1A.230905.011 V816.0.3.0.UHZMIXM release-keys"

BUILD_FINGERPRINT := Redmi/sea_global/sea:12/SP1A.210812.016/V816.0.3.0.UHZMIXM:user/release-keys
