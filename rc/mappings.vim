"默认键位的映射

inoremap <C-a> <home>
inoremap <C-e> <end>
inoremap <c-d> <del>
inoremap <c-_> <c-k>


" Write buffer (save)保存
noremap <Leader>w :w<CR>
imap <C-S> <esc>:w<CR>
imap <C-Q> <esc>:wq<CR>

"取消高亮
map <leader>n :nohl<CR>

"插入模式下快速回到normal模式并且到新行
inoremap <C-O> <Esc>o

nnoremap  ]b :bp<CR>
nnoremap  [b :bn<CR>
"删除buffer
nnoremap <C-x>  :bd<CR>

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

nmap <leader>tn :tabnew<cr>
nmap <leader>te :tabedit
nmap <leader>tc :tabclose<cr>
nmap <leader>tm :tabmove


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

