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
    vendor/sony/extra/Common/stream

# Local Path
LOCAL_STREAM := vendor/sony/extra/Common/stream

# Permissions
PRODUCT_COPY_FILES += \
	$(LOCAL_STREAM)/proprietary/product/etc/permissions/jp.co.sony.mc.gameaccui.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/jp.co.sony.mc.gameaccui.xml \
	$(LOCAL_STREAM)/proprietary/product/etc/permissions/jp.co.sony.mc.gamingfanservice.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/jp.co.sony.mc.gamingfanservice.xml \
	$(LOCAL_STREAM)/proprietary/system_ext/etc/permissions/com.sonymobile.gesdklibrary.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.sonymobile.gesdklibrary.xml

# Packages
PRODUCT_PACKAGES += \
	GamingAccessorySettings-Lawnchair \
	GamingFanService \
	ThermalFanService \
	com.sonymobile.gesdklibrary
