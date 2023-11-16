source ~/.vim/plugins.vim
source ~/.vim/nerdtree.vim
source ~/.vim/coc.vim
source ~/.vim/emmet.vim
source ~/.vim/mappings.vim

syntax on
set encoding=utf-8

set guioptions-=m
set guioptions-=T
set guioptions-=r
set number relativenumber
let loaded_matchparen = 1

set wrap

set ignorecase
set smartcase
set incsearch
set nohlsearch

set clipboard^=unnamed

set noesckeys

set list
set listchars=tab:·\ ,

colorscheme GruberDarker

hi LineNr ctermfg=darkgrey guifg=darkgrey

set cursorline
hi CursorLine ctermbg=NONE ctermfg=NONE
hi CursorLineNr cterm=NONE
