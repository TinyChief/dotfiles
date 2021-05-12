#!/bin/bash

menu="$1"

if [ "$menu" = "appmenu" ]; then
    rofi -show drun -theme ~/.config/rofi/themes/slate.rasi
elif [ "$menu" = "tabmenu" ]; then
    rofi \
        -show window -theme slate \
        -kb-cancel "Super+Escape,Escape" \
        -kb-accept-entry "ISO_Left_Tab,!Super-Tab,!Super_L,!Super+Super_L,Return"\
        -kb-row-down "Super+Tab,Super+Down" \
        -kb-row-up "Super+ISO_Left_Tab,Super+Shift+Tab,Super+Up"&
elif [ "$menu" = "powermenu" ]; then
    rofi -modi 'Powermenu:~/.config/rofi/scripts/powermenu.sh' -show Powermenu -theme powermenu -location 3  -xoffset -20 -yoffset 20
fi
