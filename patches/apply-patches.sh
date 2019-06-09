#!/bin/bash
cd ../../../..
cd packages/apps/Settings
patch -p1 -b < ../../../device/CUBOT/X18/patches/package_apps_settings/0002-android_settings_developer_info.patch
git clean -f -d
cd ../../..
cd frameworks/av
patch -p1 < ../../device/CUBOT/X18/patches/frameworks_av/0001-frameworks_av.patch
cd ../..
cd frameworks/base
patch -p1 < ../../device/CUBOT/X18/patches/frameworks_base/0001-frameworks_base.patch
patch -p1 < ../../device/CUBOT/X18/patches/frameworks_base/0002-Fix-Minior-Bugs.patch
# only use the optional patch for LineageOS to fix MicroG signature spoofing
# patch -p1 < ../../device/CUBOT/X18/patches/frameworks_base/0003-frameworks_base_signature_spoofing.patch
cd ../..
cd frameworks/native
patch -p1 < ../../device/CUBOT/X18/patches/frameworks_native/0001-frameworks_native.patch
cd ../..
cd system/netd
patch -p1 < ../../device/CUBOT/X18/patches/system_netd/0001-system_netd.patch
cd ../..
cd system/core
patch -p1 < ../../device/CUBOT/X18/patches/system_core/0001-system_core.patch
patch -p1 < ../../device/CUBOT/X18/patches/system_core/0002-Prevent-spamming-audio.patch
patch -p1 < ../../device/CUBOT/X18/patches/system_core/0003-healthd-correctly-report-battery-voltage-on-MTK-kernels.patch
patch -p1 < ../../device/CUBOT/X18/patches/system_core/0004-microarray-fingerprint.patch
cd ../..
cd external/wpa_supplicant_8
patch -p1 < ../../device/CUBOT/X18/patches/external_wpa_supplicant_8/0001-Ignore-fake-nvram-wifi.patch
cd ../..