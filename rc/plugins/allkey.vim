
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

" Using CocList
" Show all diagnostics
nnoremap <silent> <localleader>ca  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <localleader>ce  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <localleader>cc  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <localleader>co  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <localleader>cs  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <localleader>cj  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <localleader>ck  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <localleader>cr  :<C-u>CocListResume<CR>

