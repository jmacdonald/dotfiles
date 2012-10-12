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

" Search by filename, not by path.
let g:ctrlp_by_filename = 1

" Open multiple files using horizontally split panes.
let g:ctrlp_open_new_file = 'h'
let g:ctrlp_open_multiple_files = 'h'
