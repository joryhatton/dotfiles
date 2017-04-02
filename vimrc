set nocompatible
filetype off

" set the runtime path to include vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" configuration and utility
Plugin 'VundleVim/Vundle.vim'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-surround'
Plugin 'junegunn/vim-easy-align'
Plugin 'vim-syntastic/syntastic'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'jiangmiao/auto-pairs'
Plugin 'yggdroot/indentLine'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-dispatch'

" language specific
Plugin 'tpope/vim-endwise'
Plugin 'rstacruz/sparkup'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'elzr/vim-json'
Plugin 'tpope/vim-markdown'
Plugin 'slim-template/vim-slim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'elixir-lang/vim-elixir'

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

" nerdtree settings
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeAutoDeleteBuffer=1
let g:NERDTreeDirArrowExpandable='+'
let g:NERDTreeDirArrowCollapsible='-'

" nerdcommenter settings
let g:NERDSpaceDelims=1
let g:NERDTrimTrailingWhitespace=1

" indentline (whitespace) settings
let g:indentLine_color_term=236

" ctrl-p settings
let g:ctrlp_use_caching = 0
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = '\v[\/]\.(log|logs|tmp|vendor)$'
let g:ctrlp_by_filename = 1

" use silver searcher with ack and ctrl-p
if executable('ag')
  let g:ackprg='ag --vimgrep'
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" set recognized markdown languages
let g:markdown_fenced_languages=['ruby', 'html', 'javascript', 'scss']

" remove quotes from auto-pairs for sanity
if !exists('g:AutoPairs')
  let g:AutoPairs={'(':')', '[':']', '{':'}'}
end

" easy-align plugs
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" remap esc to jk
inoremap jk <ESC>

" disable arrow keys altogether
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
nnoremap <leader>gr :A<CR>
nnoremap <leader>rt :Dispatch rspec %<CR>
nnoremap <leader>rr :so ~/.vimrc<CR>

" colors and theme
set background=dark
set t_Co=256
colorscheme PaperColor

" must be set after colorscheme
hi Normal guibg=NONE ctermbg=NONE

" range indicators
hi ColorColumn ctermbg=236
let &colorcolumn="80"

" highlight current line
set cursorline
hi CursorLine ctermbg=236
hi Cursor ctermbg=15 ctermfg=232
