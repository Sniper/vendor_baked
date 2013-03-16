# Inherit CDMA make.
# Apns called in device tree

# Inherit BAKED configuration.
$(call inherit-product, vendor/baked/configs/common_tablet.mk)

# Inherit AOSP device configuration for stingray.
$(call inherit-product, device/moto/stingray/full_stingray.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/stingray

# Discard inherited values and use our own instead.
PRODUCT_NAME := baked_stingray
PRODUCT_BRAND := verizon
PRODUCT_DEVICE := stingray
PRODUCT_MODEL := Xoom
PRODUCT_MANUFACTURER := Motorola

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=trygon BUILD_FINGERPRINT="verizon/trygon/stingray:4.1.1/JRO03H/405518:user/release-keys" PRIVATE_BUILD_DESC="trygon-user 4.1.1 JRO03H 405518 release-keys"

# bootanimation
PRODUCT_COPY_FILES += \
    vendor/baked/prebuilt/bootanimation/bootanimation_1280_800.zip:system/media/bootanimation.zip
