#!/sbin/sh
#
# Copyright (C) 2020 The LineageOS Project
#
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

if [ "$(getprop ro.build.product)" == "htc_mecul_emea" ] || [ "$(getprop ro.build.product)" == "htc_mecdug" ] || [ "$(getprop ro.build.product)" == "htc_mecdugl" ] || [ "$(getprop ro.build.product)" == "htc_mecdwg" ]; then 
    # Remove PN547 NFC related stuff
    rm -rf /system/system/app/NfcNci
    rm -rf /system/system/vendor/lib/hw/nfc_nci.msm8974.so
    rm -rf /system/system/vendor/etc/permissions/android.hardware.nfc.hce.xml
    rm -rf /system/system/vendor/etc/permissions/com.android.nfc_extras.xml
    rm -rf /system/system/framework/com.android.nfc_extras.jar
elif [ "$(getprop ro.build.product)" == "htc_mecdwgl" ] || [ "$(getprop ro.build.product)" == "htc_mecwhl" ] || [ "$(getprop ro.build.product)" == "htc_mectl" ] || [ "$(getprop ro.build.product)" == "htc_mecul" ]; then
    # Remove PN544 NFC related stuff
    rm -rf /system/system/app/Nfc
    rm -rf /system/system/vendor/lib/hw/nfc.msm8974.so
else
    # Remove PN544 NFC related stuff
    rm -rf /system/system/app/Nfc
    rm -rf /system/system/vendor/lib/hw/nfc.msm8974.so
fi
