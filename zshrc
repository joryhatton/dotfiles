# env
export PATH=/usr/local/bin:$PATH
export VISUAL=vim
export EDITOR="$VISUAL"
export TERM=xterm

# oh_my_zsh
export ZSH=$HOME/.oh-my-zsh
export UPDATE_ZSH_DAYS=7
plugins=(git z last-working-dir)
ZSH_THEME="kolo"
source $ZSH/oh-my-zsh.sh

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# aliases
alias be="bundle exec"
alias bup="brew update && brew upgrade && brew cleanup"
alias sup="sudo apt update && sudo apt upgrade && sudo apt autoremove && sudo apt clean"
alias reload="source ~/.zshrc && . ~/.zshrc && echo 'zsh config reloaded'"
alias dbup="sudo service postgresql restart && sudo service redis-server restart"
alias rr="be rake db:drop db:create && be rake db:migrate db:test:prepare && be rake db:seed"
alias grpo="git fetch && git remote prune origin"
alias grbs="git fetch && git remote prune origin && git rebase origin/master"
alias gbclean="git branch --merged | grep -v 'master' | xargs git branch -D"
alias tmux='tmux -2'
alias txn="tmux new -s dev"
alias txa="tmux attach -t dev"
alias txk="tmux kill-server"
alias ex="explorer.exe ."
alias kk="clear"
eval "$(cat ~/.zshrc.local)"

# always startup at home
if true; then
  cd ~
fi
