DEVICE_PATH := device/ktouch/i9

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

TARGET_USES_64_BIT_BINDER := true

# Avb
BOARD_AVB_ENABLE := false

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6739
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_HASH_TYPE := sha1
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x04f88000
BOARD_SECOND_OFFSET := 0x00e88000
BOARD_KERNEL_TAGS_OFFSET := 0x03f88000
BOARD_KERNEL_IMAGE_NAME := Image.gz
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS += --second_offset $(BOARD_SECOND_OFFSET)
BOARD_MKBOOTIMG_ARGS += --base $(BOARD_KERNEL_BASE)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE) --board ""

# Partition Size
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 25165824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 25165824
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1820327936
BOARD_VENDORIMAGE_PARTITION_SIZE := 1283457024
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true

# Platform
TARGET_BOARD_PLATFORM := mt6739

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
RECOVERY_VARIANT := twrp
TW_INCLUDE_CRYPTO := true
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_NTFS_3G := true
TW_USE_TOOLBOX := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 120
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TARGET_SUPPORTS_64_BIT_APPS := true
TW_THEME := landscape_mdpi
