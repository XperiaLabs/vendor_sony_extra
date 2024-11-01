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
    vendor/sony/extra/Common/gameenhancer

# Local Path
LOCAL_GE := vendor/sony/extra/Common/gameenhancer

# Permissions
PRODUCT_COPY_FILES += \
	$(LOCAL_GE)/proprietary/product/etc/permissions/privapp-permissions-com.sonymobile.gameenhancer.api.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-com.sonymobile.gameenhancer.api.xml \
	$(LOCAL_GE)/proprietary/product/etc/permissions/privapp-permissions-com.sonymobile.gameenhancer.browser.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-com.sonymobile.gameenhancer.browser.xml \
	$(LOCAL_GE)/proprietary/product/etc/permissions/privapp-permissions-com.sonymobile.gameenhancer.monitor.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-com.sonymobile.gameenhancer.monitor.xml \
	$(LOCAL_GE)/proprietary/product/etc/permissions/privapp-permissions-com.sonymobile.gameenhancer.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-com.sonymobile.gameenhancer.xml \

# Packages
PRODUCT_PACKAGES += \
	SomcGameEnhancer \
	SomcGameEnhancerAPI \
	SomcGameEnhancerBrowser \
	SomcGameEnhancerMonitor