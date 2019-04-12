
"for go
au BufNewFile,BufRead *.go set filetype=go  noexpandtab tabstop=4 shiftwidth=4
au BufNewFile,BufRead *.tmpl set filetype=html
autocmd FileType go let b:coc_root_patterns = ["go.mod", ".git", ".hg",".vim", ".projections.json"]
