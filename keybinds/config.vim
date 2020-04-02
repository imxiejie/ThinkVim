"Plugin key settings

if dein#tap('dein.vim')
	nnoremap <silent> <Leader>du  :call dein#update()<CR>
	nnoremap <silent> <Leader>dr  :call dein#recache_runtimepath()<CR>
	nnoremap <silent> <Leader>dl  :echo dein#get_updates_log()<CR>
endif

if dein#tap('vim-startify')
	nnoremap <silent> <Leader>os  :<C-u>Startify<CR>
endif

if dein#tap('denite.nvim')
        noremap zl :<C-u>call <SID>my_denite_outline(&filetype)<CR>
        noremap zL :<C-u>call <SID>my_denite_decls(&filetype)<CR>
        noremap zT :<C-u>call <SID>my_denite_file_rec_goroot()<CR>
        function! s:my_denite_outline(filetype) abort
          execute 'Denite' a:filetype ==# 'go' ? "decls:'%:p'" : 'outline'
        endfunction
        function! s:my_denite_decls(filetype) abort
					if a:filetype ==# 'go'
							Denite decls
					else
							call denite#util#print_error('decls does not support filetypes except go')
					endif
        endfunction
        function! s:my_denite_file_rec_goroot() abort
					if !executable('go')
							call denite#util#print_error('`go` executable not found')
							return
					endif
					let out = system('go env | grep ''^GOROOT='' | cut -d\" -f2')
					let goroot = substitute(out, '\n', '', '')
					call denite#start(
									\ [{'name': 'file/rec', 'args': [goroot]}],
									\ {'input': '.go'})
        endfunction
endif

if dein#tap('coc.nvim')
       " Remap for do codeAction of selected region
        function! s:cocActionsOpenFromSelected(type) abort
            execute 'CocCommand actions.open ' . a:type
        endfunction
        xmap <silent> <leader>ca :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
        nmap <silent> <leader>ca :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@
        " Using CocList
        " Show all diagnostics
        nnoremap <silent> <leader>cd  :<C-u>CocList diagnostics<cr>
        " Manage extensions
        nnoremap <silent> <leader>ce  :<C-u>CocList extensions<cr>
        " Show commands
        nnoremap <silent> <leader>,  :<C-u>CocList commands<cr>
        " Find symbol of current document
        "nnoremap <silent> <leader>co  :<C-u>CocList outline<cr>
        " Search workspace symbols
        nnoremap <silent> <leader>cs  :<C-u>CocList -I symbols<cr>
        " Do default action for next item.
        nnoremap <silent> <leader>cj  :<C-u>CocNext<CR>
        " Do default action for previous item.
        nnoremap <silent> <leader>ck  :<C-u>CocPrev<CR>
        " Resume latest coc list
        nnoremap <silent> <leader>cu  :<C-u>CocListResume<CR>
        " Use `[c` and `]c` for navigate diagnostics
        nmap <silent> ]c <Plug>(coc-diagnostic-prev)
        nmap <silent> [c <Plug>(coc-diagnostic-next)
        " Remap for rename current word
        nmap <leader>cr <Plug>(coc-rename)
        " Remap for format selected region
        vmap <leader>cf  <Plug>(coc-format-selected)
        nmap <leader>cf  <Plug>(coc-format-selected)
        " Fix autofix problem of current line
        nmap <leader>qf  <Plug>(coc-fix-current)
        " Remap keys for gotos
        nmap <silent> gd <Plug>(coc-definition)
        nmap <silent> gy <Plug>(coc-type-definition)
        nmap <silent> <leader>ci <Plug>(coc-implementation)
        nmap <silent> gr <Plug>(coc-references)
        " Use K for show documentation in float window
        nnoremap <silent> K :call CocActionAsync('doHover')<CR>
        " use <c-space> for trigger completion.
        inoremap <silent><expr> <c-space> coc#refresh()
        nmap [g <Plug>(coc-git-prevchunk)
        nmap ]g <Plug>(coc-git-nextchunk)
        " show chunk diff at current position
        nmap gs <Plug>(coc-git-chunkinfo)
        " show commit contains current position
        nmap gm <Plug>(coc-git-commit)
        "nnoremap <silent> <leader>cg  :<C-u>CocList --normal gstatus<CR>
        " float window scroll
				nnoremap <expr><C-f> coc#util#has_float() ? coc#util#float_scroll(1) : "\<C-f>"
				nnoremap <expr><C-b> coc#util#has_float() ? coc#util#float_scroll(0) : "\<C-b>"
        " multiple cursors
        nmap <silent> <C-c> <Plug>(coc-cursors-position)
        nmap <expr> <silent> <C-m> <SID>select_current_word()
        xmap <silent> <C-d> <Plug>(coc-cursors-range)
        " use normal command like `<leader>xi(`
        nmap <leader>x  <Plug>(coc-cursors-operator)
        nnoremap <silent> <leader>ot :<C-u>CocCommand floaterm.new<cr>

        function! s:select_current_word()
            if !get(g:, 'coc_cursors_activated', 0)
                return "\<Plug>(coc-cursors-word)"
            endif
            return "*\<Plug>(coc-cursors-word):nohlsearch\<CR>"
        endfunc
				" Use `:Format` for format current buffer
        command! -nargs=0 Format :call CocAction('format')

        nnoremap  <leader>fz :<C-u>CocSearch -w<Space>
        " use normal command like `<leader>xi(`
        nmap <leader>x  <Plug>(coc-cursors-operator)
        " coc-explorer
        noremap <silent> <leader>j :execute 'CocCommand explorer' .
            \ ' --toggle' .
            \ ' --position=floating' .
            \ ' --sources=file+'<CR>
endif

if dein#tap('fzf-preview.vim')
	nnoremap <silent> <leader>fc :<C-u>Colors<CR>
  nnoremap <silent> <leader>bb :<C-u>FzfPreviewBuffers -processors=g:fzf_preview_buffer_delete_processors<CR>
	nnoremap <silent> <Leader>gS :<C-u>FzfPreviewGitStatus -processors=g:fzf_preview_gina_processors<CR>
  nnoremap <silent> <leader>bB :<C-u>FzfPreviewAllBuffers -processors=g:fzf_preview_buffer_delete_processors<CR>
  nnoremap <silent> <leader>ff :<C-u>FzfPreviewDirectoryFiles<CR>
  nnoremap <silent> <leader>fa :<C-u>FzfPreviewProjectGrep .<CR>
  nnoremap <silent> <leader>fo :<C-u>FzfPreviewOldFiles<CR>
	nnoremap <silent> <leader>fC :<C-u>FzfPreviewChanges<CR>
  nnoremap <silent> <leader>fm :<C-u>FzfPreviewMruFiles<CR>
  nnoremap <silent> <leader>fp :<C-u>FzfPreviewProjectFiles<CR>
	nnoremap <silent> <Leader>fw :<C-u>FzfPreviewProjectGrep <C-r>=expand('<cword>')<CR><CR>
  nnoremap <silent> <leader>fP :<C-u>FzfPreviewFromResources project_mru git<CR>
	augroup fzf_preview
		autocmd!
		autocmd User fzf_preview#initialized call s:fzf_preview_settings()
	augroup END

	function! s:fzf_preview_settings() abort
		let g:fzf_preview_buffer_delete_processors = fzf_preview#resource_processor#get_default_processors()
		let g:fzf_preview_buffer_delete_processors['ctrl-x'] = function('s:buffers_delete_from_lines')
	endfunction

	function! s:buffers_delete_from_lines(lines) abort
		for line in a:lines
			let matches = matchlist(line, '^buffer \(\d\+\)$')
			if len(matches) >= 1
				execute 'bdelete! ' . matches[1]
			else
				execute 'bdelete! ' . line
			endif
		endfor
	endfunction

	function! s:gina_add(paths) abort
		for path in a:paths
			execute 'silent Gina add ' . path
		endfor

		echomsg 'Git add ' . join(a:paths, ', ')
	endfunction

	function! s:gina_reset(paths) abort
		for path in a:paths
			execute 'silent Gina reset ' . path
		endfor

		echomsg 'Git reset ' . join(a:paths, ', ')
	endfunction

	function! s:gina_patch(paths) abort
		for path in a:paths
			execute 'silent Gina patch ' . path
		endfor

		echomsg 'Git add --patch ' . join(a:paths, ', ')
	endfunction

	function! s:fzf_preview_settings() abort
		let g:fzf_preview_custom_default_processors = fzf_preview#resource_processor#get_default_processors()
		call remove(g:fzf_preview_custom_default_processors, 'ctrl-x')
		let g:fzf_preview_custom_default_processors['ctrl-s'] = function('fzf_preview#resource_processor#split')

		let g:fzf_preview_buffer_delete_processors = fzf_preview#resource_processor#get_default_processors()
		let g:fzf_preview_buffer_delete_processors['ctrl-x'] = function('s:buffers_delete_from_lines')

		let g:fzf_preview_gina_processors = fzf_preview#resource_processor#get_processors()
		let g:fzf_preview_gina_processors['ctrl-a'] = function('s:gina_add')
		let g:fzf_preview_gina_processors['ctrl-r'] = function('s:gina_reset')
		let g:fzf_preview_gina_processors['ctrl-c'] = function('s:gina_patch')
	endfunction
endif

if dein#tap('vim-easy-align')
    " Start interactive EasyAlign in visual mode (e.g. vipga)
    xmap ga <Plug>(EasyAlign)
    " Start interactive EasyAlign for a motion/text object (e.g. gaip)
    nmap ga <Plug>(EasyAlign)
endif

if dein#tap('vim-go')
	 nnoremap <silent> <LocalLeader>gi :GoImpl<CR>
	 nnoremap <silent> <LocalLeader>gd :GoDescribe<CR>
	 nnoremap <silent> <LocalLeader>gc :GoCallees<CR>
	 nnoremap <silent> <LocalLeader>gC :GoCallers<CR>
	 nnoremap <silent> <LocalLeader>gs :GoCallstack<CR>
endif


if dein#tap('vimagit')
	nnoremap <silent> <Leader>gg :Magit<CR>
endif

if dein#tap('vim-fugitive')
	nnoremap <silent> <leader>ga :Git add %:p<CR>
	nnoremap <silent> <leader>gd :Gdiffsplit<CR>
	nnoremap <silent> <leader>gc :Git commit<CR>
	nnoremap <silent> <leader>gb :Git blame<CR>
	nnoremap <silent> <leader>gf :Gfetch<CR>
	nnoremap <silent> <leader>gs :Git<CR>
endif

if dein#tap('gina.vim')
	nnoremap <silent><Leader>gp :Gina push<CR>
	nnoremap <silent><Leader>gl :Gina log<CR>
endif

if dein#tap('vim-mundo')
    nnoremap <silent> <leader>m :MundoToggle<CR>
endif

if dein#tap('vim-choosewin')
	nmap -         <Plug>(choosewin)
	nmap <Leader>- :<C-u>ChooseWinSwapStay<CR>
endif

if dein#tap('accelerated-jk')
	nmap <silent>j <Plug>(accelerated_jk_gj)
	nmap <silent>k <Plug>(accelerated_jk_gk)
endif

if dein#tap('dsf.vim')
	nmap dsf <Plug>DsfDelete
	nmap csf <Plug>DsfChange
endif

if dein#tap('caw.vim')
    function! InitCaw() abort
			if ! &l:modifiable
				silent! nunmap <buffer> gc
				silent! xunmap <buffer> gc
				silent! nunmap <buffer> gcc
				silent! xunmap <buffer> gcc
			else
				nmap <buffer> gc <Plug>(caw:prefix)
				xmap <buffer> gc <Plug>(caw:prefix)
				nmap <buffer> gcc <Plug>(caw:hatpos:toggle)
				xmap <buffer> gcc <Plug>(caw:hatpos:toggle)
			endif
		endfunction
	autocmd FileType * call InitCaw()
	call InitCaw()
endif

if dein#tap('comfortable-motion.vim')
    nnoremap <silent> <C-d> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 2)<CR>
    nnoremap <silent> <C-u> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -2)<CR>
    nnoremap <silent> <C-f> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 4)<CR>
    nnoremap <silent> <C-b> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -4)<CR>
endif

if dein#tap('python_match.vim')
	nmap <buffer> {{ [%
	nmap <buffer> }} ]%
endif

if dein#tap('goyo.vim')
	nnoremap <Leader>G :Goyo<CR>
endif

if dein#tap('defx.nvim')
	nnoremap <silent> <Leader>e
		\ :<C-u>Defx -resume -toggle -buffer-name=tab`tabpagenr()`<CR>
	nnoremap <silent> <Leader>F
		\ :<C-u>Defx -resume -buffer-name=tab`tabpagenr()` -search=`expand('%:p')`<CR>
endif

if dein#tap('committia.vim')
	let g:committia_hooks = {}
	function! g:committia_hooks.edit_open(info)
		imap <buffer><C-d> <Plug>(committia-scroll-diff-down-half)
		imap <buffer><C-u> <Plug>(committia-scroll-diff-up-half)

		setlocal winminheight=1 winheight=1
		resize 10
		startinsert
	endfunction
endif

if dein#tap('vim-quickrun')
    nnoremap <silent> <leader>r :QuickRun<CR>
endif

if dein#tap('vim-expand-region')
        xmap v <Plug>(expand_region_expand)
        xmap V <Plug>(expand_region_shrink)
endif

if dein#tap('splitjoin.vim')
        let g:splitjoin_join_mapping = ''
        let g:splitjoin_split_mapping = ''
        nmap sj :SplitjoinJoin<CR>
        nmap sk :SplitjoinSplit<CR>
endif

if dein#tap('vista.vim')
	nnoremap <silent> <Leader>i :<C-u>Vista!!<CR>
endif

if dein#tap('ale')
        nmap [a <Plug>(ale_next_wrap)
        nmap ]a <Plug>(ale_previous_wrap)
endif

if dein#tap('vim-easymotion')
        nmap <Leader><Leader>w <Plug>(easymotion-w)
	    nmap <Leader><Leader>f <Plug>(easymotion-f)
	    nmap <Leader><Leader>b <Plug>(easymotion-b)
endif

if dein#tap('vim-which-key')
		nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
		nnoremap <silent> <localleader> :<c-u>WhichKey  ';'<CR>
		nnoremap <silent>[              :<c-u>WhichKey  '['<CR>
		nnoremap <silent>]              :<c-u>WhichKey  ']'<CR>
endif

if dein#tap('vim-smartchr')
    inoremap <expr> , smartchr#one_of(',', ',')
    autocmd FileType go inoremap <buffer><expr> ;
            \ smartchr#loop(':=',';')
    autocmd FileType go inoremap <buffer> <expr> .
          \ smartchr#loop('.', '<-', '->','...')
endif

if dein#tap('vim-sandwich')
     nmap <silent> sa <Plug>(operator-sandwich-add)
     xmap <silent> sa <Plug>(operator-sandwich-add)
     omap <silent> sa <Plug>(operator-sandwich-g@)
     nmap <silent> sd <Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a)
     xmap <silent> sd <Plug>(operator-sandwich-delete)
     nmap <silent> sr <Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a)
     xmap <silent> sr <Plug>(operator-sandwich-replace)
     nmap <silent> sdb <Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a)
     nmap <silent> srb <Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a)
     omap ib <Plug>(textobj-sandwich-auto-i)
     xmap ib <Plug>(textobj-sandwich-auto-i)
     omap ab <Plug>(textobj-sandwich-auto-a)
     xmap ab <Plug>(textobj-sandwich-auto-a)
     omap is <Plug>(textobj-sandwich-query-i)
     xmap is <Plug>(textobj-sandwich-query-i)
     omap as <Plug>(textobj-sandwich-query-a)
     xmap as <Plug>(textobj-sandwich-query-a)
endif

if dein#tap('vim-operator-replace')
	xmap p <Plug>(operator-replace)
endif

if dein#tap('vim-textobj-multiblock')
	omap <silent> ab <Plug>(textobj-multiblock-a)
	omap <silent> ib <Plug>(textobj-multiblock-i)
	xmap <silent> ab <Plug>(textobj-multiblock-a)
	xmap <silent> ib <Plug>(textobj-multiblock-i)
endif

if dein#tap('vim-textobj-function')
	omap <silent> af <Plug>(textobj-function-a)
	omap <silent> if <Plug>(textobj-function-i)
	xmap <silent> af <Plug>(textobj-function-a)
	xmap <silent> if <Plug>(textobj-function-i)
endif

" vim: set ts=2 sw=2 tw=80 noet :
