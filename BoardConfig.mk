#
# Copyright (C) 2014 The CyanogenMod Project
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
#
# config.mk
#
# Product-specific compile-time definitions.
#
USE_CAMERA_STUB := false
LOCAL_PATH := device/coolpad/8860U


# Kernel
BOARD_KERNEL_CMDLINE         := androidboot.hardware=qcom user_debug=31 zcache
BOARD_KERNEL_BASE            := 0x80200000
BOARD_MKBOOTIMG_ARGS         := --ramdisk_offset 0x02000000
BOARD_KERNEL_PAGESIZE        := 2048
TARGET_KERNEL_SOURCE         := kernel/coolpad/8860U
TARGET_KERNEL_CONFIG         := coolpad_8860U_defconfig
ifeq ($(HAVE_SELINUX),true)
TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig
endif

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8960