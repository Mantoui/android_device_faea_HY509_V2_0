# Copyright (C) 2010 The Android Open Source Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
# The proprietary variant sets USE_CAMERA_STUB := false, this way
# we use the camera stub when the vendor tree isn't present, and
# the true camera library when the vendor tree is available.  Similarly,
# we set USE_PROPRIETARY_AUDIO_EXTENSIONS to true in the proprietary variant as
# well.
USE_CAMERA_STUB := true
#USE_PROPRIETARY_AUDIO_EXTENSIONS := false

#BOARD_LIB_DUMPSTATE := libdumpstate.mt6589

#TARGET_RECOVERY_UI_LIB := librecovery_ui_mt6589

#TARGET_RELEASETOOLS_EXTENSIONS := device/faea/HY509_V2_0

include vendor/faea/HY509_V2_0/BoardConfigVendor.mk
include device/faea/HY509_V2_0/BoardConfigCommon.mk

TARGET_RECOVERY_FSTAB = device/faea/HY509_V2_0/root/fstab.mt6589

TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true

TARGET_MKIMAGE := device/faea/HY509_V2_0/mkimage

TARGET_USE_BUILT_BOOTIMAGE := true

#blob hacks
COMMON_GLOBAL_CFLAGS += -DMR1_AUDIO_BLOB -DDISABLE_HW_ID_MATCH_CHECK -DNEEDS_VECTORIMPL_SYMBOLS
BOARD_HAVE_PRE_KITKAT_AUDIO_BLOB := true

#BOARD_SEPOLICY_DIRS := \
#        device/faea/HY509_V2_0/sepolicy

#BOARD_SEPOLICY_UNION := \
#        file_contexts \
#        genfs_contexts \
#        app.te \
#        btmacreader.te \
#        compatibility.te \
#        device.te \
#        drmserver.te \
#        init_shell.te \
#        file.te \
#        rild.te \
#        sensors_config.te \
#        shell.te \
#        surfaceflinger.te \
#        system.te \
#        zygote.te
