
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

" Load Env file and return env content
function! utils#load_env()
  let l:env_file = getenv("HOME")."/.env"
  let l:env_dict={}
  if filereadable(l:env_file)
    let l:env_content = readfile(l:env_file)
    for item in l:env_content
      let l:env_dict[split(item,"=")[0]] = split(item,"=")[1]
    endfor
    return l:env_dict
  else
    echo "env file doesn't exist"
  endif
endfunction

" Load database connection from env file
function! utils#load_db_from_env()
  let l:env = initself#load_env()
  let l:dbs={}
  for key in keys(l:env)
    if stridx(key,"DB_CONNECTION_") >= 0
      let l:dbs[split(key,"_")[2]] = l:env[key]
    endif
  endfor
  if empty(l:dbs)
    echo "Env Database config error"
  endif
  return l:dbs
endfunction
