"colorscheme
set background=dark
colorscheme hybrid
"隐藏背景
"hi Normal ctermfg=252 ctermbg=none

"indentline
let g:indentline_enabled = 1
let g:indentline_leadingspaceenable=1
let g:indentline_char='┆'
let g:indentline_filetypeexclude = [ 'startify' ]
let g:indentLine_setConceal = 0

"ag  快捷键
nmap <leader>a :ag
let g:ag_prg="ag --vimgrep --smart-case --ignore tags"
let g:ag_highlight=1
let g:ag_mapping_message=0
" 高亮光标所在位置的单词，并使用 ag 来搜索
nmap <leader>aw :ag <c-r>=expand("<cword>")<cr><cr>

"Settings for TagBar
map <localleader>g :TagbarToggle<CR>
"autocmd BufReadPost *.cpp,*.c,*.h,*.go,*.cc,*.py call tagbar#autoopen()
"设置tagbar的窗口宽度
let g:tagbar_width=25
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds' : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin' : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }


"set CtrlP
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files.
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  " Ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

let g:ctrlp_map = '<c-p>'
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$\|.rvm$'
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.jpg,*.png,*.gif,*.jpeg,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

"""""""""图标设置
let g:WebDevIconsOS = 'Darwin'
"打开下面设置会在nerdtree中添加文件夹图标
"let g:WebDevIconsUnicodeDecorateFolderNodes = 1
"let g:DevIconsEnableFoldersOpenClose = 1
"let g:DevIconsEnableFolderExtensionPatternMatching = 1

" For startify
let g:startify_custom_header = [
\ '',
\ '   ______ _                                         _                             _        ',
\ '  / _____) |                                    _  | |                           | |       ',
\ ' ( (____ | |__   ___  _ _ _    ____  _____    _| |_| |__  _____     ____ ___   __| |_____  ',
\ '  \____ \|  _ \ / _ \| | | |  |    \| ___ |  (_   _)  _ \| ___ |   / ___) _ \ / _  | ___ | ',
\ '  _____) ) | | | |_| | | | |  | | | | ____|    | |_| | | | ____|  ( (__| |_| ( (_| | ____| ',
\ ' (______/|_| |_|\___/ \___/   |_|_|_|_____)     \__)_| |_|_____)   \____)___/ \____|_____) ',
\ '',
\]
let g:startify_custom_footer = [
            \ '+-------------------------------------------+',
            \ '|            Talk is cheap                  |',
            \ '|            Show me the code               |',
            \ '|                                           |',
            \ '|            Copyright Pendragon            |',
            \ '+-------------------------------------------+',
            \]

"vim-gitgutter
let g:gitgutter_sign_added = '▎'
let g:gitgutter_sign_modified = '▎'
let g:gitgutter_sign_removed = '▏'
let g:gitgutter_sign_removed_first_line = '▔'
let g:gitgutter_sign_modified_removed = '▋'
" 自定义gitgutter图标颜色
highlight! GitGutterAdd ctermfg=22 guifg=#006000 ctermbg=NONE guibg=NONE
highlight! GitGutterChange ctermfg=58 guifg=#5F6000 ctermbg=NONE guibg=NONE
highlight! GitGutterDelete ctermfg=52 guifg=#600000 ctermbg=NONE guibg=NONE
highlight! GitGutterChangeDelete ctermfg=52 guifg=#600000 ctermbg=NONE guibg=NONE

