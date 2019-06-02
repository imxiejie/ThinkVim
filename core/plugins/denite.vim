call denite#custom#option('_', {
		\ 'cached_filter': v:true,
		\ 'cursor_shape': v:true,
		\ 'cursor_wrap': v:true,
		\ 'highlight_filter_background': 'DeniteFilter',
		\ 'highlight_matched_char': 'Underlined',
		\ 'matchers': 'matcher/fruzzy',
		\ 'prompt': 'λ ',
		\ 'split': 'floating',
		\ 'start_filter': v:true,
		\ 'statusline': v:false,
		\ })
function! s:denite_detect_size() abort
    let s:denite_winheight = 20
    let s:denite_winrow = &lines > s:denite_winheight ? (&lines - s:denite_winheight) / 2 : 0
    let s:denite_winwidth = &columns > 240 ? &columns / 2 : 120
    let s:denite_wincol = &columns > s:denite_winwidth ? (&columns - s:denite_winwidth) / 2 : 0
    call denite#custom#option('_', {
          \ 'wincol': s:denite_wincol,
          \ 'winheight': s:denite_winheight,
          \ 'winrow': s:denite_winrow,
          \ 'winwidth': s:denite_winwidth,
          \ })
  endfunction
   augroup denite-detect-size
    autocmd!
    autocmd VimResized * call <SID>denite_detect_size()
  augroup END
  call s:denite_detect_size()

call denite#custom#option('list', {})
call denite#custom#option('mpc', { 'mode': 'normal', 'winheight': 20 })

" MATCHERS
" Default is 'matcher/fuzzy'
call denite#custom#source('tag', 'matchers', ['matcher/substring'])
" call denite#custom#source('file/rec', 'matchers', ['matcher/fruzzy'])

if has('nvim') && &runtimepath =~# '\/cpsm'
	call denite#custom#source(
		\ 'buffer,file_mru,file_old,file/rec,grep,mpc,line,neoyank',
		\ 'matchers', ['matcher/cpsm', 'matcher/fuzzy'])
endif

" SORTERS
" Default is 'sorter/rank'
call denite#custom#source('z', 'sorters', ['sorter_z'])

" CONVERTERS
" Default is none
call denite#custom#source(
	\ 'buffer,file_mru,file_old',
	\ 'converters', ['converter_relative_word'])

" FIND and GREP COMMANDS
if executable('ag')
	" The Silver Searcher
	call denite#custom#var('file/rec', 'command',
		\ ['ag', '-U', '--hidden', '--follow', '--nocolor', '--nogroup', '-g', ''])

	" Setup ignore patterns in your .agignore file!
	" https://github.com/ggreer/the_silver_searcher/wiki/Advanced-Usage

	call denite#custom#var('grep', 'command', ['ag'])
	call denite#custom#var('grep', 'recursive_opts', [])
	call denite#custom#var('grep', 'pattern_opt', [])
	call denite#custom#var('grep', 'separator', ['--'])
	call denite#custom#var('grep', 'final_opts', [])
	call denite#custom#var('grep', 'default_opts',
		\ [ '--skip-vcs-ignores', '--vimgrep', '--smart-case', '--hidden' ])

elseif executable('ack')
	" Ack command
	call denite#custom#var('grep', 'command', ['ack'])
	call denite#custom#var('grep', 'recursive_opts', [])
	call denite#custom#var('grep', 'pattern_opt', ['--match'])
	call denite#custom#var('grep', 'separator', ['--'])
	call denite#custom#var('grep', 'final_opts', [])
	call denite#custom#var('grep', 'default_opts',
			\ ['--ackrc', $HOME.'/.config/ackrc', '-H',
			\ '--nopager', '--nocolor', '--nogroup', '--column'])

elseif executable('rg')
	" Ripgrep
  call denite#custom#var('file/rec', 'command',
        \ ['rg', '--files', '--glob', '!.git'])
  call denite#custom#var('grep', 'command', ['rg', '--threads', '1'])
  call denite#custom#var('grep', 'recursive_opts', [])
  call denite#custom#var('grep', 'final_opts', [])
  call denite#custom#var('grep', 'separator', ['--'])
  call denite#custom#var('grep', 'default_opts',
        \ ['-i', '--vimgrep', '--no-heading'])
endif


" KEY MAPPINGS
  autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>   denite#do_map('do_action')
  nnoremap <silent><buffer><expr> <C-a>   denite#do_map('do_action', 'my_file_rec')
  nnoremap <silent><buffer><expr> d      denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p      denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q      denite#do_map('quit')
  nnoremap <silent><buffer><expr> i      denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr><Space> denite#do_map('toggle_select').'j'
   nnoremap <silent><buffer><expr> <Tab>   denite#do_map('choose_action')
endfunction
" vim: set ts=3 sw=2 tw=80 noet :
