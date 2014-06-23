ARCHS = armv7 armv7s arm64

TARGET = iphone:clang:latest:7.1

THEOS_BUILD_DIR = Packages

include theos/makefiles/common.mk

TWEAK_NAME = LockScreenGestureCleanUp
LockScreenGestureCleanUp_CFLAGS = -fno-objc-arc
LockScreenGestureCleanUp_FILES = LockScreenGestureCleanUp.x
LockScreenGestureCleanUp_FRAMEWORKS = Foundation

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 backboardd"
