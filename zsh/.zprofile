if [[ $(tty) == '/dev/tty1' ]]; then
    type Hyprland && exec Hyprland && return 0
    type startx && exec startx && return 0
fi

return 1
