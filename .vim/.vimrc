source ~/.vim/plugins.vim
source ~/.vim/nerdtree.vim
source ~/.vim/coc.vim
source ~/.vim/emmet.vim
source ~/.vim/mappings.vim

syntax on
set encoding=utf-8
set termguicolors
let mapleader=","

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

set expandtab
set list
set listchars=space:·
colorscheme GruberDarker

hi WhiteSpace ctermfg=235 guifg=#282828
match WhiteSpace /\s/

hi LineNr ctermfg=darkgrey guifg=#52494e

set cursorline
hi CursorLine ctermbg=NONE guibg=NONE
hi CursorLineNr cterm=NONE gui=NONE
