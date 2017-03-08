set nocompatible
filetype off

" set the runtime path to include vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" configuration and utility
Plugin 'VundleVim/Vundle.vim'
Plugin 'tyrannicaltoucan/vim-quantum'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-surround'
Plugin 'junegunn/vim-easy-align'
Plugin 'vim-syntastic/syntastic'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'jiangmiao/auto-pairs'
Plugin 'yggdroot/indentLine'
Plugin 'ervandew/supertab'

" language specific
Plugin 'rstacruz/sparkup'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'elzr/vim-json'
Plugin 'tpope/vim-markdown'
Plugin 'slim-template/vim-slim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'

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

" set markdown langs
let g:markdown_fenced_languages=['ruby', 'html', 'javascript', 'scss']

" remove quotes from auto-pairs due to annoyance
if !exists('g:AutoPairs')
  let g:AutoPairs={'(':')', '[':']', '{':'}'}
end

" tree settings
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeAutoDeleteBuffer=1
let g:NERDTreeDirArrowExpandable='+'
let g:NERDTreeDirArrowCollapsible='-'

" commenter settings
let g:NERDSpaceDelims=1
let g:NERDTrimTrailingWhitespace=1

" visible whitespace settings
let g:indentLine_color_term=236

" use silver searcher with ack if available
if executable('ag')
  let g:ackprg='ag --vimgrep'
endif

" easy-align plugs
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" remap esc to jk
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
nnoremap <leader>vv :vsplit<CR>
nnoremap <leader>hh :split<CR>
nnoremap <leader>a ^
nnoremap <leader>e $
nnoremap <leader>la o<ESC>
nnoremap <leader>lb O<ESC>
nnoremap <leader>s :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>qq :q!<CR>
nnoremap <leader>Q :qa!<CR>
nnoremap <leader>f :Ack
nnoremap <leader>t :A<CR>
nnoremap <leader>rr :so ~/.vimrc<CR>

" colors and theme
set background=dark
set guifont=Hack:h12
set guifont=Monospace:h12 " fallback if hack isn't installed
set t_Co=256 " make sure terminal is using 256 colors

" colorscheme specific
colorscheme quantum
let g:airline_theme='quantum'
let g:quantum_black=1

" must be set after colorscheme
hi Normal guibg=NONE ctermbg=NONE

" airline symbols
let g:airline_right_alt_sep=''
let g:airline_right_sep=''
let g:airline_left_alt_sep=''
let g:airline_left_sep=''

" range indicators
hi ColorColumn ctermbg=236
let &colorcolumn="80"

" highlight current line
set cursorline
hi CursorLine ctermbg=236
hi Cursor ctermbg=15 ctermfg=232
