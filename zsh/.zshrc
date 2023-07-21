autoload -Uz compinit && compinit

PS1='%B%F{blue}%~> %f%b'

HISTFILE=~/.zhistory
SAVEHIST=2000
HISTSIZE=1500
INC_APPEND_HISTORY=1

[ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ] && source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

alias ls='ls --color=auto'
alias grep='grep --color=auto'
if type nvim > /dev/null; then
    alias vim='nvim'
fi

# apply per-machine custom patches without touching the repository
[ -f .zshrc.custom ] && source .zshrc.custom
