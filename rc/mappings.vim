"set my leader
let g:mapleader=","
let g:maplocalleader=';'

"默认键位的映射
"定义快捷键到行首非空字符和行尾$
nmap ls ^
nmap le $


" Write buffer (save)保存
noremap <Leader>w :w<CR>
imap <C-S> <esc>:w<CR>
imap <C-Q> <esc>:wq<CR>

"取消高亮
map <leader>n :nohl<CR>

"插入模式下快速回到normal模式并且到新行
inoremap <C-O> <Esc>o

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
"插入模式移动M=alt
"inoremap <M-h> <Left>
"inoremap <M-j> <Down>
"inoremap <M-k> <Up>
"inoremap <M-l> <Right>

nmap <leader>tn :tabnew<cr>
nmap <leader>te :tabedit
nmap <leader>tc :tabclose<cr>
nmap <leader>tm :tabmove

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

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<CR>"
