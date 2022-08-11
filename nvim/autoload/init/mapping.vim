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

"設定ファイル読み込み
nnoremap sou :source ~/.config/nvim/init.vim<Enter>
