#!/bin/bash

/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
setxkbmap pl &
# picom -b --experimental-backends &
xfce4-power-manager &
timeout 47 variety &

