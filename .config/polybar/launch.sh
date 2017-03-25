#!/usr/bin/env sh

# kill any running polybars
killall -q polybar

# wait till the polybars are dead
while pgrep -x polybar >/dev/null; do sleep 1; done

# launch the polybars
polybar bar1 &
polybar bar2 &

echo "Bars online..."
