alias vi="nvim"
alias vim="nvim"
alias ls="ls --color"
alias ll="ls --color --group-directories-first -lh"
alias la="ls --color --group-directories-first -Alh --ignore='[^.]*'"
alias ip="ip --color=auto"
alias grep="grep --color"
alias cd="z"

# The following lines were added by compinstall
zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'l:|=* r:|=*'
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/emanon/.config/zsh/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

eval "$(starship init zsh)"
eval "$(atuin init zsh --disable-up-arrow)"
eval "$(zoxide init zsh)"
eval "$(direnv hook zsh)"

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
autoload edit-command-line
zle -N edit-command-line
bindkey '^Xe' edit-command-line

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

