call plug#begin()

" Plug 'tribela/vim-transparent'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'
Plug 'rust-lang/rust.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'drsooch/gruber-darker-vim'

call plug#end()

let g:coc_global_extensions = ['coc-pyright', 'coc-tsserver', 'coc-eslint', 'coc-explorer', 'coc-emmet', 'coc-json', 'coc-html', 'coc-css', 'coc-prettier']
