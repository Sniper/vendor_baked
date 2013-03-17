# Inherit BAKED configuration.
$(call inherit-product, vendor/baked/configs/common_full_tablet.mk)

# Inherit device configuration for n801x.
$(call inherit-product, device/samsung/n801x/full_n801x.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := baked_n801x
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := n801x
PRODUCT_MODEL := GT-N801x
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-N801x TARGET_DEVICE=GT-N801x BUILD_FINGERPRINT="samsung/p4notewifiue/p4notewifi:4.1.2/JZO54K/N8013UEUCMA3:user/release-keys" PRIVATE_BUILD_DESC="samsung/p4notewifiue/p4notewifi:4.1.2/JZO54K/N8013UEUCMA3:user/release-keys"

# bootanimation
PRODUCT_COPY_FILES += \
    vendor/baked/prebuilt/bootanimation/bootanimation_1280_800.zip:system/media/bootanimation.zip
