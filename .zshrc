export ZSH="/home/tushar/.oh-my-zsh"
plugins=(zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh


export PATH=$PATH:$HOME/flutter/bin
export PATH=$PATH:$HOME/.pub-cache/bin
export CHROME_EXECUTABLE=/usr/bin/google-chrome-stable

export PATH=$PATH:$HOME/go/bin

export PATH=$PATH:$HOME/Android/Sdk
export PATH=$PATH:$HOME/Android/Sdk/platform-tools

export PATH=$PATH:$HOME/.local/bin

######################################
##### stuff that gets auto-added #####
######################################

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


######################################
######## stupid stuff I added ########
######################################

alias c=clear
alias cls=clear
alias pow=poweroff
alias py=python
alias ls=exa
alias docker=podman

eval "$(starship init zsh)"
