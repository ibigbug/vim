"global
set encoding=utf-8
set fileencodings=ucs-bcm,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set directory=$HOME/.hide
let g:netrw_home=$HOME . '/.hide'
let g:netrw_list_hide='.*\.swp$,.*\.pyc,.*~,*.o,.DS_Store'

"vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Plugin 'gmarik/vundle'

"my bundle
Plugin 'terryma/vim-multiple-cursors'
Plugin 'bling/vim-airline'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'groenewege/vim-less'
Plugin 'vim-scripts/genutils'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'wincent/command-t'
Plugin 'nvie/vim-flake8'
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'flazz/vim-colorschemes'
Plugin 'mattn/emmet-vim'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mitsuhiko/vim-jinja'
Plugin 'lepture/vim-velocity'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Raimondi/delimitMate'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'Shutnik/jshint2.vim'
Plugin 'tpope/vim-liquid'
Plugin 'vim-coffee-script'
Plugin 'fatih/vim-go'
Plugin 'mxw/vim-jsx'
Plugin 'leafgarland/typescript-vim'
"end my Plugin

syntax on
filetype indent plugin on
set ruler
set showcmd
set cursorline
set number
set foldmethod=syntax
set foldlevel=99
set ts=2
set sts=2
set sw=2
set ls=2
set autoindent
set smarttab
set expandtab
set ic

set modeline " enable infile config

set background=dark

set incsearch
set hlsearch

"plugin setting
let g:table_mode_corner = "|"
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

"filetype
"python
autocmd FileType python setlocal et sta sw=4 sts=4 textwidth=79
autocmd FileType python setlocal foldmethod=indent
let python_highlight_all = 1
let g:pyflakes_use_quikefix = 0


"javascript
autocmd FileType javascript setlocal smartindent ts=2 sw=2
autocmd FileType javascript noremap <buffer> <F8> :JSHint<CR>
autocmd FileType javascript set foldmethod=indent
au BufNewFile,BufRead *.json setf javascript
let g:used_javascript_libs = ''
"let jshint2_save = 1

"html
au BufNewFile,BufRead *.html set syntax=htmljinja
autocmd FileType html setlocal foldmethod=indent
let g:html_indent_incags = "html, body, head, tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

"css
au BufRead,BufNewFile *.css setlocal foldmethod=indent ts=2 sw=2
au BufRead,BufNewFile *.css setlocal iskeyword+=-

"global remap
let mapleader=','
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
map <S-f> za
map <Tab> :NERDTreeToggle<CR>
"nnoremap <leader>up <ESC>:call SftpUpload()<CR>

set t_Co=256
colorscheme desert
hi Pmenu guifg=#c0c0c0 guibg=#294d4a ctermfg=gray ctermbg=black
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm-extra-conf.py"

" funcs
function WriteCreatingDirs()
    execute ':silent !mkdir -p %:h'
    write
endfunction
command W call WriteCreatingDirs()
