"global
set encoding=utf-8
set fileencodings=ucs-bcm,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set directory=$HOME/.hide
let g:netrw_home=$HOME . '/.hide'
let g:netrw_list_hide='.*\.swp$,.*\.pyc,.*~,*.o,.DS_Store'

"vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $HOME . '.vimrc'
endif

call plug#begin('~/.vim/bundle')

"my bundle
Plug 'tell-k/vim-autopep8'
Plug 'tpope/vim-fugitive'
Plug 'bling/vim-airline'
Plug 'dhruvasagar/vim-table-mode'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'scrooloose/nerdtree'
Plug 'groenewege/vim-less'
Plug 'vim-scripts/genutils'
Plug 'hynek/vim-python-pep8-indent'
Plug 'flazz/vim-colorschemes'
Plug 'mattn/emmet-vim'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'mitsuhiko/vim-jinja'
Plug 'lepture/vim-velocity'
Plug 'scrooloose/nerdcommenter'
Plug 'Raimondi/delimitMate'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'tpope/vim-liquid'
Plug 'kchmck/vim-coffee-script'
Plug 'fatih/vim-go'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/syntastic'
"end my Plugin
call plug#end()

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
au FileType python au BufWritePre <buffer> call Autopep8()
let g:autopep8_disable_show_diff=1
let python_highlight_all = 1
let g:autopep8_max_line_length=79

"golang
"
" use goimports for formatting
let g:go_fmt_command = "goimports"
let g:go_gocode_unimported_packages = 1

"javascript
au FileType javascript setlocal smartindent ts=2 sw=2
au FileType javascript set foldmethod=indent
au BufNewFile,BufRead *.json setf javascript
let g:used_javascript_libs = ''

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
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'
let g:syntastic_go_checkers = ['errcheck']
let g:syntastic_python_checkers = ['flake8']


highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

autocmd filetype crontab setlocal nobackup nowritebackup

"global remap
let mapleader=','
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
nnoremap <F7> :SyntasticCheck<CR>
map <S-f> za
map <Tab> :NERDTreeToggle<CR>
"nnoremap <leader>up <ESC>:call SftpUpload()<CR>

set t_Co=256
set termguicolors 
set guicursor=
colorscheme jellyx
hi Pmenu guifg=#c0c0c0 guibg=#294d4a ctermfg=gray ctermbg=black
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm-extra-conf.py"
let g:ycm_disable_for_files_larger_than_kb = 1000
