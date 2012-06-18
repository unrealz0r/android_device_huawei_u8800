PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/init.rc:root/init.rc \
$(LOCAL_PATH)/init.qcom.sh:root/init.qcom.sh \
$(LOCAL_PATH)/init.huawei.rc:root/init.huawei.rc \
$(LOCAL_PATH)/init.goldfish.rc:root/init.golfdish.rc \
$(LOCAL_PATH)/ueventd.rc:root/ueventd.rc

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/vold.fstab:system/etc/vold.fstab

PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    MagicSmokeWallpapers \
    VisualizationWallpapers \
    Gallery3d \
    librs_jni \
    gps.u8800 \
    libcamera \
    libOmxCore \
    libOmxVdec \

    
#    libOmxVenc \

# Firmware mm
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/etc/firmware/vidc_720p_command_control.fw:/system/etc/firmware/vidc_720p_command_control.fw \
    device/huawei/u8800/system/etc/firmware/vidc_720p_h263_dec_mc.fw:/system/etc/firmware/vidc_720p_h263_dec_mc.fw \
    device/huawei/u8800/system/etc/firmware/vidc_720p_h264_dec_mc.fw:/system/etc/firmware/vidc_720p_h264_dec_mc.fw \
    device/huawei/u8800/system/etc/firmware/vidc_720p_h264_enc_mc.fw:/system/etc/firmware/vidc_720p_h264_enc_mc.fw \
    device/huawei/u8800/system/etc/firmware/vidc_720p_mp4_dec_mc.fw:/system/etc/firmware/vidc_720p_mp4_dec_mc.fw \
    device/huawei/u8800/system/etc/firmware/vidc_720p_mp4_enc_mc.fw:/system/etc/firmware/vidc_720p_mp4_enc_mc.fw \
    device/huawei/u8800/system/etc/firmware/vidc_720p_vc1_dec_mc.fw:/system/etc/firmware/vidc_720p_vc1_dec_mc.fw \
    device/huawei/u8800/system/etc/firmware/yamato_pfp.fw:/system/etc/firmware/yamato_pfp.fw \
    device/huawei/u8800/system/etc/firmware/yamato_pm4.fw:/system/etc/firmware/yamato_pm4.fw

# Firmware wlan
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/etc/firmware/wlan/qcom_fw.bin:/system/etc/firmware/wlan/qcom_fw.bin \
    device/huawei/u8800/system/etc/firmware/wlan/qcom_wapi_fw.bin:/system/etc/firmware/wlan/qcom_wapi_fw.bin \
    device/huawei/u8800/system/etc/firmware/wlan/qcom_wlan_nv.bin:/system/etc/firmware/wlan/qcom_wlan_nv.bin \
    device/huawei/u8800/system/etc/firmware/wlan/cfg.dat:/system/etc/firmware/wlan/cfg.dat \
    device/huawei/u8800/system/etc/firmware/wlan/hostapd_default.conf:/system/etc/firmware/wlan/hostapd_default.conf \
    device/huawei/u8800/system/etc/firmware/wlan/qcom_cfg.ini:/system/etc/firmware/wlan/qcom_cfg.ini \

# OpenGL
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/lib/egl/libEGL_adreno200.so:/system/lib/egl/libEGL_adreno200.so \
    device/huawei/u8800/system/lib/egl/libGLESv1_CM_adreno200.so:/system/lib/egl/libGLESv1_CM_adreno200.so \
    device/huawei/u8800/system/lib/egl/libGLESv2_adreno200.so:/system/lib/egl/libGLESv2_adreno200.so \
    device/huawei/u8800/system/lib/libgsl.so:/system/lib/libgsl.so \
    device/huawei/u8800/system/lib/egl/libq3dtools_adreno200.so:/system/lib/egl/libq3dtools_adreno200.so 


# etc
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/etc/init.qcom.bt.sh:/system/etc/init.qcom.bt.sh \
    device/huawei/u8800/system/etc/init.qcom.fm.sh:/system/etc/init.qcom.fm.sh \
    device/huawei/u8800/system/etc/init.qcom.sdio.sh:/system/etc/init.qcom.sdio.sh \
    device/huawei/u8800/system/etc/init.qcom.wifi.sh:/system/etc/init.qcom.wifi.sh \
    device/huawei/u8800/system/etc/media_profiles.xml:/system/etc/media_profiles.xml \
    device/huawei/u8800/system/etc/init.qcom.coex.sh:/system/etc/init.qcom.coex.sh\
    device/huawei/u8800/system/etc/vold.fstab:/system/etc/vold.fstab

#ril
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/lib/libril-qc-1.so:/system/lib/libril-qc-1.so \
    device/huawei/u8800/system/lib/libril-qcril-hook-oem.so:/system/lib/libril-qcril-hook-oem.so \
    device/huawei/u8800/system/lib/libdiag.so:/system/lib/libdiag.so \
    device/huawei/u8800/system/lib/liboncrpc.so:/system/lib/liboncrpc.so \
    device/huawei/u8800/system/lib/libqmi.so:/system/lib/libqmi.so \
    device/huawei/u8800/system/lib/libdsm.so:/system/lib/libdsm.so \
    device/huawei/u8800/system/lib/libqueue.so:/system/lib/libqueue.so \
    device/huawei/u8800/system/lib/libcm.so:/system/lib/libcm.so \
    device/huawei/u8800/system/lib/libmmgsdilib.so:/system/lib/libmmgsdilib.so \
    device/huawei/u8800/system/lib/libgsdi_exp.so:/system/lib/libgsdi_exp.so \
    device/huawei/u8800/system/lib/libgstk_exp.so:/system/lib/libgstk_exp.so \
    device/huawei/u8800/system/lib/libwms.so:/system/lib/libwms.so \
    device/huawei/u8800/system/lib/libnv.so:/system/lib/libnv.so \
    device/huawei/u8800/system/lib/libwmsts.so:/system/lib/libwmsts.so \
    device/huawei/u8800/system/lib/libpbmlib.so:/system/lib/libpbmlib.so \
    device/huawei/u8800/system/lib/libdss.so:/system/lib/libdss.so \
    device/huawei/u8800/system/lib/libauth.so:/system/lib/libauth.so \
    device/huawei/u8800/system/lib/libhwrpc.so:/system/lib/libhwrpc.so \
    device/huawei/u8800/system/lib/libhwrpc.so:/obj/lib/libhwrpc.so \


# init bin
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/bin/qmuxd:/system/bin/qmuxd \
    device/huawei/u8800/system/bin/hci_qcomm_init:/system/bin/hci_qcomm_init \

# other bin
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/bin/compassd:/system/bin/compassd \
    device/huawei/u8800/system/bin/rmt_oeminfo:/system/bin/rmt_oeminfo \
    device/huawei/u8800/system/bin/rmt_storage:/system/bin/rmt_storage \
    device/huawei/u8800/system/bin/hw_diag_app:/system/bin/hw_diag_app \
    device/huawei/u8800/system/bin/oem_rpc_svc:/system/bin/oem_rpc_svc \
    device/huawei/u8800/system/bin/load_oemlogo:/system/bin/load_oemlogo \
    device/huawei/u8800/system/bin/oeminfo_test:/system/bin/oeminfo_test \
    device/huawei/u8800/system/bin/kmsgcat:/system/bin/kmsgcat \
#    device/huawei/u8800/system/bin/port-bridge:/system/bin/port-bridge \
#    device/huawei/u8800/system/bin/hwvefs:/system/bin/hwvefs \

PRODUCT_COPY_FILES += \
    device/huawei/u8800/wifi/libra.ko:/system/lib/modules/libra.ko \
    device/huawei/u8800/wifi/librasdioif.ko:/system/lib/modules/librasdioif.ko \
    device/huawei/u8800/wifi/libra.ko:/system/lib/modules/libra_ftm.ko \

PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/libril-qc-1.so \
    rild.libargs=-d /dev/smd0 \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=90 \
    ro.com.android.dataroaming=false

PRODUCT_NAME := full_u8800
PRODUCT_DEVICE := u8800
PRODUCT_BRAND := Android
PRODUCT_MODEL := Full Android on U8800

