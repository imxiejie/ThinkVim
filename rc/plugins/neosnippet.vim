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

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif


" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif



