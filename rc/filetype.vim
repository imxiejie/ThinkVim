" Reload vim config automatically
execute 'autocmd MyAutoCmd BufWritePost '.$VIMPATH.'/rc/*,vimrc nested'
	\ .' source $MYVIMRC | redraw | silent doautocmd ColorScheme'

augroup MyAutoCmd
	autocmd WinEnter,InsertLeave * set cursorline
	autocmd WinLeave,InsertEnter * set nocursorline
    autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif
    autocmd FileType css setlocal equalprg=csstidy\ -\ --silent=true
    autocmd BufWritePre *.js,*.jsx,*.less,*.css,*.html Neoformat
	autocmd FileType yaml.docker-compose setlocal expandtab
    autocmd FileType go let b:coc_pairs_disabled = ['<']
    "autosave go file can use gopls which can solved the gopls cant work with
    "nosave buffer
    "autocmd InsertLeave *.go write

	" https://webpack.github.io/docs/webpack-dev-server.html#working-with-editors-ides-supporting-safe-write
	autocmd FileType css,javascript,jsx,javascript.jsx
		\ setlocal backupcopy=yes
		\| setlocal equalprg=jslint
augroup END

