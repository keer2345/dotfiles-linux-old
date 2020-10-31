#!/usr/bin/env bash

# chmod +x launch.sh

# set correct resolution ratio
# xrandr && xrandr --output eDP-1 --mode 1600x900

# load background
# feh --bg-fill ~/Media/Bilder/ArenaBlurArchFullHD.png

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

## loop monitors
# for m in $(polybar --list-monitors | cut -d":" -f1); do
    # MONITOR=$m polybar --reload top &
# done

MONITOR=DP-1 polybar --reload top &
