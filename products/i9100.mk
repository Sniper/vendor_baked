# Inherit GSM make.
$(call inherit-product, vendor/baked/configs/gsm.mk)

# Inherit BAKED configuration.
$(call inherit-product, vendor/baked/configs/common_full.mk)

# Inherit device configuration for i9100.
$(call inherit-product, device/samsung/i9100/full_i9100.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/i9100

# Release name
PRODUCT_RELEASE_NAME := GT-I9100

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := i9100
PRODUCT_NAME := baked_i9100
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-I9100
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9100 TARGET_DEVICE=GT-I9100 BUILD_FINGERPRINT=samsung/GT-I9100/GT-I9100:4.0.3/IML74K/XXLPQ:user/release-keys PRIVATE_BUILD_DESC="GT-I9100-user 4.0.3 IML74K XXLPQ release-keys"

# bootanimation
PRODUCT_COPY_FILES += \
    vendor/baked/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation.zip
