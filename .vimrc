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
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'vim-scripts/taglist.vim'
NeoBundle 'ConradIrwin/vim-bracketed-paste'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'moll/vim-node'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'scrooloose/syntastic'


" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" 
NeoBundle 'scrooloose/nerdtree'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck


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
" neocomplcache
" ******************
" Disable AutoComplPop.
let g:acp_enableAtStartup = 1
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  "return neocomplcache#smart_close_popup() . "\<CR>"
  " For no inserting <CR> key.
  return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" markdown preview
au BufRead,BufNewFile *.md set filetype=markdown

" ******************
" Customize
" ******************

let mapleader = "\<Space>"
let g:solarized_termcolors=256

" undo
if has('persistent_undo')
  set undodir=~/.vim/undo
  set undofile
endif

" open browser
let g:netrw_nogx = 1

" js syntax check
let g:syntastic_check_on_open=0 "ファイルを開いたときはチェックしない
let g:syntastic_check_on_save=1 "保存時にはチェック
let g:syntastic_check_on_wq=0 " wqではチェックしない
let g:syntastic_auto_loc_list=0 "エラーがあったら自動でロケーションリストを開く
let g:syntastic_loc_list_height=6 "エラー表示ウィンドウの高さ
set statusline+=%#warningmsg# "エラーメッセージの書式
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_javascript_checkers = ['eslint'] "ESLintを使う
let g:syntastic_mode_map = {
      \ 'mode': 'active',
      \ 'active_filetypes': ['javascript'],
      \ 'passive_filetypes': []
      \ }

syntax on
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

" mode: normal + visual
noremap <C-a> $
noremap <C-i> 0
noremap gx <Plug>(openbrowser-smart-search)
noremap <C-t> :NERDTreeToggle<CR>

" mode: normal
nnoremap <Leader>i gg=<S-g><C-o><C-o>zz
nnoremap <ESC><ESC> :nohlsearch<CR>
nnoremap ; :
nnoremap : ;
