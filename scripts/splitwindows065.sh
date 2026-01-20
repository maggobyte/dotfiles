#!/usr/bin/env bash

SOCKET="$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock"

discord_open=false
steam_friends_open=false

check_clients() {
  hyprctl -j clients | jq -e '.[] | select(.class=="discord")' > /dev/null \
    && discord_open=true

  hyprctl -j clients | jq -e '.[] | select(.class=="steam" and (.title | test("Friends"; "i")))' > /dev/null \
    && steam_friends_open=true
}

check_clients

if $discord_open && $steam_friends_open; then
  hyprctl dispatch focuswindow class:discord
  hyprctl dispatch splitratio 0.65
  exit 0
fi

socat -U - UNIX-CONNECT:"$SOCKET" | while read -r event; do
  case "$event" in
    openwindow*|closewindow*)
      check_clients
      ;;
  esac

  if $discord_open && $steam_friends_open; then
    hyprctl dispatch focuswindow class:discord
    hyprctl dispatch splitratio 0.65
    break
  fi
done
