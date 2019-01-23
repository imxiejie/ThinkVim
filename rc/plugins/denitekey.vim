
nnoremap <localLeader>p :call denite#start([{'name': 'grep', 'args': ['', '', '!']}])<cr>
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
