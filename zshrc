export PATH=/usr/local/bin:$PATH
export EDITOR=vim

# oh-my-zsh
alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"
export UPDATE_ZSH_DAYS=7
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="kolo-improved"
COMPLETION_WAITING_DOTS="true"
plugins=(git)

# force tmux to always use 256 colors
alias tmux="tmux -2"

# export secret vars from .vars
export `cat ~/.vars`

# chruby auto-switch
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

# load this last
source $ZSH/oh-my-zsh.sh
