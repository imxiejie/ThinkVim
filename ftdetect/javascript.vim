" TODO:  <09-06-19 taigacute> "
" this method have bug !!!
fu! <SID>EnableJSX()
    let str = join(getline(1,'$'), "\n")
    let enum = matchend(str,'react')
    if enum != -1
        return 1
    endif
    return 0
endfu

autocmd BufNewFile,BufRead *.jsx set filetype=javascript.jsx
autocmd BufNewFile,BufRead *.js
  \ if <SID>EnableJSX() | set filetype=javascript.jsx | endif

