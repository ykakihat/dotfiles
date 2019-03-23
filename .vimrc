" 一旦ファイルタイプを関連を無効化
filetype off
" シンタックスハイライト
syntax on
" カラースキーマ
colorscheme molokai
" タブ、空白のカラー
highlight SpecialKey guifg=#333333
" matchit.vim導入
source $VIMRUNTIME/macros/matchit.vim

" エンコード
set encoding=utf-8
" バックスペースで各種消せるようにする
set backspace=indent,eol,start
" 行番号を表示
set number
" コマンド、検索パターンを10000個まで履歴に残す
set history=10000
" コマンドを画面最下部に表示する
set showcmd
" 新しい行を作ったときに高度な自動インデントを行う。
set smartindent
" ファイル内のタブ <Tab> が対応する空白の数
set ts=4
" 自動インデントの各段階に使われる空白の数
set sw=4
" tabstopを変えずに空白を含めることにより、見た目のtabstopを変える
set sts=0
" TABキーを押した際にタブ文字の代わりにスペースを入れる
set expandtab
" ターミナルのタイトルをセットする
set title
" ステータスライン
set statusline=%<%f\ %m%r%h%w%{'['.(&fileencoding!=''?&fileencoding:&encoding).']['.&ff.']'}%=%l,%c%V%BP
" ファイル名補完
set wildmenu

inoremap jj <Esc>
