use std/util "path add"

path add "~/.atuin/bin"
path add "/home/emanon/.nix-profile/bin"
path add "/home/emanon/.local/bin"
path add "/nix/var/nix/profiles/default/bin"

source ~/.config/nushell/completers.nu
source ~/.config/nushell/atuin.nu
source ~/.config/nushell/zellij.nu
source ~/.config/nushell/zoxide.nu

$env.config.hooks.env_change.PWD = ( $env.config.hooks.env_change.PWD | append (source ~/.config/nushell/direnv.nu))

$env.config.show_banner = false
$env.config.buffer_editor = "nvim"

alias cd = z


