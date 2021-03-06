#
# Copyright (C) 2018 The LineageOS Project
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

# Get non-open-source specific aspects
$(call inherit-product, vendor/micromax/hs3/hs3-vendor.mk)

# Local overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Inherit from msm8937-common
$(call inherit-product, device/tinno/msm8937-common/msm8937.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/mixer_paths_mtp.xml:system/etc/mixer_paths_mtp.xml

# Camera
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/camera/msm8937_camera_v12bn.xml:system/etc/camera/msm8937_camera_p7201.xml \
    $(LOCAL_PATH)/configs/camera/imx376_ofilm_v12bn_chromatix.xml.xml:system/etc/camera/imx376_ofilm_v12bn_chromatix.xml.xml \
    $(LOCAL_PATH)/configs/camera/imx376_sunny_v12bn_chromatix.xml.xml:system/etc/camera/imx376_sunny_v12bn_chromatix.xml.xml \
    $(LOCAL_PATH)/configs/camera/ov8856_sunny_v12bn_chromatix.xml.xml:system/etc/camera/ov8856_sunny_v12bn_chromatix.xml.xml \
    $(LOCAL_PATH)/configs/camera/s5k3l8_sunny_v12bn_chromatix.xml.xml:system/etc/camera/s5k3l8_sunny_v12bn_chromatix.xml.xml \
    $(LOCAL_PATH)/configs/camera/s5k3p3st_sunny_v12bns_chromatix.xml.xml:system/etc/camera/s5k3p3st_sunny_v12bns_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/s5k3p3_sunny_v12bn_chromatix.xml:system/etc/camera/s5k3p3_sunny_v12bn_chromatix.xml

# FSTAB
PRODUCT_PACKAGES += \
    fstab.qcom

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/qpnp_pon.kl:system/usr/keylayout/qpnp_pon.kl

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/hals.conf:system/etc/sensors/hals.conf \
    $(LOCAL_PATH)/configs/sensors/sensor_def_qcomdev.conf:system/etc/sensors/sensor_def_qcomdev.conf

