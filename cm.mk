## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/cdma.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 720
TARGET_SCREEN_WIDTH := 1280

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/lgl23/lgl23.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := lgl23
PRODUCT_NAME := cm_lgl23
PRODUCT_BRAND := KDDI
PRODUCT_MODEL := LGL23
PRODUCT_MANUFACTURER := lge

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=lge/g2_jp_kdi/zee:4.2.2/JDQ39B/LGL2310d.1383057441:user/release-keys PRIVATE_BUILD_DESC="g2_jp_kdi 4.2.2 JDQ39B LGL2310d.1383057441 release-keys"

PRODUCT_PACKAGES += Torch
