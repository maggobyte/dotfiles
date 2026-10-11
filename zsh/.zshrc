eval "$(starship init zsh)"
alias vi='nvim'
alias vim='nvim'
alias cat='bat'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export TELEPORT_PROXY=teleport.intra.iomag.no
export TELEPORT_LOGIN=svcadmin01
export PATH="$HOME/.local/bin:$PATH"

export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/ssh-agent.socket"
