# Base directory
export DOTFILES_BASH="$(dirname "$(readlink $HOME/.bashrc)")"
export DOTFILES="$(dirname "${DOTFILES_BASH}")"

# Git
source "$DOTFILES/git/gitrc.sh"
env | grep GIT_

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

alias mkdir='mkdir -pv'
alias ll='ls -la'
