
nnoremap <silent><localLeader>s :call denite#start([{'name': 'grep', 'args': ['', '', '!']}])<cr>
"buffer列表
nnoremap  <silent><localleader>b :Denite buffer<CR>
" 最近使用文件列表
nnoremap <silent><localleader>o :Denite file_old -winheight=10 -vertical-preview -auto-preview<CR>
" 当前目录
nnoremap <silent><localleader>r :Denite file_rec -default-action=vsplit<CR>

"Denite line
nnoremap  <silent><localLeader>l :<C-u>Denite line -auto-preview<CR>
nnoremap <silent><localLeader>w :<C-u>DeniteWithCursorWord line<CR>"
" coc seting 
" Show extension list
nnoremap <silent> <localLeader>ce  :<C-u>Denite coc-extension<cr>
" Show symbols of current buffer
nnoremap <silent> <localLeader>csb  :<C-u>Denite coc-symbols<cr>
" Search symbols of current workspace
nnoremap <silent> <localLeader>cw  :<C-u>Denite coc-workspace<cr>
" Show diagnostics of current workspace
nnoremap <silent> <localLeader>cd  :<C-u>Denite coc-diagnostic<cr>
" Show available commands
nnoremap <silent> <localLeader>cc  :<C-u>Denite coc-command<cr>
" Show available services
nnoremap <silent> <localLeader>cs  :<C-u>Denite coc-service<cr>
" Show links of current buffer
nnoremap <silent> <localLeader>cl  :<C-u>Denite coc-link<cr>
