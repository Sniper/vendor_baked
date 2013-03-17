# Inherit GSM make.
$(call inherit-product, vendor/baked/configs/gsm.mk)

# Inherit BAKED configuration
$(call inherit-product, vendor/baked/configs/common_full.mk)

# Inherit AOSP device configuration for mako.
$(call inherit-product, device/lge/mako/full_mako.mk)

# Mako Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/mako

# Setup device specific product configuration
PRODUCT_NAME := baked_mako
PRODUCT_BRAND := google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=occam BUILD_FINGERPRINT=google/occam/mako:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.2.2 JDQ39 573038 release-keys"

PRODUCT_COPY_FILES += \
    vendor/baked/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation.zip
