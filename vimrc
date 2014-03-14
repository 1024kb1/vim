set nocompatible
filetype off
set nowrap
set backspace=indent,eol,start
set nobackup
set history=50
set ruler
set showcmd	
set incsearch
map Q gq
inoremap <C-U> <C-G>u<C-U>
set mouse=v
set hlsearch
set nocp
nnoremap <C-P> :bprevious<CR>
nnoremap <C-N> :bnext<CR>
"set foldmethod=indent
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
set nu
set ts=4
set shiftwidth=4
set expandtab
set ic 
set softtabstop=4
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul
set ruler
set autoread
set autowrite
set cursorline
set noswapfile
set ignorecase
set enc=utf-8

map tn :tabnext<cr>
map tp :tabprevious<cr>
map td :tabnew <cr>
map tf :tabfirst<cr>
map tl :tablast<cr>
map te :tabedit
map bc :bclose<cr>
map bn :bnext<cr>
map bp :bprevious<cr>
map bd :bnew <cr>
map bf :bfirst<cr>
map bl :blast<cr>
map be :bedit
map bc :bclose<cr>

map <F5> :!ctags -R --fields=+aimS --languages=php<CR>  

:nmap <silent> <C-h> :wincmd h<CR>
:nmap <silent> <C-j> :wincmd j<CR>
:nmap <silent> <C-k> :wincmd k<CR>
:nmap <silent> <C-l> :wincmd l<CR>

map <F3> :NERDTreeToggle<CR>
imap <F3> <ESC>:NERDTreeToggle<CR>
"map <F4> :TlistToggle<CR>
"imap <F4> <ESC>:TlistToggle<CR>

autocmd filetype javascript set dictionary=~/.vim/dict/javascript.dict
autocmd filetype css set dictionary=~/.vim/dict/css.dict
let g:pydiction_location='~/.vim/tools/pydiction/complete-dict'

set clipboard=unnamed

:cnoremap <silent> <C-O> source ~/.session_ <CR>
:cnoremap <silent> <C-E> mksession! ~/.session_<CR>

vmap <C-c> "+y<CR>
"au VimEnter *  NERDTree
"
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

Bundle 'vim-scripts/DoxygenToolkit.vim'
Bundle 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger="<c-j>"

Bundle 'honza/vim-snippets'

Bundle 'vim-scripts/mark'
Bundle 'vim-scripts/AuthorInfo'
Bundle 'vim-scripts/OmniCppComplete'
Bundle 'vim-scripts/jsbeautify'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tomtom/checksyntax_vim'
Bundle 'nathanaelkane/vim-indent-guides'

Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/Conque-Shell'

Bundle 'vim-scripts/calendar.vim'
Bundle 'vim-scripts/fencview.vim'
Bundle 'vim-scripts/auto_mkdir'
Bundle 'pangloss/vim-javascript'
Bundle 'shawncplus/phpcomplete.vim'

Bundle 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-f>'
let g:ctrlp_cmd = 'CtrlP'

Bundle 'vim-scripts/AutoClose'
Bundle 'mattn/zencoding-vim'

Bundle 'jlanzarotta/bufexplorer'
nmap bb :BufExplorer<CR>

Bundle 'Valloric/YouCompleteMe'
""let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
""let g:ycm_add_preview_to_completeopt=1
""let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
"let g:ycm_path_to_python_interpreter = '/usr/bin/python'
""let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_collect_identifiers_from_tags_files = 1
"在字符串中也补齐"
let g:ycm_complete_in_strings = 1 
"收集字符串"
let g:ycm_collect_identifiers_from_comments_and_strings = 1

autocmd! bufwritepost _vimrc source %
nnoremap <tab> %
vnoremap <tab> %
filetype plugin indent on
syntax on

""au VimEnter *  NERDTree
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
imap <silent> <c-s> <ESC><CR>
""imap <silent> <c-j> <Enter> <CR>

let g:molokai_original = 1
let g:rehash256 = 1
set background=dark

"PHP 设置"
au BufNewFile,BufRead *.tpl,*.dwt,*.lbi set filetype=php
autocmd filetype php set omnifunc=phpcomplete#CompletePHP
autocmd filetype php set dictionary=~/.vim/dict/php_funclist.dict
autocmd filetype php set filetype=php.html.javascript
set complete-=k complete+=k
