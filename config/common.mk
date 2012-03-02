PRODUCT_BRAND ?= TeamDRH

PRODUCT_PROPERTY_OVERRIDES += \
    ro.rommanager.developerid=TeamDRH

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

PRODUCT_COPY_FILES += \
    vendor/TeamDRH/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/TeamDRH/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf

# init.d support
PRODUCT_COPY_FILES += \
    vendor/TeamDRH/prebuilt/common/bin/sysinit:system/bin/sysinit \
    vendor/TeamDRH/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/TeamDRH/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/TeamDRH/prebuilt/common/etc/init.d/04modules:system/etc/init.d/04modules \
    vendor/TeamDRH/prebuilt/common/etc/init.d/20userinit:system/etc/init.d/20userinit

# terminfo
PRODUCT_COPY_FILES += \
    vendor/TeamDRH/prebuilt/common/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
    vendor/TeamDRH/prebuilt/common/etc/terminfo/u/unknown:system/etc/terminfo/unknown


# Compcache/Zram support
PRODUCT_COPY_FILES += \
    vendor/TeamDRH/prebuilt/common/etc/init.local.rc:system/etc/init.local.rc \
    vendor/TeamDRH/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/TeamDRH/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache

PRODUCT_COPY_FILES +=  \
    vendor/TeamDRH/prebuilt/media/bootanimation.zip:system/media/bootanimation.zip
  	

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Required CM packages
PRODUCT_PACKAGES += \
    Development \
    LatinIME \
    ROMControl \
    SpareParts \
    Superuser \
    su

# Optional CM packages
PRODUCT_PACKAGES += \
    VideoEditor \
    VoiceDialer \
    Basic \
    LiveWallpapers \
    LiveWallpapersPicker

# Custom CM packages
PRODUCT_PACKAGES += \
    Launcher2 \
    DSPManager \
    libcyanogen-dsp \
    audio_effects.conf

PRODUCT_PACKAGE_OVERLAYS += vendor/TeamDRH/overlay/dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/TeamDRH/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/TeamDRH/overlay/ui
PRODUCT_PACKAGE_OVERLAYS += vendor/TeamDRH/overlay/teamdrh

PRODUCT_VERSION_MAJOR = ICS
PRODUCT_VERSION_MINOR = Preview
PRODUCT_VERSION_MAINTENANCE = 2B

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=ITL41D

PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=TeamDRH-$(PRODUCT_VERSION_MAJOR)-$(PRODUCT_VERSION_MINOR)-$(PRODUCT_VERSION_MAINTENANCE)$(PRODUCT_VERSION_DEVICE_SPECIFIC)-$(shell date +%0d%^b%Y-%H%M%S)

