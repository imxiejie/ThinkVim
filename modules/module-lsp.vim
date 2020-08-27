" Gopls config
if dein#tap('go-nvim')
  autocmd FileType go LSP 'go'
endif

" ccls config
if dein#tap('vim-lsp-cxx-highlight')
  autocmd FileType c LSP 'c/cpp'
  autocmd FileType cpp LSP 'c/cpp'
endif

"python lsp config
if dein#tap('python-syntax')
    let g:python_highlight_all = 1
    call coc#add_extension('coc-python')
endif

"docker lsp config
if dein#tap('Dockerfile.vim')
  autocmd FileType Dockerfile LSP 'dockerfile'
endif

"haskell lsp config
if dein#tap('haskell-vim')
  autocmd FileType haskell LSP 'haskell'
endif

"lua lsp config
"https://github.com/Alloyed/lua-lsp
if dein#tap('vim-lua')
    call coc#config('languageserver', {
      \ 'lua': {
        \ "command": "lua-lsp",
        \ "filetypes": ["lua"],
        \ }
        \})
endif

"javascript lsp config
if dein#tap('vim-js')
  call coc#add_extension('coc-tsserver','coc-eslint','coc-prettier','coc-docthis')
endif

if dein#tap('yats.vim')
    call coc#add_extension('coc-tsserver','coc-eslint', 'coc-prettier', 'coc-tslint-plugin' ,'coc-docthis')
endif

"php lsp config
if dein#tap('php.vim')
  autocmd FileType php LSP 'php'
endif

"shell lsp config
if dein#tap('vim-sh')
  autocmd FileType sh,zsh LSP 'sh'
endif

"R lsp config
if dein#tap('Nvim-R')
    call coc#add_extension('coc-r-lsp')
endif

"Ruby lsp config
if dein#tap('vim-ruby')
    call coc#add_extension('coc-solargraph')
endif

"Rust lsp config
if dein#tap('rust.vim')
    call coc#add_extension('coc-rust-analyzer')
endif

"Scala lsp config
if dein#tap('vim-scala')
    call coc#add_extension('coc-metals')
endif

"vue lsp config
if dein#tap('vim-vue')
    call coc#add_extension('coc-vetur')
endif

"Dart lsp config
if dein#tap('dart-vim-plugin')
  call coc#add_extension('coc-flutter')
endif

if dein#tap('sql.vim')
  call coc#add_extension('coc-sql')
endif
