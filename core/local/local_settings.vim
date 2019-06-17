set splitright

if dein#tap('defx.nvim')
        nnoremap <silent> <Leader><F5>
                \ :<C-u>Defx -search=`expand('%:p')` `getcwd()`<CR>
endif

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