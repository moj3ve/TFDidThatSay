ARCHS = armv7 armv7s arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = tfdidthatsay
tfdidthatsay_FILES = $(wildcard tweak/*.xm tweak/assets/*.m tweak/assets/MMMarkdown/*.m)
tfdidthatsay_CFLAGS = -fobjc-arc
tweak/Reddit.xm_CFLAGS = -fno-objc-arc
tweak/Apollo.xm_CFLAGS = -fno-objc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

SUBPROJECTS += prefs
include $(THEOS_MAKE_PATH)/aggregate.mk