include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = IntemperatePrefs

IntemperatePrefs_FILES = INPRootListController.m
IntemperatePrefs_INSTALL_PATH = /Library/PreferenceBundles
IntemperatePrefs_FRAMEWORKS = UIKit
IntemperatePrefs_PRIVATE_FRAMEWORKS = Preferences
IntemperatePrefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/IntemperatePrefs.plist$(ECHO_END)
