#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from marble device
$(call inherit-product, device/xiaomi/marble/device.mk)

# Inherit from common EverestOS configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier
PRODUCT_BRAND := POCO
PRODUCT_DEVICE := marble
PRODUCT_MODEL := 23049PCD8G
PRODUCT_NAME := lineage_marble
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_SYSTEM_NAME := marble_global
PRODUCT_SYSTEM_DEVICE := marble

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="marble_global-user 14 UKQ1.230804.001 V816.0.8.0.UMRMIXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := POCO/marble_global/marble:14/UKQ1.230804.001/V816.0.8.0.UMRMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# EverestOS stuff
TARGET_SUPPORTS_BLUR := true
TARGET_HAS_UDFPS := false
WITH_GAPPS := true

# Quick switch (add more than one Launcher in build)
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true

# EverestOS Maintainer stuff
EVEREST_MAINTAINER := SharmagRit
EVEREST_BUILD_TYPE := OFFICIAL
