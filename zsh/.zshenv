export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

export PATH=$PATH:"$HOME/.local/bin"
export PATH=$PATH:"$HOME/.cargo/bin"
export SSH_AUTH_SOCK="/run/user/$UID/ssh-agent.socket"

export EDITOR="nvim"
export VISUAL="nvim"
export SYSTEMD_EDITOR="nvim"
export PAGER="most"

alias vi="nvim"
alias vim="nvim"
alias ls="ls --color"
alias ll="ls --color --group-directories-first -lh"
alias la="ls --color --group-directories-first -Alh --ignore='[^.]*'"
alias ip="ip --color=auto"
alias grep="grep --color"
