" Enable syntax highlighting.
syntax on

" Setup indentation
set expandtab
set shiftwidth=2
set softtabstop=2
filetype indent on
set pastetoggle=<F2>

" Load ctrlp plugin.
set runtimepath^=~/.vim/ctrlp.vim

" Load git plugin.
set runtimepath^=~/.vim/git-vim

" ctrlp plugin options

" Ignore temporary/binary/useless files.
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/build/*

" Open multiple files using horizontally split panes.
let g:ctrlp_open_new_file = 'h'
let g:ctrlp_open_multiple_files = 'h'
