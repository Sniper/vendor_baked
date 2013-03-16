# Inherit GSM make.
$(call inherit-product, vendor/baked/configs/gsm.mk)

# Inherit BAKED configuration.
$(call inherit-product, vendor/baked/configs/common_full.mk)

# Inherit device configuration for d2att.
$(call inherit-product, device/samsung/d2att/full_d2att.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/d2att

# Setup device specific product configuration.
PRODUCT_NAME := baked_d2att
PRODUCT_DEVICE := d2att
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SAMSUNG-SGH-I747
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2uc TARGET_DEVICE=d2att BUILD_FINGERPRINT="d2att-userdebug 4.1.1 JRO03L eng.ar.20120827.191311 release-keys"
PRIVATE_BUILD_DESC="samsung/full_d2att/d2att:4.1.1/JRO03L/eng.ar.20120827.191311:userdebug/release-keys"

# bootanimation
PRODUCT_COPY_FILES += \
    vendor/baked/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation.zip
