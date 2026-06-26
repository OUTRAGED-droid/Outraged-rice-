#!/usr/bin/env bash

# Power menu using rofi
options=" Power Off
 Reboot
 Suspend
 Lock
 Log Out"

chosen=$(echo -e "$options" | rofi -dmenu -i -theme catppuccin -p "Power Menu")

case "$chosen" in
    " Power Off") poweroff ;;
    " Reboot") reboot ;;
    " Suspend") systemctl suspend ;;
    " Lock") swaylock ;;
    " Log Out") swaymsg exit ;;
esac
