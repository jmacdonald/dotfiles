" Set up default indentation
set expandtab
set shiftwidth=2
set softtabstop=2

" Set up Go indentation
autocmd FileType go setlocal noexpandtab shiftwidth=4 tabstop=4 softtabstop&

filetype off
filetype plugin indent off
set pastetoggle=<F2>
set laststatus=2

" Clipboard integration
set clipboard=unnamed

" Backspace fix
set backspace=indent,eol,start

" Open splits to the right and bottom
set splitbelow
set splitright

" Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

Bundle 'kien/ctrlp.vim'
Bundle 'bling/vim-airline'
Bundle 'vim-scripts/taglist.vim'
Bundle 'altercation/vim-colors-solarized'

" Languages/Frameworks
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'kchmck/vim-coffee-script'
Bundle 'ingydotnet/yaml-vim'
Bundle 'elixir-lang/vim-elixir'
Bundle 'jnwhiteh/vim-golang'

" Snippets
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"

" Now that all plugins have loaded, turn on indentation and syntax highlighting.
filetype plugin indent on
syntax enable
set background=dark
colorscheme solarized

" Airline theme
let g:airline_theme='solarized'
let g:airline_powerline_fonts = 1

" ctrlp plugin options

" Search by filename, not by path.
let g:ctrlp_by_filename = 1

" Ignore temporary/binary/useless files.
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/build/*

" Open multiple files using horizontally split panes.
let g:ctrlp_open_new_file = 'h'
let g:ctrlp_open_multiple_files = 'h'

" Search relative to the current directory.
let g:ctrlp_working_path_mode = 0

"##############################################################################                                                                         
" Easier split navigation                                                                                                                               
"##############################################################################                                                                         

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>                                                                                                                       
nmap <silent> <c-j> :wincmd j<CR>                                                                                                                       
nmap <silent> <c-h> :wincmd h<CR>                                                                                                                       
nmap <silent> <c-l> :wincmd l<CR>

" Easy ctrlp splits
nmap <silent> <c-y> :vs<CR> <c-p>
nmap <silent> <c-x> :sp<CR> <c-p>
nmap <silent> <c-a> :vs<CR> :A<CR>

" Fast buffer switching
nmap <Tab> :b#<CR>

" Allow modified buffer switching
set hidden
