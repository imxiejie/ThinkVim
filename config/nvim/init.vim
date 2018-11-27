
set nobackup            " 设置不备份
set noswapfile          " 禁止生成临时文件
set autoread            " 文件在vim之外修改过，自动重新读入
set autowrite           " 设置自动保存
set confirm             " 在处理未保存或只读文件的时候，弹出确认
set splitbelow
set autochdir
set cursorline          "高亮显示光标所在行
syntax on


" Configuration section of vundle
filetype off  " required!

call plug#begin('~/.local/share/nvim/plugged')

" My Bundles here:
Plug 'ryanoasis/vim-devicons'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'mattn/emmet-vim'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'scrooloose/nerdcommenter'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'majutsushi/tagbar'
Plug 'kien/ctrlp.vim' 
Plug 'vim-scripts/xml.vim', { 'for': 'xml' }
Plug 'jiangmiao/auto-pairs'
"Plug 'flazz/vim-colorschemes'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Lokaltog/vim-easymotion'
Plug 'SirVer/ultisnips'
Plug 'Shougo/denite.nvim'
Plug 'mileszs/ack.vim'

Plug 'othree/html5.vim',{'for': ['html', 'javascript.jsx','vue']}
Plug 'pangloss/vim-javascript',{'for': ['javascript', 'javascript.jsx']}
Plug 'othree/yajs.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'mxw/vim-jsx',{'for': ['javascript', 'javascript.jsx']}
Plug 'posva/vim-vue',{ 'for':  'vue'}
Plug 'hail2u/vim-css3-syntax',{ 'for': 'css' }
Plug 'ap/vim-css-color',{ 'for': 'css' }
Plug 'sbdchd/neoformat',{'for': ['javascript', 'javascript.jsx']}
Plug 'epilande/vim-react-snippets',{'for': ['javascript', 'javascript.jsx']}
Plug 'epilande/vim-es2015-snippets',{'for': ['javascript', 'javascript.jsx']}



Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ 'for':'vue',
    \ }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', { 'do': 'make','for':'go'}
Plug 'zchee/deoplete-jedi'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern','for': ['javascript', 'javascript.jsx'] }
Plug 'ternjs/tern_for_vim', { 'do': 'npm install','for': ['javascript', 'javascript.jsx'] }


Plug 'neomake/neomake'
Plug 'mhinz/vim-startify'
Plug 'vim-scripts/wildfire.vim'
Plug 'Yggdroot/indentLine'
Plug 'yonchu/accelerated-smooth-scroll'

Plug 'matze/vim-move'
Plug 'pbrisbin/vim-mkdir'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

"Plugins for golang
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'w0rp/ale' 
" JSON {{{
	Plug 'elzr/vim-json', { 'for': 'json' }
	let g:vim_json_syntax_conceal = 0
" }}}
call plug#end()



" 打开文件自动定位到最后编辑的位置
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif


filetype plugin indent on     " required!
 " End of vundle configuration

"For vim-move
let g:move_key_modifier = 'C'

"Emmet
let g:user_emmet_leader_key='<C-g>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

"""For ack
let g:ackprg = 'ag --nogroup --nocolor --column'
map <c-u> :Ack<space>

"Settings for Golang
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

au FileType go nmap <Leader>gi <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <leader>gr <Plug>(go-run)
au FileType go nmap <leader>gb <Plug>(go-build)
au FileType go nmap <leader>gt <Plug>(go-test)
au FileType go nmap <leader>gc <Plug>(go-coverage)
au FileType go nmap gd <Plug>(go-def-tab)

inoremap jj <Esc>
 
"airline setting
let g:airline_theme='bubblegum'

let g:airline_powerline_fonts = 1
let g:airline_extensions = ['tabline', 'tagbar']
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#fnametruncate = 16
let g:airline#extensions#tabline#fnamecollapse = 2
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#fnamemod = ':p:t'
let g:airline#extensions#hunks#enabled = 0

let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_detect_crypt=1
let g:airline_highlighting_cache = 1
let g:airline#extensions#tabline#show_tab_type = 0

" tab or buf 1
nnoremap <leader>1 :call utils#tab_buf_switch(1)<cr>
" tab or buf 2
nnoremap <leader>2 :call utils#tab_buf_switch(2)<cr>
" tab or buf 3
nnoremap  <leader>3 :call utils#tab_buf_switch(3)<cr>
" tab or buf 4
nnoremap  <leader>4 :call utils#tab_buf_switch(4)<cr>
" tab or buf 5
nnoremap  <leader>5 :call utils#tab_buf_switch(5)<cr>
" tab or buf 6
nnoremap  <leader>6 :call utils#tab_buf_switch(6)<cr>
" tab or buf 7
nnoremap  <leader>7 :call utils#tab_buf_switch(7)<cr>
" tab or buf 8
nnoremap  <leader>8 :call utils#tab_buf_switch(8)<cr>
" tab or buf 9
nnoremap  <leader>9 :call utils#tab_buf_switch(9)<cr>
"删除当前buffer跳转到上一个
nmap <S-P> :bp\|bd #<CR>
"删除当前buffer跳转到下一个
nmap <S-N> :bn\|bd #<CR>



"Setup SuperTab
let g:SuperTabRetainCompletionType="context"

let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabContextDefaultCompletionType = "<c-n>"
autocmd VimEnter * inoremap <expr> <cr> ((pumvisible()) ? (deoplete#close_popup()) : ("\<cr>"))
"修改插入模式移动
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
"修复ctrl+h执行删除命令
let g:AutoPairsMapCh=0
"缩进线设置
"let g:indentLine_setColors = 0
let g:indentLine_char='┆'
let g:indentLine_enabled = 1


" 设定文件浏览器目录为当前目录  
set bsdir=buffer  
" 设置编码  
set encoding=utf-8  
set nocompatible
set laststatus=2
" 设置文件编码  
set fenc=utf-8 

"set to use clipboard of system
set clipboard=unnamed

" 设置文件编码检测类型及支持格式  
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936  

"显示行号  
set number
"Show related row numbers
set relativenumber

"settings for backspace
set backspace=2
set backspace=indent,eol,start

"忽略大小写查找
set ic

" tab宽度  
set tabstop=4 
set cindent shiftwidth=4  
set autoindent shiftwidth=4
set expandtab


" set 折叠
set foldmethod=indent
" 打开文件默认不折叠
set foldlevelstart=99

"set my leader
let mapleader=","
let g:mapleader=","

"tabs
nmap <leader>tn :tabnew<cr>
nmap <leader>te :tabedit
nmap <leader>tc :tabclose<cr>
nmap <leader>tm :tabmove

"For Rust settings
let g:rustfmt_autosave = 1

"For neomake
map <leader>m :Neomake<CR>
let g:neomake_open_list = 2
let g:neomake_list_height = 7

"Disable highlight
map <leader>n :nohl<CR>

"  映射NERDTree插件
"let loaded_nerd_tree=1
let NERDTreeQuitOnOpen = 0
let NERDChristmasTree=1
let g:NERDTreeWinSize = 25 
map <leader>f :NERDTreeToggle /Users/marblues/workspace/src<CR>
let g:NERDTreeDirArrowExpandable='▷'
let g:NERDTreeDirArrowCollapsible='▼'
let g:NERDTreeIndicatorMapCustom = {
        \ "Modified"  : "✹",
        \ "Staged"    : "✚",
        \ "Untracked" : "✭",
        \ "Renamed"   : "➜",
        \ "Unmerged"  : "═",
        \ "Deleted"   : "✖",
        \ "Dirty"     : "✗",
        \ "Clean"     : "✔︎",
        \ 'Ignored'   : '☒',
        \ "Unknown"   : "?"
        \ }

" Settings for vim-easymotion
let g:EasyMotion_leader_key = "<Space>"

"Settings for TagBar
map <leader>g :TagbarToggle<CR>
autocmd BufReadPost *.cpp,*.c,*.h,*.go,*.cc,*.cxx call tagbar#autoopen()
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

"选择窗口
noremap <S-h> <C-W><Left>
noremap <S-l> <C-W><Right>

"set zen coding
 let g:user_zen_settings = {
  \  'php' : {
  \    'extends' : 'html',
  \    'filters' : 'c',
  \  },
  \  'xml' : {
  \    'extends' : 'html',
  \  },
  \  'haml' : {
  \    'extends' : 'html',
  \  },
  \  'erb' : {
  \    'extends' : 'html',
  \  },
  \}

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
"use in  edit
imap <C-A> <C-C><c-p>

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.jpg,*.png,*.gif,*.jpeg,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

" move lines up or down (command - D)
nmap <D-j> mz:m+<cr>`z
nmap <D-k> mz:m-2<cr>`z
vmap <D-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <D-k> :m'<-2<cr>`>my`<mzgv`yo`z

" Tab move lines left or right (c-Ctrl,s-Shift)
nmap    <c-tab>     v>
nmap    <s-tab>     v<
vmap    <c-tab>     >gv
vmap    <s-tab>     <gv

" tab navigation like zsh
:nmap <leader>h :tabprevious<CR>
:nmap <leader>l :tabnext<CR>

" settings for resize splitted window
nmap w[ :vertical resize -3<CR>
nmap w] :vertical resize +3<CR>

nmap w- :resize -3<CR>
nmap w= :resize +3<CR>

"Scss,sass,go
au BufRead,BufNewFile *.scss set filetype=scss
au BufRead,BufNewFile *.sass set filetype=scss
au BufRead,BufNewFile *.go set filetype=go 

"coffee script
au BufWritePost *.coffee silent CoffeeMake!
au BufWritePost *.coffee :CoffeeCompile watch vert

"let skim use slim syntax
au BufRead,BufNewFile *.skim set filetype=slim

"for python
au BufRead,BufNewFile *.py set shiftwidth=4 tabstop=4 softtabstop=4 expandtab smarttab autoindent


" neocomplete like
set completeopt +=noinsert
" deoplete.nvim recommend
set completeopt +=noselect
set completeopt =menu,preview

" Run deoplete.nvim automaticallys
let g:deoplete#enable_at_startup = 1

" deoplete-go settings
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
"let g:deoplete#sources#go#source_importer = 1
let g:deoplete#sources#go#use_cache = 1
let g:deoplete#sources#go#json_directory = '~/.cache/deoplete/go/'
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:deoplete#sources#ternjs#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ '...'
                \ ]
let g:deoplete#sources#ternjs#types = 1
let g:deoplete#sources#ternjs#docs = 1
" Use tern_for_vim.
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]
" code search
let g:ackprg = 'ag --nogroup --nocolor --column'

silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

" For startify
let g:startify_custom_header = [
\ '',
\ ' _     _         _  _           ______                       _        ',
\ '| |   | |       | || |         |  ___ \                _    (_)       ',
\ '| |__ | |  ____ | || |  ___    | | _ | |  ____   ____ | |_   _  ____  ',
\ '|  __)| | / _  )| || | / _ \   | || || | / _  | / ___)|  _) | ||  _ \ ',
\ '| |   | |( (/ / | || || |_| |  | || || |( ( | || |    | |__ | || | | |',
\ '|_|   |_| \____)|_||_| \___/   |_||_||_| \_||_||_|     \___)|_||_| |_|',                                                         
\ '',
\]
let g:startify_custom_footer = [
            \ '+------------------------------+',
            \ '|          By Martin           |',
            \ '+----------------+-------------+',
            \]                       



"""""""""""""""'Ale语法检查
" ale-setting {{{
let g:ale_completion_enabled = 1
let g:ale_open_list = 0
let g:ale_lint_delay = 1000
let g:ale_set_highlights = 0
"自定义error和warning图标
let g:ale_sign_error = '😡'
let g:ale_sign_warning = '😃'
"在vim自带的状态栏中整合ale
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
"显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"打开文件时不进行检查
let g:ale_lint_on_enter = 0

"普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
nmap ]a <Plug>(ale_next_wrap)
nmap [a <Plug>(ale_previous_wrap)
"<Leader>s触发/关闭语法检查
nmap <Leader>s :ALEToggle<CR>
"<Leader>d查看错误或警告的详细信息
nmap <Leader>d :ALEDetail<CR>
let g:ale_linters = {
      \ 'go': ['golint', 'go vet', 'go build'],
      \'javascript': ['eslint', 'stylelint'], 
      \'jsx': ['eslint', 'stylelint'],
      \'less': ['prettier'],
      \ }

"""""Js Vue React neoformat补全格式化
let g:used_javascript_libs = 'react'
let g:neoformat_try_formatprg = 1
autocmd BufWritePre *.js,*.jsx,*.less,*.css Neoformat
let g:jsx_ext_required = 0
let g:neoformat_enabled_javascript=['prettier']
"set hidden
let g:LanguageClient_serverCommands = {
    \ 'vue': ['vls'],
    \ }
" not stop completion $ & /
setlocal iskeyword+=$
setlocal iskeyword+=-

"""""""""图标设置
let g:WebDevIconsOS = 'Darwin'
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:DevIconsEnableFolderExtensionPatternMatching = 1
"""""""""""NERDTree高亮
let g:NERDTreeSyntaxDisableDefaultExtensions = 1
let g:NERDTreeDisableExactMatchHighlight = 1
let g:NERDTreeDisablePatternMatchHighlight = 1
"let g:NERDTreeSyntaxEnabledExtensions = ['go', 'html', 'css', 'vue']
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

""""""""""""""""color-scheme
set background=dark
colorscheme hybrid_reverse
"colorscheme onedark
"colorscheme hybrid
"colorscheme SolarizedDark
"隐藏背景
"hi Normal ctermfg=252 ctermbg=none
highlight LineNr   ctermbg=none
"""""""""""""""""""Deinte
"设置使用ag与grep
call denite#custom#var('grep', 'command', ['ag'])
"当前目录搜索使用ag
call denite#custom#var('file_rec', 'command', ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])
"其他grep设置
call denite#custom#var('grep', 'default_opts',['-i', '--vimgrep'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', [])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

"ESC结束
call denite#custom#map('insert', '<esc>', '<denite:enter_mode:normal>', 'noremap')
call denite#custom#map('normal', '<esc>', '<denite:quit>', 'noremap')
"C-N,C-P上下移動
call denite#custom#map('insert', '<C-n>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<C-p>', '<denite:move_to_previous_line>', 'noremap')
"C-J,C-K分屏
call denite#custom#map('insert', '<C-j>', '<denite:do_action:split>', 'noremap')
call denite#custom#map('insert', '<C-k>', '<denite:do_action:vsplit>', 'noremap')

" 以下はdenite起動時に使用するキーマップ
"buffer列表
noremap <leader>db :Denite buffer<CR>
" 文件列表
noremap <leader>dbn :Denite -buffer-name=file file<CR>
" 最近使用文件列表
noremap <leader>dfo :Denite file_old<CR>
" 当前目录
noremap <leader>dfr :Denite file_rec<CR>
"buffer列表
nnoremap <leader>dbb :<C-u>Denite buffer -buffer-name=file<CR>

"Denite line
nnoremap  <Leader>dl :<C-u>Denite line<CR>
nnoremap <silent> <expr><Space>l ":<C-u>DeniteWithCursorWord line<CR>"
" 指定显示字符
call denite#custom#option('default', 'prompt', '>')
" denite的起始位置
call denite#custom#option('default', 'direction', 'top')