export PATH=$PATH:$HOME/.local/bin
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_DIRS=$XDG_DATA_DIRS:/var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share
export EDITOR=vim
export GTK_THEME=Adwaita:dark

# if zsh.wayland is stowed
[ -f .zshenv.wayland ] && source .zshenv.wayland

# apply per-machine custom patches without touching the repository
[ -f .zshenv.custom ] && source .zshenv.custom
