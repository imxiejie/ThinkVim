" Reload vim config automatically
execute 'autocmd MyAutoCmd BufWritePost '.$VIMPATH.'/core/*,vimrc nested'
	\ .' source $MYVIMRC | redraw | silent doautocmd ColorScheme'

augroup MyAutoCmd
	autocmd WinEnter,InsertLeave * set cursorline

	autocmd WinLeave,InsertEnter * set nocursorline

    autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif

	autocmd Syntax * if 5000 < line('$') | syntax sync minlines=200 | endif

    autocmd FileType css setlocal equalprg=csstidy\ -\ --silent=true

    autocmd BufWritePre *.js,*.jsx,*.less,*.css,*.html Neoformat

     autocmd FileType json syntax match Comment +\/\/.\+$+

    " Go (Google)
    autocmd FileType go let b:coc_pairs_disabled = ['<']

    " HTML (.gohtml and .tpl for server side)
    autocmd BufNewFile,BufRead *.html,*.htm,*.gohtml,*.tpl  setf html

	" https://webpack.github.io/docs/webpack-dev-server.html#working-with-editors-ides-supporting-safe-write
	autocmd FileType css,javascript,jsx,javascript.jsx
		\ setlocal backupcopy=yes
		\| setlocal equalprg=jslint
augroup END

