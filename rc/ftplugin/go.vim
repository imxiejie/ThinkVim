
"for go
au BufNewFile,BufRead *.go set filetype=go  noexpandtab tabstop=4 shiftwidth=4

"function! SetCocDiagnostic() abort
    "let obj = json_decode(readfile(expand('$CONFIG/nvim/coc-settings.json')))
    "if &filetype == 'go'
         "let obj['coc.preferences.diagnostic.displayByAle'] = v:true
    "endif
"endfunction
