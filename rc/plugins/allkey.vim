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
        " Use `[c` and `]c` for navigate diagnostics
        nmap <silent> ]c <Plug>(coc-diagnostic-prev)
        nmap <silent> [c <Plug>(coc-diagnostic-next)

        " Remap for format selected region
        vmap <leader>cf  <Plug>(coc-format-selected)
        nmap <leader>cf  <Plug>(coc-format-selected)
        " Remap keys for gotos
        nmap <silent> gd <Plug>(coc-definition)
        nmap <silent> gy <Plug>(coc-type-definition)
        nmap <silent> gi <Plug>(coc-implementation)
        nmap <silent> gr <Plug>(coc-references)
        " Use K for show documentation in preview window
        nnoremap <silent> K :call <SID>show_documentation()<CR>

        function! s:show_documentation()
            if &filetype == 'vim'
                execute 'h '.expand('<cword>')
            else
                call CocAction('doHover')
            endif
        endfunction
endif

if dein#tap('nerdtree')
    "nerdtree
        nnoremap <leader>e :NERDTreeToggle <CR>
        nnoremap <leader>f :NERDTreeFind <CR>
endif

if dein#tap('defx.nvim')
	nnoremap <silent> <localleader>f
		\ :<C-u>Defx -resume -toggle -buffer-name=tab`tabpagenr()`<CR>
endif

if dein#tap('vim-go')
        autocmd  FileType go
                    \ | nmap <Leader>goi <Plug>(go-info)
                    \ | nmap <Leader>god <Plug>(go-doc)
                    \ | nmap <leader>gor <Plug>(go-run)
                    \ | nmap <leader>gob <Plug>(go-build)
                    \ | nmap <leader>got <Plug>(go-test)
                    \ | nmap <leader>goc <Plug>(go-coverage)
                    \ | nmap <Leader>gdv <Plug>(go-def-vertical)
                    \ | nmap <Leader>gr<Plug>(go-rename)
endif


if dein#tap('tagbar')
        nnoremap <localleader>g :TagbarToggle<CR>
endif

if dein#tap('ale')
        "普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
        nmap [a <Plug>(ale_next_wrap)
        nmap ]a <Plug>(ale_previous_wrap)
        "<Leader>s触发/关闭语法检查
        nmap <Leader>s :ALEToggle<CR>
        "<Leader>d查看错误或警告的详细信息
        nmap <Leader>d :ALEDetail<CR>
endif

if dein#tap('vim-easymotion')
        nmap <Leader><Leader>w <Plug>(easymotion-w)
	    nmap <Leader><Leader>f <Plug>(easymotion-f)
	    nmap <Leader><Leader>b <Plug>(easymotion-b)
endif

if dein#tap('vim-which-key')
		nnoremap <silent> <leader>      :<c-u>WhichKey ','<CR>
		nnoremap <silent> <localleader> :<c-u>WhichKey  ';'<CR>
		nnoremap <silent>l              :<c-u>WhichKey  'l'<CR>
		nnoremap <silent>[              :<c-u>WhichKey  '['<CR>
		nnoremap <silent>]              :<c-u>WhichKey  ']'<CR>
endif
