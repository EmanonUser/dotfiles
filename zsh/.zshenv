export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

export PATH=$PATH:"$HOME/.local/bin"
export PATH=$PATH:"$HOME/.cargo/bin"

export SSH_AUTH_SOCK="/run/user/$UID/ssh-agent.socket"

export EDITOR="nvim"
export VISUAL="nvim"
export SYSTEMD_EDITOR="nvim"
export MANPAGER="nvim +Man!"

. "$HOME/.atuin/bin/env"
. "$HOME/.cargo/env"
