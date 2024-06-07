if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  export XDG_CURRENT_DESKTOP=sway
  sway
fi

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# OH-MY-ZSH
CASE_SENSITIVE="true"
zstyle ':omz:update' mode reminder
HIST_STAMPS="dd/mm/yyyy"
plugins=(git zsh-autosuggestions)
ZSH_THEME="powerlevel10k/powerlevel10k"
source $ZSH/oh-my-zsh.sh

# Aliases
alias die='poweroff'
alias c='clear'
alias ip='ip -color=auto'
alias ls='ls --color=auto'
alias l='ls -l'
alias ll='ls -lahF'
alias gitacp='git add --all && git commit -m '.' && git push'

[[ ! -f ~/dotfiles/zsh/.p10k.zsh ]] || source ~/dotfiles/zsh/.p10k.zsh
