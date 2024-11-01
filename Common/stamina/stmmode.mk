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
    vendor/sony/extra/Common/stamina

# Local Path
LOCAL_STAMINA := vendor/sony/extra/Common/stamina

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += $(LOCAL_STAMINA)/proprietary/vendor/etc/vintf/manifest/superstamina_framework_matrix.xml
DEVICE_MANIFEST_FILE += $(LOCAL_STAMINA)/proprietary/vendor/etc/vintf/manifest/vendor.somc.hardware.superstamina.xml

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(LOCAL_STAMINA)/sepolicy/vendor

# Permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_STAMINA)/proprietary/system_ext/etc/permissions/com.sonymobile.staminalevel.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.sonymobile.staminalevel.xml \
    $(LOCAL_STAMINA)/proprietary/system_ext/etc/permissions/com.sonymobile.superstamina.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.sonymobile.superstamina.xml \
    $(LOCAL_STAMINA)/proprietary/system_ext/etc/sysconfig/config_com.sonymobile.superstamina.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/config_com.sonymobile.superstamina.xml

# Files
PRODUCT_COPY_FILES += \
   $(LOCAL_STAMINA)/proprietary/vendor/bin/hw/vendor.somc.hardware.superstamina@1.0-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/vendor.somc.hardware.superstamina@1.0-service \
   $(LOCAL_STAMINA)/proprietary/vendor/etc/init/vendor.somc.hardware.superstamina@1.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.somc.hardware.superstamina@1.0-service.rc \
   $(LOCAL_STAMINA)/proprietary/vendor/lib64/vendor.somc.hardware.superstamina@1.0.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.somc.hardware.superstamina@1.0.so

# Packages
PRODUCT_PACKAGES += \
	StaminaLevel \
	SuperStamina \
	FrameworksRes-StaminaMode-Overlay \
	SettingsRes-StaminaMode-Overlay \
	SystemUIRes-StaminaMode-Overlay \
	com.sonymobile.superstamina_impl
