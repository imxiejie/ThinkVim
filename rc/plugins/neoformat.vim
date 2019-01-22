autocmd BufWritePre *.js,*.jsx,*.less,*.css,*.html Neoformat
let g:neoformat_try_formatprg = 1
let g:jsx_ext_required = 0
let g:neoformat_enabled_javascript=['prettier']
let g:neoformat_enabled_html=['js-beautify']
