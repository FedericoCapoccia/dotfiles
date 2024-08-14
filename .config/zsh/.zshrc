if [ -n "$SSH_CLIENT" ]; then
  export TERM=xterm
fi

# OH-MY-ZSH
CASE_SENSITIVE="true"
zstyle ':omz:update' mode reminder
HIST_STAMPS="dd/mm/yyyy"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

HISTFILE=$XDG_DATA_HOME/zsh/history
mkdir -p $XDG_DATA_HOME/zsh

# Aliases
alias die='poweroff'
alias c='clear'
alias ip='ip -color=auto'
alias ls='ls --color=auto'
alias l='ls -l'
alias ll='ls -lahF'
alias gitacp='git add --all && git commit -m "$(curl -s https://whatthecommit.com/index.txt)" && git push'
alias inv='nvim $(fzf -m --preview="bat --color=always {}")'

eval "$(oh-my-posh init zsh --config $XDG_CONFIG_HOME/ohmyposh/zen.toml)"
source /usr/share/fzf/shell/key-bindings.zsh

# Yazi
function yy() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
  yazi "$@" --cwd-file="$tmp"
  if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
    cd -- "$cwd"
  fi
  rm -f -- "$tmp"
}

