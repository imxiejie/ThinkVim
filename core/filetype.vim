
augroup user_plugin_filetype "{{{
  autocmd!
  " Reload vim config automatically
  autocmd BufWritePost $VIM_PATH/{*.vim,*.yaml,vimrc} nested
        \ source $MYVIMRC | redraw

  " Reload Vim script automatically if setlocal autoread
  autocmd BufWritePost,FileWritePost *.vim nested
        \ if &l:autoread > 0 | source <afile> |
        \   echo 'source ' . bufname('%') |
        \ endif

  " Update filetype on save if empty
  autocmd BufWritePost * nested
        \ if &l:filetype ==# '' || exists('b:ftdetect')
        \ |   unlet! b:ftdetect
        \ |   filetype detect
        \ | endif

  " Highlight current line only on focused window
  autocmd WinEnter,InsertLeave * if &ft !~# '^\(denite\|clap_\)' |
    \ set cursorline | endif

  autocmd WinLeave,InsertEnter * if &ft !~# '^\(denite\|clap_\)' |
    \ set nocursorline | endif

  " Automatically set read-only for files being edited elsewhere
  autocmd SwapExists * nested let v:swapchoice = 'o'

  " Equalize window dimensions when resizing vim window
  autocmd VimResized * tabdo wincmd =

  " Force write shada on leaving nvim
  autocmd VimLeave * if has('nvim') | wshada! | else | wviminfo! | endif

  " Check if file changed when its window is focus, more eager than 'autoread'
  autocmd FocusGained * checktime

  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif

  autocmd Syntax * if line('$') > 5000 | syntax sync minlines=200 | endif

  " https://webpack.github.io/docs/webpack-dev-server.html#working-with-editors-ides-supporting-safe-write
  autocmd FileType css,javascript,javascriptreact setlocal backupcopy=yes

  " Go (Google)
  autocmd FileType go
                     \  let b:coc_pairs_disabled = ['<']
                     \ | let b:coc_root_patterns = ['.git', 'go.mod']

  autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')

  " Python
  autocmd FileType python
        \ setlocal expandtab smarttab nosmartindent
        \ | setlocal tabstop=4 softtabstop=4 shiftwidth=4 textwidth=80

  " HTML (.gohtml and .tpl for server side)
  autocmd BufNewFile,BufRead *.html,*.htm,*.gohtml,*.tpl  setf html

  " Make directory automatically.
  autocmd BufWritePre * call s:mkdir_as_necessary(expand('<afile>:p:h'), v:cmdbang)

augroup END "}}}

" Credits: https://github.com/Shougo/shougo-s-github/blob/master/vim/rc/options.rc.vim#L147
function! s:mkdir_as_necessary(dir, force) abort
  if !isdirectory(a:dir) && &l:buftype == '' &&
        \ (a:force || input(printf('"%s" does not exist. Create? [y/N]',
        \              a:dir)) =~? '^y\%[es]$')
    call mkdir(iconv(a:dir, &encoding, &termencoding), 'p')
  endif
endfunction

" FileType plugin config

"MaxMEllon/vim-jsx-pretty
let g:vim_jsx_pretty_highlight_close_tag = 1
