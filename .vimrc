syntax on
filetype indent plugin on
set ruler
set showcmd
set cursorline
set number
set foldmethod=syntax
set foldlevel=99
set ts=4
set sts=4
set sw=4
set autoindent
set smartindent
set smarttab
set expandtab

set modeline

set background=dark

"filetype
"python
autocmd FileType python setlocal set et sta sw=4 sts=4
autocmd FileType python setlocal foldmethod=indent

nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
map <F3> za
