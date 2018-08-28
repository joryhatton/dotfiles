set nocompatible

call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-rails'
Plug 'avdgaag/vim-phoenix'
Plug 'junegunn/vim-easy-align'
Plug 'terryma/vim-multiple-cursors'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'
Plug 'ervandew/supertab'
Plug 'w0rp/ale'
Plug 'sheerun/vim-polyglot'
Plug 'rakr/vim-one'
Plug 'itchyny/lightline.vim'
Plug 'jremmen/vim-ripgrep'
call plug#end()

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
set updatetime=250
set statusline+=%{fugitive#statusline()}
set wildignore+=*/.git/*,tmp/*/**,*.swp,log/*/**,vendor/*/**

" remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" nerdcommenter
let g:NERDSpaceDelims=1
let g:NERDTrimTrailingWhitespace=1

" indentline
let g:indentLine_color_term=238
let g:indentLine_char = '·'

" remove quotes from auto-pairs for sanity
if !exists('g:AutoPairs')
  let g:AutoPairs={'(':')', '[':']', '{':'}'}
end

" easy-align plugs
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

let mapleader=","
inoremap jk <ESC>
noremap <C-f> :Rg<space>
nnoremap <leader>vv :vsplit<CR>
nnoremap <leader>hh :split<CR>
nnoremap <leader>a ^
nnoremap <leader>e $
nnoremap <leader>la o<ESC>
nnoremap <leader>lb O<ESC>
nnoremap <leader>s :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>qq :qa!<CR>
nnoremap <leader>gl :Glog<CR>
nnoremap <leader>go :Gbrowse<CR>
nnoremap <leader>rr :so ~/.vimrc<CR>
nnoremap <leader>pi :PlugInstall<CR>
nnoremap <leader>pu :PlugUpdate<CR>
nnoremap <leader>pc :PlugClean<CR>

" colors and theme
set t_Co=256
set background=dark
colorscheme one
let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

" highlights and indicators
set cursorline
let &colorcolumn="80"
hi ColorColumn ctermbg=232
hi Normal ctermbg=NONE
hi CursorLine cterm=NONE ctermbg=232
hi Cursor ctermbg=15 ctermfg=232
hi Visual ctermbg=15 ctermfg=232
