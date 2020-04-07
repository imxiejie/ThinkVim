
function! utils#source_file(root_path,path, ...)
	" Source user configuration files with set/global sensitivity
	let use_global = get(a:000, 0, ! has('vim_starting'))
	let abspath = resolve(a:root_path . '/' . a:path)
	if ! use_global
		execute 'source' fnameescape(abspath)
		return
	endif

	let tempfile = tempname()
	let content = map(readfile(abspath),
		\ "substitute(v:val, '^\\W*\\zsset\\ze\\W', 'setglobal', '')")
	try
		call writefile(content, tempfile)
		execute printf('source %s', fnameescape(tempfile))
	finally
		if filereadable(tempfile)
			call delete(tempfile)
		endif
	endtry
endfunction

function! utils#check_source(filename)
    if filereadable(a:filename)
        let content = readfile(a:filename)
        if !empty(content)
            execute 'source' a:filename
        endif
    endif
endfunction

function! utils#generate_coc_json()
    let coc_settings_json=expand($VIM_PATH. '/coc-settings.json')
    let coc_json_template=expand($VIM_PATH. '/.example.json')
    if !filereadable(coc_settings_json)
        let contents = readfile(coc_json_template)
        call add(contents,join(getline(1,'$'),"\n"))
        call writefile(contents,coc_settings_json,"b")
    endif
endfunction

