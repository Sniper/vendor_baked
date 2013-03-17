# Inherit CDMA make.
# Apns called in device tree.

# Inherit BAKED configuration.
$(call inherit-product, vendor/baked/configs/common_full.mk)

# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Tuna overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/tuna
PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/toro

# Setup device specific product configuration.
PRODUCT_NAME := baked_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=mysid BUILD_ID=JDQ39 BUILD_FINGERPRINT=google/mysid/toro:4.2.2/JDQ39/125147:user/release-keys PRIVATE_BUILD_DESC="mysid-user 4.2.2 JDQ39 125147 release-keys" BUILD_NUMBER=125147

# Toro specific packages
PRODUCT_PACKAGES += \
    Thinkfree

# bootanimation
PRODUCT_COPY_FILES += \
   vendor/baked/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation.zip
