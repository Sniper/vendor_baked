# Inherit CDMA make.
$(call inherit-product, vendor/baked/configs/cdma.mk)

# Inherit BAKED configuration.
$(call inherit-product, vendor/baked/configs/common_full.mk)

# Inherit device configuration for d2spr.
$(call inherit-product, device/samsung/d2spr/full_d2spr.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/d2vzw

PRODUCT_NAME := baked_d2spr
PRODUCT_DEVICE := d2spr
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := d2spr
PRODUCT_MODEL := SPH-L710
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2spr TARGET_DEVICE=d2spr BUILD_FINGERPRINT="d2spr-user 4.0.4 IMM76D L710VPALG2 release-keys" PRIVATE_BUILD_DESC="samsung/d2spr/d2spr:4.0.4/IMM76D/L710VPALG2:user/release-keys"

# boot animation
PRODUCT_COPY_FILES += \
    vendor/baked/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation.zip
