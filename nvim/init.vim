if $compatible
  set nocompatible " Be iMproved
endif

set rtp+=~/.config/nvim/
runtime! autoload/init/*.vim
runtime! autoload/dein/*.vim
let s:dein_dir = expand('~/.vim/dein')

let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

let s:toml_dir = expand('~/.config/nvim/autoload/dein/')

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#load_toml(s:toml_dir . 'dein.toml', {'lazy': 0})
  call dein#load_toml(s:toml_dir . 'lazy.toml', {'lazy': 1})

  call dein#end()
endif

if dein#check_install()
  call dein#install()
endif
