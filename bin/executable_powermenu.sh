#!/bin/bash

# Simple power menu using wofi for Hyprland
# Dependencies: wofi, swaylock, systemd

OPTIONS="󰌾 lock\n󰒲 suspend\n󰍃 logout\n󰑙 reboot\n⏻ shutdown"

SELECTED=$(echo -e $OPTIONS | wofi --dmenu --width 250 --height 260 --cache-file /dev/null --prompt "Power Menu" --style ~/.config/wofi/style.css)

case $SELECTED in
"󰌾 lock")
  sh $HOME/bin/screen-lock.sh
  ;;
"󰒲 suspend")
  systemctl suspend
  ;;
"󰍃 logout")
  hyprctl dispatch exit
  ;;
"󰑙 reboot")
  systemctl reboot
  ;;
"⏻ shutdown")
  systemctl poweroff
  ;;
esac
