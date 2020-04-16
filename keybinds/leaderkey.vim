"Plugin key settings

if dein#tap('dein.vim')
	nnoremap <silent> <Leader>pu  :call dein#update()<CR>
	nnoremap <silent> <Leader>pr  :call dein#recache_runtimepath()<CR>
	nnoremap <silent> <Leader>pl  :echo dein#get_updates_log()<CR>
endif

if dein#tap('vim-buffet')
	nnoremap <silent> <Leader>bc :Bonly<CR>
	nnoremap <silent> <Leader>bx :Bw<CR>
endif

if dein#tap('vim-startify')
	nnoremap <silent> <Leader>os  :<C-u>Startify<CR>
endif

if dein#tap('markdown-preview.nvim')
	nnoremap <silent> <Leader>om  :<C-u>MarkdownPreview<CR>
endif

if dein#tap('indentLine')
	nnoremap <Leader>ti :IndentLinesToggle<CR>
endif

if dein#tap('any-jump.vim')
	nnoremap <silent> <Leader>cj :AnyJump<CR>
	xnoremap <silent> <Leader>cj :AnyJump<CR>
endif

if dein#tap('vim-floaterm')
  nnoremap <silent> <Leader>ot ::FloatermToggle<CR>
endif

if dein#tap('coc.nvim')
       " Remap for do codeAction of selected region
        function! s:cocActionsOpenFromSelected(type) abort
            execute 'CocCommand actions.open ' . a:type
        endfunction
        xmap <silent> <Leader>ca :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
        nmap <silent> <Leader>ca :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@
        " Do default action for next item.
        nnoremap <silent> <Leader>cn  :<C-u>CocNext<CR>
        " Do default action for previous item.
        nnoremap <silent> <Leader>cp  :<C-u>CocPrev<CR>
        " Using CocList
        " Show all diagnostics
        nnoremap <silent> <Leader>ce  :<C-u>CocList diagnostics<cr>
        " Manage extensions
        nnoremap <silent> <Leader>;  :<C-u>CocList extensions<cr>
        " Show commands
        nnoremap <silent> <Leader>,  :<C-u>CocList commands<cr>
        " Find symbol of current document
        "nnoremap <silent> <Leader>co  :<C-u>CocList outline<cr>
        " Search workspace symbols
        nnoremap <silent> <Leader>cs  :<C-u>CocList -I symbols<cr>
        " Resume latest coc list
        nnoremap <silent> <Leader>'  :<C-u>CocListResume<CR>
        " Use `[e` and `]e` for navigate diagnostics
        nmap <silent> ]e <Plug>(coc-diagnostic-prev)
        nmap <silent> [e <Plug>(coc-diagnostic-next)
        " Remap for rename current word
        nmap <Leader>cr <Plug>(coc-rename)
        " Remap for format selected region
        vmap <Leader>cf  <Plug>(coc-format-selected)
        nmap <Leader>cf  <Plug>(coc-format-selected)
        " Fix autofix problem of current line
        nmap <Leader>cF  <Plug>(coc-fix-current)
        " Remap keys for gotos
        nmap <silent> gd <Plug>(coc-definition)
        nmap <silent> gy <Plug>(coc-type-definition)
        nmap <silent> <Leader>ci <Plug>(coc-implementation)
        nmap <silent> gr <Plug>(coc-references)
        " Use K for show documentation in float window
        nnoremap <silent> K :call CocActionAsync('doHover')<CR>
        nnoremap <silent> <Leader>cd :call CocActionAsync('doHover')<CR>
        " use <c-space> for trigger completion.
        inoremap <silent><expr> <c-space> coc#refresh()
        nmap ]g <Plug>(coc-git-prevchunk)
        nmap [g <Plug>(coc-git-nextchunk)
        " show chunk diff at current position
        nmap <Leader>gi <Plug>(coc-git-chunkinfo)
        " show commit contains current position
        nmap <Leader>gm <Plug>(coc-git-commit)
        " float window scroll
				nnoremap <expr><C-f> coc#util#has_float() ? coc#util#float_scroll(1) : "\<C-f>"
				nnoremap <expr><C-b> coc#util#has_float() ? coc#util#float_scroll(0) : "\<C-b>"
				" Use <TAB> for selections ranges.
				" NOTE: Requires 'textDocument/selectionRange' support from the language server.
				" coc-tsserver, coc-python are the examples of servers that support it.
				nmap <silent> <TAB> <Plug>(coc-range-select)
				xmap <silent> <TAB> <Plug>(coc-range-select)
        " Add `:OR` command for organize imports of the current buffer.
        command! -nargs=0 OR  :call CocAction('runCommand', 'editor.action.organizeImport')
				nnoremap <silent> <Leader>co :<C-u>OR<CR>
        " multiple cursors
        nmap <silent> <C-c> <Plug>(coc-cursors-position)
        nmap <expr> <silent> <C-m> <SID>select_current_word()
        xmap <silent> <C-d> <Plug>(coc-cursors-range)
        " use normal command like `<Leader>xi(`
        nmap <Leader>x  <Plug>(coc-cursors-operator)

        function! s:select_current_word()
            if !get(g:, 'coc_cursors_activated', 0)
                return "\<Plug>(coc-cursors-word)"
            endif
            return "*\<Plug>(coc-cursors-word):nohlsearch\<CR>"
        endfunc
				" Use `:Format` for format current buffer
        command! -nargs=0 Format :call CocAction('format')

        nnoremap  <Leader>fz :<C-u>CocSearch -w<Space>
        " use normal command like `<Leader>xi(`
        nmap <Leader>x  <Plug>(coc-cursors-operator)
        " coc-explorer
        noremap <silent> <Leader>j :execute 'CocCommand explorer' .
            \ ' --toggle' .
            \ ' --position=floating' .
            \ ' --sources=file+'<CR>
				" Introduce function text object
				" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
				xmap if <Plug>(coc-funcobj-i)
				xmap af <Plug>(coc-funcobj-a)
				omap if <Plug>(coc-funcobj-i)
				omap af <Plug>(coc-funcobj-a)
endif

if dein#tap('vim-clap')
	nnoremap <silent> <Leader>tc :<C-u>Clap colors<CR>
	nnoremap <silent> <Leader>bb :<C-u>Clap buffers<CR>
	nnoremap <silent> <Leader>fa :<C-u>Clap grep<CR>
	"like emacs counsel-find-file
	nnoremap <silent> <C-x><C-f> :<C-u>Clap filer<CR>
	nnoremap <silent> <Leader>ff :<C-u>Clap files ++finder=rg --no-ignore --hidden --files<cr>
	nnoremap <silent> <Leader>fg :<C-u>Clap gfiles<CR>
	nnoremap <silent> <Leader>fw :<C-u>Clap grep ++query=<cword><cr>
	nnoremap <silent> <Leader>fh :<C-u>Clap history<CR>
	nnoremap <silent> <Leader>fW :<C-u>Clap windows<CR>
	nnoremap <silent> <Leader>fl :<C-u>Clap loclist<CR>
	nnoremap <silent> <Leader>fu :<C-u>Clap git_diff_files<CR>
	nnoremap <silent> <Leader>fv :<C-u>Clap grep ++query=@visual<CR>
	nnoremap <silent> <Leader>oc :<C-u>Clap personalconf<CR>
endif

if dein#tap('vim-easy-align')
    " Start interactive EasyAlign in visual mode (e.g. vipga)
    xmap ga <Plug>(EasyAlign)
    " Start interactive EasyAlign for a motion/text object (e.g. gaip)
    nmap ga <Plug>(EasyAlign)
endif

if dein#tap('vim-go')
	function! InitGoKeyMap() abort
	 nnoremap <silent> <LocalLeader>ga :GoAddTags<CR>
	 nnoremap <silent> <LocalLeader>gr :GoRemoveTags<CR>
	 nnoremap <silent> <LocalLeader>gi :GoImpl<CR>
	 nnoremap <silent> <LocalLeader>gd :GoDescribe<CR>
	 nnoremap <silent> <LocalLeader>gc :GoCallees<CR>
	 nnoremap <silent> <LocalLeader>gC :GoCallers<CR>
	 nnoremap <silent> <LocalLeader>gs :GoCallstack<CR>
	endfunction
	autocmd FileType go call InitGoKeyMap()
endif

if dein#tap('vim-delve')
	function! InitGoDebugKeyMap() abort
		nnoremap <silent> <Leader>da :DlvToggleBreakpoint<CR>
		nnoremap <silent> <Leader>db :DlvToggleTracepoint<CR>
		nnoremap <silent> <Leader>dc :DlvClearAll<CR>
		nnoremap <silent> <Leader>dd :DlvDebug<CR>
		nnoremap <silent> <Leader>dt :DlvTest<CR>
		nnoremap <silent> <Leader>dr :DlvRemoveBreakpoint<CR>
		nnoremap <silent> <Leader>dR :DlvRemoveTracepoint<CR>
	endfunction
	autocmd FileType go call InitGoDebugKeyMap()
endif


if dein#tap('vimagit')
	nnoremap <silent> <Leader>gg :Magit<CR>
endif

if dein#tap('vim-fugitive')
	nnoremap <silent> <Leader>ga :Git add %:p<CR>
	nnoremap <silent> <Leader>gd :Gdiffsplit<CR>
	nnoremap <silent> <Leader>gc :Git commit<CR>
	nnoremap <silent> <Leader>gb :Git blame<CR>
	nnoremap <silent> <Leader>gf :Gfetch<CR>
	nnoremap <silent> <Leader>gs :Git<CR>
endif

if dein#tap('gina.vim')
	nnoremap <silent><Leader>gp :Gina push<CR>
	nnoremap <silent><Leader>gl :Gina log<CR>
endif

if dein#tap('vim-mundo')
    nnoremap <silent> <Leader>m :MundoToggle<CR>
endif

if dein#tap('vim-choosewin')
	nmap -         <Plug>(choosewin)
	nmap <Leader>- :<C-u>ChooseWinSwapStay<CR>
endif

if dein#tap('accelerated-jk')
	nmap <silent>j <Plug>(accelerated_jk_gj)
	nmap <silent>k <Plug>(accelerated_jk_gk)
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

if dein#tap('vim-smoothie')
	nnoremap <silent> <C-f> :<C-U>call smoothie#forwards()<CR>
  nnoremap <silent> <C-b> :<C-U>call smoothie#backwards()<CR>
  nnoremap <silent> <C-d> :<C-U>call smoothie#downwards()<CR>
  nnoremap <silent> <C-u> :<C-U>call smoothie#upwards()<CR>
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
    nnoremap <silent> <Leader>cR :QuickRun<CR>
endif

if dein#tap('vista.vim')
	nnoremap <silent> <Leader>i :<C-u>Vista!!<CR>
endif

if dein#tap('ale')
        nmap [a <Plug>(ale_next_wrap)
        nmap ]a <Plug>(ale_previous_wrap)
endif

if dein#tap('vim-easymotion')
	nmap gsj <Plug>(easymotion-w)
	nmap gsk <Plug>(easymotion-b)
endif

if dein#tap('vim-which-key')
    function! InitWhickey()
      let s:leader_key=substitute(get(g:,"mapleader","\\"), ' ', '<Space>', '')
      let s:localleader_key= get(g:,'maplocalleader',';')
		  execute 'nnoremap <silent> <Leader> :<c-u>WhichKey "'.s:leader_key.'"<CR>'
		  execute 'vnoremap <silent> <Leader> :<c-u>WhichKeyVisual "'.s:leader_key.'"<CR>'
		  execute 'nnoremap <silent> <LocalLeader> :<c-u>WhichKey "' .s:localleader_key.'"<CR>'
    endfunction
    call InitWhickey()
endif

if dein#tap('vim-smartchr')
    inoremap <expr> , smartchr#one_of(',', ',')
    autocmd FileType go inoremap <buffer><expr> ;
            \ smartchr#loop(':=',';')
    autocmd FileType go inoremap <buffer> <expr> .
          \ smartchr#loop('.', '<-', '->','...')
endif

if dein#tap('iron.nvim')
	nmap <silent> <Leader>rr :<C-u>IronRepl<CR><Esc>
	nmap <silent> <Leader>rq <Plug>(iron-exit)
	nmap <silent> <Leader>rl <Plug>(iron-send-line)
	vmap <silent> <Leader>rl <Plug>(iron-visual-send)
	nmap <silent> <Leader>rp <Plug>(iron-repeat-cmd)
	nmap <silent> <Leader>rc <Plug>(iron-clear)
	nmap <silent> <Leader>r<CR>  <Plug>(iron-cr)
	nmap <silent> <Leader>r<Esc> <Plug>(iron-interrupt)
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

if dein#tap('vim-expand-region')
        xmap v <Plug>(expand_region_expand)
        xmap V <Plug>(expand_region_shrink)
endif

if dein#tap('dsf.vim')
	nmap dsf <Plug>DsfDelete
	nmap csf <Plug>DsfChange
endif

if dein#tap('splitjoin.vim')
        let g:splitjoin_join_mapping = ''
        let g:splitjoin_split_mapping = ''
        nmap sj :SplitjoinJoin<CR>
        nmap sk :SplitjoinSplit<CR>
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
