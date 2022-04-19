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
ifeq ($(FLAMEGAPPS_PACKAGE),$(filter $(FLAMEGAPPS_PACKAGE),stock full extra))
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

# Copy Overlays
# Inherit Flamegapps overlays
PRODUCT_PACKAGES += \
GoogleDialerOverlay \
forceQueryablePackagesOverlay
endif



# Inherit Flamegapps full
ifeq ($(FLAMEGAPPS_PACKAGE),$(filter $(FLAMEGAPPS_PACKAGE),full extra))
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

# Inherit Flamegapps extra
ifeq ($(FLAMEGAPPS_PACKAGE),extra)
PRODUCT_PACKAGES += \
AndroidAutoPrebuilt \
GoogleTTS \
Drive \
PrebuiltGmail \
GoogleAssistant \
Velvet \
Maps \
MatchmakerPrebuilt \
Chrome \
TrichromeLibrary \
WebViewGoogle 

#Copy Overlays
PRODUCT_PACKAGES += \
AndroidSystemIntelligenceOverlay \
DevicePersonalizationServicesOverlay \
GoogleWebViewOverlay

# Copy libraries
PRODUCT_COPY_FILES += \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/APP_NAME.fst:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/APP_NAME.fst \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/APP_NAME.syms:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/APP_NAME.syms \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/CLG.prewalk.fst:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/CLG.prewalk.fst \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/CONTACT_NAME.fst:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/CONTACT_NAME.fst \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/CONTACT_NAME.syms:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/CONTACT_NAME.syms \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/SONG_NAME.fst:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/SONG_NAME.fst \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/SONG_NAME.syms:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/SONG_NAME.syms \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/am_phonemes.syms:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/am_phonemes.syms \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/app_bias.fst:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/app_bias.fst \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/c_fst:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/c_fst \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/commands.abnf:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/commands.abnf \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/compile_grammar.config:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/compile_grammar.config \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/config.pumpkin:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/config.pumpkin \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/confirmation_bias.fst:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/confirmation_bias.fst \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/contacts.abnf:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/contacts.abnf \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/contacts_bias.fst:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/contacts_bias.fst \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/contacts_disambig.fst:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/contacts_disambig.fst \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/dict:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/dict \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/dictation.config:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/dictation.config \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/dnn:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/dnn \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/embedded_class_denorm.mfar:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/embedded_class_denorm.mfar \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/embedded_normalizer.mfar:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/embedded_normalizer.mfar \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/endpointer_dictation.config:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/endpointer_dictation.config \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/endpointer_model:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/endpointer_model \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/endpointer_model.mmap:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/endpointer_model.mmap \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/endpointer_voicesearch.config:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/endpointer_voicesearch.config \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/ep_portable_mean_stddev:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/ep_portable_mean_stddev \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/ep_portable_model.uint8.mmap:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/ep_portable_model.uint8.mmap \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/g2p.data:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/g2p.data \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/g2p_fst:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/g2p_fst \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/g2p_graphemes.syms:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/g2p_graphemes.syms \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/g2p_phonemes.syms:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/g2p_phonemes.syms \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/grammar.config:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/grammar.config \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/hmm_symbols:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/hmm_symbols \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/hmmlist:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/hmmlist \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/input_mean_std_dev:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/input_mean_std_dev \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/lexicon.U.fst:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/lexicon.U.fst \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/lstm_model.uint8.data:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/lstm_model.uint8.data \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/magic_mic.config:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/magic_mic.config \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/media_bias.fst:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/media_bias.fst \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/metadata:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/metadata \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/monastery_config.pumpkin:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/monastery_config.pumpkin \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/norm_fst:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/norm_fst \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/offensive_word_normalizer.mfar:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/offensive_word_normalizer.mfar \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/offline_action_data.pb:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/offline_action_data.pb \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/phonelist:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/phonelist \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/portable_lstm:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/portable_lstm \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/portable_meanstddev:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/portable_meanstddev \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/pumpkin.mmap:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/pumpkin.mmap \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/read_items_bias.fst:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/read_items_bias.fst \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/rescoring.fst.compact:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/rescoring.fst.compact \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/semantics.pumpkin:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/semantics.pumpkin \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/skip_items_bias.fst:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/skip_items_bias.fst \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/time_bias.fst:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/time_bias.fst \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/transform.mfar:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/transform.mfar \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/voice_actions.config:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/voice_actions.config \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/voice_actions_compiler.config:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/voice_actions_compiler.config \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/word_confidence_classifier:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/word_confidence_classifier \
vendor/flamegapps/common/proprietary/product/usr/srec/en-US/wordlist.syms:$(TARGET_COPY_OUT_SYSTEM_EXT)/usr/srec/en-US/wordlist.syms 
endif
