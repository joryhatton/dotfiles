export PATH=/usr/local/bin:$PATH
export GOPATH=$HOME/work
export EDITOR=vim

# oh-my-zsh
export UPDATE_ZSH_DAYS=7
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gallois"
plugins=(git zsh-syntax-highlighting)

# force terminal to always use 256 colors with tmux
alias tmux="tmux -2"
alias reload=". ~/.zshrc && echo 'zsh config reloaded'"

# export secret vars from .vars
export `cat ~/.vars`

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# load this last
source $ZSH/oh-my-zsh.sh
