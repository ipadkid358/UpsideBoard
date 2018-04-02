TARGET = iphone::8.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = UpsideBoard
UpsideBoard_FILES = Tweak.x

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
