" Plug
call plug#begin('~/.vim/plugged')
Plug 'zhou13/vim-easyescape'
call plug#end()

" pathogen
execute pathogen#infect()

filetype plugin indent on
syntax enable

" center scrolling
set number relativenumber
set scrolloff=999

set mouse=a

set shiftwidth=2
set tabstop=2
set smarttab
set smartindent
set autoindent

" set paste

syntax enable
set background=dark
colorscheme solarized

set hlsearch
set clipboard=unnamed

" easy escape
let g:easyescape_chars = { "j": 1, "k": 1 }
let g:easyescape_timeout = 100
:inoremap jk <Esc>
:inoremap kj <Esc>
:cnoremap jk <Esc>
:cnoremap kj <Esc>
:inoremap jj <Esc>
:cnoremap jj <Esc>

" wild mode
set wildmenu
set wildmode=longest:full,full

