# Inherit AOSP device configuration for heroc.
$(call inherit-product, device/htc/heroc/heroc.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/jasonm/products/common_full.mk)


#
# Setup device specific product configuration.
#
PRODUCT_NAME := jasonm_heroc
PRODUCT_BRAND := sprint
PRODUCT_DEVICE := heroc
PRODUCT_MODEL := HERO200
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=GRI40 BUILD_DISPLAY_ID=GRI40 BUILD_FINGERPRINT=google/passion/passion:2.3.3/GRI40/102588:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.3 GRI40 102588 release-keys"

# Extra overlay for Gallery3D orientation hack
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/heroc
PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=$(TOP)/vendor/cyanogen/prelink-linux-arm-hero.map
#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=Android-2.3.3-$(shell date +%m%d%Y)-Heroc
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=Android-2.3.3-Heroc
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=Android-2.3.3-Heroc
    endif
endif

