# Inherit common euclid stuff
$(call inherit-product, vendor/euclid/config/common_mobile.mk)

PRODUCT_SIZE := full

ifneq ($(PRODUCT_NO_CAMERA),true)
PRODUCT_PACKAGES += \
    Aperture
endif

# Include euclid LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/euclid/overlay/dictionaries
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/euclid/overlay/dictionaries
