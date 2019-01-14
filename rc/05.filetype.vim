"Scss,sass
au BufRead,BufNewFile *.scss set filetype=scss
au BufRead,BufNewFile *.sass set filetype=scss

"coffee script
au BufWritePost *.coffee silent CoffeeMake!
au BufWritePost *.coffee :CoffeeCompile watch vert

"let skim use slim syntax
au BufRead,BufNewFile *.skim set filetype=slim
"for go
au BufNewFile,BufRead *.go set filetype=go  noexpandtab tabstop=4 shiftwidth=4
"for python
au BufRead,BufNewFile *.py set shiftwidth=4 tabstop=4 softtabstop=4 expandtab smarttab autoindent

"vim-json
let g:vim_json_syntax_conceal = 0
"Emmet
let g:user_emmet_leader_key='<C-g>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

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

"js
let g:vim_jsx_pretty_enable_jsx_highlight = 0
let g:vim_jsx_pretty_colorful_config = 1
let g:neoformat_try_formatprg = 1
autocmd BufWritePre *.js,*.jsx,*.less,*.css,*.html Neoformat
let g:jsx_ext_required = 0
let g:neoformat_enabled_javascript=['prettier']
let g:neoformat_enabled_html=['js-beautify']

"'Ale语法检查
" ale-setting {{{
let g:ale_completion_enabled = 1
let g:ale_open_list = 0
let g:ale_lint_delay = 1000
let g:ale_set_highlights = 0
"自定义error和warning图标
let g:ale_sign_error = '😡'
let g:ale_sign_warning = '😃'
highlight clear ALEErrorSign
highlight clear ALEWarningSign
"在vim自带的状态栏中整合ale
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
"显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"打开文件时不进行检查
let g:ale_lint_on_enter = 0

"普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
nmap ]a <Plug>(ale_next_wrap)
nmap [a <Plug>(ale_previous_wrap)
"<Leader>s触发/关闭语法检查
nmap <Leader>s :ALEToggle<CR>
"<Leader>d查看错误或警告的详细信息
nmap <Leader>d :ALEDetail<CR>
let g:ale_lintetrs = {
      \ 'go': ['golint', 'go vet', 'go build'],
      \'javascript': ['eslint', 'stylelint'],
      \'jsx': ['eslint', 'stylelint'],
      \'less': ['prettier'],
      \ }
