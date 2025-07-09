#!/bin/bash

# Power menu using rofi for Hyprland
# Dependencies: rofi, systemd

OPTIONS="󰌾  lock\n󰒲  suspend\n󰍃  logout\n󰑙  reboot\n⏻  shutdown"

SELECTED=$(printf "$OPTIONS" | rofi -dmenu -p "Power Menu")

case $SELECTED in
"󰌾  lock") sh $HOME/bin/screen-lock.sh ;;
"󰒲  suspend") systemctl suspend ;;
"󰍃  logout") hyprctl dispatch exit ;;
"󰑙  reboot") systemctl reboot ;;
"⏻  shutdown") systemctl poweroff ;;
esac
