#
# Copyright (C) 2024 XperiaLabs Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Soong Namespace
PRODUCT_SOONG_NAMESPACES += \
    vendor/sony/extra/Sagami/audio

# Local Path
LOCAL_AUDIO := vendor/sony/extra/Sagami/audio

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(LOCAL_AUDIO)/sepolicy/vendor
BOARD_ODM_SEPOLICY_DIRS += $(LOCAL_AUDIO)/sepolicy/odm
BOARD_PRODUCT_SEPOLICY_DIRS += $(LOCAL_AUDIO)/sepolicy/product

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += \
    $(LOCAL_AUDIO)/proprietary/vendor/etc/vintf/dms/dolby_framework_matrix.xml \
    $(LOCAL_AUDIO)/proprietary/vendor/etc/vintf/threesixty/threesixty_framework_matrix.xml

DEVICE_MANIFEST_FILE += \
    $(LOCAL_AUDIO)/proprietary/vendor/etc/vintf/dms/vendor.dolby.media.c2.xml \
    $(LOCAL_AUDIO)/proprietary/vendor/etc/vintf/dms/vendor.dolby.hardware.dms.xml \
    $(LOCAL_AUDIO)/proprietary/vendor/etc/vintf/threesixty/vendor.threesixty_ra.codec2.xml

# Dolby DAP
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true

# Copy Sound Enhancement Config(s)
PRODUCT_COPY_FILES += \
    $(LOCAL_AUDIO)/proprietary/vendor/etc/alc.speaker.bin:$(TARGET_COPY_OUT_VENDOR)/etc/alc.speaker.bin \
    $(LOCAL_AUDIO)/proprietary/vendor/etc/XTC_speaker_coef.hki:$(TARGET_COPY_OUT_VENDOR)/etc/XTC_speaker_coef.hki \
    $(LOCAL_AUDIO)/proprietary/vendor/etc/dolby/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default.xml

# Blobs
PRODUCT_COPY_FILES += \
    $(LOCAL_AUDIO)/proprietary/system_ext/etc/permissions/com.sonyericsson.soundenhancement.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.sonyericsson.soundenhancement.xml \
    $(LOCAL_AUDIO)/proprietary/system_ext/etc/permissions/com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.dolby.daxservice.xml \
    $(LOCAL_AUDIO)/proprietary/system_ext/etc/permissions/com.sony.threesixtyra.audiofx.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.sony.threesixtyra.audiofx.xml \
    $(LOCAL_AUDIO)/proprietary/system_ext/etc/permissions/jp.co.sony.threesixtyra.system.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/jp.co.sony.threesixtyra.system.xml \
    $(LOCAL_AUDIO)/proprietary/system_ext/etc/permissions/com.sony.360ra.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.sony.360ra.xml \
    $(LOCAL_AUDIO)/proprietary/system_ext/etc/default-permissions/default-permissions-360ra.apps.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/default-permissions/default-permissions-360ra.apps.xml \
    $(LOCAL_AUDIO)/proprietary/system_ext/lib64/extractors/libmmparserextractor.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/extractors/libmmparserextractor.so \
    $(LOCAL_AUDIO)/proprietary/system_ext/lib64/libavenhancements.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libavenhancements.so \
    $(LOCAL_AUDIO)/proprietary/system_ext/lib64/vendor.dolby.hardware.dms@2.0.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/vendor.dolby.hardware.dms@2.0.so \
    $(LOCAL_AUDIO)/proprietary/vendor/bin/hw/vendor.dolby.hardware.dms@2.0-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/vendor.dolby.hardware.dms@2.0-service \
    $(LOCAL_AUDIO)/proprietary/vendor/etc/init/vendor.dolby.hardware.dms@2.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.dolby.hardware.dms@2.0-service.rc \
    $(LOCAL_AUDIO)/proprietary/vendor/etc/init/vendor.dolby.media.c2@1.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.dolby.media.c2@1.0-service.rc \
    $(LOCAL_AUDIO)/proprietary/vendor/etc/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libar-acdb.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libar-acdb.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libXtcApi.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libXtcApi.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libaudiokeymgr.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libaudiokeymgr.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libaudiosnpewrapper.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libaudiosnpewrapper.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libaudiosnpewrapper_context.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libaudiosnpewrapper_context.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libdapparamstorage.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdapparamstorage.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libdlbdsservice.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdlbdsservice.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libdlbpreg.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdlbpreg.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libiVptApi.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libiVptApi.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libiVptHkiDec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libiVptHkiDec.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libiVptLibC.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libiVptLibC.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/liboem_specific.so:$(TARGET_COPY_OUT_VENDOR)/lib64/liboem_specific.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/librebuffering.so:$(TARGET_COPY_OUT_VENDOR)/lib64/librebuffering.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libtsrspkenhance.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libtsrspkenhance.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libupmix-lib.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libupmix-lib.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libznr.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libznr.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/soundfx/libbundlewrapper1.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libbundlewrapper1.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/soundfx/libbundlewrapper2.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libbundlewrapper2.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/soundfx/libbundlewrapper3.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libbundlewrapper3.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/soundfx/libbundlewrapper4.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libbundlewrapper4.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/soundfx/libdlbvol.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libdlbvol.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/soundfx/libdnnrwrapper.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libdnnrwrapper.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/soundfx/libswdap.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libswdap.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/soundfx/libswgamedap.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libswgamedap.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/soundfx/libswvqe.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libswvqe.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/soundfx/libtsrspatializer.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libtsrspatializer.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/soundfx/libtsrupmix.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libtsrupmix.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/soundfx/libznrwrapper.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libznrwrapper.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/vendor.dolby.hardware.dms@2.0-impl.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.dolby.hardware.dms@2.0-impl.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/vendor.dolby.hardware.dms@2.0.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.dolby.hardware.dms@2.0.so

# Codec2 (Dolby)
PRODUCT_COPY_FILES += \
    $(LOCAL_AUDIO)/proprietary/vendor/bin/hw/vendor.dolby.media.c2@1.0-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/vendor.dolby.media.c2@1.0-service \
    $(LOCAL_AUDIO)/proprietary/vendor/etc/init/vendor.dolby.media.c2@1.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.dolby.media.c2@1.0-service.rc \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libcodec2_soft_ac4dec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_soft_ac4dec.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libcodec2_soft_ddpdec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_soft_ddpdec.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libcodec2_soft_dolby.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_soft_dolby.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libcodec2_store_dolby.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_store_dolby.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libdeccfg.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdeccfg.so

# Codec2 (360RA)
PRODUCT_COPY_FILES += \
    $(LOCAL_AUDIO)/proprietary/vendor/bin/hw/android.hardware.media.c2@1.0-threesixty-ra-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/android.hardware.media.c2@1.0-threesixty-ra-service \
    $(LOCAL_AUDIO)/proprietary/vendor/etc/init/android.hardware.media.c2@1.0-threesixty-ra-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/android.hardware.media.c2@1.0-threesixty-ra-service.rc \
    $(LOCAL_AUDIO)/proprietary/vendor/etc/media_codecs_sony_c2_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_sony_c2_audio.xml \
    $(LOCAL_AUDIO)/proprietary/vendor/etc/seccomp_policy/android.hardware.media.c2@1.2-default-seccomp_policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/android.hardware.media.c2@1.2-default-seccomp_policy \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libcodec2_soft_mha1dec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_soft_mha1dec.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libcodec2_soft_mhm1dec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_soft_mhm1dec.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libthreesixty_ra_codec2_store.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libthreesixty_ra_codec2_store.so

# Codec2 Props
PRODUCT_VENDOR_PROPERTIES += \
    vendor.audio.c2.preferred=true \
    debug.c2.use_dmabufheaps=1 \
    vendor.qc2audio.suspend.enabled=true \
    vendor.qc2audio.per_frame.flac.dec.enabled=true \
    debug.stagefright.c2inputsurface=-1

# Dolby Props
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.dolby.dax.version=DAX3_3.7.0.8_r1 \
    vendor.audio.dolby.ds2.hardbypass=false \
    vendor.audio.dolby.ds2.enabled=false

# 360 Reality Audio Props
PRODUCT_VENDOR_PROPERTIES += \
    vendor.360ra.effect=1 \
    ro.audio.spatializer_enabled=true

PRODUCT_ODM_PROPERTIES += vendor.sony_spatializer.suppress.dolby=false

# Packages
PRODUCT_PACKAGES += \
    daxService \
    DolbySound \
    ThreeSixtyRASettings \
    ThreeSixtyRASystem \
    ThreeSixtyRASystem-Overlay \
    com.sony.threesixtyra.audiofx