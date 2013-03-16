# Inherit CDMA make.
$(call inherit-product, vendor/baked/configs/cdma.mk)

# Inherit BAKED configuration.
$(call inherit-product, vendor/baked/configs/common_full.mk)

# Inherit device configuration for d710.
$(call inherit-product, device/samsung/d710/full_d710.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/d710

# Setup device specific product configuration.
PRODUCT_NAME := baked_d710
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := d710
PRODUCT_MODEL := SPH-D710
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d710 TARGET_DEVICE=d710 BUILD_FINGERPRINT="samsung/d710/d710:4.1.2/JZO54K/FL16:user/release-keys" PRIVATE_BUILD_DESC="d710-user 4.1.2 JZO54K FL16 release-keys"

# boot animation
PRODUCT_COPY_FILES += \
    vendor/baked/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation.zip
