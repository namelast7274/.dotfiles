#/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

## Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

## Launch

## Right Bars
polybar power -c ~/.config/polybar/black.ini &
polybar multimedia -c ~/.config/polybar/black.ini &
polybar audio -c ~/.config/polybar/black.ini &
polybar emergency1 -c ~/.config/polybar/black.ini &
polybar emergency2 -c ~/.config/polybar/black.ini &
polybar emergency3 -c ~/.config/polybar/black.ini &
## Left bars
polybar primary -c ~/.config/polybar/white.ini &
polybar date -c ~/.config/polybar/white.ini &

