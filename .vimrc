" Plug
call plug#begin('~/.vim/plugged')
Plug 'zhou13/vim-easyescape'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
call plug#end()

" airline theme
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts = 1
let g:airline_section_a = 'SLEEP WELL'


" pathogen
execute pathogen#infect()

filetype plugin indent on
syntax enable

autocmd FileType python setl shiftwidth=2 softtabstop=2 et

" number
set numberwidth=5
set number relativenumber

" center scrolling
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

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1
   
" qq for no write
:cnoremap qq q!

" Display extra whitespace
" set list listchars=tab:»·,trail:·,nbsp:·


" status line
set laststatus=2

" function! GitBranch()
" 	return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
" endfunction
" 
" function! StatuslineGit()
" 	let l:branchname = GitBranch()
" 	return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
" endfunction
" 
" set statusline=
" set statusline+=%#PmenuSel#
" set statusline+=%{StatuslineGit()}
" set statusline+=%#LineNr#
" set statusline+=\ %f
" set statusline+=%m\
" set statusline+=%=
" set statusline+=%#CursorColumn#
" set statusline+=\ %y
" set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
" set statusline+=\[%{&fileformat}\]
" set statusline+=\ %p%%
" set statusline+=\ %l:%c
" set statusline+=\ 
