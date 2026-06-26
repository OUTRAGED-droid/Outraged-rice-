#!/bin/bash
case $1 in
    toggle)
        if pgrep -x "mako" > /dev/null; then
            pkill mako
        else
            mako &
        fi
        ;;
    status)
        if pgrep -x "mako" > /dev/null; then
            echo "on"
        else
            echo "off"
        fi
        ;;
esac
