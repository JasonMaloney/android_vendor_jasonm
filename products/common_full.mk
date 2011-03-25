# Inherit common stuff
$(call inherit-product, vendor/jasonm/products/common.mk)

# Bring in all audio files
include frameworks/base/data/sounds/AllAudio.mk

# Include extra dictionaries for LatinIME
PRODUCT_PACKAGE_OVERLAYS += vendor/jasonm/overlay/dictionaries

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Playa.ogg \
    ro.config.notification_sound=regulus.ogg \
    ro.config.alarm_alert=Alarm_Beep_03.ogg
