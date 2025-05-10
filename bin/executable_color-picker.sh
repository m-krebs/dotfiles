#!/bin/bash

if [ "$XDG_SESSION_TYPE" == "wayland" ]; then
        hyprpicker -f hex -a
elif [ "$XDG_SESSION_TYPE" == "x11" ]; then
        xcolor -s clipboard
else
        echo "\$XDG_SESSION_TYPE not set"
fi
