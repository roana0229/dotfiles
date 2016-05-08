" ******************
" NeoBundle
" ******************
" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
  if &compatible
    set nocompatible
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neocomplete'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'vim-scripts/taglist.vim'
NeoBundle 'ConradIrwin/vim-bracketed-paste'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'othree/html5.vim'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
NeoBundle 'tpope/vim-endwise'
NeoBundle 'thinca/vim-ref'
NeoBundle 'yuku-t/vim-ref-ri'


NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }
" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck


" ******************
" Customize
" ******************
syntax enable
set background=dark
colorscheme solarized

set backspace=indent,eol,start " insertモード時にbackspaceを有効にする
set laststatus=2 " ステータスラインを下部に表示
set title " 下部バーにタイトルを表示
set autoindent " 改行時に前の行のインデントを継続する
set smartindent " 改行時に入力された行の末尾に合わせて次の行のインデントを増減
set number " 行番号
set ruler " 下部バーにカーソル位置を表示
set list " 不可視文字を表示
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<,eol:< " 不可視文字の表示をカスタマイズ
set incsearch " 検索文字を入れる度に検索
set hlsearch " 検索結果のハイライト
set nobackup " バックアップを取らない
set nowrap " 行末を折り返さない
set wrapscan " 検索時に行末から行頭へループ
set showmatch " 括弧の対応関係を表示
set whichwrap=h,l,<,> " 行頭行末で次の行に移動
set ignorecase " 検索時の英大文字小文字の区別を無視
set smartcase " 検索時に全て英小文字で入力した場合のみ区別を無視
set history=2000 " コマンドラインの履歴保存回数
set expandtab " tabをspaceに変換
set tabstop=2 " tabの文字幅
set shiftwidth=2 " 自動で挿入されるインデントのスペース幅
set noswapfile " swpファイルを作成しない
set backup " バックアップファイルを作成
set backupdir=/tmp " バックアップファイルのパス
set scrolloff=5 " スクロール時に余裕を持たせる
set colorcolumn=80 " カラムライン
set cursorline " 現在の行をハイライト
hi clear CursorLine " 行番号のみハイライト
autocmd BufWritePre * :%s/\s\+$//ge " 保存時に行末の空白を削除

" mode: normal + visual
noremap <C-a> $
noremap <C-i> 0

" mode: normal
let mapleader = "\<Space>"
nnoremap <Leader>i gg=<S-g><C-o><C-o>zz
nnoremap <ESC><ESC> :nohlsearch<CR>
nnoremap ; :
nnoremap : ;

" undo
if has('persistent_undo')
  set undodir=~/.vim/undo
  set undofile
endif

" NERDTree
noremap <C-t> :NERDTreeToggle<CR>

" open browser
let g:netrw_nogx = 1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-open)
vmap gx <Plug>(openbrowser-open)

" markdown preview
au BufRead,BufNewFile *.md set filetype=markdown


" ******************
" EasyMotion
" ******************
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-s)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-s2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1
let g:EasyMotion_keys='asdzxcqwefghvbnrtyjklmuiopASDZXCQWEFGHVBNRTYKLMIOP'


" ******************
" neocomplete
" ******************
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'


" ******************
" NeoSnippet
" ******************
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
