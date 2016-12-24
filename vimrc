set nocompatible
filetype off

" set the runtime path to include vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-pathogen'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-repeat'
Plugin 'vim-ruby/vim-ruby'
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
Plugin 'tomasr/molokai'
Plugin 'mileszs/ack.vim'

" the rest of these are for snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

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
set directory=~/.tmp " Don't clutter my dirs up with swp and tmp files"
set shiftround " When at 3 spaces and I hit >>, go to 4, not 5.
set nofoldenable " Say no to code folding... "
" set colorcolumn=80

" use one space after punctuation
set nojoinspaces

" open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" remove trailing whitespace
autocmd BufWritePre * %s/\s\+$//e

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

set t_Co=256
syntax enable
set background=dark
colorscheme molokai
highlight Normal guibg=NONE ctermbg=NONE
highlight NonText guibg=NONE ctermbg=NONE
highlight SignColumn guibg=NONE ctermbg=NONE

" activate plugins via pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
