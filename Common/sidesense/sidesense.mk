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
PRODUCT_SOONG_NAMESPACES += vendor/sony/extra/Common/sidesense

# Local Path
LOCAL_SS := vendor/sony/extra/Common/sidesense

# Permissions
PRODUCT_COPY_FILES += $(LOCAL_SS)/proprietary/system_ext/etc/permissions/com.sonymobile.sidesenseapp.xml:$(TRAGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.sonymobile.sidesenseapp.xml

# Packages
PRODUCT_PACKAGES += \
    SideSenseApp \
    SideSenseMonitorApp

# Stock FreeForm (BROKEN)
#PRODUCT_PACKAGES += FreeformController
#PRODUCT_COPY_FILES += $(LOCAL_SS)/proprietary/system_ext/etc/permissions/com.sonymobile.freeformcontroller.xml:$(TRAGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.sonymobile.freeformcontroller.xml
