if status --is-login
    set -gx XDG_CONFIG_HOME "$HOME/.config"
    set -gx XDG_CACHE_HOME "$HOME/.cache"
    set -gx XDG_DATA_HOME "$HOME/.local/share"
    set -gx XDG_STATE_HOME "$HOME/.local/state"

    set -gx DOTNET_CLI_TELEMETRY_OPTOUT "1"
    set -gx EDITOR "nvim"

    fish_add_path "$HOME/.local/bin"
    fish_add_path "$HOME/.cargo/bin"
    fish_add_path "$HOME/.zvm/bin"
end

if status --is-interactive
end
