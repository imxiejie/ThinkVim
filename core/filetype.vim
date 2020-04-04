
augroup user_plugin_filetype "{{{
  autocmd!
  " Reload vim config automatically
  autocmd BufWritePost $VIM_PATH/{*.vim,*.yaml,vimrc} nested
	\ source $MYVIMRC | redraw

	autocmd WinEnter,InsertLeave * set cursorline

	autocmd WinLeave,InsertEnter * set nocursorline

  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif

	autocmd Syntax * if 5000 < line('$') | syntax sync minlines=200 | endif

  autocmd FileType css setlocal equalprg=csstidy\ -\ --silent=true

  autocmd FileType javascript,javascriptreact set shiftwidth=2

  autocmd FileType json syntax match Comment +\/\/.\+$+

  " Go (Google)
  autocmd FileType go let b:coc_pairs_disabled = ['<']
  autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')

  " HTML (.gohtml and .tpl for server side)
  autocmd BufNewFile,BufRead *.html,*.htm,*.gohtml,*.tpl  setf html
  " Magit
  autocmd User VimagitEnterCommit startinsert

	" https://webpack.github.io/docs/webpack-dev-server.html#working-with-editors-ides-supporting-safe-write
	autocmd FileType css,javascript,javascriptreact setlocal backupcopy=yes

augroup END "}}}
