set nocompatible

" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
Plug 'rakr/vim-one'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'junegunn/vim-easy-align'
Plug 'terryma/vim-multiple-cursors'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'
Plug 'ervandew/supertab'
Plug 'sheerun/vim-polyglot'
Plug 'neomake/neomake'
Plug 'rstacruz/sparkup'
Plug 'tpope/vim-rails'
Plug 'avdgaag/vim-phoenix'
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
set statusline+=%{fugitive#statusline()}
set wildignore+=*/.git/*,tmp/*/**,*.swp,log/*/**,vendor/*/**

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

" use ripgrep with fzf
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --glob "!tmp/*" --glob "!vendor/*" --glob "!log/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

" remove quotes from auto-pairs for sanity
if !exists('g:AutoPairs')
  let g:AutoPairs={'(':')', '[':']', '{':'}'}
end

" easy-align plugs
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

noremap <C-p> :Files<CR>
noremap <C-f> :Find<space>
inoremap jk <ESC>

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
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gl :Glog<CR>
nnoremap <leader>go :Gbrowse<CR>
nnoremap <leader>rr :so ~/.vimrc<CR>
nnoremap <leader>pi :PlugInstall<CR>
nnoremap <leader>pu :PlugUpdate<CR>
nnoremap <leader>pc :PlugClean<CR>

" colors and theme
set background=dark
colorscheme one
let g:airline_theme='base16'
let g:airline#extensions#tabline#enabled=1

" must be set after colorscheme
hi Normal guibg=NONE ctermbg=NONE

" range indicators
hi ColorColumn ctermbg=233
let &colorcolumn="80"

" highlight current line
set cursorline
hi CursorLine ctermbg=233
hi Cursor ctermbg=15 ctermfg=233
