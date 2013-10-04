USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/hltetmo/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := hltetmo

BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

BOARD_BOOTIMAGE_PARTITION_SIZE := 11534336
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 13631488
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 257946960
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27971795968
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/samsung/hltetmo/kernel

BOARD_HAS_NO_SELECT_BUTTON := true

TARGET_OTA_ASSERT_DEVICE := hltetmo,SM-N900T
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"

#SELinux
BOARD_SEPOLICY_UNION := \
    file_contexts \
    file.te \
    device.te \

BOARD_SEPOLICY_DIRS := \
    device/samsung/hltetmo/sepolicy

TARGET_RECOVERY_FSTAB := device/samsung/hltetmo/rootdir/etc/fstab.qcom
