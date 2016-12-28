set nocompatible
filetype off

" set the runtime path to include vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-pathogen'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'vim-ruby/vim-ruby'
Plugin 'leshill/vim-json'
Plugin 'slim-template/vim-slim'
Plugin 'plasticboy/vim-markdown'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Townk/vim-autoclose'
Plugin 'airblade/vim-gitgutter'
Plugin 'Yggdroot/indentLine'
Plugin 'ervandew/supertab'
Plugin 'tomasr/molokai'
Plugin 'mileszs/ack.vim'

" the rest of these are for snippets
Plugin 'tomtom/tlib_vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

" all plugins must be added before this line
call vundle#end()

" activate plugins via pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

syntax enable
filetype plugin indent on

set title
set ruler
set nowrap
set expandtab
set tabstop=2
set shiftwidth=2
set shiftround
set softtabstop=2
set backspace=2
set directory=~/.tmp " don't clutter my dirs up with swp and tmp files
set shiftround " when at 3 spaces and I hit >>, go to 4, not 5
set nofoldenable
set clipboard=unnamedplus
set encoding=utf-8

" enable this to see relative line on current
" set number
set relativenumber

" use one space after punctuation
set nojoinspaces

" open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" whitespace character settings
let g:indentLine_char='•'
let g:indentLine_leadingSpaceChar='•'
let g:indentLine_leadingSpaceEnabled=1
let g:indentLine_color_term=237

inoremap jk <ESC>

" disable arrow keys for navigation
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>

" set leader and custom commands
let mapleader=","
nnoremap <leader>e :Explore<CR>
nnoremap <leader>f ^
nnoremap <leader>l $
nnoremap <leader>o o<ESC>
nnoremap <leader>O O<ESC>
nnoremap <leader>s :update<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>Q :q!<CR>

" colors and theme
colorscheme molokai
set background=dark
set guifont=Hack:h12
set guifont=Monospace:h12 " use this as a fallback
set t_Co=256
let g:rehash256 = 1 " attempt to set gui to match original molokai
hi Visual term=reverse cterm=reverse

" range indicators at 80 and 120
highlight ColorColumn ctermbg=232
let &colorcolumn="80,".join(range(120,999),",")
