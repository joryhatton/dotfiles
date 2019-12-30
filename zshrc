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

### aliases

# node / nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# ruby
alias be="bundle exec"
alias rr="be rake db:drop db:create && be rake db:migrate db:test:prepare && be rake db:seed"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# system
alias sup="sudo apt update && sudo apt upgrade && sudo apt autoremove && sudo apt clean"
alias reload="source ~/.zshrc && . ~/.zshrc && echo 'zsh config reloaded'"
alias dbup="sudo service postgresql restart && sudo service redis-server restart"
alias grpo="git fetch && git remote prune origin"
alias grbs="git fetch && git remote prune origin && git rebase origin/master"
alias gbclean="git branch --merged | grep -v 'master' | xargs git branch -D"
alias tmux='tmux -2'
alias txn="tmux new -s dev"
alias txa="tmux attach -t dev"
alias txk="tmux kill-server"
alias ex="explorer.exe ."
alias kk="clear"
alias dc="sudo docker-compose"
