# XDG Directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# ZSH
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export ZSH="$ZDOTDIR/oh-my-zsh"
export ZSH_CUSTOM="$ZDOTDIR/custom"
export ZSH_COMPDUMP="$XDG_CACHE_HOME/.zcompdump"
export HISTFILE="$XDG_DATA_HOME/zsh/history"
export HISTSIZE=10000
export SAVEHIST=10000

# Dotnet
export DOTNET_CLI_TELEMETRY_OPTOUT=1

export EDITOR=nvim

if [ -f "$HOME/.local/share/vulkan_sdk/1.4.309.0/setup-env.sh" ]; then
        . "$HOME/.local/share/vulkan_sdk/1.4.309.0/setup-env.sh"
fi

export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.cargo/bin"

if [ -f "$HOME/.cargo/env" ]; then 
	. "$HOME/.cargo/env"
fi
