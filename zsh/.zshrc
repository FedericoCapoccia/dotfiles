fastfetch

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Options
setopt autocd
setopt HIST_SAVE_NO_DUPS

fpath=(${ASDF_DIR}/completions $fpath)
fpath=($ZDOTDIR/plugins/zsh-completions/src $fpath)
autoload -U compinit; compinit

zstyle ':completion:*' menu select
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

source $ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Aliases
#alias c='clear && fastfetch'
alias c='clear && fastfetch'
alias ip='ip -color=auto'
alias ls='ls --color=auto'
alias l='ls -l'
alias ll='ls -lahF'
alias lls='ls -lahFtr'
alias la='ls -A'
alias lc='ls -CF'
alias gitsub='git submodule update --init --recursive'
alias gitacp='git add --all && git commit -m '.' && git push'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias update\-ca\-certificates='update-ca-trust'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f $ZDOTDIR/.p10k.zsh ]] || source $ZDOTDIR/.p10k.zsh
source $ZDOTDIR/powerlevel10k/powerlevel10k.zsh-theme

# zsh parameter completion for the dotnet CLI

_dotnet_zsh_complete()
{
  local completions=("$(dotnet complete "$words")")

  # If the completion list is empty, just continue with filename selection
  if [ -z "$completions" ]
  then
    _arguments '*::arguments: _normal'
    return
  fi

  # This is not a variable assignment, don't remove spaces!
  _values = "${(ps:\n:)completions}"
}

compdef _dotnet_zsh_complete dotnet
