set splitright

" colorscheme PaperColor

colorscheme onedark

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

let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ 'active': {
      \   'left': [ ['homemode'],
      \             ['gitinfo'],['filename_active'],['cocstatus']],
      \   'right':[
      \             ['lineinfo'], ['fileformat'],['filencode'],['cocerror'],['cocwarn'],['cocfix']],
      \ },
      \ 'inactive': {
      \   'left': [['homemode'], ['filename_active']],
      \   'right':[['lineinfo']],
      \ },
      \ 'tabline': {
      \   'left': [['buffers']],
      \   'right': [['thinkvim']],
      \ },
      \ 'component': {
      \   'thinkvim': 'ﴔ ',
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers',
      \   'cocerror': 'LightLineCocError',
      \   'cocwarn' : 'LightLineCocWarn',
      \ },
      \ 'component_function': {
      \   'homemode': 'LightlineMode',
      \   'gitinfo': 'LightLineGit',
      \   'cocstatus': 'CocStatusBar',
      \   'cocfix': 'LightlineCocFixes',
      \   'filencode': 'FileEncoding',
      \   'readonly': 'LightLineReadonly',
      \   'filename_active'  : 'LightlineFilenameActive',
      \   'lineinfo': 'LightlineLineinfo',
      \   'filename': 'LightLineFname',
      \   'filetype': 'LightLineFiletype',
      \   'fileformat': 'LightLineFileformat',
      \ },
      \ 'component_type': {'buffers': 'tabsel'},
      \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2"},
      \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3"}
\ }
