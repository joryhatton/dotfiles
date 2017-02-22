set nocompatible
filetype off

" set the runtime path to include vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'vim-syntastic/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'townk/vim-autoclose'
Plugin 'yggdroot/indentLine'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-ruby/vim-ruby'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'leshill/vim-json'
Plugin 'slim-template/vim-slim'
Plugin 'plasticboy/vim-markdown'
Plugin 'tyrannicaltoucan/vim-quantum'

" all plugins must be added before this line
call vundle#end()

syntax enable
filetype plugin indent on

" explicitly enable slim syntax
autocmd BufNewFile,BufRead *.slim set ft=slim

set showcmd
set showmatch
set nowrap
set autoread
set et
set smarttab
set noincsearch
set ignorecase smartcase
set relativenumber
set number
set ttyfast
set title
set ruler
set nowrap
set expandtab
set splitbelow
set splitright
set history=500
set backupdir=~/.tmp
set directory=~/.tmp " don't clutter my dirs up with swp and tmp files
set wmh=0
set sw=2
set regexpengine=1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set backspace=2
set encoding=utf-8
set autoindent " always set autoindenting on
set lazyredraw " don't redraw screen when running macros
set shiftround " when at 3 spaces and I hit >>, go to 4, not 5
set nojoinspaces " one space after punctuation
set laststatus=2 " always show status line
set nofoldenable

" remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" show hidden files in tree
let NERDTreeShowHidden=1

" visible whitespace settings
let g:indentLine_char='•'
let g:indentLine_leadingSpaceChar='•'
let g:indentLine_leadingSpaceEnabled=1
let g:indentLine_color_term=237

" use silver searcher with ack if available
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

inoremap jk <ESC>

" just disable arrow keys
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
nnoremap <leader>E :NERDTreeToggle<CR>
nnoremap <leader>F :NERDTreeFind<CR>
nnoremap <leader>x :Explore<CR>
nnoremap <leader>a ^
nnoremap <leader>e $
nnoremap <leader>la o<ESC>
nnoremap <leader>lb O<ESC>
nnoremap <leader>s :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>Q :qa!<CR>
nnoremap <leader>f :Ack
nnoremap <leader>t :A<CR>
nnoremap <leader>I :e#1<CR>
nnoremap <leader>O :e#<CR>

" colors and theme
set background=dark
set guifont=Hack:h12
set guifont=Monospace:h12 " fallback if hack isn't installed
set t_Co=256 " make sure terminal is using 256 colors

" colorscheme specific
colorscheme quantum
let g:airline_theme='quantum'
let g:quantum_black = 1

" must be set after colorscheme
hi Normal guibg=NONE ctermbg=NONE

" airline symbols
let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep= ''
let g:airline_left_sep = ''

" range indicators
hi ColorColumn ctermbg=236
let &colorcolumn="80"

" highlight current line
set cursorline
hi CursorLine ctermbg=236
hi Cursor ctermbg=15 ctermfg=232
