export PATH=/usr/local/bin:$PATH
export EDITOR=vim

# oh-my-zsh
export UPDATE_ZSH_DAYS=7
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gallois"
plugins=(git zsh-syntax-highlighting)
alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"

# force tmux to always use 256 colors
alias tmux="tmux -2"

# export secret vars from .vars
export `cat ~/.vars`

# chruby auto-switch
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

# load this last
source $ZSH/oh-my-zsh.sh
