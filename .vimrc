"encoding
"====================================
set encoding=utf-8 

" display
"====================================
"起動時のウィンドウサイズ
"set lines=55
"set columns=77

"シンタックスの設定
syntax on

" 編集中のファイル名を表示
set title

"行番号の表示
set number

"コマンドをステータス行に表示
set showcmd

"マウスを有効にする
if has('mouse')
  set mouse=a
endif

"検索結果をハイライト
set hlsearch

"挿入時の tab の間隔
set softtabstop=4

"tab の表示間隔
set tabstop=4 "必要に応じて変える

"クリップボードにコピー
vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>

" tab をスペースに変換しない
set expandtab

"行末とタブの表示
"set list
"set listchars=tab:>/

"plugin
"==========================
"NeoBundle
if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim/
	call neobundle#rc(expand('~/.vim/bundle/'))
endif

NeoBundle 'Shougo/vimproc'
NeoBundle 'git://github.com/Shougo/unite.vim.git'
NeoBundle 'git://github.com/mattn/zencoding-vim.git'
NeoBundle 'git://github.com/nanotech/jellybeans.vim.git'
NeoBundle 'Shougo/vimshell'
NeoBundle 'git://github.com/hallettj/jslint.vim.git'
NeoBundle 'git://github.com/kien/ctrlp.vim.git'

"カラースキーム
colorscheme jellybeans

"command
"===========================
"PHPのエラーチェック
autocmd filetype php :set makeprg=php\ -l\ %
autocmd filetype php :set errorformat=%m\ in\ %f\ on\ line\%l

