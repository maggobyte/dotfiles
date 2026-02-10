#!/usr/bin/env bash

WALLPAPER_DIR="/mnt/nas/magnus/Wallpapers"
# $HOME/Pictures/Wallpapers

# Get all monitor names
mapfile -t MONITORS < <(hyprctl monitors | awk '/^Monitor/ {print $2}')

# Get current wallpaper (first active one)
CURRENT_WALL=$(hyprctl hyprpaper list | awk -F', ' 'NR==1 {print $2}')

# Pick a random wallpaper different from the current one
WALLPAPER=$(find "$WALLPAPER_DIR" -type f \
    ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)

# Apply wallpaper to all monitors (auto-loads now)
for MON in "${MONITORS[@]}"; do
    hyprctl hyprpaper wallpaper "$MON,$WALLPAPER"
done

