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

# Dolby Path
LOCAL_DIRAC := vendor/sony/extra/Sagami/audio/dirac

# Soong Namespace
PRODUCT_SOONG_NAMESPACES += \
    vendor/sony/extra/Sagami/audio/dirac

# DIRAC Blob(s)
PRODUCT_COPY_FILES += \
    $(LOCAL_DIRAC)/proprietary/vendor/lib/soundfx/libdirac.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libdirac.so \
    $(LOCAL_DIRAC)/proprietary/vendor/lib/soundfx/libmisoundfx.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libmisoundfx.so \
    $(LOCAL_DIRAC)/proprietary/vendor/lib64/soundfx/libdirac.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libdirac.so \
    $(LOCAL_DIRAC)/proprietary/vendor/lib64/soundfx/libmisoundfx.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libmisoundfx.so

# DIRAC Prop(s)
PRODUCT_VENDOR_PROPERTIES += \
	ro.vendor.audio.misound.bluetooth.enable=true \
	ro.vendor.audio.scenario.support=true \
	ro.vendor.audio.soundfx.type=mi \
	ro.vendor.audio.soundfx.usb=true