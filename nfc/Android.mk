# Copyright (C) 2011 The Android Open Source Project
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

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := nfc_hw.c
LOCAL_MODULE := nfc.$(TARGET_BOARD_PLATFORM)
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE_TAGS := optional
LOCAL_PROPRIETARY_MODULE := true

# Symlink /vendor/firmware/libpn544_fw.so to /vendor/lib/firmware/libpn544_fw.so
LOCAL_POST_INSTALL_CMD := \
    $(hide) mkdir -p $(TARGET_OUT_VENDOR)/firmware && \
    rm -f $(TARGET_OUT_VENDOR)/firmware/libpn544_fw.so && \
    ln -sf /system/vendor/lib/firmware/libpn544_fw_c3.so $(TARGET_OUT_VENDOR)/firmware/libpn544_fw.so

include $(BUILD_SHARED_LIBRARY)
