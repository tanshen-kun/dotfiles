#!/bin/bash

# Volume change input: +5% or -5%
change="$1"

# Apply volume change
pactl set-sink-volume @DEFAULT_SINK@ "$change"

# Get current volume
volume=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -oP '\d+%' | head -1)

# Show notification
notify-send "Volume $volume"

