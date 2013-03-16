# Inherit BAKED configuration.
$(call inherit-product, vendor/baked/configs/common_full_tablet.mk)

# Inherit device configuration for p5wifi.
$(call inherit-product, device/samsung/p5wifi/p5wifi.mk)

# Setup device specific product configuration.
PRODUCT_NAME := baked_p5wifi
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := p5wifi
PRODUCT_MODEL := GT-P7310
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-P7310 BUILD_FINGERPRINT=samsung/GT-P7310/GT-P7310:4.0.4/IMM76D/UELPB:user/release-keys PRIVATE_BUILD_DESC="GT-P7310-user 4.0.4 IMM76D UELPB release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := p5wifi

PRODUCT_COPY_FILES += \
    vendor/baked/prebuilt/bootanimation/bootanimation_1280_800.zip:system/media/bootanimation.zip
