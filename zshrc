export PATH=/usr/local/bin:$PATH
export EDITOR=vim
export TERM=xterm-256color

# oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
export UPDATE_ZSH_DAYS=1
plugins=(git zsh-syntax-highlighting)
ZSH_THEME="kolo"

alias be="bundle exec"
alias reload=". ~/.zshrc && echo 'zsh config reloaded'"
alias rr="bundle exec rake db:drop db:create && bundle exec rake db:migrate db:test:prepare && bundle exec rake db:seed"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# load this last
source $ZSH/oh-my-zsh.sh
