#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/Pictures/Wallpaper"

# Get all monitor names
MONITORS=($(hyprctl monitors | grep "Monitor" | awk '{print $2}'))

# Get current wallpaper path (first loaded one)
CURRENT_WALL=$(hyprctl hyprpaper listloaded | grep -oP '(?<=path: ).*' | head -n 1)

# Get a random wallpaper that's not the current one
WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)

# Unload all current wallpapers - Causes flicker, but saves RAM
hyprctl hyprpaper unload all

# Preload and apply the same wallpaper to all monitors
hyprctl hyprpaper preload "$WALLPAPER"
for MON in "${MONITORS[@]}"; do
    hyprctl hyprpaper wallpaper "$MON,$WALLPAPER"
done
