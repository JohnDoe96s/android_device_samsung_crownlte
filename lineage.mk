# Copyright (C) 2018 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0

$(call inherit-product, device/samsung/crownlte/full_crownlte.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_crownlte

# fix improper s-pen rotation
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/files/samsung-sec_e-pen.idc:system/usr/idc/sec_e-pen.idc

# add fingerprint override to pass cts
BUILD_FINGERPRINT := samsung/crownltexx/crownlte:9/PPR1.180610.011/N960FXXS2CSDJ:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRIVATE_BUILD_DESC="crownltexx-user 9 PPR1.180610.011 N960FXXS2CSDJ release-keys"
