if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  export XDG_CURRENT_DESKTOP=sway
  sway
fi

# OH-MY-ZSH
CASE_SENSITIVE="true"
zstyle ':omz:update' mode reminder
HIST_STAMPS="dd/mm/yyyy"
plugins=(git zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

# Aliases
alias die='poweroff'
alias c='clear'
alias ip='ip -color=auto'
alias ls='ls --color=auto'
alias l='ls -l'
alias ll='ls -lahF'
alias gitacp='git add --all && git commit -m "$(curl -s https://whatthecommit.com/index.txt)" && git push'

eval "$(oh-my-posh init zsh --config $ZDOTDIR/ohmyposh/zen.toml)"
