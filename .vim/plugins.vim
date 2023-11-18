call plug#begin()

Plug 'tribela/vim-transparent'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'
Plug 'preservim/nerdtree'
Plug 'rust-lang/rust.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'pangloss/vim-javascript'
Plug 'drsooch/gruber-darker-vim'

call plug#end()

let g:coc_global_extensions = ['coc-tsserver', 'coc-explorer', 'coc-emmet', 'coc-json', 'coc-html', 'coc-css']
