source ${ZDOTDIR:-~}/.antidote/antidote.zsh

# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
antidote load
eval "$(starship init zsh)"
eval "$(atuin init zsh --disable-up-arrow)"
