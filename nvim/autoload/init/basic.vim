"エンコード系
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8

"ファイルフォーマット
set fileformat=unix

"ビープ音を消す
set belloff=all

"行番号表示
set number

"swapfileを生成しない
set noswapfile

"対応括弧をハイライト表示する
set showmatch

"改行時に前の行のインデントを計測
set autoindent

"改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent

"新しい行を作った時に高度な自動インデントを行う
set smarttab

"デフォルトが8文字なため4文字に修正
set tabstop=4
set shiftwidth=4
set noexpandtab

"編集中のファイル名を表示
set title

"タブ、空白、改行の可視化
set list
"シンタックスハイライト
syntax on

"全角スペースをハイライト表示
function! ZenkakuSpace()
  highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta
endfunction
if has('syntax')
  augroup ZenkakuSpace
  autocmd!
  autocmd ColorScheme       * call ZenkakuSpace()
  autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
  augroup END
  call ZenkakuSpace()
endif


if has("autocmd")
  "ファイルタイプの検索を有効にする
  filetype plugin on
  "そのファイルタイプにあわせたインデントを利用する
  filetype indent on
  " これらのftではインデントを無効に
  "autocmd FileType php filetype indent off

  autocmd FileType markdown        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType apache          setlocal sw=4 sts=4 ts=4 et
  autocmd FileType aspvbs          setlocal sw=4 sts=4 ts=4 et
  autocmd FileType c               setlocal sw=4 sts=4 ts=4 et
  autocmd FileType cpp             setlocal sw=4 sts=4 ts=4 et
  autocmd FileType cs              setlocal sw=4 sts=4 ts=4 et
  autocmd FileType css             setlocal sw=2 sts=2 ts=2 et
  autocmd FileType diff            setlocal sw=4 sts=4 ts=4 et
  autocmd FileType go              setlocal sw=2 sts=2 ts=2 et
  autocmd FileType eruby           setlocal sw=4 sts=4 ts=4 et
  autocmd FileType html            setlocal sw=2 sts=2 ts=2 et
  autocmd FileType java            setlocal sw=4 sts=4 ts=4 et
  autocmd FileType javascript      setlocal sw=2 sts=2 ts=2 et
  autocmd FileType json            setlocal sw=2 sts=2 ts=2 et
  autocmd FileType typescript      setlocal sw=2 sts=2 ts=2 et
  autocmd FileType typescriptreact setlocal sw=2 sts=2 ts=2 et
  autocmd FileType vue             setlocal sw=2 sts=2 ts=2 et
  autocmd FileType perl            setlocal sw=4 sts=4 ts=4 et
  autocmd FileType php             setlocal sw=2 sts=2 ts=2 et
  autocmd FileType python          setlocal sw=4 sts=4 ts=4 et
  autocmd FileType ruby            setlocal sw=2 sts=2 ts=2 et
  autocmd FileType haml            setlocal sw=2 sts=2 ts=2 et
  autocmd FileType sh              setlocal sw=4 sts=4 ts=4 et
  autocmd FileType sql             setlocal sw=4 sts=4 ts=4 et
  autocmd FileType vb              setlocal sw=4 sts=4 ts=4 et
  autocmd FileType vim             setlocal sw=2 sts=2 ts=2 et
  autocmd FileType wsh             setlocal sw=4 sts=4 ts=4 et
  autocmd FileType xhtml           setlocal sw=4 sts=4 ts=4 et
  autocmd FileType xml             setlocal sw=4 sts=4 ts=4 et
  autocmd FileType yaml            setlocal sw=2 sts=2 ts=2 et
  autocmd FileType zsh             setlocal sw=4 sts=4 ts=4 et
  autocmd FileType scala           setlocal sw=2 sts=2 ts=2 et
  autocmd FileType snippet         setlocal sw=4 sts=4 ts=4 et
endif

