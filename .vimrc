" ******************
" Customize
" ******************
set title " 下部バーにタイトルを表示
set autoindent " 改行時に前の行のインデントを継続する
set smartindent " 改行時に入力された行の末尾に合わせて次の行のインデントを増減
set number " 行番号
set list " 不可視文字を表示
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<,eol:< " 不可視文字の表示をカスタマイズ
set incsearch " 検索文字を入れる度に検索
set hlsearch " 検索結果のハイライト
set nobackup " バックアップを取らない
set nowrap " 行末を折り返さない
set wrapscan " 検索時に行末から行頭へループ
set showmatch " 括弧の対応関係を表示
set whichwrap=h,l,<,> " 行頭行末で次の行に移動
set smartcase " 検索時に全て英小文字で入力した場合のみ区別を無視
set expandtab " tabをspaceに変換
set tabstop=2 " tabの文字幅
set shiftwidth=2 " 自動で挿入されるインデントのスペース幅
set noswapfile " swpファイルを作成しない
set scrolloff=5 " スクロール時に余裕を持たせる
set cursorline " 現在の行をハイライト
hi clear CursorLine " 行番号のみハイライト

" mode: normal + visual
noremap <C-a> $
noremap <C-i> 0

" mode: normal
let mapleader = "\<Space>"
nnoremap <ESC><ESC> :nohlsearch<CR>
nnoremap ; :
nnoremap : ;
