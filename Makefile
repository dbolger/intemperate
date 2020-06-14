INSTALL_TARGET_PROCESSES = SpringBoard
PACKAGE_VERSION=$(THEOS_PACKAGE_BASE_VERSION)
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = intemperate

intemperate_FILES = Tweak.x
intemperate_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += intemperateprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
