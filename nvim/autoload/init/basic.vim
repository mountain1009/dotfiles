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

"新しい行を作った時に高度な自動インデントを行う
set smarttab

"デフォルトが8文字なため4文字に修正
set tabstop=4
set shiftwidth=4
set noexpandtab

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
