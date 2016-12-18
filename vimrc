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

filetype plugin indent on

syntax enable
set background=dark
colorscheme monokai

" activate plugins via pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" add essential plugins under ~/.vim/bundle
" ctrlp
" supertab
" vim-fugitive
" vim-multiple-cursors
" vim-rails
" vim-surround
" indentLine
" vim-autoclose
" vim-gitgutter
" vim-pathogen
" vim-sensible
