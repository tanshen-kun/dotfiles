#!/bin/bash

# Brightness change input: +5% or -5%
change="$1"

# Apply brightness change
brightnessctl set "$change"

# Get current brightness percentage
current=$(brightnessctl get)
max=$(brightnessctl max)
percent=$((current * 100 / max))

# Show notification
notify-send "Brightness ${percent}%"

