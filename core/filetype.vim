" Reload vim config automatically
execute 'autocmd MyAutoCmd BufWritePost '.$VIMPATH.'/core/*,vimrc nested'
	\ .' source $MYVIMRC | redraw | silent doautocmd ColorScheme'

augroup MyAutoCmd
	autocmd WinEnter,InsertLeave * set cursorline
	autocmd WinLeave,InsertEnter * set nocursorline
    autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif
    autocmd FileType css setlocal equalprg=csstidy\ -\ --silent=true
    autocmd BufNewFile,BufRead *.jsx set filetype=javascript.jsx
    autocmd BufWritePre *.js,*.jsx,*.less,*.css,*.html Neoformat
	autocmd BufNewFile,BufRead *.toml,Gopkg.lock,Cargo.lock,*/.cargo/config,*/.cargo/credentials,Pipfile setf tomlutocmd FileType yaml.docker-compose setlocal expandtab
    autocmd BufNewFile,BufRead *.toml,Gopkg.lock,Cargo.lock,*/.cargo/config,*/.cargo/credentials,Pipfile setf toml
    autocmd FileType go let b:coc_pairs_disabled = ['<']

    autocmd InsertLeave,TextChanged,FocusLost *.go silent! wall

	" https://webpack.github.io/docs/webpack-dev-server.html#working-with-editors-ides-supporting-safe-write
	autocmd FileType css,javascript,jsx,javascript.jsx
		\ setlocal backupcopy=yes
		\| setlocal equalprg=jslint
augroup END

