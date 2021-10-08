#!/bin/sh

xset r rate 200 30
setxkbmap us,gr -option grp:alt_shift_toggle,grp_led:scroll
xrdb -merge $HOME/.Xresources

exec i3
