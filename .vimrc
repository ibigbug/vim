"global
set encoding=utf-8
set fileencodings=ucs-bcm,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set directory=$HOME/.hide
let g:netrw_home=$HOME . '/.hide'
let g:netrw_list_hide='.*\.swp$,.*\.pyc,.*~,*.o,.DS_Store'

"vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

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
Plugin 'tpope/vim-liquid'
Plugin 'vim-coffee-script'
Plugin 'fatih/vim-go'
Plugin 'mxw/vim-jsx'
Plugin 'leafgarland/typescript-vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/syntastic'
"end my Plugin
call vundle#end()
filetype indent plugin on

syntax on
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
au FileType python setlocal et sta sw=4 sts=4 textwidth=120
au FileType python setlocal foldmethod=indent
let python_highlight_all = 1

"golang
"
" use goimports for formatting
let g:go_fmt_command = "goimports"
let g:go_gocode_unimported_packages = 1

" Open go doc in vertical window, horizontal, or tab
au Filetype go nnoremap <leader>v :vsp <CR>:exe "GoDef" <CR>
au Filetype go nnoremap <leader>s :sp <CR>:exe "GoDef"<CR>
au Filetype go nnoremap <leader>t :tab split <CR>:exe "GoDef"<CR>


"javascript
au FileType javascript setlocal smartindent ts=2 sw=2
au FileType javascript set foldmethod=indent
au BufNewFile,BufRead *.json setf javascript
let g:used_javascript_libs = ''
let g:javascript_conceal_function       = "ƒ"
let g:javascript_conceal_null           = "ø"
let g:javascript_conceal_this           = "@"
let g:javascript_conceal_return         = "⇚"
let g:javascript_conceal_undefined      = "¿"
let g:javascript_conceal_NaN            = "ℕ"
let g:javascript_conceal_prototype      = "¶"
let g:javascript_conceal_static         = "•"
let g:javascript_conceal_super          = "Ω"
let g:javascript_conceal_arrow_function = "⇒"

"html
au BufNewFile,BufRead *.html set syntax=htmljinja
au FileType html setlocal foldmethod=indent
let g:html_indent_incags = "html, body, head, tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

"css
au BufRead,BufNewFile *.css setlocal foldmethod=indent ts=2 sw=2
au BufRead,BufNewFile *.css setlocal iskeyword+=-

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'
let g:syntastic_go_checkers = ['errcheck']
let g:syntastic_python_checkers = ['flake8']


highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

"global remap
let mapleader=','
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
nnoremap <F7> :SyntasticCheck<CR>
map <S-f> za
map <Tab> :NERDTreeToggle<CR>
"nnoremap <leader>up <ESC>:call SftpUpload()<CR>

set t_Co=256
colorscheme jellyx
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
