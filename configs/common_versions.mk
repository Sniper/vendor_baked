# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

# build version number
BAKED_VERSION = 8

# Rom Manager properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.baked.version=$(TARGET_PRODUCT)_bb-8_$(shell date +%Y%m%d-%H%M%S)

# Goo updater app
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=BAKED \
    ro.goo.rom=$(TARGET_PRODUCT) \
    ro.goo.version=$(BAKED_VERSION)

# OTA updater
DATE = 20130315-0100

PRODUCT_PROPERTY_OVERRIDES += \
    otaupdater.otaid=$(TARGET_PRODUCT) \
    otaupdater.otatime=$(DATE) \
    otaupdater.otaver=$(BAKED_VERSION)
