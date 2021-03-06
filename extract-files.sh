#!/bin/sh

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

DEVICE=marvel

mkdir -p ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/akmd ../../../vendor/htc/$DEVICE/proprietary
chmod 755 ../../../vendor/htc/$DEVICE/proprietary/akmd
adb pull /system/bin/awb_camera ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/lsc_camera ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/bma150_usr ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/charging ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/fusermount ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/htc_ebdlogd ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/htc_erase_internal_storage ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/htcbatt ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/htcfs ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/logcat2 ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/snd8k ../../../vendor/htc/$DEVICE/proprietary

adb pull /system/etc/AudioFilter.csv ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/AudioPara4.csv ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/AudioPara4_WB.csv ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/AudioPreProcess.csv ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/WPDB.zip ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/htcfs.conf ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/media_profiles.xml ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/firmware/yamato_pfp.fw ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/firmware/yamato_pm4.fw ../../../vendor/htc/$DEVICE/proprietary

adb pull /system/lib/hw/gralloc.msm7k.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/egl/libEGL_adreno200.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/egl/libGLESv1_CM_adreno200.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/egl/libGLESv2_adreno200.so ../../../vendor/htc/$DEVICE/proprietary

adb pull /system/lib/libmm-adspsvc.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libOmxH264Dec.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libOmxMpeg4Dec.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libOmxVidEnc.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libcamera.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/liboemcamera.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libgsl.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libhtc_acoustic.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libhtc_ril.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libaudioeq.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libfuse.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/liboma-drm1-fs.so ../../../vendor/htc/$DEVICE/proprietary

chmod 755 ../../../vendor/htc/$DEVICE/proprietary/akmd

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g > ../../../vendor/htc/$DEVICE/$DEVICE-vendor-blobs.mk
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

# This file is generated by device/htc/__DEVICE__/extract-files.sh

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES += \\
    vendor/htc/__DEVICE__/proprietary/libcamera.so:obj/lib/libcamera.so
 
# All the blobs necessary for passion
PRODUCT_COPY_FILES += \\
    vendor/htc/__DEVICE__/proprietary/akmd:/system/bin/akmd \\
    vendor/htc/__DEVICE__/proprietary/awb_camera:/system/bin/awb_camera \\
    vendor/htc/__DEVICE__/proprietary/lsc_camera:/system/bin/lsc_camera \\
    vendor/htc/__DEVICE__/proprietary/bma150_usr:/system/bin/bma150_usr \\
    vendor/htc/__DEVICE__/proprietary/charging:/system/bin/charging \\
    vendor/htc/__DEVICE__/proprietary/fusermount:/system/bin/fusermount \\
    vendor/htc/__DEVICE__/proprietary/htc_ebdlogd:/system/bin/htc_ebdlogd \\
    vendor/htc/__DEVICE__/proprietary/htc_erase_internal_storage:/system/bin/htc_erase_internal_storage \\
    vendor/htc/__DEVICE__/proprietary/htcbatt:/system/bin/htcbatt \\
    vendor/htc/__DEVICE__/proprietary/htcfs:/system/bin/htcfs \\
    vendor/htc/__DEVICE__/proprietary/logcat2:/system/bin/logcat2 \\
    vendor/htc/__DEVICE__/proprietary/snd8k:/system/bin/snd8k \\
    vendor/htc/__DEVICE__/proprietary/AudioFilter.csv:/system/etc/AudioFilter.csv \\
    vendor/htc/__DEVICE__/proprietary/AudioPara4.csv:/system/etc/AudioPara4.csv \\
    vendor/htc/__DEVICE__/proprietary/AudioPara4_WB.csv:/system/etc/AudioPara4_WB.csv \\
    vendor/htc/__DEVICE__/proprietary/AudioPreProcess.csv:/system/etc/AudioPreProcess.csv \\
    vendor/htc/__DEVICE__/proprietary/WPDB.zip:/system/etc/WPDB.zip \\
    vendor/htc/__DEVICE__/proprietary/htcfs.conf:/system/etc/htcfs.conf \\
    vendor/htc/__DEVICE__/proprietary/media_profiles.xml:/system/etc/media_profiles.xml \\
    vendor/htc/__DEVICE__/proprietary/yamato_pfp.fw:/system/etc/firmware/yamato_pfp.fw \\
    vendor/htc/__DEVICE__/proprietary/yamato_pm4.fw:/system/etc/firmware/yamato_pm4.fw \\
    vendor/htc/__DEVICE__/proprietary/gralloc.msm7k.so:/system/lib/hw/gralloc.msm7k.so \\
    vendor/htc/__DEVICE__/proprietary/libEGL_adreno200.so:/system/lib/egl/libEGL_adreno200.so \\
    vendor/htc/__DEVICE__/proprietary/libGLESv1_CM_adreno200.so:/system/lib/egl/libGLESv1_CM_adreno200.so \\
    vendor/htc/__DEVICE__/proprietary/libGLESv2_adreno200.so:/system/lib/egl/libGLESv2_adreno200.so \\
    vendor/htc/__DEVICE__/proprietary/libmm-adspsvc.so:/system/lib/libmm-adspsvc.so \\
    vendor/htc/__DEVICE__/proprietary/libOmxH264Dec.so:/system/lib/libOmxH264Dec.so \\
    vendor/htc/__DEVICE__/proprietary/libOmxMpeg4Dec.so:/system/lib/libOmxMpeg4Dec.so \\
    vendor/htc/__DEVICE__/proprietary/libOmxVidEnc.so:/system/lib/libOmxVidEnc.so \\
    vendor/htc/__DEVICE__/proprietary/libcamera.so:/system/lib/libcamera.so \\
    vendor/htc/__DEVICE__/proprietary/libgsl.so:/system/lib/libgsl.so \\
    vendor/htc/__DEVICE__/proprietary/libhtc_acoustic.so:/system/lib/libhtc_acoustic.so \\
    vendor/htc/__DEVICE__/proprietary/libaudioeq.so:/system/lib/libaudioeq.so \\
    vendor/htc/__DEVICE__/proprietary/libhtc_ril.so:/system/lib/libhtc_ril.so \\
    vendor/htc/__DEVICE__/proprietary/libfuse.so:/system/lib/libfuse.so \\
    vendor/htc/__DEVICE__/proprietary/liboma-drm1-fs.so:/system/lib/liboma-drm1-fs.so \\
    vendor/htc/__DEVICE__/proprietary/liboemcamera.so:/system/lib/liboemcamera.so

EOF

./setup-makefiles.sh
