## Specify phone tech before including full_phone

# Release name
PRODUCT_RELEASE_NAME := X18

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/CUBOT/X18/device_X18.mk)

TARGET_SCREEN_HEIGHT := 1440
TARGET_SCREEN_WIDTH := 720
DEVICE_RESOLUTION := 720x1440

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := X18
PRODUCT_NAME := lineage_X18
PRODUCT_BRAND := CUBOT
PRODUCT_MODEL := CUBOT Note Plus
PRODUCT_MANUFACTURER := CUBOT

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=CUBOT/CUBOT_X18/CUBOT_X18:7.0/NRD90M/1505762634:user/release-keys \
    PRIVATE_BUILD_DESC="full_c509_cq_7153c_n_37t36-user 7.0 NRD90M 1528194061 release-keys" 

PRODUCT_GMS_CLIENTID_BASE := android-cubot
