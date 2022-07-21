# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from a10s device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := a10s
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_a10s
PRODUCT_MODEL := SM-A107F

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := a10s
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="a10sxx-user 10 QP1A.190711.020 A107FXXU8BUC2 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/a10sxx/a10s:10/QP1A.190711.020/A107FXXU8BUC2:user/release-keys
