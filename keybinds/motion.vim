" insert keymap like emacs
inoremap <C-w> <C-[>diwa
inoremap <C-h> <BS>
inoremap <C-d> <Del>
inoremap <C-k>  <ESC>d$a
inoremap <C-u> <C-G>u<C-U>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <C-a> <ESC>^a
inoremap <expr><C-e> pumvisible() ? "\<C-e>" : "\<End>"

" command line alias
cnoremap <C-p> <Up>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-d> <Del>
cnoremap <C-h> <BS>
cnoremap <C-t> <C-R>=expand("%:p:h") . "/" <CR>

" Write buffer (save)
nnoremap <C-s> :<C-u>write<CR>
imap <C-S> <esc>:w<CR>
imap <C-Q> <esc>:wq<CR>
nnoremap<Leader><TAB> <C-O><CR>

" Editor UI
nmap <Leader>tn :setlocal nonumber!<CR>

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

"insert a newline
inoremap <C-O> <Esc>o

nnoremap  ]b :<C-u>bp<CR>
nnoremap  [b :<C-u>bn<CR>
"delete buffer
nnoremap <C-x> :<C-u>bd<CR>

"switch windw
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

"smart move
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

"yank to end
nnoremap Y y$

" window
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

" settings for resize splitted window
nmap <C-w>[ :vertical resize -3<CR>
nmap <C-w>] :vertical resize +3<CR>

" Session management shortcuts (see plugin/sessions.vim)
nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>

" Whitespace jump (see plugin/whitespace.vim)
nnoremap ]w :<C-u>WhitespaceNext<CR>
nnoremap [w :<C-u>WhitespacePrev<CR>

" Remove spaces at the end of lines
nnoremap <silent> <Space>cw :<C-u>silent! keeppatterns %substitute/\s\+$//e<CR>

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

" vim: set foldmethod=marker ts=2 sw=2 tw=80 noet :
