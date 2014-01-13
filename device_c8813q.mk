$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/huawei/c8813q/c8813q-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/c8813q/overlay

LOCAL_PATH := device/huawei/c8813q
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel
PRODUCT_COPY_FILES += \
    device/huawei/c8813q/rootdir/init.huawei.rc:root/init.huawei.rc \
    device/huawei/c8813q/rootdir/init.huawei.usb.rc:root/init.huawei.usb.rc \
    device/huawei/c8813q/rootdir/ueventd.huawei.rc:root/ueventd.huawei.rc

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_c8813q
PRODUCT_DEVICE := c8813q
