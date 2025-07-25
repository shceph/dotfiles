#!/bin/bash
export XDG_CURRENT_DESKTOP=Hyprland
export XDG_SESSION_TYPE=wayland
export XDG_SESSION_DESKTOP=Hyprland
export XDG_RUNTIME_DIR=/run/user/$(id -u)
export GDK_BACKEND=wayland,x11
export GTK_THEME=Orchis-Dark
exec Hyprland
