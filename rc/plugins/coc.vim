imap <expr><TAB>
\ pumvisible() ? "\<C-n>" :
 \ neosnippet#expandable_or_jumpable() ?
 \    "\<Plug>(neosnippet_expand_or_jump)" : 
 \ <SID>check_back_space() ? "\<TAB>":
 \ coc#refresh()
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <c-space> coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<CR>"
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif


" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" Use `[c` and `]c` for navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap for format selected region
vmap <leader>cf  <Plug>(coc-format-selected)
nmap <leader>cf  <Plug>(coc-format-selected)
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

