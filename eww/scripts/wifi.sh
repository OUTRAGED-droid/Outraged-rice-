#!/bin/bash
case $1 in
    scan)
        nmcli device wifi rescan 2>/dev/null
        sleep 2
        nmcli -t -f ssid,signal,security dev wifi list 2>/dev/null \
        | grep -v "^:" \
        | grep -v "^$" \
        | sort -t: -k2 -rn \
        | cut -d: -f1 \
        | awk "!seen[\$0]++" \
        | head -8 \
        | tr "\n" "|" \
        | sed "s/|$//"
        ;;
    connect)
        SSID="$2"
        if nmcli connection show "$SSID" &>/dev/null; then
            nmcli connection up "$SSID"
        else
            PASS=$(rofi -dmenu -password -p "Password for $SSID" -theme-str "window {width: 400px;} listview {lines: 0;}")
            [ -n "$PASS" ] && nmcli device wifi connect "$SSID" password "$PASS"
        fi
        ;;
    disconnect)
        nmcli device disconnect wlan0 2>/dev/null || nmcli device disconnect $(nmcli -t -f device,type dev | grep wifi | cut -d: -f1 | head -1)
        ;;
    current)
        nmcli -t -f active,ssid dev wifi | grep "^yes" | cut -d: -f2 | head -1 || echo "Disconnected"
        ;;
esac
