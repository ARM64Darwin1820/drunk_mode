export THEOS_PLATFORM_SDK_ROOT=$(THEOS)/sdks/iPhoneOS11.2.sdk
ARCHS = arm64 arm64e
THEOS_BUILD_DIR = Packages

FINALPACKAGE=0
DEBUG=1
GO_EASY_ON_ME=1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = DrunkMode
DrunkMode_FILES = Tweak.xm
DrunkMode_FRAMEWORKS = UIKit
DrunkMode_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS)/makefiles/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
