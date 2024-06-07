# XDG Directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# ZSH
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export ZSH="$ZDOTDIR/oh-my-zsh"
export ZSH_CUSTOM="$ZDOTDIR/custom"
export ZSH_COMPDUMP="$XDG_CACHE_HOME/.zcompdump-$HOST"
export HISTFILE="$XDG_STATE_HOME/zsh/.zhistory"
export HISTSIZE=10000
export SAVEHIST=10000

# Dotnet
export DOTNET_CLI_TELEMETRY_OPTOUT=1

#export QT_QPA_PLATFORMTHEME=qt6ct
#export QT_QPA_PLATFORM=wayland
export GTK_USE_PORTAL=1

# AMDGPU
export RADV_TEX_ANISO=16
