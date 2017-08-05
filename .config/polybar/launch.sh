#!/usr/bin/env sh

# kill any running polybars
killall -q polybar

# wait till the polybars are dead
while pgrep -x polybar >/dev/null; do sleep 1; done

# launch the polybars
polybar --log=info bar1 &

echo "Bars online..."
