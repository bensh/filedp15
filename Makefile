export ARCHS = arm64
export TARGET=iphone:11.2:10.0
export TARGET_CODESIGN_FLAGS="-Ssign.plist"
SYSROOT=$(THEOS)/sdks/iPhoneOS12.4.sdk

include $(THEOS)/makefiles/common.mk

TOOL_NAME = filedp15

filedp15_FILES = main.m
filedp15_FRAMEWORKS = IOKit CoreFoundation Foundation Security
filedp15_CFLAGS = -fno-objc-arc
filedp15_CODESIGN_FLAGS = -Sentitlements.plist
filedp15_INSTALL_PATH = /var/jb/usr/bin

include $(THEOS_MAKE_PATH)/tool.mk
include $(THEOS)/makefiles/aggregate.mk
