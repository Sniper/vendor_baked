# Inherit GSM make.
$(call inherit-product, vendor/baked/configs/gsm.mk)

# Inherit BAKED configuration.
$(call inherit-product, vendor/baked/configs/common_full.mk)

# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Tuna overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/tuna
# PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/maguro

# Setup device specific product configuration.
PRODUCT_NAME := baked_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=yakju BUILD_FINGERPRINT="google/yakju/maguro:4.2.2/JDQ39/573038:user/release-keys" PRIVATE_BUILD_DESC="yakju-user 4.2.2 JDQ39 573038 release-keys"

# Maguro specific packages
PRODUCT_PACKAGES += \
    Thinkfree

# bootanimation
PRODUCT_COPY_FILES += \
    vendor/baked/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation.zip
