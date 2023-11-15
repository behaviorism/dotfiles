source ~/.vim/plugins.vim
source ~/.vim/coc.vim
source ~/.vim/nerdtree.vim
source ~/.vim/emmet.vim
source ~/.vim/mappings.vim

syntax on
filetype plugin indent on

set encoding=utf-8
set nobackup
set nowritebackup

set wrap
set noesckeys

set clipboard^=unnamed,unnamedplus

" Search
set incsearch
set nohls
set ignorecase
set smartcase

" Indent
set tabstop=2
set shiftwidth=2
set list
set listchars=tab:·\ 

" Theme
set guioptions-=m
set guioptions-=T
set guioptions-=r
set termguicolors

" Cursor line
set number relativenumber
colorscheme GruberDarker
hi CursorLine ctermbg=NONE guibg=NONE term=NONE cterm=NONE gui=NONE
hi CursorLineNr term=NONE cterm=NONE gui=NONE
set cursorline

" Plugins
let g:loaded_matchparen=1
let g:coc_global_extensions = ["coc-prettier", "coc-tsserver", "coc-css", "coc-json", "coc-emmet"]
