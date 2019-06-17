# Copyright (C) 2018 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0

$(call inherit-product, device/samsung/crownlte/full_crownlte.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_crownlte

# fix improper s-pen rotation
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/files/samsung-sec_e-pen.idc:system/usr/idc/sec_e-pen.idc
