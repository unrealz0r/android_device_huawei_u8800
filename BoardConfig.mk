# Copyright (c) 2009, Code Aurora Forum.
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

# config.mk
#
# Product-specific compile-time definitions.
#

ifeq ($(QC_PROP),true)
    BOARD_USES_QCOM_HARDWARE := true
    BOARD_USES_ADRENO_200 := true
    HAVE_ADRENO200_SOURCE := true
    HAVE_ADRENO200_SC_SOURCE := true
    HAVE_ADRENO200_FIRMWARE := true
    TARGET_USES_C2D_COMPOSITION := true
    BOARD_USES_QCOM_AUDIO_V2 := true
    BOARD_USE_QCOM_TESTONLY := true
    BOARD_USES_QCNE := true
    TARGET_USES_SF_BYPASS := false

    ifneq ($(BUILD_TINY_ANDROID), true)
    BOARD_GPS_LIBRARIES := libloc
    BOARD_CAMERA_LIBRARIES := libcamera
    BOARD_HAVE_BLUETOOTH := true
    BOARD_HAS_QCOM_WLAN := true
    BOARD_WPA_SUPPLICANT_DRIVER := WEXT
    WPA_SUPPLICANT_VERSION := VER_0_6_X
    WIFI_DRIVER_MODULE_PATH :=  "/system/lib/modules/libra.ko"
    WIFI_DRIVER_MODULE_NAME :=  "libra"
    endif   # !BUILD_TINY_ANDROID

else
    BOARD_USES_GENERIC_AUDIO := true
    USE_CAMERA_STUB := true

endif # QC_PROP

TARGET_HAVE_TSLIB := true
TARGET_HAVE_HDMI_OUT := true
#if TARGET_GRALLOC_USES_ASHMEM is enabled, set debug.sf.hw=1 in system.prop
TARGET_GRALLOC_USES_ASHMEM := false
TARGET_NO_BOOTLOADER := false
TARGET_NO_KERNEL := false
TARGET_NO_RADIOIMAGE := true
TARGET_PREBUILT_KERNEL := device/huawei/u8800/kernel
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_CPU_ABI  := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_HARDWARE_3D := false
TARGET_BOARD_PLATFORM := msm7k
TARGET_BOOTLOADER_BOARD_NAME := MSM7630_SURF
QCOM_TARGET_PRODUCT := msm7630_surf
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_HARDWARE

BOARD_KERNEL_BASE    := 0x00200000
BOARD_NAND_PAGE_SIZE := 4096
#Spare size is (BOARD_NAND_PAGE_SIZE>>9)*16
BOARD_NAND_SPARE_SIZE := 128



BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=qcom
BOARD_EGL_CFG := device/huawei/u8800/egl.cfg

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00A00000 #10MB
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00A00000 #10MB
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 268435456 #256MB
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1073741824 #1GB
BOARD_PERSISTIMAGE_PARTITION_SIZE := 5242880 #5MB
BOARD_CACHEIMAGE_PARTITION_SIZE := 134217728 #128MB
BOARD_TOMBSTONESIMAGE_PARTITION_SIZE := 4096000 #4000KB
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)
TARGET_SPECIFIC_HEADER_PATH := device/huawei/u8800/include


# Sensors
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := false

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := u8800
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_GPS_LIBRARIES := libloc_api

# FM
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

# File System
TARGET_USERIMAGES_USE_EXT4 := true

