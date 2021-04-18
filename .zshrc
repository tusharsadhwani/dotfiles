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
alias grep='grep --color=auto --exclude-dir={.git,.vscode,node_modules,build,dist,public,.cache,.mypy_cache,__pycache__,.tox}'

eval "$(starship init zsh)"
