"-------------------------------------------------------------------------------
" コマンド       ノーマルモード      挿入モード  コマンドラインモード    ビジュアルモード
" map/noremap           @            -              -                  @
" nmap/nnoremap         @            -              -                  -
" imap/inoremap         -            @              -                  -
" cmap/cnoremap         -            -              @                  -
" vmap/vnoremap         -            -              -                  @
" map!/noremap!         -            @              @                  -
"-------------------------------------------------------------------------------


" spaceを割り当てる
let g:mapleader = "\<Space>"
nnoremap <Leader> <Nop>
xnoremap <Leader> <Nop>
nmap     m        [dev]
xmap     m        [dev]


" 自動補完
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>

" fzf shortcut(定義場所にjump)
nnoremap gr :Ag<CR>

" ##### ウィンドウ操作系 #####
" 画面をspace+vで縦に分割する
nnoremap <silent> <Leader>v :vs<CR>
" 画面をspace+sで横に分割する
nnoremap <silent> <Leader>s :sp<CR>
" 画面を閉じる
nnoremap <silent> <Leader>w :q!<CR>

" hjklの方向ににカーソルを移動させる
nnoremap <silent> <Leader>h <C-w>h
nnoremap <silent> <Leader>j <C-w>j
nnoremap <silent> <Leader>k <C-w>k
nnoremap <silent> <Leader>l <C-w>l