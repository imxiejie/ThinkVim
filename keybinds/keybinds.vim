let s:enable_whichkey = dein#tap('vim-which-key')

if s:enable_whichkey
  function! InitWhickey()
    let s:leader_key=substitute(get(g:,"mapleader","\\"), ' ', '<Space>', '')
    let s:localleader_key= get(g:,'maplocalleader',';')
    execute 'nnoremap <silent> <Leader> :<c-u>WhichKey "'.s:leader_key.'"<CR>'
    execute 'vnoremap <silent> <Leader> :<c-u>WhichKeyVisual "'.s:leader_key.'"<CR>'
    execute 'nnoremap <silent> <LocalLeader> :<c-u>WhichKey "' .s:localleader_key.'"<CR>'
  endfunction
  call InitWhickey()
  let g:which_key_map.c = { 'name': '+code' }
  let g:which_key_map.f = { 'name': '+find'}
  let g:which_key_map.o = { 'name': '+open' }
  let g:which_key_map.t = { 'name': '+toggle'}
  let g:which_key_map.g = { 'name': '+versioncontrol'}
endif

function! s:load_dein() abort
  if dein#tap('dein.vim')
    nnoremap <silent> <Leader>pu  :call dein#update()<CR>
    nnoremap <silent> <Leader>pr  :call dein#recache_runtimepath()<CR>
    nnoremap <silent> <Leader>pl  :echo dein#get_updates_log()<CR>
    if s:enable_whichkey
      let g:which_key_map.p = { 'name': '+plugin'}
      let g:which_key_map.p.u = 'update all plugins'
      let g:which_key_map.p.r = 'reache runtime path'
      let g:which_key_map.p.l = 'plugins update log'
    endif
  endif
endfunction

function! s:load_buffet() abort
  if dein#tap('vim-buffet')
    nnoremap  ]b :<C-u>bp<CR>
    nnoremap  [b :<C-u>bn<CR>
    "delete buffer
    nmap <C-x>b :<C-u>bd<CR>
    nnoremap <silent> <Leader>bc :Bonly<CR>
    nnoremap <silent> <Leader>bx :Bw<CR>
    nmap <leader>1 <Plug>BuffetSwitch(1)
    nmap <leader>2 <Plug>BuffetSwitch(2)
    nmap <leader>3 <Plug>BuffetSwitch(3)
    nmap <leader>4 <Plug>BuffetSwitch(4)
    nmap <leader>5 <Plug>BuffetSwitch(5)
    nmap <leader>6 <Plug>BuffetSwitch(6)
    nmap <leader>7 <Plug>BuffetSwitch(7)
    nmap <leader>8 <Plug>BuffetSwitch(8)
    nmap <leader>9 <Plug>BuffetSwitch(9)
    nmap <leader>0 <Plug>BuffetSwitch(10)
    if s:enable_whichkey
      let g:which_key_map.b = { 'name': '+buffer' }
      let g:which_key_map.b.c = 'keep current buffer'
      let g:which_key_map.b.x = 'remove all buffers'
      let g:which_key_map.1 = 'select window-1'
      let g:which_key_map.2 = 'select window-2'
      let g:which_key_map.3 = 'select window-3'
      let g:which_key_map.4 = 'select window-4'
      let g:which_key_map.5 = 'select window-5'
      let g:which_key_map.6 = 'select window-6'
      let g:which_key_map.7 = 'select window-7'
      let g:which_key_map.8 = 'select window-8'
      let g:which_key_map.9 = 'select window-9'
      let g:which_key_map.0 = 'select window-10'
    endif
  endif
endfunction

function! s:load_startify() abort
  if dein#tap('vim-startify')
    nnoremap <silent> <Leader>os  :<C-u>Startify<CR>
    if s:enable_whichkey
      let g:which_key_map.o.s = 'open stratify'
    endif
  endif
endfunction

function! s:load_markdown_preview() abort
  if dein#tap('markdown-preview.nvim')
    nnoremap <silent> <Leader>om  :<C-u>MarkdownPreview<CR>
    if s:enable_whichkey
      let g:which_key_map.o.m = 'open markdownPreview'
    endif
  endif
endfunction

function! s:load_indentline()abort
  if dein#tap('indentLine')
    nnoremap <Leader>ti :IndentLinesToggle<CR>
    if s:enable_whichkey
      let g:which_key_map.t.i = 'Indentline toggle'
    endif
  endif
endfunction

function! s:load_floaterm() abort
  if dein#tap('vim-floaterm')
    nnoremap <silent> <Leader>ot :<C-u>FloatermToggle<CR>
    nnoremap <silent> <Leader>gz :<C-u>FloatermNew height=0.7 width=0.8 lazygit<CR>
    if s:enable_whichkey
      let g:which_key_map.o.t = 'open terminal'
      let g:which_key_map.g.z = 'lazygit'
    endif
  endif
endfunction

function s:load_dadbod_ui() abort
  if dein#tap('vim-dadbod-ui')
    nnoremap <silent> <Leader>od :DBUIToggle<CR>
    if s:enable_whichkey
      let g:which_key_map.o.d = 'open database'
    endif
  endif
endfunction

function! s:load_dash() abort
  if dein#tap('dash.vim')
    nnoremap <silent><localleader>d :Dash<CR>
    if s:enable_whichkey
      let g:which_key_localmap.d="open doc on Dash.app"
    endif
  endif
endfunction

function! s:load_coc_clap() abort
  if dein#tap('coc-clap')
    " Show all diagnostics
    nnoremap <silent> <Leader>ce  :Clap coc_diagnostics<CR>
    " Manage extensions
    nnoremap <silent> <Leader>;   :Clap coc_extensions<CR>
    " Show commands
    nnoremap <silent> <Leader>,   :Clap coc_commands<CR>
    " Search workspace symbols
    nnoremap <silent> <Leader>cs  :Clap coc_symbols<CR>
    nnoremap <silent> <Leader>cS  :Clap coc_services<CR>
    nnoremap <silent> <leader>ct  :Clap coc_outline<CR>
    if s:enable_whichkey
      let g:which_key_map[';'] = 'coc extensions'
      let g:which_key_map[','] = 'coc commands'
      let g:which_key_map.c.e = 'Lsp Show Diagnostics'
      let g:which_key_map.c.S = 'Lsp Show Services'
      let g:which_key_map.c.s = 'Lsp Show Symbols'
      let g:which_key_map.c.t = 'Lsp Show Outline'
    endif
  endif
endfunction

function! s:load_coc() abort
  if dein#tap('coc.nvim')
    if s:enable_whichkey
      let g:which_key_map.c.a = 'Lsp CodeActionSelected'
      let g:which_key_map["'"] = 'coc resume'
      let g:which_key_map.c.n = 'Lsp Rename'
      let g:which_key_map.c.i = 'Lsp Find implementation'
      let g:which_key_map.c.f = 'Lsp Format'
      let g:which_key_map.c.F = 'Lsp auto fix'
      let g:which_key_map.c.d = 'Lsp Show Document'
      let g:which_key_map.c.o = 'Lsp Organize Import'
      let g:which_key_map.g.i = 'Show chunk diff at point'
      let g:which_key_map.g.m = 'Show commit contains at point'
      let g:which_key_map.j = 'open coc-exoplorer'
      let g:which_key_map.f.z = 'find word on multipe files'
    endif
    " Remap for do codeAction of selected region
    function! s:cocActionsOpenFromSelected(type) abort
        execute 'CocCommand actions.open ' . a:type
    endfunction
    " Jump definition in other window
    function! s:definition_other_window() abort
      if winnr('$') >= 4
        exec "normal \<Plug>(coc-definition)"
      else
        exec 'vsplit'
        exec "normal \<Plug>(coc-definition)"
      endif
    endfunction
    xmap <silent> <Leader>ca :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
    nmap <silent> <Leader>ca :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@
    " Do default action for next item.
    nmap <silent> [a  :<C-u>CocNext<CR>
    " Do default action for previous item.
    nmap <silent> ]a  :<C-u>CocPrev<CR>
    " Resume latest coc list
    nnoremap <silent> <Leader>'  :<C-u>CocListResume<CR>
    " Use `[e` and `]e` for navigate diagnostics
    nmap <silent> ]e <Plug>(coc-diagnostic-prev)
    nmap <silent> [e <Plug>(coc-diagnostic-next)
    " Remap for rename current word
    nmap <Leader>cn <Plug>(coc-rename)
    " Remap for format selected region
    vmap <Leader>cf  <Plug>(coc-format-selected)
    nmap <Leader>cf  <Plug>(coc-format-selected)
    " Fix autofix problem of current line
    nmap <Leader>cF  <Plug>(coc-fix-current)
    " Remap keys for gotos
    nmap <silent> gd :<C-u>call <sid>definition_other_window()<CR>
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
    nmap <silent><M-s> <Plug>(coc-cursors-position)
    nmap <expr> <silent><M-d> <SID>select_current_word()
    xmap <silent><M-d> <Plug>(coc-cursors-range)
    " use normal command like `<Leader>xi(`
    nmap <silent><M-c>  <Plug>(coc-cursors-operator)

    function! s:select_current_word()
        if !get(g:, 'coc_cursors_activated', 0)
            return "\<Plug>(coc-cursors-word)"
        endif
        return "*\<Plug>(coc-cursors-word):nohlsearch\<CR>"
    endfunc
    " Use `:Format` for format current buffer
    command! -nargs=0 Format :call CocAction('format')

    nnoremap  <Leader>fz :<C-u>CocSearch -w<Space>
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
endfunction

function! s:load_clap() abort
  if dein#tap('vim-clap')
    nnoremap <silent> <Leader>tc :<C-u>Clap colors<CR>
    nnoremap <silent> <Leader>bb :<C-u>Clap buffers<CR>
    nnoremap <silent> <Leader>fa :<C-u>Clap grep2<CR>
    "like emacs counsel-find-file
    nnoremap <silent> <C-x><C-f> :<C-u>Clap filer<CR>
    nnoremap <silent> <Leader>ff :<C-u>Clap files ++finder=rg --ignore --hidden --files<cr>
    nnoremap <silent> <Leader>fg :<C-u>Clap gfiles<CR>
    nnoremap <silent> <Leader>fw :<C-u>Clap grep ++query=<cword><cr>
    nnoremap <silent> <Leader>fh :<C-u>Clap history<CR>
    nnoremap <silent> <Leader>fW :<C-u>Clap windows<CR>
    nnoremap <silent> <Leader>fl :<C-u>Clap loclist<CR>
    nnoremap <silent> <Leader>fu :<C-u>Clap git_diff_files<CR>
    nnoremap <silent> <Leader>fv :<C-u>Clap grep ++query=@visual<CR>
    nnoremap <silent> <Leader>oc :<C-u>Clap personalconf<CR>
    if s:enable_whichkey
      let g:which_key_map.t.c = 'Change Colorscheme'
      let g:which_key_map.b.b = 'Buffer List'
      let g:which_key_map.f.a = 'Find Word'
      let g:which_key_map.f.f = 'Find File'
      let g:which_key_map.f.g = 'Find files with git'
      let g:which_key_map.f.w = 'Find current word'
      let g:which_key_map.f.h = 'Find history'
      let g:which_key_map.f.W = 'Find windows'
      let g:which_key_map.f.l = 'Find locallist'
      let g:which_key_map.f.u = 'Find uncommitted files'
      let g:which_key_map.f.v = 'Find visual text'
      let g:which_key_map.o.c = 'Open personal config'
    endif
  endif
endfunction

function! s:load_vim_go() abort
  if dein#tap('vim-go')
    function! InitGoKeyMap() abort
      nnoremap <silent> <LocalLeader>ga :GoAddTags<CR>
      nnoremap <silent> <LocalLeader>gr :GoRemoveTags<CR>
      nnoremap <silent> <LocalLeader>gi :GoImpl<CR>
      nnoremap <silent> <LocalLeader>gd :GoDescribe<CR>
      nnoremap <silent> <LocalLeader>gc :GoCallees<CR>
      nnoremap <silent> <LocalLeader>gC :GoCallers<CR>
      nnoremap <silent> <LocalLeader>gs :GoCallstack<CR>
      if s:enable_whichkey
        let g:which_key_localmap.g = { 'name': '+GoToolKit'}
        let g:which_key_localmap.g.a = 'Add tags'
        let g:which_key_localmap.g.r = 'Remove tags'
        let g:which_key_localmap.g.i = 'Go impl'
        let g:which_key_localmap.g.d = 'Go description'
        let g:which_key_localmap.g.c = 'Go Callees'
        let g:which_key_localmap.g.C = 'Go Callers'
        let g:which_key_localmap.g.s = 'Go Callstack'
      endif
    endfunction
    autocmd FileType go call InitGoKeyMap()
  endif
endfunction

function! s:load_vim_delve()abort
  if dein#tap('vim-delve')
    function! InitGoDebugKeyMap() abort
      nnoremap <silent> <Leader>da :DlvToggleBreakpoint<CR>
      nnoremap <silent> <Leader>db :DlvToggleTracepoint<CR>
      nnoremap <silent> <Leader>dc :DlvClearAll<CR>
      nnoremap <silent> <Leader>dd :DlvDebug<CR>
      nnoremap <silent> <Leader>dt :DlvTest<CR>
      nnoremap <silent> <Leader>dr :DlvRemoveBreakpoint<CR>
      nnoremap <silent> <Leader>dR :DlvRemoveTracepoint<CR>
      if s:enable_whichkey
        let g:which_key_map.d = {'name': 'Debug'}
        let g:which_key_map.d.a = 'Add or Remove BreakPoint'
        let g:which_key_map.d.b = 'Add or Remove TracePoint'
        let g:which_key_map.d.c = 'Clear All Point'
        let g:which_key_map.d.d = 'Start Debug'
        let g:which_key_map.d.t = 'Start Debug Test'
        let g:which_key_map.d.r = 'Remove BreakPoint'
        let g:which_key_map.d.R = 'Remove TracePoint'
      endif
    endfunction
    autocmd FileType go call InitGoDebugKeyMap()
  endif
endfunction

function! s:load_vimagit() abort
  if dein#tap('vimagit')
    nnoremap <silent> <Leader>gg :Magit<CR>
    if s:enable_whichkey
      let g:which_key_map.g.g = 'Magit'
    endif
  endif
endfunction

function! s:load_fugitive() abort
  if dein#tap('vim-fugitive')
    nnoremap <silent> <Leader>ga :Git add %:p<CR>
    nnoremap <silent> <Leader>gd :Gdiffsplit<CR>
    nnoremap <silent> <Leader>gc :Git commit<CR>
    nnoremap <silent> <Leader>gb :Git blame<CR>
    nnoremap <silent> <Leader>gf :Gfetch<CR>
    nnoremap <silent> <Leader>gs :Git<CR>
    nnoremap <silent> <Leader>gp :Gpush<CR>
    if s:enable_whichkey
      let g:which_key_map.g.a = 'git add'
      let g:which_key_map.g.d = 'git diff split'
      let g:which_key_map.g.b = 'git blame'
      let g:which_key_map.g.f = 'git fetch'
      let g:which_key_map.g.c = 'git commit'
      let g:which_key_map.g.s = 'git status'
      let g:which_key_map.g.p = 'git push'
    endif
  endif
endfunction

function! s:load_mundo()abort
  if dein#tap('vim-mundo')
    nnoremap <silent> <Leader>m :MundoToggle<CR>
    if s:enable_whichkey
      let g:which_key_map.m = 'MundoToggle'
    endif
  endif
endfunction

function! s:load_choosewin() abort
  if dein#tap('vim-choosewin')
    nmap -         <Plug>(choosewin)
    nmap <Leader>- :<C-u>ChooseWinSwapStay<CR>
    if s:enable_whichkey
      let g:which_key_map['-'] = 'Choose window'
    endif
  endif
endfunction

if dein#tap('accelerated-jk')
  nmap <silent>j <Plug>(accelerated_jk_gj)
  nmap <silent>k <Plug>(accelerated_jk_gk)
endif

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

function! s:load_caw() abort
  if dein#tap('caw.vim')
    autocmd FileType * call InitCaw()
    call InitCaw()
  endif
endfunction

function! s:load_smoothie() abort
  if dein#tap('vim-smoothie')
    nnoremap <silent> <C-f> :<C-U>call smoothie#forwards()<CR>
    nnoremap <silent> <C-b> :<C-U>call smoothie#backwards()<CR>
    nnoremap <silent> <C-d> :<C-U>call smoothie#downwards()<CR>
    nnoremap <silent> <C-u> :<C-U>call smoothie#upwards()<CR>
  endif
endfunction

if dein#tap('python_match.vim')
	nmap <buffer> {{ [%
	nmap <buffer> }} ]%
endif

function! s:load_goyo() abort
  if dein#tap('goyo.vim')
    nnoremap <Leader>G :Goyo<CR>
    if s:enable_whichkey
      let g:which_key_map.G = 'Goyo'
    endif
  endif
endfunction

function! s:load_defx() abort
  if dein#tap('defx.nvim')
    nnoremap <silent> <Leader>e
      \ :<C-u>Defx -resume -toggle -buffer-name=tab`tabpagenr()`<CR>
    nnoremap <silent> <Leader>F
      \ :<C-u>Defx -resume -buffer-name=tab`tabpagenr()` -search=`expand('%:p')`<CR>
    if s:enable_whichkey
      let g:which_key_map.e = 'Open defx'
      let g:which_key_map.F = 'Open current file on defx'
    endif
  endif
endfunction

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

function! s:load_quickrun() abort
  if dein#tap('vim-quickrun')
    nnoremap <silent> <Leader>cr :QuickRun<CR>
    if s:enable_whichkey
      let g:which_key_map.c.r = 'Quick Run'
    endif
  endif
endfunction

function! s:load_vista() abort
  if dein#tap('vista.vim')
    nnoremap <silent> <Leader>i :<C-u>Vista!!<CR>
    if s:enable_whichkey
      let g:which_key_map.i = 'Vista'
    endif
  endif
endfunction

function! s:load_easymotion() abort
  if dein#tap('vim-easymotion')
    nmap gsj <Plug>(easymotion-w)
    nmap gsk <Plug>(easymotion-b)
    nmap gsf <Plug>(easymotion-overwin-f)
    nmap gss <Plug>(easymotion-overwin-f2)
  endif
endfunction

function! s:load_smartchr() abort
  if dein#tap('vim-smartchr')
    inoremap <expr> , smartchr#one_of(',', ',')
    autocmd FileType go inoremap <buffer><expr> ;
            \ smartchr#loop(':=',';')
    autocmd FileType go inoremap <buffer> <expr> .
          \ smartchr#loop('.', '<-', '->','...')
    autocmd FileType typescript,typescriptreact inoremap <buffer><expr>;
            \ smartchr#loop(':',';')
  endif
endfunction

function! s:load_iron() abort
  function! s:exit_iron() abort
    let l:flist = ['gore','ts-node','node','ipython']
    for fname in l:flist
      let l:bnr = bufwinnr(fname)
      if l:bnr > 0
        exec bnr . "wincmd w"
        quit!
      endif
    endfor
  endfunction
  if dein#tap('iron.nvim')
    nmap <silent> <Leader>rr :<C-u>IronRepl<CR><Esc>
    nmap <silent> <Leader>rf :IronWatchCurrentFile<CR>
    nmap <silent> <Leader>rq :call <SID>exit_iron()<CR>
    nmap <silent> <Leader>rl <Plug>(iron-send-line)
    vmap <silent> <Leader>rl <Plug>(iron-visual-send)
    nmap <silent> <Leader>rp <Plug>(iron-repeat-cmd)
    nmap <silent> <Leader>rc <Plug>(iron-clear)
    nmap <silent> <Leader>r<CR>  <Plug>(iron-cr)
    nmap <silent> <Leader>r<Esc> <Plug>(iron-interrupt)
    if s:enable_whichkey
      let g:which_key_map.r ={
        \ 'name' : '+repl',
        \ 'r' : 'Open Repl',
        \ 'f' : 'Repl Watch',
        \ 'h' : 'Repl Here',
        \ 'q' : 'Exit Repl',
        \ 'l' : 'Send line',
        \ 'p' : 'Repl repeat',
        \ 'c' : 'Repl clear',
        \ '<CR>': 'Repl return',
        \ '<Esc>': 'Repl interrupt',
        \ }
    endif
  endif
endfunction

function! s:load_sandwich() abort
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
endfunction

if dein#tap('vim-asterisk')
  map *   <Plug>(asterisk-g*)
  map g*  <Plug>(asterisk-*)
  map #   <Plug>(asterisk-g#)
  map g#  <Plug>(asterisk-#)

  map z*  <Plug>(asterisk-z*)
  map gz* <Plug>(asterisk-gz*)
  map z#  <Plug>(asterisk-z#)
  map gz# <Plug>(asterisk-gz#)
endif

if dein#tap('vim-niceblock')
  silent! xmap I  <Plug>(niceblock-I)
  silent! xmap gI <Plug>(niceblock-gI)
  silent! xmap A  <Plug>(niceblock-A)
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

function! s:load_normalmap() abort
  " Write buffer (save)
  nnoremap <C-s> :<C-u>write<CR>
  "smart move
  nnoremap j gj
  nnoremap k gk
  vnoremap j gj
  vnoremap k gk
  "yank to end
  nnoremap Y y$
  " Whitespace jump (see plugin/whitespace.vim)
  nnoremap ]w :<C-u>WhitespaceNext<CR>
  nnoremap [w :<C-u>WhitespacePrev<CR>
  " Remove spaces at the end of lines
  nnoremap <silent> <Space>cw :<C-u>silent! keeppatterns %substitute/\s\+$//e<CR>
  if s:enable_whichkey
    let g:which_key_map.c.w = 'Remove whitespace'
  endif
  "GetColorSynatxGroup
  map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
        \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
        \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
endfunction

function! s:load_insertmap() abort
  " insert keymap like emacs
  inoremap <C-w> <C-[>diwa
  inoremap <C-h> <BS>
  inoremap <C-d> <Del>
  inoremap <C-k>  <ESC>d$a
  inoremap <C-u> <C-G>u<C-U>
  inoremap <C-b> <Left>
  inoremap <C-f> <Right>
  inoremap <C-a> <ESC>^i
  inoremap <expr><C-e> pumvisible() ? "\<C-e>" : "\<End>"
  "insert a newline
  inoremap <C-O> <Esc>o
  imap <C-S> <esc>:w<CR>
  imap <C-Q> <esc>:wq<CR>
endfunction

function! s:load_commandmap() abort
  " command line alias
  cnoremap <C-p> <Up>
  cnoremap <C-b> <Left>
  cnoremap <C-f> <Right>
  cnoremap <C-a> <Home>
  cnoremap <C-e> <End>
  cnoremap <C-d> <Del>
  cnoremap <C-h> <BS>
  cnoremap <C-t> <C-R>=expand("%:p:h") . "/" <CR>
endfunction

function! s:load_terminalmap() abort
  tnoremap <A-[> <C-\><C-n>
endfunction

function! s:load_quietmap() abort
  function! s:QuiteVim() abort
    if empty(expand('%:t'))
      execute ":q"
    else
      execute ":wq!"
    endif
  endfunction
  " Quiet
  nnoremap <leader>qq :call <SID>QuiteVim()<CR>
  nnoremap <leader>qw <esc>:q!<CR>
  if s:enable_whichkey
    let g:which_key_map.q = { 'name': '+quiet'}
    let g:which_key_map.q.q = 'Quiet with save'
    let g:which_key_map.q.w = 'Quiet without save'
  endif
endfunction

function! s:load_windowmap() abort
  "switch windw
  nnoremap <C-h> <C-w>h
  nnoremap <C-l> <C-w>l
  nnoremap <C-j> <C-w>j
  nnoremap <C-k> <C-w>k
  " window
  nnoremap <Leader><TAB> <C-O><CR>
  nnoremap <leader>ws :<C-u>sp<CR>
  nnoremap <leader>wv :<C-u>vs<CR>
  nnoremap <leader>wh <C-w>h
  nnoremap <leader>wj <C-w>j
  nnoremap <leader>wk <C-w>k
  nnoremap <leader>wl <C-w>l
  nnoremap <leader>wH <C-w>H
  nnoremap <leader>wJ <C-w>J
  nnoremap <leader>wK <C-w>K
  nnoremap <leader>wL <C-w>L
  nnoremap <leader>wx <C-w>x
  nnoremap <leader>wc <C-w>c
  nnoremap <leader>wo <C-w>o
  nnoremap <leader>wR <C-w>R
  if s:enable_whichkey
    let g:which_key_map.w = { 'name': '+window'}
    let g:which_key_map['<Tab>'] = 'switch to last buffer'
    let g:which_key_map.w.s = 'horizontally split'
    let g:which_key_map.w.v = 'vertical split'
    let g:which_key_map.w.h = 'jump left window'
    let g:which_key_map.w.j = 'jump bottom window'
    let g:which_key_map.w.k = 'jump top window'
    let g:which_key_map.w.l = 'jump right window'
    let g:which_key_map.w.H = 'move window to left'
    let g:which_key_map.w.J = 'move window to bottom'
    let g:which_key_map.w.K = 'move window to top'
    let g:which_key_map.w.L = 'move window to right'
    let g:which_key_map.w.x = 'swap window'
    let g:which_key_map.w.c = 'close window'
    let g:which_key_map.w.o = 'close other window'
    let g:which_key_map.w.R = 'spin window'
  endif
  " settings for resize splitted window
  nmap <C-w>[ :vertical resize -3<CR>
  nmap <C-w>] :vertical resize +3<CR>
endfunction

function! s:load_session() abort
  " Session management shortcuts (see plugin/sessions.vim)
  nmap <Leader>ss :<C-u>SessionSave<CR>
  nmap <Leader>sl :<C-u>SessionLoad<CR>
  if s:enable_whichkey
    let g:which_key_map.s = { 'name': '+session'}
    let g:which_key_map.s.s = 'Session Save'
    let g:which_key_map.s.l = 'Session Load'
  endif
endfunction

function! s:load_toggle() abort
  " Toggle spellchecking
  function! s:toggleSpellCheck()
    set spell!
    if &spell
      echo "Spellcheck ON"
    else
      echo "Spellcheck OFF"
    endif
  endfunction
  nnoremap <silent> <leader>ts :call <SID>toggleSpellCheck()<CR>
  if s:enable_whichkey
    let g:which_key_map.t.s = 'Toggle Spellcheck'
  endif
endfunction

let s:plugins = {
  \ 'dein': 'dein.vim','buffet':'vim-buffet','markdown_preview':'markdown-preview.nvim',
  \ 'indentline':'indentLine', 'floaterm':'vim-floaterm',
  \ 'dadbod_ui':'vim-dadbod-ui','dash':'dash.vim','coc_clap':'coc-clap',
  \ 'coc':'coc.nvim','clap':'vim-clap','vim_go':'vim-go','vim_delve':'vim-delve',
  \ 'vimagit':'vimagit','choosewin':'vim-choosewin','caw':'caw.vim','smoothie':'vim-smoothie',
  \ 'goyo':'goyo.vim','defx':'defx.nvim','quickrun':'vim-quickrun','easymotion':'vim-easymotion',
  \ 'smartchr':'vim-smartchr','iron':'iron.nvim','sandwich':'vim-sandwich', 'startify':'vim-startify',
  \ 'fugitive': 'vim-fugitive', 'mundo':'vim-mundo', 'vista':'vista.vim','insertmap': 'insert',
  \ 'commandmap':'command','quietmap':'quiet','windowmap':'window','session':'session',
  \ 'toggle':'toggle','normalmap':'normal','terminalmap':'terminal'
  \ }

function! s:load_plugins_keybinds(pmap) abort
  for key in keys(a:pmap)
    try
      exec 'call s:load_'.key.'()'
    catch /.*/
      echo 'Load plugins keybinds error:' . v:exception
    finally
    endtry
  endfor
endfunction

function! s:get_key(value,pmap) abort
  for [key,val] in items(a:pmap)
    if val ==? a:value
      return key
    endif
  endfor
  return ''
endfunction

function! s:load_keybinds(plugins) abort
  let pmap = copy(a:plugins)
  while g:thinkvim_disable_mappings
    return
  endwhile
  if empty(g:thinkvim_disable_pmaping)
    call s:load_plugins_keybinds(pmap)
  else
    for i in g:thinkvim_disable_pmaping
      if index(values(pmap),i) >= 0
        let key = s:get_key(i, pmap)
        call remove(pmap,key)
      endif
    endfor
    call s:load_plugins_keybinds(pmap)
  endif
endfunction

call s:load_keybinds(s:plugins)
