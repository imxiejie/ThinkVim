"airline setting

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#fnametruncate = 16
let g:airline#extensions#tabline#fnamecollapse = 2
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#fnamemod = ':p:t'
"let g:airline#extensions#hunks#enabled = 0
let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'

let g:airline#extensions#tabline#buffer_idx_format = {
        \ '0': '➓ ',
        \ '1': '❶ ',
        \ '2': '❷ ',
        \ '3': '❸ ',
        \ '4': '❹ ',
        \ '5': '❺ ',
        \ '6': '❻ ',
        \ '7': '❼ ',
        \ '8': '❽ ',
        \ '9': '❾ '
        \}

let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_detect_crypt=1
let g:airline_highlighting_cache = 1
"打开下面这个选项会显示标签类型-->去掉右上角[buffers]
"let g:airline#extensions#tabline#show_tab_type = 0
" tab or buf 1
nnoremap <leader>1 :call utils#tab_buf_switch(1)<cr>
" tab or buf 2
nnoremap <leader>2 :call utils#tab_buf_switch(2)<cr>
" tab or buf 3
nnoremap  <leader>3 :call utils#tab_buf_switch(3)<cr>
" tab or buf 4
nnoremap  <leader>4 :call utils#tab_buf_switch(4)<cr>
" tab or buf 5
nnoremap  <leader>5 :call utils#tab_buf_switch(5)<cr>
" tab or buf 6
nnoremap  <leader>6 :call utils#tab_buf_switch(6)<cr>
" tab or buf 7
nnoremap  <leader>7 :call utils#tab_buf_switch(7)<cr>
" tab or buf 8
nnoremap  <leader>8 :call utils#tab_buf_switch(8)<cr>
" tab or buf 9
nnoremap  <leader>9 :call utils#tab_buf_switch(9)<cr>

