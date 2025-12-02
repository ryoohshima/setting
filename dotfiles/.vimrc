" 文字コード
set encoding=utf-8
scriptencoding utf-8

" 基本表示
set number                 " 行番号を表示
set ruler                  " 右下に位置情報を表示
set title                  " タイトルを表示
set wrap                   " 長い行を折り返す（コミットメッセージなどで便利）
syntax on                  " 色分けを有効にする

" 挙動・操作
set noswapfile             " スワップファイルを作らない（ゴミが出ないように）
set nobackup               " バックアップファイルを作らない
set hidden                 " 保存してなくてもバッファ移動できるように
set backspace=indent,eol,start " バックスペースキーで削除できるように
set clipboard=unnamed      " OSのクリップボードと共有 (Cmd+C/Vが効く)
set mouse=a                " マウス操作を有効にする

" インデント (Zedに合わせる)
set autoindent             " 改行時にインデントを引き継ぐ
set expandtab              " タブをスペースに変換
set tabstop=2              " タブ幅
set shiftwidth=2           " インデント幅

" 検索
set hlsearch               " 検索結果をハイライト
set ignorecase             " 大文字小文字を無視
set smartcase              " 大文字が含まれる時だけ区別
" Esc連打でハイライト解除
nnoremap <Esc><Esc> :nohlsearch<CR>
