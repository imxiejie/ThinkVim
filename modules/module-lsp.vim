" Gopls config
if dein#tap('go-nvim')
    call coc#config('languageserver', {
      \ 'golang': {
        \ "command": "gopls",
        \ "rootPatterns": ["go.mod"],
        \ "disableWorkspaceFolders": "true",
        \ "filetypes": ["go"]
        \ }
        \})
endif

" ccls config
if dein#tap('chromatica.nvim')
    call coc#config('languageserver', {
      \ 'ccls': {
        \ "command": "ccls",
        \ "rootPatterns": [".ccls", "compile_commands.json", ".git/", ".hg/"],
        \ "filetypes": ["c","cpp","objc","objcpp"],
        \ "initializationOptions": {
          \ "cache":{
            \ "directory": "/tmp/ccls"
        \ }
        \ }
        \ }
        \})
endif

"python lsp config
if dein#tap('python-syntax')
    let g:python_highlight_all = 1
    call coc#add_extension('coc-python')
endif

"docker lsp config
if dein#tap('Dockerfile.vim')
    call coc#config('languageserver', {
      \ 'dockerfile': {
        \ "command": "docker-langserver",
        \ "filetypes": ["go"],
        \ "args": ["--stdio"]
        \ }
        \})
endif

"haskell lsp config
if dein#tap('haskell-vim')
    call coc#config('languageserver', {
      \ 'haskell': {
        \ "command": "hie-wrapper",
        \ "rootPatterns": [".stack.yaml","cabal.config","package.yaml"],
        \ "filetypes": ["hs","lhs","haskell"],
        \ "initializationOptions":{},
        \ "settings":{
          \ "languageServerHaskell":{
            \ "hlintOn":"true",
            \ "maxNumberOfProblems":10,
            \ "completionSnippetsOn": "true"
        \ }
        \ }
        \ }
        \})
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
if dein#tap('vim-jsx-improve')
    call coc#add_extension('coc-tsserver','coc-eslint','coc-prettier')
endif

if dein#tap('yats.vim')
    call coc#add_extension('coc-tsserver','coc-eslint', 'coc-prettier', 'coc-tslint-plugin')
endif

"php lsp config
if dein#tap('php.vim')
    call coc#config('languageserver', {
      \ 'intelephense': {
        \ "command": "intelephense",
        \ "args": ["--stdio"],
        \ "filetypes": ["php"],
        \ "initializationOptions": {
             \ "storagePath": "/tmp/intelephense"
        \ }
        \ }
        \})
endif

"shell lsp config
if dein#tap('vim-sh')
    call coc#config('languageserver', {
      \ 'bash': {
        \ "command": "bash-language-server",
        \ "args" : ["start"],
        \ "rootPatterns": ["go.mod"],
        \ "ignoredRootPaths": ["~"],
        \ "filetypes": ["sh"]
        \ }
        \})
endif

"R lsp config
if dein#tap('Nvim-R')
    call coc#add_extension('coc-R')
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
    call coc#coc#add_extension('coc-metals')
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
