imap <silent><expr><TAB>
\ pumvisible() ? "\<Down>" :
 \ neosnippet#expandable_or_jumpable() ?
 \    "\<Plug>(neosnippet_expand_or_jump)" : 
 \ <SID>check_back_space() ? "\<TAB>":
 \ coc#refresh()

smap <silent><expr><Tab>
    \  pumvisible() ? "\<Down>":
	\  neosnippet#jumpable() ? "\<Plug>(neosnippet_jump)":
	\  <SID>check_back_space() ? "\<Tab>"

inoremap <silent><expr> <c-space> coc#refresh()

imap <expr><S-TAB> pumvisible() ? "\<Up>" : "<Plug>delimitMateS-Tab"
imap <expr><CR>
            \ pumvisible() ? "\<c-y>" :
            \ delimitMate#WithinEmptyPair() ? "\<C-R>=delimitMate#ExpandReturn()\<CR>" : "\<CR>"

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif


" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif


function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
