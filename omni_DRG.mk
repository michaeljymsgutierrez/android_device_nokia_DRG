#
# Copyright (C) 2019 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from nokia sdm660-common
$(call inherit-product, device/nokia/sdm660-common/sdm660.mk)

# Define first api level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Include Bootanimation configuration
TARGET_BOOTANIMATION_SIZE :=1080p

PRODUCT_NAME := omni_DRG
PRODUCT_DEVICE := DRG
PRODUCT_MANUFACTURER := FIH
PRODUCT_BRAND := Nokia
PRODUCT_MODEL := Nokia 6.1 Plus

PRODUCT_GMS_CLIENTID_BASE := android-hmd

TARGET_VENDOR_PRODUCT_NAME := DRG
TARGET_VENDOR_DEVICE_NAME := DRG

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=DRG \
    PRODUCT_NAME=DRG \
    PRIVATE_BUILD_DESC="DRG_sprout-user 9 PPR1.180610.011 00WW_3_54E:user release-keys"

BUILD_FINGERPRINT := Nokia/Dragon_00WW/DRG_sprout:9/PPR1.180610.011/00WW_3_54E:user/release-keys
