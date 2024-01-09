# export CC="clang"
# export CXX="clang++"

typeset -U path PATH
# To add ~/.local/bin to $PATH 
# path=(~/.local/bin $path)
path=(~/.cargo/bin $path)
export PATH

export DOTFILES="$HOME/dotfiles/"
export ZDOTDIR="$DOTFILES/zsh/"

export EDITOR="nvim"
export VISUAL="nvim"

export HISTFILE="$ZDOTDIR/.zhistory"
export HISTSIZE=10000
export SAVEHIST=10000
