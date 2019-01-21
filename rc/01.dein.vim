"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif




" Required:
set runtimepath+=/Users/pendragon/.config/nvim/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/pendragon/.cache/dein')
  call dein#begin('/Users/pendragon/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/pendragon/.config/nvim/repos/github.com/Shougo/dein.vim')

  call dein#load_toml('~/.config/nvim/dein/plugins.toml', {'lazy': 0}) 
  call dein#load_toml('~/.config/nvim/dein/plugins-lazy.toml', {'lazy': 1})

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

