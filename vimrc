" Setup indentation
set expandtab
set shiftwidth=2
set softtabstop=2
filetype off
set pastetoggle=<F2>
set laststatus=2

" Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

Bundle 'kien/ctrlp.vim'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-rails'
Bundle 'kchmck/vim-coffee-script'
Bundle 'vim-scripts/taglist.vim'
Bundle 'altercation/vim-colors-solarized'

" Snippets
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"

" Now that all plugins have loaded, turn onindentation and syntax highlighting.
filetype plugin indent on
syntax enable
set background=dark
colorscheme solarized

" Airline theme
let g:airline_theme='solarized'

" ctrlp plugin options

" Search by filename, not by path.
let g:ctrlp_by_filename = 1

" Ignore temporary/binary/useless files.
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/build/*

" Open multiple files using horizontally split panes.
let g:ctrlp_open_new_file = 'h'
let g:ctrlp_open_multiple_files = 'h'

"##############################################################################                                                                         
" Easier split navigation                                                                                                                               
"##############################################################################                                                                         

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>                                                                                                                       
nmap <silent> <c-j> :wincmd j<CR>                                                                                                                       
nmap <silent> <c-h> :wincmd h<CR>                                                                                                                       
nmap <silent> <c-l> :wincmd l<CR>

" Fast buffer switching
nmap <Tab> :b#<CR>

" Allow modified buffer switching
set hidden
