# Copyright (C) 2020 The Mokee Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from me device
$(call inherit-product, device/gigaset/mepro/device.mk)

# Inherit some common MK stuff.
$(call inherit-product, vendor/mk/config/common_full_phone.mk)

PRODUCT_NAME := mk_mepro
PRODUCT_DEVICE := mepro
PRODUCT_MANUFACTURER := Gigaset
PRODUCT_BRAND := Gigaset

PRODUCT_GMS_CLIENTID_BASE := android-gigaset

TARGET_VENDOR_PRODUCT_NAME := MEPro
TARGET_VENDOR_DEVICE_NAME := MEPro
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=MEPro PRODUCT_NAME=MEPro

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="MEpro-user 5.1.1 LMY47V 138 release-keys"

BUILD_FINGERPRINT := Gigaset/MEpro/MEpro:5.1.1/LMY47V/138:user/release-keys

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += ro.product.model

TARGET_VENDOR := gigaset
