# Inherit BAKED configuration.
$(call inherit-product, vendor/baked/configs/common_full_tablet.mk)

# Inherit AOSP device configuration for manta.
$(call inherit-product, device/samsung/manta/full_manta.mk)

# Manta Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/manta

# Release name
PRODUCT_RELEASE_NAME := Nexus10

# Setup device specific product configuration
PRODUCT_NAME := baked_manta
PRODUCT_BRAND := google
PRODUCT_DEVICE := manta
PRODUCT_MODEL := Nexus 10
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mantaray BUILD_FINGERPRINT=google/mantaray/manta:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="mantaray-user 4.2.2 JDQ39 573038 release-keys"

PRODUCT_COPY_FILES +=  \
    vendor/baked/prebuilt/bootanimation/bootanimation_2560_1600.zip:system/media/bootanimation.zip
