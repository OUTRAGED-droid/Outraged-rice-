#!/bin/bash

bt_on=$(bluetoothctl show | grep -q "Powered: yes" && echo "yes" || echo "no")

if [ "$bt_on" = "no" ]; then
    ACTION=$(echo -e "Turn On Bluetooth\nCancel" | rofi -dmenu -p "Bluetooth" -theme-str "window {width: 400px;}")
    [ "$ACTION" = "Turn On Bluetooth" ] && bluetoothctl power on
else
    DEVICES=$(bluetoothctl devices | sed "s/Device //")
    CONNECTED=$(bluetoothctl info 2>/dev/null | grep "Name:" | sed "s/.*Name: //")
    MENU=$(echo -e "${DEVICES:+$DEVICES\n}Scan for devices\nTurn Off Bluetooth\nCancel")
    SELECTED=$(echo "$MENU" | rofi -dmenu -p "Bluetooth: ${CONNECTED:-Not connected}" -theme-str "window {width: 400px;}")
    case "$SELECTED" in
        "Scan for devices")
            bluetoothctl scan on & sleep 5; bluetoothctl scan off ;;
        "Turn Off Bluetooth")
            bluetoothctl power off ;;
        "Cancel"|"") ;;
        *)
            MAC=$(echo "$SELECTED" | awk "{print \$1}")
            bluetoothctl connect "$MAC" ;;
    esac
fi

# Return focus to eww after rofi closes
swaymsg "[title=\"eww\"] focus" 2>/dev/null
eww open settings-window
