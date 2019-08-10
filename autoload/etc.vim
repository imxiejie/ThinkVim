let g:etc#package_manager = get(g:, 'etc#package_manager', 'dein')


let g:etc#vim_path =
	\ get(g:, 'etc#vimpath',
	\   exists('*stdpath') ? stdpath('config') :
	\   ! empty($MYVIMRC) ? fnamemodify(expand($MYVIMRC), ':h') :
	\   ! empty($VIMCONFIG) ? expand($VIMCONFIG) :
	\   ! empty($VIMCONFIG) ? expand($VIMCONFIG) :
	\   ! empty($VIM_PATH) ? expand($VIM_PATH) :
	\   expand('$HOME/.vim')
	\ )

let g:etc#cache_path =
	\ expand(($XDG_CACHE_HOME ? $XDG_CACHE_HOME : '~/.cache').'/vim')

let g:etc#config_paths = get(g:, 'etc#config_paths', [
	\ 'usr/vimrc.yaml',
	\ 'usr/vimrc.json',
	\ 'vimrc.yaml',
	\ 'vimrc.json',
	\ 'core/dein/plugins.yaml',
	\ ])

function! s:check_custom_settings(filename)abort
       let  content = readfile(a:filename)
       if empty(content)
           return v:false
       endif
       return v:true
endfunction

function! etc#init() abort
	if empty(g:etc#package_manager) || g:etc#package_manager ==# 'none'
		return
	endif

	let l:config_paths = map(
		\   copy(g:etc#config_paths),
		\   'g:etc#vim_path ."/". v:val'
		\ )
    let l:local_paths=expand($HOME.'/.thinkvim.d/local_plugins.yaml')
	call filter(l:config_paths, 'filereadable(v:val)')
    if filereadable(l:local_paths)
        if s:check_custom_settings(l:local_paths)
            call add(l:config_paths,l:local_paths)
        endif
    endif
	call etc#providers#{g:etc#package_manager}#_init(l:config_paths)
endfunction

function! etc#_parse_config_files(config_paths) abort
	try
        let l:plugins_list=[]
		for l:cfg_file in a:config_paths
				call extend(l:plugins_list, etc#util#load_config(l:cfg_file))
		endfor
        return l:plugins_list
	catch /.*/
		echoerr v:exception
		echomsg 'Error parsing user configuration file(s).'
		echoerr 'Please run: pip3 install --user PyYAML'
		echomsg 'Caught: ' v:exception
	endtry

	call etc#util#error(
		\ 'Unable to read configuration files at '.string(a:config_paths))
endfunction
