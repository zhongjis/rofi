#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Github : @adi1090x
#
## Rofi   : Launcher (Modi Drun, Run, File Browser, Window)
#
## Available Styles
#
## style-1     style-2     style-3     style-4     style-5
## style-6     style-7     style-8     style-9     style-10

dir="$HOME/.config/rofi/launchers/type-7"
theme='style-1'

## Run

#!/usr/bin/env bash

if pgrep -x "rofi" >/dev/null; then
  # Rofi is running, kill it
  pkill rofi
else
  # Rofi not running, launch it
  rofi \
      -show drun \
      -theme ${dir}/${theme}.rasi
  # rofi -show drun -show-icons
  sleep 0.2 # Small delay to let Rofi open
  hyprctl dispatch focuswindow active
fi
