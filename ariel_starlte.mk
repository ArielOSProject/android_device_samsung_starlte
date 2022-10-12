# Boot animation
# TARGET_BOOTANIMATION_PRELOAD := true
# TARGET_BOOTANIMATION_TEXTURE_CACHE := true
# TARGET_SCREEN_HEIGHT := 1920
# TARGET_SCREEN_WIDTH := 1080

# Inherit some common stuff.
# We inherit Ariel first to be able to override some
# AOSP default params (like PRODUCT_COPY_FILES)
$(call inherit-product, vendor/ariel/config/ariel_common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/starlte/lineage_starlte.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := ariel_starlte
PRODUCT_DEVICE := starlte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G960F
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.stock_fingerprint="samsung/starltexx/starlte:10/QP1A.190711.020/G960FXXSHFUJ2:user/release-keys"
