#!/usr/bin/bash

MODE=$(cat /tmp/display_mode 2>/dev/null || echo "extend")

if [ "$MODE" = "extend" ]; then
    hyprctl keyword monitor eDP-1,mirror,HDMI-A-1
    echo "mirror" > /tmp/display_mode
elif [ "$MODE" = "mirror" ]; then
    hyprctl keyword monitor eDP-1,disable
    echo "disable main" > /tmp/display_mode
elif [ "$MODE" = "disable main" ]; then
    hyprctl keyword monitor eDP-1,enable
    hyprctl keyword monitor HDMI-A-1,disable
    echo "disable secondary" > /tmp/display_mode
else
    hyprctl keyword monitor HDMI-A-1,enable
    echo "extend" > /tmp/display_mode
fi
