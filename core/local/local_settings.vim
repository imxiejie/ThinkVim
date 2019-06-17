set splitright

nnoremap <silent> <F2> :<C-u>vnew<CR>

nnoremap <silent> <F3> :<C-u>new<CR>

nnoremap <silent> <F4> :<C-u>vnew \| terminal<CR>

if dein#tap('defx.nvim')
        nnoremap <silent> <F5>
                \ :<C-u>Defx -search=`expand('%:p')` `getcwd()`<CR>
endif

nnoremap <silent> <F7> :<C-u>res +5<CR>

nnoremap <silent> <F8> :<C-u>res -5<CR>

nnoremap <silent> <F9> :<C-u>vertical resize +5<CR>

nnoremap <silent> <F10> :<C-u>vertical resize -5<CR>

let g:tagbar_type_groovy = {
    \ 'ctagstype' : 'groovy',
    \ 'kinds'     : [
        \ 'p:package:1',
        \ 'c:classes',
        \ 'i:interfaces',
        \ 't:traits',
        \ 'e:enums',
        \ 'm:methods',
        \ 'f:fields:1'
    \ ]
\ }
