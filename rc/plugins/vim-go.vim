
"vim-go
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

au FileType go nmap <Leader>goi <Plug>(go-info)
au FileType go nmap <Leader>god <Plug>(go-doc)
au FileType go nmap <leader>gor <Plug>(go-run)
au FileType go nmap <leader>gob <Plug>(go-build)
au FileType go nmap <leader>got <Plug>(go-test)
au FileType go nmap <leader>goc <Plug>(go-coverage)
au FileType go nmap <Leader>dos <Plug>(go-def-split)
au FileType go nmap <Leader>dov <Plug>(go-def-vertical)
au FileType go nmap <Leader>dot <Plug>(go-def-tab)
au FileType go nmap <Leader>rn<Plug>(go-rename)

