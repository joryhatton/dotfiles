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
Plugin 'Yggdroot/indentLine'
Plugin 'ervandew/supertab'
Plugin 'tomasr/molokai'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdtree'

" all plugins must be added before this line
call vundle#end()

" activate plugins via pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

syntax enable
filetype plugin indent on

set history=500
set showcmd
set showmatch
set nowrap
set backupdir=~/.tmp
set directory=~/.tmp " Don't clutter my dirs up with swp and tmp files
set autoread
set wmh=0
set viminfo+=!
set guioptions-=T"
set et
set sw=2
set smarttab
set noincsearch
set ignorecase smartcase
set laststatus=2  " Always show status line.
set relativenumber
set number
set gdefault " assume the /g flag on :s substitutions to replace all matches in a line
set autoindent " always set autoindenting on
set lazyredraw " Don't redraw screen when running macros "
set regexpengine=1
set ttyfast
set title
set ruler
set nowrap
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set backspace=2
set shiftround " when at 3 spaces and I hit >>, go to 4, not 5
set nofoldenable
set encoding=utf-8
set nojoinspaces " one space after punctuation
set splitbelow
set splitright

" remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" whitespace character settings
let g:indentLine_char='•'
let g:indentLine_leadingSpaceChar='•'
let g:indentLine_leadingSpaceEnabled=1
let g:indentLine_color_term=237

" use silver searcher with ack if available
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

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
vnoremap <Up> <Nop>
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>

" set leader and custom commands
let mapleader=","
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <leader>E :Explore<CR>
nnoremap <leader>f ^
nnoremap <leader>l $
nnoremap <leader>o o<ESC>
nnoremap <leader>O O<ESC>
nnoremap <leader>s :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>Q :qa!<CR>
nnoremap <leader>F :Ack
nnoremap <leader>t :A<CR>

" colors and theme
colorscheme molokai
set background=dark
set guifont=Hack:h12
set guifont=Monospace:h12 " use this as a fallback
set t_Co=256 " make sure term is using 256 colors "
let g:rehash256 = 1 " attempt to set gui to match original molokai
hi Normal guibg=NONE ctermbg=NONE

" range indicators
hi ColorColumn ctermbg=238
let &colorcolumn="80"

" highlight current line
set cursorline
hi CursorLine ctermbg=238
hi Cursor ctermbg=15 ctermfg=232
