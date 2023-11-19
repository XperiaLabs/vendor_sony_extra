#
# Copyright (C) 2023 XperiaLabs Project
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

# DTS:X Path
LOCAL_DTSX := vendor/sony/extra/Sagami/audio/dtsx

# Soong Namespace
PRODUCT_SOONG_NAMESPACES += \
    vendor/sony/extra/Sagami/audio/dtsx

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += vendor/sony/extra/Sagami/audio/dtsx/sepolicy/vendor

# DTS:X Vendor Blob(s)
PRODUCT_COPY_FILES += \
    $(LOCAL_DTSX)/proprietary/vendor/lib/soundfx/libdtsaudio.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libdtsaudio.so \
    $(LOCAL_DTSX)/proprietary/vendor/lib/libdtsdsec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libdtsdsec.so \
    $(LOCAL_DTSX)/proprietary/vendor/lib/libdts-eagle-shared.so:$(TARGET_COPY_OUT_VENDOR)/lib/libdts-eagle-shared.so \
    $(LOCAL_DTSX)/proprietary/vendor/lib/libomx-dts.so:$(TARGET_COPY_OUT_VENDOR)/lib/libomx-dts.so \
    $(LOCAL_DTSX)/proprietary/vendor/lib/libstagefright_soft_dtsdec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstagefright_soft_dtsdec.so \
    $(LOCAL_DTSX)/proprietary/vendor/lib64/soundfx/libdtsaudio.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libdtsaudio.so \
    $(LOCAL_DTSX)/proprietary/vendor/lib64/libdtsdsec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdtsdsec.so \
    $(LOCAL_DTSX)/proprietary/vendor/lib64/libdts-eagle-shared.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdts-eagle-shared.so \
    $(LOCAL_DTSX)/proprietary/vendor/lib64/libomx-dts.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libomx-dts.so \
    $(LOCAL_DTSX)/proprietary/vendor/lib64/libstagefright_soft_dtsdec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libstagefright_soft_dtsdec.so

# DTS:X Service
PRODUCT_COPY_FILES += \
    $(LOCAL_DTSX)/proprietary/system/framework/dtsaudio.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/dtsaudio.jar \
    $(LOCAL_DTSX)/configs/init/dtsaudio.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/dtsaudio.rc \
    $(LOCAL_DTSX)/configs/media_codecs_dts_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dts_audio.xml

# DTS:X Config(s)
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/sony/extra/Sagami/audio/dtsx/configs/perms,$(TARGET_COPY_OUT_SYSTEM)/etc) \
    $(call find-copy-subdir-files,*,vendor/sony/extra/Sagami/audio/dtsx/configs/dts,$(TARGET_COPY_OUT_VENDOR)/etc)

# DTS:X Prop(s)
PRODUCT_VENDOR_PROPERTIES += \
    ro.audio.ignore_effects=false \
    ro.product.model=ASUS_I01WD \
    ro.build.asus.sku=WW \
    ro.dts.licensepath=/vendor/etc/dts/ \
    ro.dts.cfgpath=/vendor/etc/dts/ \
    ro.vendor.dts.licensepath=/vendor/etc/dts/ \
    ro.vendor.dts.cfgpath=/vendor/etc/dts/ \
    audio.wizard.default.mode=smart \
    ro.asus.audio.dualSPK=true \
    ro.asus.aw.settingentry=1 \
    ro.asus.dts.headphone.default_enable=false \
    ro.asus.audiowizard.outdoor=1 \
    ro.asus.audio.realStereo=true \
    ro.product.lge.globaleffect.dts=false \
    ro.lge.globaleffect.dts=false \
    ro.odm.config.dts_licensepath=/vendor/etc/dts/ \
    persist.asus.aw.ivt=50 \
    persist.sys.cta.security=0

# DTS:X Package(s)
PRODUCT_PACKAGES += \
    AudioWizard \
    AudioWizardView