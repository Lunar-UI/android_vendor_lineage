# Inherit common Lineage stuff
$(call inherit-product, vendor/lunar/config/common.mk)

# Inherit Lineage car device tree
$(call inherit-product, device/lineage/car/lineage_car.mk)
