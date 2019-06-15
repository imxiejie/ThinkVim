    let g:gutentags_cache_dir = $VARPATH.'/tags'
    let g:gutentags_generate_on_write = 1
    let g:gutentags_generate_on_missing = 0
    let g:gutentags_generate_on_new = 0
    let g:gutentags_ctags_exclude_wildignore = 1
    let g:gutentags_ctags_exclude = [
      \ '*/wp-admin', '*/wp-content', '*/wp-includes',
      \ '*/application/vendor', '*/vendor/ckeditor', '*/media/vendor'
      \ ]

