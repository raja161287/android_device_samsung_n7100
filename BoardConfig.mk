#
# Copyright (C) 2012 The CyanogenMod Project
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

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk

-include device/samsung/smdk4412-common/BoardCommonConfig.mk

# RIL
BOARD_PROVIDES_LIBRIL := true
BOARD_MODEM_TYPE := xmm6262
BOARD_RIL_CLASS := ../../../hardware/samsung/ril

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/n7100/bluetooth

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/smdk4412
TARGET_KERNEL_CONFIG := cyanogenmod_n7100_defconfig

# assert
TARGET_OTA_ASSERT_DEVICE := t03g,n7100,GT-N7100

# own headers
TARGET_SPECIFIC_HEADER_PATH := device/samsung/n7100/include

# inherit from the proprietary version
-include vendor/samsung/n7100/BoardConfigVendor.mk

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/n7100/rootdir/fstab.smdk4x12
RECOVERY_FSTAB_VERSION := 2


#LZMA compression
WITH_LZMA_OTA:= true


#RR
TARGET_TC_ROM := 4.9

TARGET_TC_KERNEL := 4.9

RROPTI := true

RR_O3 := true

RR_STRICT := false

RR_GRAPHITE := true

RR_KRAIT := false

RR_PIPE := true

TARGET_GCC_VERSION_EXP := $(TARGET_TC_ROM)

RR_KERNEL_CUSTOM_TOOLCHAIN := $(TARGET_TC_KERNEL)
