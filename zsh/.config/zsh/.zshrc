alias vi="nvim"
alias vim="nvim"
alias ls="ls --color"
alias ll="ls --color --group-directories-first -lh"
alias la="ls --color --group-directories-first -Alh --ignore='[^.]*'"
alias ip="ip --color=auto"
alias grep="grep --color"
alias cd="z"

export MANPAGER="nvim +Man!"

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

try_source_plugin() {
  local plugin_name="$1"
  shift
  local paths_to_check=("$@")

  local path
  for path in "${paths_to_check[@]}"; do
    if [[ -r "$path" ]]; then
      source "$path"
      return 0
    fi
  done

  echo "Warning: Plugin '$plugin_name' not found or not readable at expected system locations." >&2
  echo "  Searched:" >&2
  for path in "${paths_to_check[@]}"; do
    echo "  - $path" >&2
  done
  return 1
}

try_source_plugin "zsh-autosuggestions" \
  "/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" \
  "/usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh"

try_source_plugin "zsh-syntax-highlighting" \
  "/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" \
  "/usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
