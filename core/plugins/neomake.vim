" Neomake
" ---------
let g:neomake_open_list = 0
let g:neomake_verbose = 1
let g:neomake_virtualtext_prefix ='❯❯ '

if ! empty(g:python3_host_prog)
	let g:neomake_python_python_exe = g:python3_host_prog
endif

" SHELL
let g:neomake_shellcheck_args = ['-fgcc']

" JAVASCRIPT / JSX
function! s:set_javascript_exe()
	" Set buffer makers to ESLint or Flow, if executables exist.
	let g:neomake_javascript_enabled_makers = []
	for item in ['eslint', 'flow']
		let l:exe = s:find_node_executable(item)
		if ! empty(l:exe)
			call add(g:neomake_javascript_enabled_makers, item)
			let b:neomake_javascript_{item}_exe = l:exe
		endif
	endfor
	let g:neomake_jsx_enabled_makers = g:neomake_javascript_enabled_makers
endfunction

function! s:find_node_executable(cmd)
	" Find locally-installed NodeJS executable.
	" Credits: https://github.com/jaawerth/nrun.vim
	let l:cwd = expand('%:p:h')
	let l:rp = fnamemodify('/', ':p')
	let l:hp = fnamemodify('~/', ':p')
	while l:cwd != l:hp && l:cwd != l:rp
		if filereadable(resolve(l:cwd . '/package.json'))
			let l:execPath = fnamemodify(l:cwd . '/node_modules/.bin/' . a:cmd, ':p')
			if executable(l:execPath)
				return l:execPath
			endif
		endif
		let l:cwd = resolve(l:cwd . '/..')
	endwhile
	return ''
endfunction

autocmd MyAutoCmd BufWritePre *.js call s:set_javascript_exe()
call s:set_javascript_exe()

" Plugin: Neomake icons {{{
" ---------------------------------------------------------
let g:neomake_error_sign = {'text': '🐉', 'texthl': 'ErrorMsg'}
let g:neomake_warning_sign = {'text': '🐬', 'texthl': 'WarningSyntax'}
let g:neomake_message_sign = {'text': '⌂', 'texthl': 'NeomakeMessageSign'}
let g:neomake_info_sign = {'text': '⊹', 'texthl': 'NeomakeInfoSign'}
"}}}

hi WarningSyntax  ctermbg=NONE guibg=NONE
hi ErrorMsg ctermbg=NONE guibg=NONE


" vim: set foldmethod=marker ts=2 sw=2 tw=80 noet :
