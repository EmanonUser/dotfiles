source ${ZDOTDIR:-~}/.antidote/antidote.zsh


alias vi="nvim"
alias vim="nvim"
alias ls="ls --color"
alias ll="ls --color --group-directories-first -lh"
alias la="ls --color --group-directories-first -Alh --ignore='[^.]*'"
alias ip="ip --color=auto"
alias grep="grep --color"
# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
antidote load
eval "$(starship init zsh)"
eval "$(atuin init zsh --disable-up-arrow)"
