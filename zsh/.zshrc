autoload -Uz compinit && compinit

PS1='%B%F{blue}%~> %f%b'

HISTFILE=~/.zhistory
SAVEHIST=2000
HISTSIZE=1500
INC_APPEND_HISTORY=1

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias cat='bat'

echo $(uname -a)
