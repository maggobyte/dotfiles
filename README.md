# Dotfiles
These dotfiles are for my own sake, in case i nuke my system and need a backup.

## Stow
Use stow to symlink .config files. CD into the dotfiles directory and excecute command targeting the chosen .config (for example, `waybar`):

```bash
stow -t ~ waybar
```

You can also dry-run stow to see changes before commiting:

```bash
stow -n -v -t ~ hyprpaper
```

## Packages
Some packages worth mentioning. There is no other reason.

- bat 
- btop 
- cifs-utils
- cliphist 
- hyprland 
- hyprlock 
- hyprpolkitagent 
- hyprshot 
- kitty 
- nfs-utils 
- nvim 
- nwg-look 
- qt5-wayland 
- qt6-wayland 
- starship 
- swaync 
- tmux 
- waybar 
- waypaper 
- wlogout 
- wofi 
- xdg-desktop-portal-hyprland 
- zsh 
- swww
- waypaper

### Scripts

- tmux-sessionizer (https://github.com/ThePrimeagen/tmux-sessionizer)

## Fonts & Theme

**Fonts**
- JetBrains Mono Nerd Font 
- otf-font-awesome

**Color Palette**
- Catpuccin Mocha

**SDDM Theme**
- SilentSDDM (https://github.com/uiriansan/SilentSDDM)

Installation path:
```text
/usr/share/sddm/themes/
```

Enable in : 
```text
/usr/lib/sddm/sddm.conf.d/default.conf
```

## Keybinds ### 
### Tmux
- Tmux - Sessionizer: `Ctrl + Space + F` 
- List sessions: `Ctrl + Space + S` 
- Kill sessions using `x` and confirm with `y` 
### Hyprland 
- Application launcher (Wofi): `Super + Space` 
- Change wallpaper: `Super + O` 
- Screenshot (area selection): `Super + Shift + S` 
---
