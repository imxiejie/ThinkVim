"for python
au BufRead,BufNewFile *.py set shiftwidth=4 tabstop=4 softtabstop=4 expandtab smarttab autoindent
autocmd FileType python let b:coc_root_patterns = ['.git', '.env']
