# Inherit CDMA make.
$(call inherit-product, vendor/baked/configs/cdma.mk)

# Inherit BAKED configuration.
$(call inherit-product, vendor/baked/configs/common_full.mk)

# Inherit device configuration for mesmerizemtd.
$(call inherit-product, device/samsung/mesmerizemtd/full_mesmerizemtd.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/aries-common

# Release name
PRODUCT_RELEASE_NAME := Mesmerize

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mesmerizemtd
PRODUCT_NAME := baked_mesmerizemtd
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SCH-I500

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SCH-I500 TARGET_DEVICE=SCH-I500 BUILD_FINGERPRINT=uscc/SCH-I500/SCH-I500:2.3.4/GINGERBREAD/EH09:user/release-keys PRIVATE_BUILD_DESC="SCH-I500-user 2.3.4 GINGERBREAD EH09 release-keys"

# bootanimation
PRODUCT_COPY_FILES += \
	vendor/baked/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation.zip
