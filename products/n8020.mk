$(call inherit-product, vendor/baked/configs/common_full_tablet.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/baked/configs/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/n8020/full_n8020.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := baked_n8020
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := n8020
PRODUCT_MODEL := GT-N8020
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-N8020 TARGET_DEVICE=GT-N8020 BUILD_FINGERPRINT="samsung/p4noteltexx/p4notelte:4.1.1/JRO03C/N8020XXALJD:user/release-keys" PRIVATE_BUILD_DESC="p4noteltexx-user 4.1.1 JRO03C N8020XXALJD release-keys"

# bootanimation
PRODUCT_COPY_FILES += \
    vendor/baked/prebuilt/bootanimation/bootanimation_1280_800.zip:system/media/bootanimation.zip
