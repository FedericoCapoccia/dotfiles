# XDG vars
set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_CACHE_HOME "$HOME/.cache"
set -gx XDG_DATA_HOME "$HOME/.local/share"
set -gx XDG_STATE_HOME "$HOME/.local/state"

# Other env
set -gx DOTNET_CLI_TELEMETRY_OPTOUT "1"
set -gx EDITOR "nvim"

# PATH
fish_add_path "$HOME/.local/bin"
fish_add_path "$HOME/.cargo/bin"
fish_add_path "$HOME/.zvm/bin"

if test -n "$SSH_CLIENT"
    set -gx TERM xterm
end

# Git prompt stuff
set -gx __fish_git_prompt_showdirtystate true
