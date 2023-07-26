export PATH=$PATH:$HOME/.local/bin
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_DIRS=$XDG_DATA_DIRS:/var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share
export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/gcr/ssh
export EDITOR=vim
export GRIM_DEFAULT_DIR=$HOME/screenshots

if type nvim > /dev/null; then
    export EDITOR=nvim
fi

# if zsh.wayland is stowed
[ -f .zshenv.wayland ] && source .zshenv.wayland

# apply per-machine custom patches without touching the repository
[ -f .zshenv.custom ] && source .zshenv.custom
