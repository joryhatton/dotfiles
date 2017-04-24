export PATH=/usr/local/bin:$PATH
export EDITOR=vim

# oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
export UPDATE_ZSH_DAYS=7
plugins=(git zsh-syntax-highlighting)
ZSH_THEME="geometry/geometry"
GEOMETRY_SYMBOL_PROMPT="∘"
GEOMETRY_SYMBOL_PROMPT2="∶"
GEOMETRY_SYMBOL_EXIT_VALUE="∵"
GEOMETRY_COLOR_PROMPT="green"
GEOMETRY_COLOR_DIR="blue"
GEOMETRY_COLOR_EXIT_VALUE="red"
GEOMETRY_PROMPT_PREFIX=""
GEOMETRY_PROMPT_SUFFIX="⤑  "

alias reload=". ~/.zshrc && echo 'zsh config reloaded'"
alias rr="bundle exec rake db:drop db:create && bundle exec rake db:migrate db:test:prepare && bundle exec rake db:seed"
alias tmux="tmux -2" # force tmux to use 256 colors

# export secret vars from .vars
export `cat ~/.vars`

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# load this last
source $ZSH/oh-my-zsh.sh
