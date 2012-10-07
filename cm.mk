#
# CyanogenMod product configuration
#

# --------------------------------------------------------------------------------
# Inherit CM stuff
# --------------------------------------------------------------------------------

$(call inherit-product, vendor/cm/config/gsm.mk)
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# --------------------------------------------------------------------------------
# Inherit device configuration
# --------------------------------------------------------------------------------

$(call inherit-product, device/samsung/p1n/full_p1n.mk)

# --------------------------------------------------------------------------------
# product specific settings
# --------------------------------------------------------------------------------

PRODUCT_NAME := cm_p1n
PRODUCT_DEVICE := p1n
PRODUCT_MODEL := GT-P1000N

# kernel
TARGET_KERNEL_SOURCE := kernel/samsung/p1
TARGET_KERNEL_CONFIG := cyanogenmod_$(PRODUCT_DEVICE)_defconfig

# asserts
TARGET_OTA_ASSERT_DEVICE := galaxytab,$(PRODUCT_MODEL)

# Set build fingerprint / ID / product name etc.
PRODUCT_BUILD_PROP_OVERRIDES += \
       PRODUCT_NAME=GT-P1000N \
       TARGET_DEVICE=GT-P1000N \
       BUILD_FINGERPRINT=samsung/GT-P1000N/GT-P1000N:2.3.3/GINGERBREAD/UBJP7:user/release-keys \
       PRIVATE_BUILD_DESC="GT-P1000N-user 2.3.3 GINGERBREAD UBJP7 release-keys"
