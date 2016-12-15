set nocompatible

set encoding=utf-8
set title
set number
set ruler
set nowrap
set expandtab
set tabstop=2
set shiftwidth=2
set shiftround
set softtabstop=2
set backspace=2
set nobackup
set nowritebackup
set noswapfile

" use one space after punctuation
set nojoinspaces

" open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

inoremap jk <ESC>

syntax enable
filetype plugin indent on

colorscheme monokai

" activate plugins
set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/vim-rails
set runtimepath^=~/.vim/bundle/vim-bundler
set runtimepath^=~/.vim/bundle/vim-multiple-cursors
set runtimepath^=~/.vim/bundle/vim-sensible
set runtimepath^=~/.vim/bundle/vim-fugitive
