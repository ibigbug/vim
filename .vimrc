"global
set encoding=utf-8
set fileencodings=ucs-bcm,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set directory=$HOME/.hide
let g:netrw_home=$HOME . '/.hide'
let g:netrw_list_hide='.*\.swp$,.*\.pyc,.*~'

"vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

"my bundle
Bundle 'vim-flake8'
Bundle 'vim-jshint2'
Bundle 'nerdtree'
Bundle 'vim-python-indent'
Bundle 'vim-sftp'
"end my bundle

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
set ic

set modeline

set background=dark

set incsearch


"filetype
"python
autocmd FileType python setlocal et sta sw=4 sts=4 textwidth=79
autocmd FileType python setlocal foldmethod=indent
autocmd FileType python syn keyword pythonBuiltin self
let python_highlight_all = 1
let g:pyflakes_use_quikefix = 0

"javascript
autocmd FileType javascript setlocal smartindent ts=2 sw=2
autocmd FileType javascript noremap <buffer> <F8> :JSHint<CR>
au BufNewFile,BufRead *.json setf javascript

"global remap
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
map <F3> za
map <Tab> :NERDTreeToggle<CR>
vmap y :w !pbcopy<CR><CR>
nmap yy :.w !pbcopy<CR><CR>
nmap p :r !pbpaste<CR><CR>

set t_Co=256
colorscheme pablo
hi Pmenu guifg=#c0c0c0 guibg=#294d4a ctermfg=gray ctermbg=black


" sftp
source .vim_sftp_conf
