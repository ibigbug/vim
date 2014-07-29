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
Bundle 'nerdtree'
Bundle 'vim-flake8'
Bundle 'vim-jshint2'
Bundle 'vim-python-indent'
Bundle 'vim-emmet'
Bundle 'vim-javascript'
Bundle 'vim-clojure-static'
Bundle 'vim-html5'
Bundle 'vim-velocity'
Bundle 'vim-jade'
Bundle 'vim-stylus'
Bundle 'vim-editorconfig'
Bundle 'vim-jinja'
Bundle 'vim-cocoa'
Bundle 'vim-mail'
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
set smarttab
set expandtab
set ic

set modeline " enable infile config

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
"let jshint2_save = 1

"html
au BufRead,BufNewFile *.html,*.shtml set ft=jinja smartindent ts=2 sw=2
autocmd FileType jinja setlocal foldmethod=indent
let g:html_indent_incags = "html, body, head, tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

"global remap
let mapleader=','
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
map <S-f> za
map <Tab> :NERDTreeToggle<CR>
"nnoremap <leader>up <ESC>:call SftpUpload()<CR>

set t_Co=256
colorscheme molokai
hi Pmenu guifg=#c0c0c0 guibg=#294d4a ctermfg=gray ctermbg=black
