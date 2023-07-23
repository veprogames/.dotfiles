[[ -f $HOME/.cache/wal/sequences ]] && (cat $HOME/.cache/wal/sequences &)

autoload -Uz compinit && compinit

PS1='%B%F{blue}%~> %f%b'

HISTFILE=~/.zhistory
SAVEHIST=2000
HISTSIZE=1500
INC_APPEND_HISTORY=1

bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word
zstyle ':completion:*' menu select

[ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ] && source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

alias ls='ls --color=auto'
alias grep='grep --color=auto'
if type nvim > /dev/null; then
    alias vim='nvim'
fi
# aliases for yt-dlp
if type yt-dlp > /dev/null; then
    dldir=${XDG_DOWNLOAD_DIR:-~/Downloads}
    alias ytv='yt-dlp --sponsorblock-remove sponsor --format-sort vext --prefer-free-formats -o "'"$dldir"'/yt-dlp/%(uploader)s/%(title)s.%(ext)s" $1'
    alias yta='yt-dlp --sponsorblock-remove sponsor --format-sort aext --prefer-free-formats --extract-audio --audio-quality 0 -o "'"$dldir"'/yt-dlp/%(uploader)s/%(title)s.%(ext)s" $1'
fi
alias icat='kitty +kitten icat'

# XDG User Dirs, e. g. used by mpd
[[ -f .config/user-dirs.dirs ]] && source .config/user-dirs.dirs

# apply per-machine custom patches without touching the repository
[ -f .zshrc.custom ] && source .zshrc.custom
