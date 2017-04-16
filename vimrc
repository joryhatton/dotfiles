set nocompatible
filetype off

" set the runtime path to include vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" configuration and utility
Plugin 'VundleVim/Vundle.vim'
Plugin 'rakr/vim-one'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'tpope/vim-surround'
Plugin 'junegunn/vim-easy-align'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Yggdroot/indentLine'
Plugin 'ervandew/supertab'
Plugin 'sheerun/vim-polyglot'
Plugin 'neomake/neomake'
Plugin 'rstacruz/sparkup'
Plugin 'tpope/vim-rails'
Plugin 'avdgaag/vim-phoenix'

" all plugins must be added before this line
call vundle#end()

syntax enable
filetype plugin indent on

set et
set showcmd
set showmatch
set nowrap
set autoread
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
set nobackup
set noswapfile
set autoindent
set lazyredraw
set shiftround
set nojoinspaces
set nofoldenable
set encoding=utf-8
set history=500
set wmh=0
set sw=2
set regexpengine=1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set backspace=2
set laststatus=2
set timeoutlen=1000
set ttimeoutlen=0

" remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" neomake
autocmd! BufWritePost * Neomake

" nerdtree
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeAutoDeleteBuffer=1
let g:NERDTreeDirArrowExpandable='+'
let g:NERDTreeDirArrowCollapsible='-'

" nerdcommenter
let g:NERDSpaceDelims=1
let g:NERDTrimTrailingWhitespace=1

" indentline
let g:indentLine_color_term=234
let g:indentLine_char = '·'

" ctrl-p
let g:ctrlp_use_caching = 0
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = '\v[\/]\.(log|logs|tmp|vendor)$'

" use silver searcher with ack and ctrl-p
if executable('ag')
  let g:ackprg='ag --vimgrep'
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" remove quotes from auto-pairs for sanity
if !exists('g:AutoPairs')
  let g:AutoPairs={'(':')', '[':']', '{':'}'}
end

" easy-align plugs
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

let mapleader=","
inoremap jk <ESC>
nnoremap <leader>tt :NERDTreeToggle<CR>
nnoremap <leader>ff :NERDTreeFind<CR>
nnoremap <leader>vv :vsplit<CR>
nnoremap <leader>hh :split<CR>
nnoremap <leader>a ^
nnoremap <leader>e $
nnoremap <leader>la o<ESC>
nnoremap <leader>lb O<ESC>
nnoremap <leader>s :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>qq :qa!<CR>
nnoremap <leader>f :Ack
nnoremap <leader>rr :so ~/.vimrc<CR>

" colors and theme
set background=dark
colorscheme one

" must be set after colorscheme
hi Normal guibg=NONE ctermbg=NONE

" range indicators
hi ColorColumn ctermbg=233
let &colorcolumn="80"

" highlight current line
set cursorline
hi CursorLine ctermbg=233
hi Cursor ctermbg=15 ctermfg=233
