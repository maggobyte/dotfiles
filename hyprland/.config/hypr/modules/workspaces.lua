----------------------------
-- WINDOWS AND WORKSPACES --
----------------------------

local terminal = "kitty"

hl.on("hyprland.start", function()
  hl.timer(function()
    hl.dispatch(hl.dsp.focus({ workspace = 1 }))
  end, { timeout = 7000, type = "oneshot" })
end)

-- Workspace rules --

hl.workspace_rule({ workspace = "1",  monitor = "DP-3", on_created_empty = "[tiled] " .. terminal })
hl.workspace_rule({ workspace = "2",  monitor = "DP-3", on_created_empty = "[tiled] firefox" })
hl.workspace_rule({ workspace = "3",  monitor = "DP-3", on_created_empty = "[tiled] steam" })
hl.workspace_rule({ workspace = "9",  monitor = "DP-4", on_created_empty = "[tiled] firefox" })
hl.workspace_rule({ workspace = "10", monitor = "DP-4", on_created_empty = "[tiled] flatpak run com.discordapp.Discord" })

-- Window rules --

hl.window_rule({ match = { class = "steam" },                       workspace = "3" })
hl.window_rule({ match = { class = "net.lutris.Lutris" },           workspace = "3" })
hl.window_rule({ match = { class = "org.prismlauncher.PrismLauncher" }, workspace = "3" })
hl.window_rule({ match = { initial_title = "Battle.net" },          workspace = "3" })
hl.window_rule({ match = { class = "discord" },                     workspace = "10" })
hl.window_rule({ match = { initial_title = "Friends List" },        workspace = "10" })

--hl.on("workspace.active", function(ws)
--  if ws.id == 10 then
--    local discord = hl.get_windows({ class = "discord" })
--    if #discord == 0 then
--      hl.exec_cmd("flatpak run com.discordapp.Discord")
--    end
--  end
--end)

hl.window_rule({
  name  = "force_steam_tile",
  match = { class = "steam" },
  tile  = true,
})

hl.window_rule({
  name  = "float_waypaper",
  match = { class = "waypaper" },
  float = true,
})

hl.window_rule({
  name  = "float_pavucontrol",
  match = { class = "org.pulseaudio.pavucontrol" },
  float = true,
  size  = { 1000, 800 },
})

hl.window_rule({
  name  = "float_open_folder",
  match = { initial_title = "Open Folder" },
  float = true,
  size  = { 1000, 800 },
})

hl.window_rule({
  name  = "float_qalculate",
  match = { class = "qalculate-gtk" },
  float = true,
  size  = { 800, 600 },
})

-- Useful default windowrules.
hl.window_rule({
  -- Ignore maximize requests from all apps. You'll probably like this.
  name           = "suppress-maximize-events",
  match          = { class = ".*" },
  suppress_event = "maximize",
})

hl.window_rule({
  -- Fix some dragging issues with XWayland
  name  = "fix-xwayland-drags",
  match = {
    class      = "^$",
    title      = "^$",
    xwayland   = true,
    float      = true,
    fullscreen = false,
    pin        = false,
  },
  no_focus = true,
})
