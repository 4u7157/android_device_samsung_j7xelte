# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Fix build error on android 9+ manifest
PRODUCT_COPY_FILES += \
     device/samsung/j7xelte/Image:kernel \
     device/samsung/j7xelte/dt.img:dt.img \
     device/samsung/j7xelte/dt.img:boot.img

# Device identifier
PRODUCT_DEVICE := j7xelte
PRODUCT_NAME := omni_j7xelte
PRODUCT_MODEL := Galaxy J7 2016
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
