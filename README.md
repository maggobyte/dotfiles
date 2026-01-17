# Dotfiles

### Stow
Use stow to symlink .config files. CD into the dotfiles directory and excecute command targeting the chosen .config
```bash
stow -t ~ waybar
```

You can also dry-run stow to see changes before commiting:

```bash
stow -n -v -t ~ hyprpaper
```

## Packages

- swaync
- qt5-wayland
- qt6-wayland
- hyprshot
- nwg-look
- btop
- waypaper
- hyprpolkitagent
- cliphist
- xdg-desktop-portal-hyprland
- tmux
- cifs-utils (for fstab)
- hyprlock
- kitty
- nvim
- starship
- waybar
- wlogout
- wofi
  
### Scripts

- tmux-sessionizer

### Fonts

JetBrains Mono Nerd Font is the main font, otf-font-awesome is needed for icons on waybar.

The color pallete that is mostly used is Catpuccin Mocha

## Keybinds

### Tmux

Shortcut for tmux sessionizer is "ctrl + space + f"

Shortcut for listing all sessions is "ctrl + space + s", and kill sessions with x and y.

### Hyprland

Wofi (App launcher) = super + space

Change wallpaper = super + o

Screenshot (Area) = super + shitf + s
