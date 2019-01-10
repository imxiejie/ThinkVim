set nobackup            " 设置不备份
set noswapfile          " 禁止生成临时文件
set autoread            " 文件在vim之外修改过，自动重新读入
set autowrite           " 设置自动保存
set confirm             " 在处理未保存或只读文件的时候，弹出确认
set splitbelow
set cursorline          "高亮显示光标所在行
syntax on


" Configuration section of vundle
filetype off  " required!

call plug#begin('~/.local/share/nvim/plugged')

" My Bundles here:
Plug 'ryanoasis/vim-devicons'
Plug 'w0ng/vim-hybrid'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'scrooloose/nerdcommenter'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'majutsushi/tagbar'
Plug 'kien/ctrlp.vim' 
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Lokaltog/vim-easymotion'
Plug 'rking/ag.vim'
Plug 'airblade/vim-gitgutter'


Plug 'othree/html5.vim',{'for': ['html', 'javascript.jsx','vue']}
Plug 'pangloss/vim-javascript',{'for': ['javascript', 'javascript.jsx']}
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mxw/vim-jsx',{'for': ['javascript', 'javascript.jsx']}
Plug 'hail2u/vim-css3-syntax',{ 'for': 'css' }
Plug 'ap/vim-css-color',{ 'for': 'css' }
Plug 'sbdchd/neoformat'
Plug 'epilande/vim-react-snippets',{'for': ['javascript', 'javascript.jsx']}
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ 'for':'vue',
    \ }


Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', { 'do': 'make','for':'go'}
Plug 'zchee/deoplete-jedi', { 'for':'python' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern','for': ['javascript', 'javascript.jsx'] }
Plug 'ternjs/tern_for_vim', { 'do': 'npm install','for': ['javascript', 'javascript.jsx'] }
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/denite.nvim'
Plug 'Shougo/neopairs.vim'


Plug 'mhinz/vim-startify'
Plug 'Yggdroot/indentLine'
Plug 'yonchu/accelerated-smooth-scroll'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

"Plugins for golang
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'w0rp/ale' 
Plug 'elzr/vim-json', { 'for': 'json' }

call plug#end()


" 设定文件浏览器目录为当前目录  
set bsdir=buffer  
" 设置编码  
set encoding=utf-8  
set nocompatible
set laststatus=2
" 设置文件编码  
set fenc=utf-8 
"分割窗口为虚线
set statusline=-        " hide file name in statusline
set fillchars=stl:-     " fill active window's statusline with -
set fillchars+=stlnc:-  " also fill inactive windows
set fillchars+=vert:\|  " add a bar for vertical splits

set t_Co=256
"set termguicolors       " 支持真色彩

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

" Write buffer (save)保存
noremap <Leader>w :w<CR>
imap <C-S> <esc>:w<CR>
imap <C-Q> <esc>:wq<CR>

"默认键位的映射
"定义快捷键到行首非空字符和行尾$
nmap ls ^
nmap le $


" Path to python interpreter for neovim
let g:python3_host_prog  = '/usr/local/bin/python3'
" Skip the check of neovim module
let g:python3_host_skip_check = 1
"set my leader
let mapleader=","
let g:mapleader=","
let g:maplocalleader=";"

" 打开文件自动定位到最后编辑的位置
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif

filetype plugin indent on     " required!
"插入模式下快速回到normal模式并且到新行
"inoremap ✠  <Esc>o  "仅适用于mac和iterm2 需要在iterm中重新映射✠这个符号
inoremap <C-O> <Esc>o


"Emmet
let g:user_emmet_leader_key='<C-g>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

"for json
let g:vim_json_syntax_conceal = 0


"Settings for Golang
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

au FileType go nmap <Leader>goi <Plug>(go-info)
au FileType go nmap <Leader>god <Plug>(go-doc)
au FileType go nmap <leader>gor <Plug>(go-run)
au FileType go nmap <leader>gob <Plug>(go-build)
au FileType go nmap <leader>got <Plug>(go-test)
au FileType go nmap <leader>goc <Plug>(go-coverage)
au FileType go nmap <Leader>dos <Plug>(go-def-split)
au FileType go nmap <Leader>dov <Plug>(go-def-vertical)
au FileType go nmap <Leader>dot <Plug>(go-def-tab)
au FileType go nmap <Leader>rn<Plug>(go-rename)

 
"airline setting
let g:airline_theme='wombat'
"let g:airline_theme='durant'

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
nnoremap <leader>bp :bp\|bd #<CR>
"删除当前buffer跳转到下一个
nnoremap <leader>bn :bn\|bd #<CR>
"删除buffer
nnoremap <leader>bd :bd<CR>

"选择窗口
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

"智能行移动
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
"插入模式移动
"inoremap <C-h> <Left>
"inoremap <C-j> <Down>
"inoremap <C-k> <Up>
"inoremap <C-l> <Right>
"修复ctrl+h执行删除命令
let g:AutoPairsMapCh=0
"缩进线设置
set list
"set lcs+=trail:.                                                       "样式一
"set listchars=tab:\▸\-                                                 "样式二
"set list listchars=tab:▸\ ,trail:·,precedes:←,extends:→,eol:↲,nbsp:␣   "样式三
"set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·              "样式四
set list listchars=tab:▸\ ,trail:·,precedes:←,extends:→                 "样式五
let g:indentLine_enabled = 1
let g:indentLine_leadingSpaceEnable=1
let g:indentLine_char='┆'
let g:indentLine_fileTypeExclude = [ 'startify' ]

nmap <leader>tn :tabnew<cr>
nmap <leader>te :tabedit
nmap <leader>tc :tabclose<cr>
nmap <leader>tm :tabmove


"取消高亮
map <leader>n :nohl<CR>

"  映射NERDTree插件
"let loaded_nerd_tree=1
let NERDTreeQuitOnOpen = 0
let NERDChristmasTree=1
let g:NERDTreeWinSize = 25 
map <leader>e :NERDTreeToggle <CR>
map <leader>f :NERDTreeFind <CR>
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
"let g:EasyMotion_leader_key = ","

"Settings for TagBar
map <localleader>g :TagbarToggle<CR>
autocmd BufReadPost *.cpp,*.c,*.h,*.go,*.cc,*.py call tagbar#autoopen()
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

"Ag  快捷键
map <leader>a :Ag
let g:ag_prg="ag --vimgrep --smart-case --ignore tags"
let g:ag_highlight=1
let g:ag_mapping_message=0
" 高亮光标所在位置的单词，并使用 Ag 来搜索
nmap <leader>aw :Ag <C-R>=expand("<cword>")<CR><CR>


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
nmap <C-w>[ :vertical resize -3<CR>
nmap <C-w>] :vertical resize +3<CR>


"Scss,sass
au BufRead,BufNewFile *.scss set filetype=scss
au BufRead,BufNewFile *.sass set filetype=scss

"coffee script
au BufWritePost *.coffee silent CoffeeMake!
au BufWritePost *.coffee :CoffeeCompile watch vert

"let skim use slim syntax
au BufRead,BufNewFile *.skim set filetype=slim
"for go
au BufNewFile,BufRead *.go set filetype=go  noexpandtab tabstop=4 shiftwidth=4 
"for python
au BufRead,BufNewFile *.py set shiftwidth=4 tabstop=4 softtabstop=4 expandtab smarttab autoindent


" neocomplete like
set completeopt +=noinsert
" deoplete.nvim recommend
set completeopt +=noselect
set completeopt =longest,menu

" deoplete + neosnippet + neoparis 
let g:deoplete#enable_at_startup = 1 
let g:neopairs#enable = 1
call deoplete#custom#source('_', 'converters', ['converter_auto_paren'])
imap <expr><TAB> pumvisible() ? "\<C-n>" : (neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>") 
imap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
imap <expr><CR> pumvisible() ? deoplete#mappings#close_popup() : "\<CR>"
"inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>      <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" deoplete-go settings
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
"打开此选项会从-source中检索完成localpackage的补全但是会变得很慢 不建议
"let g:deoplete#sources#go#source_importer = 1
let g:deoplete#sources#go#use_cache = 1
let g:deoplete#sources#go#json_directory = '~/.cache/deoplete/go/'

"deoplete-ternjs setting
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


" For startify
"let g:startify_files_number = 20
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



"""""""""""""""'Ale语法检查
" ale-setting {{{
let g:ale_completion_enabled = 1
let g:ale_open_list = 0
let g:ale_lint_delay = 1000
let g:ale_set_highlights = 0
"自定义error和warning图标
let g:ale_sign_error = '😡'
let g:ale_sign_warning = '😃'
highlight clear ALEErrorSign
highlight clear ALEWarningSign
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
let g:ale_lintetrs = {
      \ 'go': ['golint', 'go vet', 'go build'],
      \'javascript': ['eslint', 'stylelint'], 
      \'jsx': ['eslint', 'stylelint'],
      \'less': ['prettier'],
      \ }

"""""Js Vue React neoformat补全格式化
"let g:used_javascript_libs = 'react'
let g:vim_jsx_pretty_enable_jsx_highlight = 0
let g:vim_jsx_pretty_colorful_config = 1
let g:neoformat_try_formatprg = 1
autocmd BufWritePre *.js,*.jsx,*.less,*.css,*.html Neoformat
let g:jsx_ext_required = 0
let g:neoformat_enabled_javascript=['prettier']
let g:neoformat_enabled_html=['js-beautify']
"set hidden
let g:LanguageClient_serverCommands = {
    \ 'vue': ['vls'],
    \ }
" not stop completion $ & /
setlocal iskeyword+=$
setlocal iskeyword+=-

"""""""""图标设置
let g:WebDevIconsOS = 'Darwin'
"打开下面设置会在nerdtree中添加文件夹图标
"let g:WebDevIconsUnicodeDecorateFolderNodes = 1
"let g:DevIconsEnableFoldersOpenClose = 1
"let g:DevIconsEnableFolderExtensionPatternMatching = 1
"""""""""""NERDTree高亮
let g:NERDTreeSyntaxDisableDefaultExtensions = 1
let g:NERDTreeDisableExactMatchHighlight = 1
let g:NERDTreeDisablePatternMatchHighlight = 1
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

""""""""""""""""color-scheme
set background=dark
"colorscheme space-vim-dark
"colorscheme hybrid_reverse
"colorscheme onedark
colorscheme hybrid
"colorscheme SolarizedDark
"隐藏背景
"hi Normal ctermfg=252 ctermbg=none
"""""""""""""""""""Deinte
"设置使用ag与grep
call denite#custom#var('grep', 'command', ['ag'])
nnoremap <localLeader>p :call denite#start([{'name': 'grep', 'args': ['', '', '!']}])<cr>
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

"buffer列表
noremap <localleader>b :Denite buffer<CR>
" 文件列表
noremap <localleader>bn :Denite -buffer-name=file file<CR>
" 最近使用文件列表
noremap <localleader>fo :Denite file_old -winheight=10 -vertical-preview -auto-preview<CR>
" 当前目录
noremap <localleader>fr :Denite file_rec -default-action=vsplit<CR>

"Denite line
nnoremap  <localLeader>dl :<C-u>Denite line -auto-preview<CR>
nnoremap <silent> <expr><Space>l ":<C-u>DeniteWithCursorWord line<CR>"
" 指定显示字符
call denite#custom#option('default', 'prompt', 'λ')
" denite的起始位置
call denite#custom#option('default', 'direction',)


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

