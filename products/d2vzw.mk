# Inherit CDMA make.
$(call inherit-product, vendor/baked/configs/cdma.mk)

# Inherit BAKED configuration.
$(call inherit-product, vendor/baked/configs/common_full.mk)

# Inherit device configuration for d2vzw.
$(call inherit-product, device/samsung/d2vzw/full_d2vzw.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/d2vzw

# Setup device specific product configuration.
PRODUCT_NAME := baked_d2vzw
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := d2vzw
PRODUCT_MODEL := SCH-I535
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2vzw TARGET_DEVICE=d2vzw BUILD_FINGERPRINT="d2vzw-user 4.1.2 JZO54K I535VRBMB1 release-keys" PRIVATE_BUILD_DESC="Verizon/d2vzw/d2vzw:4.1.2/JZO54K/I535VRBMB1:user/release-keys"

# boot animation
PRODUCT_COPY_FILES += \
    vendor/baked/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation.zip
