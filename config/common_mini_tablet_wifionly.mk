# Inherit mobile mini common Lineage stuff
$(call inherit-product, vendor/lunar/config/common_mobile_mini.mk)

# Inherit tablet common Lineage stuff
$(call inherit-product, vendor/lunar/config/tablet.mk)

$(call inherit-product, vendor/lunar/config/wifionly.mk)
