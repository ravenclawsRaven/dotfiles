#!/usr/bin/env sh

killall -q polybar

# waits until process has been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# should probably replace temp name with someting more meaningful
polybar main &
