set splitright

colorscheme PaperColor

nnoremap <silent> <F2> :<C-u>vnew<CR>

nnoremap <silent> <F3> :<C-u>new<CR>

if dein#tap('nerdtree')
        nnoremap <silent> <F4>
                \ :<C-u>NERDTreeFind<CR>
endif

nnoremap <silent> <F5> :<C-u>new \| terminal<CR>

nnoremap <silent> <leader>v<F5> :<C-u>vnew \| terminal<CR>

nnoremap <silent> <M-k> :<C-u>res +5<CR>

nnoremap <silent> <M-j> :<C-u>res -5<CR>

nnoremap <silent> <M-h> :<C-u>vertical resize +5<CR>

nnoremap <silent> <M-l> :<C-u>vertical resize -5<CR>

nnoremap <silent> <F12> :<C-u>Denite outline<CR>

nnoremap oo o<ESC>

nnoremap OO O<ESC>

imap jj <ESC>

call dein#add('tpope/vim-surround', {
        \ 'lazy': 1,
        \ 'depends' : 'vim-repeat',
        \ 'on_map': {'n' : ['cs', 'ds', 'ys']}})
nnoremap <silent> <M-k> :<C-u>res +5<CR>

nnoremap <silent> <M-j> :<C-u>res -5<CR>

nnoremap <silent> <M-h> :<C-u>vertical resize +5<CR>

nnoremap <silent> <M-l> :<C-u>vertical resize -5<CR>

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
