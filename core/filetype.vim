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

    " Go (Google)
    autocmd BufNewFile,BufRead *.go			setf go

    autocmd FileType go let b:coc_pairs_disabled = ['<']

    autocmd InsertLeave,TextChanged,FocusLost *.go silent! wall

    " Python
    autocmd BufNewFile,BufRead *.py,*.pyw		setf python

    " HTML (.gohtml and .tpl for server side)
    autocmd BufNewFile,BufRead *.html,*.htm,*.gohtml,*.tpl  setf html

    " JSON
	autocmd BufNewFile,BufRead *.json,*.jsonp		setf json

	" Less
	autocmd BufNewFile,BufRead *.less			setf less

	" Yaml
	autocmd BufNewFile,BufRead *.yaml,*.ymlsetf yaml"
    " Pattern used to match file names which should not be inspected.
    " Currently finds compressed files.
    if !exists("g:ft_ignore_pat")
      let g:ft_ignore_pat = '\.\(Z\|gz\|bz2\|zip\|tgz\)$'
    endif

    " Function used for patterns that end in a star: don't set the filetype if the
    " file name matches ft_ignore_pat.
    func! s:StarSetf(ft)
      if expand("<amatch>") !~ g:ft_ignore_pat
        exe 'setf ' . a:ft
      endif
    endfunc
	" Z-Shell script
	autocmd BufNewFile,BufRead .zprofile,*/etc/zprofile,.zfbfmarks  setf zsh
	autocmd BufNewFile,BufRead .zsh*,.zlog*,.zcompdump*  call s:StarSetf('zsh')
	autocmd BufNewFile,BufRead *.zsh setf zsh
	" SQL
	autocmd BufNewFile,BufRead *.sqlsetf mysql
	" OpenSSH configuration
	autocmd BufNewFile,BufRead ssh_config,*/.ssh/config  setf sshconfig
	" OpenSSH server configuration
	autocmd BufNewFile,BufRead sshd_config         setf sshdconfig


    " Diff files
    autocmd BufNewFile,BufRead *.diff,*.rej		setf diff
    autocmd BufNewFile,BufRead *.patch
        \ if getline(1) =~ '^From [0-9a-f]\{40\} Mon Sep 17 00:00:00 2001$' |
        \   setf gitsendemail |
        \ else |
        \   setf diff |
        \ endif

    " Dockerfile
    autocmd BufNewFile,BufRead Dockerfile,*.Dockerfile	setf dockerfile

    " Git
    autocmd BufNewFile,BufRead COMMIT_EDITMSG		setf gitcommit
    autocmd BufNewFile,BufRead MERGE_MSG			setf gitcommit
    autocmd BufNewFile,BufRead *.git/config,.gitconfig,.gitmodules setf gitconfig
    autocmd BufNewFile,BufRead *.git/modules/*/config	setf gitconfig
    autocmd BufNewFile,BufRead */.config/git/config	setf gitconfig
    if !empty($XDG_CONFIG_HOME)
      autocmd BufNewFile,BufRead $XDG_CONFIG_HOME/git/config	setf gitconfig
    endif
    autocmd BufNewFile,BufRead git-rebase-todo		setf gitrebase
    autocmd BufNewFile,BufRead .msg.[0-9]*
          \ if getline(1) =~ '^From.*# This line is ignored.$' |
          \   setf gitsendemail |
          \ endif
    autocmd BufNewFile,BufRead *.git/*
          \ if getline(1) =~ '^\x\{40\}\>\|^ref: ' |
          \   setf git |
          \ endif

	" https://webpack.github.io/docs/webpack-dev-server.html#working-with-editors-ides-supporting-safe-write
	autocmd FileType css,javascript,jsx,javascript.jsx
		\ setlocal backupcopy=yes
		\| setlocal equalprg=jslint
augroup END

