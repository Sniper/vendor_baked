# Inherit BAKED configuration.
$(call inherit-product, vendor/baked/configs/common_tablet.mk)

# Inherit AOSP device configuration for wingray.
$(call inherit-product, device/moto/wingray/full_wingray.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/wingray

# Discard inherited values and use our own instead.
PRODUCT_NAME := baked_wingray
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := wingray
PRODUCT_MODEL := Xoom
PRODUCT_MANUFACTURER := Motorola

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=tervigon BUILD_FINGERPRINT="motorola/tervigon/wingray:4.1.1/JRO03H/405518:user/release-keys" PRIVATE_BUILD_DESC="tervigon-user 4.1.1 JRO03H 405518 release-keys" BUILD_NUMBER=405518

# bootanimation
PRODUCT_COPY_FILES += \
    vendor/baked/prebuilt/bootanimation/bootanimation_1280_800.zip:system/media/bootanimation.zip
