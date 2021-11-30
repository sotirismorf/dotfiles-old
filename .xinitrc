#!/bin/sh

#Setup TouchPad
#To see all the available options:
#	$ libinput list-devices
#	$ xinput list-props "enter-the-device-name-here"
xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Tapping Enabled" 1
xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Natural Scrolling Enabled" 1
xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Accel Speed" 0.3

xrdb -merge $HOME/.Xresources

#Start the window manager
exec dwm
