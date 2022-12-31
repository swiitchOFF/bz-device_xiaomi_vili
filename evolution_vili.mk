#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from vili device
$(call inherit-product, device/xiaomi/vili/device.mk)

# Inherit some common EvolutionX stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080

# Rom additions
TARGET_USES_MINI_GAPPS := true
TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := vili
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 2107113SG
PRODUCT_NAME := evolution_vili


PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cheetah-user 13 TD1A.221205.001/9104446 release-keys"

BUILD_FINGERPRINT := "google/cheetah/cheetah:13/TD1A.221205.001/9104446:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
