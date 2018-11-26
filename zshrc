# env
export PATH=/usr/local/bin:$PATH
export EDITOR=vim
export TERM=xterm-256color

# oh_my_zsh
export ZSH=$HOME/.oh-my-zsh
export UPDATE_ZSH_DAYS=1
plugins=(git zsh-syntax-highlighting)
ZSH_THEME="kolo"
source $ZSH/oh-my-zsh.sh

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# aliases
alias be="bundle exec"
alias reload=". ~/.zshrc && echo 'zsh config reloaded'"
alias rr="be rake db:drop db:create && be rake db:migrate db:test:prepare && be rake db:seed"
alias gentags="ctags -R --exclude=.git --exclude=log *"
