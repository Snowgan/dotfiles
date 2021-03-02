# Base directory
export DOTFILES_BASH="$(dirname "$(readlink $HOME/.bashrc)")"
export DOTFILES="$(dirname "${DOTFILES_BASH}")"

# JAVA
export JAVA_13_HOME=$(/usr/libexec/java_home -v13)
alias java13='export JAVA_HOME=$JAVA_13_HOME'

# default to Java 13
java13

# Mac
if [ -f "$DOTFILES/macos/bash_macos.sh" ]; then
  source "$DOTFILES/macos/bash_macos.sh"
fi

# SSH
source "$DOTFILES/ssh/auto-launch-ssh-agent.sh"
ssh-add -l -E md5

# Git
source "$DOTFILES/git/gitrc.sh"
env | grep GIT_

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias mkdir='mkdir -pv'
alias ll='ls -la'
alias c='clear'
alias ..='cd ../'
alias .2='cd ../../'
alias .3='cd ../../../'
alias doc='cd ~/Documents'
alias ws='cd ~/Work'
alias wsp='cd ~/Work/02_project'

mcd () { mkdir -p "$1" && cd "$1"; } 
