#!/bin/bash


if [ -z "$@" ]; then
    echo -en "Shutdown\0icon\x1fsystem-shutdown\n"
    echo -en "Logout\0icon\x1fsystem-log-out\n"
    echo -en "Suspend\0icon\x1fsystem-suspend\n"
    echo -en "Reboot\0icon\x1fsystem-reboot\n"
    echo -en "Lock\0icon\x1fchanges-allow-symbolic\n"
else
    if [ "$1" = "Shutdown" ]; then
        echo -en "Now\n30s\n1m"
    elif [ "$1" = "Logout" ]; then
        i3-msg exit
    elif [ "$1" = "Reboot" ]; then
        reboot
    elif [ "$1" = "Suspend" ]; then
        systemctl suspend
    elif [ "$1" = "Lock" ]; then
        i3-msg -q 'exec betterlockscreen -l > /dev/null'
    fi
fi
