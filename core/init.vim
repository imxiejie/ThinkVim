" Initialize:
""Use 'Space' instead of '\'.
" Use <Leader> in global plugin.
let g:mapleader = "\<Space>"
" Use <LocalLeader> in filetype plugin.
let g:maplocalleader = ';'


" Skip the check of neovim module
let g:python3_host_skip_check = 1
let g:python_host_skip_check = 1
" Path to python interpreter for neovim

let s:sysname = substitute(system('uname'), '\n', '', '')
if s:sysname =='Darwin'
    let g:python3_host_prog  = '/usr/local/bin/python3'
    let g:python_host_prog  = '/usr/local/bin/python'
elseif s:sysname == 'Linux'
    let g:python3_host_prog  = '/usr/bin/python3'
    let g:python_host_prog  = '/usr/bin/python'
endif



let $CONFIG = expand('~/.config')
let $TMP = expand('~/.tmp/')

if !isdirectory(expand($CONFIG))
  call mkdir(expand($CONFIG), 'p')
endif

if !isdirectory(expand($TMP))
	call mkdir(expand('$TMP/undo'), 'p')
endif

" Load dein.
let s:dein_dir = finddir('dein.vim', '.;')
if s:dein_dir != '' || &runtimepath !~ '/dein.vim'
  if s:dein_dir == '' && &runtimepath !~ '/dein.vim'
    let s:dein_dir = expand('$CONFIG/nvim')
          \. '/repos/github.com/Shougo/dein.vim'
    if !isdirectory(s:dein_dir)
      echomsg 'Download dein plugin management wait a moment'
      execute '!git clone https://github.com/Shougo/dein.vim' s:dein_dir
    endif
  endif
  execute 'set runtimepath^=' . substitute(
        \ fnamemodify(s:dein_dir, ':p') , '/$', '', '')
endif

" Disable packpath
set packpath=


"---------------------------------------------------------------------------
" Disable default plugins

" Disable menu.vim
if has('gui_running')
   set guioptions=Mc
endi


let g:loaded_2html_plugin      = 1
let g:loaded_logiPat           = 1
let g:loaded_getscriptPlugin   = 1
let g:loaded_gzip              = 1
let g:loaded_man               = 1
let g:loaded_matchit           = 1
let g:loaded_matchparen        = 1
let g:loaded_netrwFileHandlers = 1
let g:loaded_netrwPlugin       = 1
let g:loaded_netrwSettings     = 1
let g:loaded_rrhelper          = 1
let g:loaded_shada_plugin      = 1
let g:loaded_spellfile_plugin  = 1
let g:loaded_tarPlugin         = 1
let g:loaded_tutor_mode_plugin = 1
let g:loaded_vimballPlugin     = 1
let g:loaded_zipPlugin         = 1
