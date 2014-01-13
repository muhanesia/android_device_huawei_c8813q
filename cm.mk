## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := c8813q

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/c8813q/device_c8813q.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := c8813q
PRODUCT_NAME := cm_c8813q
PRODUCT_BRAND := huawei
PRODUCT_MODEL := c8813q
PRODUCT_MANUFACTURER := huawei
