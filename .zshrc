export PATH=$PATH:$HOME/flutter/bin
export PATH=$PATH:$HOME/.pub-cache/bin
export CHROME_EXECUTABLE=/usr/bin/google-chrome-stable

export GOPATH=$HOME/go
export GOROOT=$HOME/.go
export PATH=$GOPATH/bin:$PATH

export PATH=$PATH:$HOME/Android/Sdk
export PATH=$PATH:$HOME/Android/Sdk/platform-tools
export PATH=$PATH:`echo $HOME/.local/share/JetBrains/Toolbox/apps/AndroidStudio/*/*/jre/bin`

export PATH=$PATH:$HOME/.local/bin

# zsh settings
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# zsh plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# nvm
export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true
. ~/.zsh/zsh-nvm/zsh-nvm.plugin.zsh

# pip zsh completion
function _pip_completion {
  local words cword
  read -Ac words
  read -cn cword
  reply=( $( COMP_WORDS="$words[*]" \
             COMP_CWORD=$(( cword-1 )) \
             PIP_AUTO_COMPLETE=1 $words[1] 2>/dev/null ))
}
compctl -K _pip_completion pip
# pip zsh completion end

alias c=clear
alias cls=clear
alias pow=poweroff
alias py=python
alias docker=podman
alias nano=micro

eval "$(starship init zsh)"
