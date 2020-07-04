#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar power -c ~/.config/polybar/config.ini &\
polybar datetime -c ~/.config/polybar/config.ini &\
polybar launch -c ~/.config/polybar/config.ini &\
polybar workspaces -c ~/.config/polybar/config.ini &\
polybar system -c ~/.config/polybar/config.ini &\
polybar spacer -c ~/.config/polybar/config.ini &\

