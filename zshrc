# env
export PATH=/usr/local/bin:$PATH
export EDITOR=vim

# oh_my_zsh
export ZSH=$HOME/.oh-my-zsh
export UPDATE_ZSH_DAYS=1
plugins=(git)
ZSH_THEME="kolo"
source $ZSH/oh-my-zsh.sh

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# aliases
alias be="bundle exec"
alias bup="brew update && brew upgrade && brew cleanup"
alias sup="sudo apt update && sudo apt upgrade && sudo apt autoremove && sudo apt clean"
alias reload=". ~/.zshrc && echo 'zsh config reloaded'"
alias rr="be rake db:drop db:create && be rake db:migrate db:test:prepare && be rake db:seed"
alias grpo="git fetch && git remote prune origin"
alias grbs="git fetch && git remote prune origin && git rebase origin/master"
