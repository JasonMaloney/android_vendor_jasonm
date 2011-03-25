# Generic cyanogenmod product
PRODUCT_NAME := cyanogen
PRODUCT_BRAND := cyanogen
PRODUCT_DEVICE := generic

PRODUCT_PACKAGES += Launcher2

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Used by BusyBox
KERNEL_MODULES_DIR:=/system/lib/modules

# Tiny toolbox
TINY_TOOLBOX:=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# CyanogenMod specific product packages
PRODUCT_PACKAGES += \
    AndroidTerm

# Extra tools in CyanogenMod
PRODUCT_PACKAGES += \
    openvpn

# Common CM overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/jasonm/overlay/common

PRODUCT_COPY_FILES += \
    vendor/jasonm/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/jasonm/prebuilt/common/bin/modelid_cfg.sh:system/bin/modelid_cfg.sh \
    vendor/jasonm/prebuilt/common/bin/verify_cache_partition_size.sh:system/bin/verify_cache_partition_size.sh \
    vendor/jasonm/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/jasonm/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/jasonm/prebuilt/common/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
    vendor/jasonm/prebuilt/common/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown \
    vendor/jasonm/prebuilt/common/etc/profile:system/etc/profile \
    vendor/jasonm/prebuilt/common/etc/init.local.rc:system/etc/init.local.rc \
    vendor/jasonm/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/jasonm/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/jasonm/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/jasonm/prebuilt/common/etc/init.d/04modules:system/etc/init.d/04modules \
    vendor/jasonm/prebuilt/common/etc/init.d/05mountsd:system/etc/init.d/05mountsd \
    vendor/jasonm/prebuilt/common/etc/init.d/06mountdl:system/etc/init.d/06mountdl \
    vendor/jasonm/prebuilt/common/etc/init.d/20userinit:system/etc/init.d/20userinit \
    vendor/jasonm/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache \
    vendor/jasonm/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/jasonm/prebuilt/common/bin/fix_permissions:system/bin/fix_permissions \
    vendor/jasonm/prebuilt/common/bin/sysinit:system/bin/sysinit \
    vendor/jasonm/prebuilt/common/xbin/htop:system/xbin/htop \
    vendor/jasonm/prebuilt/common/xbin/irssi:system/xbin/irssi \
    vendor/jasonm/prebuilt/common/xbin/powertop:system/xbin/powertop \
    vendor/jasonm/prebuilt/common/xbin/openvpn-up.sh:system/xbin/openvpn-up.sh

PRODUCT_COPY_FILES += \
#    vendor/jasonm/prebuilt/common/etc/init.d/10apps2sd:system/etc/init.d/10apps2sd

PRODUCT_COPY_FILES +=  \
#    vendor/jasonm/proprietary/RomManager.apk:system/app/RomManager.apk \

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Always run in insecure mode, enables root on user build variants
#ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0

ifdef CYANOGEN_WITH_GOOGLE
    PRODUCT_COPY_FILES += \
        vendor/jasonm/proprietary/CarHomeGoogle.apk:./system/app/CarHomeGoogle.apk \
        vendor/jasonm/proprietary/CarHomeLauncher.apk:./system/app/CarHomeLauncher.apk \
        vendor/jasonm/proprietary/Facebook.apk:./system/app/Facebook.apk \
        vendor/jasonm/proprietary/GenieWidget.apk:./system/app/GenieWidget.apk \
        vendor/jasonm/proprietary/Gmail.apk:./system/app/Gmail.apk \
        vendor/jasonm/proprietary/GoogleBackupTransport.apk:./system/app/GoogleBackupTransport.apk \
        vendor/jasonm/proprietary/GoogleCalendarSyncAdapter.apk:./system/app/GoogleCalendarSyncAdapter.apk \
        vendor/jasonm/proprietary/GoogleContactsSyncAdapter.apk:./system/app/GoogleContactsSyncAdapter.apk \
        vendor/jasonm/proprietary/GoogleFeedback.apk:./system/app/GoogleFeedback.apk \
        vendor/jasonm/proprietary/GooglePartnerSetup.apk:./system/app/GooglePartnerSetup.apk \
        vendor/jasonm/proprietary/GoogleQuickSearchBox.apk:./system/app/GoogleQuickSearchBox.apk \
        vendor/jasonm/proprietary/GoogleServicesFramework.apk:./system/app/GoogleServicesFramework.apk \
        vendor/jasonm/proprietary/HtcCopyright.apk:./system/app/HtcCopyright.apk \
        vendor/jasonm/proprietary/HtcEmailPolicy.apk:./system/app/HtcEmailPolicy.apk \
        vendor/jasonm/proprietary/HtcSettings.apk:./system/app/HtcSettings.apk \
        vendor/jasonm/proprietary/LatinImeTutorial.apk:./system/app/LatinImeTutorial.apk \
        vendor/jasonm/proprietary/Maps.apk:./system/app/Maps.apk \
        vendor/jasonm/proprietary/MarketUpdater.apk:./system/app/MarketUpdater.apk \
        vendor/jasonm/proprietary/MediaUploader.apk:./system/app/MediaUploader.apk \
        vendor/jasonm/proprietary/NetworkLocation.apk:./system/app/NetworkLocation.apk \
        vendor/jasonm/proprietary/OneTimeInitializer.apk:./system/app/OneTimeInitializer.apk \
        vendor/jasonm/proprietary/PassionQuickOffice.apk:./system/app/PassionQuickOffice.apk \
        vendor/jasonm/proprietary/SetupWizard.apk:./system/app/SetupWizard.apk \
        vendor/jasonm/proprietary/Street.apk:./system/app/Street.apk \
        vendor/jasonm/proprietary/Talk.apk:./system/app/Talk.apk \
        vendor/jasonm/proprietary/Twitter.apk:./system/app/Twitter.apk \
        vendor/jasonm/proprietary/Vending.apk:./system/app/Vending.apk \
        vendor/jasonm/proprietary/VoiceSearch.apk:./system/app/VoiceSearch.apk \
        vendor/jasonm/proprietary/YouTube.apk:./system/app/YouTube.apk \
        vendor/jasonm/proprietary/googlevoice.apk:./system/app/googlevoice.apk \
        vendor/jasonm/proprietary/kickback.apk:./system/app/kickback.apk \
        vendor/jasonm/proprietary/soundback.apk:./system/app/soundback.apk \
        vendor/jasonm/proprietary/talkback.apk:./system/app/talkback.apk \
        vendor/jasonm/proprietary/com.google.android.maps.xml:./system/etc/permissions/com.google.android.maps.xml \
        vendor/jasonm/proprietary/features.xml:./system/etc/permissions/features.xml \
        vendor/jasonm/proprietary/com.google.android.maps.jar:./system/framework/com.google.android.maps.jar \
        vendor/jasonm/proprietary/libspeech.so:./system/lib/libspeech.so
else
    PRODUCT_PACKAGES += \
        Provision \
        GoogleSearch \
        LatinIME
endif
