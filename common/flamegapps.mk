PRODUCT_SOONG_NAMESPACES += \
    vendor/flamegapps/common
    
# Copy Props
PRODUCT_COPY_FILES += \
vendor/flamegapps/common/proprietary/product/props/flame.prop:$(TARGET_COPY_OUT_SYSTEM)/etc/flame.prop
    
# Copy configs
PRODUCT_COPY_FILES += \
vendor/flamegapps/common/proprietary/product/etc/default-permissions/default-permissions.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/default-permissions/default-permissions.xml \
vendor/flamegapps/common/proprietary/product/etc/default-permissions/opengapps-permissions.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/default-permissions/opengapps-permissions.xml\
vendor/flamegapps/common/proprietary/product/etc/permissions/com.google.android.dialer.support.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.google.android.dialer.support.xml \
vendor/flamegapps/common/proprietary/product/etc/permissions/com.google.android.maps.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.google.android.maps.xml \
vendor/flamegapps/common/proprietary/product/etc/permissions/com.google.android.media.effects.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.google.android.media.effects.xml \
vendor/flamegapps/common/proprietary/product/etc/permissions/privapp-permissions-google.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-permissions-google.xml \
vendor/flamegapps/common/proprietary/product/etc/permissions/split-permissions-google.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/split-permissions-google.xml \
vendor/flamegapps/common/proprietary/product/etc/preferred-apps/google.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/preferred-apps/google.xml \
vendor/flamegapps/common/proprietary/product/etc/sysconfig/dialer_experience.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/dialer_experience.xml \
vendor/flamegapps/common/proprietary/product/etc/sysconfig/google.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/google.xml \
vendor/flamegapps/common/proprietary/product/etc/sysconfig/google-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/google-hiddenapi-package-whitelist.xml \
vendor/flamegapps/common/proprietary/product/etc/sysconfig/google_build.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/google_build.xml \
vendor/flamegapps/common/proprietary/product/etc/sysconfig/google_exclusives_enable.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/google_exclusives_enable.xml

# Copy Devic epecific configs 
#vendor/flamegapps/common/proprietary/product/etc/sysconfig/nexus.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/nexus.xml 
#vendor/flamegapps/common/proprietary/product/etc/sysconfig/pixel_2018_exclusive.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/pixel_2018_exclusive.xml \
#vendor/flamegapps/common/proprietary/product/etc/sysconfig/pixel_experience_2018.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/pixel_experience_2018.xml

# Copy Frameworks
PRODUCT_COPY_FILES += \
vendor/flamegapps/common/proprietary/product/framework/com.google.android.dialer.support.jar:$(TARGET_COPY_OUT_SYSTEM_EXT)/framework/com.google.android.dialer.support.jar \
vendor/flamegapps/common/proprietary/product/framework/com.google.android.maps.jar:$(TARGET_COPY_OUT_SYSTEM_EXT)/framework/com.google.android.maps.jar \
vendor/flamegapps/common/proprietary/product/framework/com.google.android.media.effects.jar:$(TARGET_COPY_OUT_SYSTEM_EXT)/framework/com.google.android.media.effects.jar

# Copy libraries
PRODUCT_COPY_FILES += \
vendor/flamegapps/common/proprietary/product/lib64/libjni_latinimegoogle.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libjni_latinimegoogle.so \
vendor/flamegapps/common/proprietary/product/lib64/libsketchology_native.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libsketchology_native.so

# Inherit Flamegapps stock
ifeq ($(FLAMEGAPPS_PACKAGE),$(filter $(FLAMEGAPPS_PACKAGE),stock full))
PRODUCT_PACKAGES += \
GoogleContactsSyncAdapter \
GoogleExtShared \
CarrierSetup \
ConfigUpdater \
PrebuiltGmsCore \
GoogleExtServices \
GoogleServicesFramework \
Phonesky \
GoogleCalendarSyncAdapter \
MarkupGoogle \
SoundPickerGooglePrebuilt \
AndroidMigratePrebuilt \
AndroidAutoStubPrebuilt \
GoogleBackupTransport \
GooglePackageInstaller \
GoogleRestore \
SetupWizard \
WellbeingPrebuilt
endif

# Inherit Flamegapps full
ifeq ($(FLAMEGAPPS_PACKAGE),full)
PRODUCT_PACKAGES += \
PrebuiltDeskClockGoogle \
CalculatorGooglePrebuilt \
CalendarGooglePrebuilt \
LatinIMEGooglePrebuilt \
Photos \
PrebuiltBugle \
GoogleContacts \
GoogleDialer \
Turbo \
WallpaperPickerGooglePrebuilt
endif

# Inherit Flamegapps overlays
ifeq ($(FLAMEGAPPS_PACKAGE),$(filter $(FLAMEGAPPS_PACKAGE),stock full))
PRODUCT_PACKAGES += \
GoogleDialerOverlay \
forceQueryablePackagesOverlay

#PRODUCT_COPY_FILES += \
#vendor/flamegapps/common/proprietary/product/overlay/GoogleDialerOverlay.apk:$(TARGET_COPY_OUT_SYSTEM_EXT)/overlay/GoogleDialerOverlay.apk \
#vendor/flamegapps/common/proprietary/product/lib64/forceQueryablePackagesOverlay.apk:$(TARGET_COPY_OUT_SYSTEM_EXT)/overlay/forceQueryablePackagesOverlay.apk
endif

