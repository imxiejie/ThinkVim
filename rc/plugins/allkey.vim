"Plugin key settings

if dein#tap('denite.nvim')
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
endif

if dein#tap('coc.nvim')
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
endif

if dein#tap('nerdtree')
    "nerdtree
        map <leader>e :NERDTreeToggle <CR>
        map <leader>f :NERDTreeFind <CR>
endif

if dein#tap('tagbar')
        map <localleader>g :TagbarToggle<CR>
endif

if dein#tap('ale')
        "普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
        nmap ]a <Plug>(ale_next_wrap)
        nmap [a <Plug>(ale_previous_wrap)
        "<Leader>s触发/关闭语法检查
        nmap <Leader>s :ALEToggle<CR>
        "<Leader>d查看错误或警告的详细信息
        nmap <Leader>d :ALEDetail<CR>
endif

if dein#tap('vim-easymotion')
        map <Leader><Leader>w <Plug>(easymotion-w)
	    map <Leader><Leader>f <Plug>(easymotion-f)
	    map <Leader><Leader>b <Plug>(easymotion-b) 
endif

