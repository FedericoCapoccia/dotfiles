export WINDOW_MANAGER=hyprland # sway, hyprland, i3

# Sway
if [[ "$WINDOW_MANAGER" == "sway" ]] && [ -z "$WAYLAND_DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ]; then
  export XDG_CURRENT_DESKTOP=sway
  export GTK_USE_PORTAL=1
  export QT_QPA_PLATFORMTHEME=qt5ct
  export QT_QPA_PLATFORM=wayland
  exec sway
fi

if [[ "$WINDOW_MANAGER" == "hyprland" ]] && [ -z "$WAYLAND_DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec Hyprland
fi

