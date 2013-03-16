# Inherit cdma stuff.
$(call inherit-product, vendor/baked/configs/cdma.mk)

# Inherit BAKED configuration.
$(call inherit-product, vendor/baked/configs/common_full.mk)

# Inherit device configuration for d2mtr.
$(call inherit-product, device/samsung/d2mtr/full_d2mtr.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/d2vzw

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2mtr TARGET_DEVICE=d2mtr BUILD_FINGERPRINT="d2mtr-user 4.0.4 IMM76D R530MVQALJ1 release-keys" PRIVATE_BUILD_DESC="samsung/d2mtr/d2mtr:4.0.4/IMM76D/R530MVQALJ1:user/release-keys"

PRODUCT_NAME := baked_d2mtr
PRODUCT_DEVICE := d2mtr

# boot animation
PRODUCT_COPY_FILES += \
    vendor/baked/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation.zip
