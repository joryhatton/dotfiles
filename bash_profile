# env
export PATH=/usr/local/bin:$PATH
export EDITOR=vim
export CLICOLOR=1

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

## aliases
alias be="bundle exec"
alias rr="be rake db:drop db:create && be rake db:migrate db:test:prepare && be rake db:seed"
alias tags="ctags -R --exclude=.git --exclude=log *"

# git
alias gst="git status"
alias gb="git branch"
alias gba="git branch -a"
alias gaa="git add --all"
alias gca="git commit -v -a"
alias gco="git checkout"
alias grpo="git remote prune origin"
alias grb="git rebase"
alias gf="git fetch"
alias gl="git pull"
alias gp="git push"
