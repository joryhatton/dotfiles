export PATH=/usr/local/bin:$PATH
export GOPATH=$HOME/work
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
export EDITOR=vim

# oh-my-zsh
export UPDATE_ZSH_DAYS=7
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gallois"
plugins=(git zsh-syntax-highlighting)
alias reload=". ~/.zshrc && echo 'zsh config reloaded'"
alias deploy=". ~/Code/everlywell/utility-scripts/deploy.sh"

# force terminal to always use 256 colors with tmux
alias tmux="tmux -2"

# export secret vars from .vars
export `cat ~/.vars`

# chruby auto-switch rubies
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

# load this last
source $ZSH/oh-my-zsh.sh
