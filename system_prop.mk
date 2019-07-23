#
# Common system properties for e8 and e8d
#

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.maxopen=3

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/vendor/lib/libqti-perfd-client.so

# Vendor security patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.lineage.build.vendor_security_patch=2016-07-01
