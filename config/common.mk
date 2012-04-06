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
#PRODUCT_COPY_FILES += \
#    vendor/TeamDRH/prebuilt/common/bin/sysinit:system/bin/sysinit \
#    vendor/TeamDRH/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
#    vendor/TeamDRH/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
#    vendor/TeamDRH/prebuilt/common/etc/init.d/04modules:system/etc/init.d/04modules \
#    vendor/TeamDRH/prebuilt/common/etc/init.d/20userinit:system/etc/init.d/20userinit

# InitD support
PRODUCT_COPY_FILES += \
    vendor/TeamDRH/prebuilt/common/bin/sysinit:system/bin/sysinit \
    vendor/TeamDRH/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check \
    vendor/TeamDRH/prebuilt/common/etc/init.d/01zipalign:system/etc/init.d/01zipalign \
    vendor/TeamDRH/prebuilt/common/etc/init.d/02sysctl:system/etc/init.d/02sysctl \
    vendor/TeamDRH/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/TeamDRH/prebuilt/common/etc/init.d/05freemem:system/etc/init.d/05freemem \
    vendor/TeamDRH/prebuilt/common/etc/init.d/06removecache:system/etc/init.d/06removecache \
    vendor/TeamDRH/prebuilt/common/etc/init.d/07fixperms:system/etc/init.d/07fixperms \
    vendor/TeamDRH/prebuilt/common/etc/init.d/09cron:system/etc/init.d/09cron \
    vendor/TeamDRH/prebuilt/common/etc/init.d/10sdboost:system/etc/init.d/10sdboost \
    vendor/TeamDRH/prebuilt/common/etc/init.d/98tweaks:system/etc/init.d/98tweaks \
    vendor/TeamDRH/prebuilt/common/etc/init_trigger.enabled:system/etc/init_trigger.enabled \
    vendor/TeamDRH/prebuilt/common/etc/init_d.bsh:system/etc/init_d.bsh \
    vendor/TeamDRH/prebuilt/common/etc/init_d.cfg:system/etc/init_d.cfg \
    vendor/TeamDRH/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf    

# cron support
PRODUCT_COPY_FILES += \
    vendor/TeamDRH/prebuilt/common/etc/cron/cron.conf:system/etc/cron/cron.conf \
    vendor/TeamDRH/prebuilt/common/etc/cron/cron.hourly/00drop_caches:system/etc/cron/cron.hourly/00drop_caches \
    vendor/TeamDRH/prebuilt/common/etc/cron/cron.daily/00drop_caches:system/etc/cron/cron.daily/00drop_caches \
    vendor/TeamDRH/prebuilt/common/etc/cron/cron.weekly/00drop_caches:system/etc/cron/cron.weekly/00drop_caches \
    vendor/TeamDRH/prebuilt/common/etc/cron/cron.hourly/01clear_cache:system/etc/cron/cron.hourly/01clear_cache \
    vendor/TeamDRH/prebuilt/common/etc/cron/cron.daily/01clear_cache:system/etc/cron/cron.daily/01clear_cache \
    vendor/TeamDRH/prebuilt/common/etc/cron/cron.weekly/01clear_cache:system/etc/cron/cron.weekly/01clear_cache 



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
    vendor/TeamDRH/proprietary/Elixir.apk:system/app/Elixir.apk \
    vendor/TeamDRH/proprietary/DRH-News.apk:system/app/DRH-News.apk \
    vendor/TeamDRH/proprietary/Term.apk:system/app/Term.apk \
    vendor/TeamDRH/proprietary/lib/armeabi/libjackpal-androidterm3.so:system/lib/libjackpal-androidterm3.so \
    vendor/TeamDRH/prebuilt/media/bootanimation.zip:system/media/bootanimation.zip

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Required CM packages
PRODUCT_PACKAGES += \
    Development \
    LatinIME \
    DRHControl \
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
    MusicFX \
    DSPManager \
    libcyanogen-dsp \
    audio_effects.conf

PRODUCT_PACKAGE_OVERLAYS += vendor/TeamDRH/overlay/dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/TeamDRH/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/TeamDRH/overlay/ui
PRODUCT_PACKAGE_OVERLAYS += vendor/TeamDRH/overlay/teamdrh

PRODUCT_VERSION_MAJOR = ICS
PRODUCT_VERSION_MINOR = Beta
PRODUCT_VERSION_MAINTENANCE = 1.1

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=ITL41D

DRH_VERSION := TeamDRH-$(PRODUCT_VERSION_MAJOR)-$(PRODUCT_VERSION_MINOR)-$(PRODUCT_VERSION_MAINTENANCE)$(PRODUCT_VERSION_DEVICE_SPECIFIC)-$(shell date +%0d%^b%Y-%H%M%S)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.cm.version=$(DRH_VERSION) \
    ro.modversion=$(DRH_VERSION)

