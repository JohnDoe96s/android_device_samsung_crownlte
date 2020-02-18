# Copyright (C) 2018 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-6144-dalvik-heap.mk)
$(call inherit-product, vendor/samsung/universal9810-common/crownlte/universal9810-common-vendor.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/crownlte/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := crownlte
PRODUCT_NAME := lineage_crownlte
PRODUCT_MODEL := SM-N960F
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

# fix improper s-pen rotation
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/files/samsung-sec_e-pen.idc:system/usr/idc/sec_e-pen.idc
