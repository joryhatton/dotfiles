# env
export PATH=/usr/local/bin:$PATH
export VISUAL=vim
export EDITOR="$VISUAL"
export TERM=xterm

# oh_my_zsh
export ZSH=$HOME/.oh-my-zsh
export UPDATE_ZSH_DAYS=7
plugins=(git z last-working-dir)
ZSH_THEME="bureau" # kolo bureau
ZSH_DISABLE_COMPFIX=true
source $ZSH/oh-my-zsh.sh

# aliases
alias sup="sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt clean"
alias bup="brew update && brew upgrade"
alias reload="source ~/.zshrc && . ~/.zshrc && echo 'zsh config reloaded'"
alias grpo="git fetch && git remote prune origin"
alias grbs="git fetch && git remote prune origin && git rebase origin/master"
alias gcleanmerged="git branch --merged | grep -v 'master' | xargs git branch -D"
alias gcleanall="git branch | grep -v '^*' | xargs git branch -D"
alias ex="explorer.exe ."
alias secpass="openssl rand -hex 20"

# node / nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
source ~/.nvm/nvm.sh
eval $(/opt/homebrew/bin/brew shellenv)
