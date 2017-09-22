#!/bin/sh
echo U:640x480p-57 > /sys/class/graphics/fb0/mode

export TSLIB_TSDEVICE=/dev/input/event1
export TSLIB_CALIBFILE=/etc/pointercal
export TSLIB_CONFILE=/etc/ts.conf
export TSLIB_PLUGINDIR=/usr/lib/ts
export TSLIB_FBDEVICE=/dev/fb0
export TSLIB_CONSOLEDEVICE=none
export DISPLAY=:0

/usr/local/avicon-31/test_avicon/test_avicon -platform linuxfb:virtual=-100x0x100x480:virtual=640x0x100x480:virtual=-100x480x840x100 -plugin Tslib:/dev/input/event1 -plugin EvdevKeyboard -plugin EvdevMouse 

 
