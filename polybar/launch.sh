#!/bin/bash
# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar --log=info bar1 2>&1 >>/tmp/polybar1.log &

polybar --log=info bar2 2>&1 >>/tmp/polybar2.log &

echo "Bars launched..."
