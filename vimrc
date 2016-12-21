set nocompatible
filetype off

" set the runtime path to include vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-pathogen'
Plugin 'tpope/vim-sensible'
Plugin 'leshill/vim-json'
Plugin 'slim-template/vim-slim'
Plugin 'plasticboy/vim-markdown'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Townk/vim-autoclose'
Plugin 'airblade/vim-gitgutter'
Plugin 'Yggdroot/indentLine'
Plugin 'ervandew/supertab'

" all plugins must be added before this line
call vundle#end()
filetype plugin indent on

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
set colorcolumn=80

" use one space after punctuation
set nojoinspaces

" open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" whitespace character settings
let g:indentLine_char='•'
let g:indentLine_leadingSpaceChar='•'
let g:indentLine_leadingSpaceEnabled=1
let g:indentLine_color_term=237

inoremap jk <ESC>

" disable arrow keys altogether
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

syntax enable
set background=dark
colorscheme monokai

" activate plugins via pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
