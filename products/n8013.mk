# Inherit BAKED configuration.
$(call inherit-product, vendor/baked/configs/common_full_tablet.mk)

# Inherit device configuration for n8013.
$(call inherit-product, device/samsung/n8013/full_n8013.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := baked_n8013
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := n8013
PRODUCT_MODEL := GT-N8013
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-N8013 TARGET_DEVICE=GT-N8013 BUILD_FINGERPRINT="samsung/p4noterfxx/p4noterf:4.1.2/JZO54K/N8000XXCMA5:user/release-keys" PRIVATE_BUILD_DESC="p4noterfxx-user 4.1.2 JZO54K N8000XXCMA5 release-keys"

# bootanimation
PRODUCT_COPY_FILES += \
    vendor/baked/prebuilt/bootanimation/bootanimation_1280_800.zip:system/media/bootanimation.zip
