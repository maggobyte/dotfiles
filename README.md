stow -t ~

Dry-run = stow -n -v -t ~ hyprpaper

tmux sessionizer is ctrl + space + f
tmux list all sessions ctrl + space + s, kill with x + y

hyprshot

Font for icons: otf-font-awesome
cifs-utils for fstab

ctrl + space + f

Swaync

qt5-wayland + qt6-wayland

waypaper

xdg-desktop-portal-hyprland hyprpolkitagent cliphist

cliphist : 
exec-once = wl-paste --type text --watch cliphist store # Stores only text data
exec-once = wl-paste --type image --watch cliphist store # Stores only image data
bind = SUPER, V, exec, cliphist list | wofi --dmenu --pre-display-cmd "echo '%s' | cut -f 2" | cliphist decode | wl-copy
