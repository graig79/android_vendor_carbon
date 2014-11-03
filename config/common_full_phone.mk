# Inherit common CM stuff
$(call inherit-product, vendor/carbon/config/common_full.mk)

# Default notification/alarm sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Hassium.ogg

ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_COPY_FILES += \
        vendor/carbon/prebuilt/common/bootanimation/1080.zip:system/media/bootanimation.zip
endif

$(call inherit-product, vendor/carbon/config/telephony.mk)
