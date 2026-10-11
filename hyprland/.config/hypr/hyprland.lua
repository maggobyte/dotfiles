------------
-- CONFIG --
------------

require("modules.keybinds")
require("modules.decorations")
require("modules.input")
require("modules.workspaces")

--------------
-- MONITORS --
--------------

hl.monitor({ output = "DP-3", mode = "2560x1440@144", position = "auto",      scale = "auto" })
hl.monitor({ output = "DP-4", mode = "2560x1440@144", position = "auto-left", scale = "auto" })

---------------
-- AUTOSTART --
---------------

hl.on("hyprland.start", function()
  hl.exec_cmd("uwsm app -- systemctl --user start hyprpolkitagent")
  hl.exec_cmd("uwsm app -- noctalia")
  hl.exec_cmd("kbuildsycoca6") -- Default application fix; not a long-running app, no uwsm wrapper needed
end)

---------------------------
-- ENVIRONMENT VARIABLES --
---------------------------

hl.env("XDG_MENU_PREFIX", "arch-") -- Default application fix
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("XCURSOR_THEME", "breeze_cursors")
hl.env("HYPRCURSOR_THEME", "breeze_cursors")
hl.env("HYPRSHOT_DIR", os.getenv("HOME") .. "/Pictures/Screenshot")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("SSH_AUTH_SOCK", os.getenv("XDG_RUNTIME_DIR") .. "/ssh-agent.socket")

hl.on("hyprland.start", function()
  hl.exec_cmd('gsettings set org.desktop.gnome.interface gtk-theme "Breeze_Dark"')
  hl.exec_cmd('gsettings set org.desktop.gnome.interface color-scheme "prefer-dark"')
end)
