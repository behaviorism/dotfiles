
source ~/.vim/plugins.vim
source ~/.vim/coc.vim
source ~/.vim/emmet.vim
source ~/.vim/mappings.vim

syntax on
let mapleader=","
set encoding=utf-8

" Search
set ignorecase
set smartcase
set incsearch
set nohlsearch

" Clipboard
set clipboard^=unnamed

" Misc
set number relativenumber
set noesckeys

" Visual aspects

set termguicolors
set guioptions-=m
set guioptions-=T
set guioptions-=r
set wrap
let loaded_matchparen = 1

colorscheme GruberDarker

" Colorscheme adjustments
hi LineNr ctermfg=darkgrey guifg=#52494e

set cursorline
hi CursorLine ctermbg=NONE guibg=NONE 
hi CursorLineNr cterm=NONE gui=NONE

" Replace spaces with dim dots
set expandtab
set list
set listchars=space:·

hi WhiteSpace ctermfg=235 guifg=#282828
match WhiteSpace /\s/

" Checks if there is a file open after Vim starts up,
" and if not, open the current working directory in Netrw.
augroup InitNetrw
  autocmd!
  autocmd VimEnter * if expand("%") == "" | edit . | endif
augroup END
