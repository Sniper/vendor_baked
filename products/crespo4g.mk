# Inherit CDMA common make
$(call inherit-product, vendor/baked/configs/cdma.mk)

# Inherit BAKED configuration.
$(call inherit-product, vendor/baked/configs/common_full.mk)

# Inherit AOSP device configuration for crespo4g.
$(call inherit-product, device/samsung/crespo4g/full_crespo4g.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/crespo4g

# Setup device specific product configuration.
PRODUCT_NAME := baked_crespo4g
PRODUCT_BRAND := google
PRODUCT_DEVICE := crespo4g
PRODUCT_MODEL := Nexus S 4G
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=sojus BUILD_FINGERPRINT=google/sojus/crespo4g:4.1.1/JRO03C/398337:user/release-keys PRIVATE_BUILD_DESC="sojus-user 4.1.1 JRO03C 398337 release-keys" BUILD_NUMBER=398337

# Crespo4G specific packages
PRODUCT_PACKAGES += \
    Thinkfree

# bootanimation
PRODUCT_COPY_FILES += \
    vendor/baked/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation.zip
