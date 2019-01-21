"nerdtree
map <leader>e :NERDTreeToggle <cr>
map <leader>f :NERDTreeFind <cr>

let nerdtreequitonopen = 0
let nerdchristmastree=1
let g:nerdtreewinsize = 25
let g:nerdtreedirarrowexpandable='▷'
let g:nerdtreedirarrowcollapsible='▼'
let g:nerdtreeindicatormapcustom = {
        \ "modified"  : "✹",
        \ "staged"    : "✚",
        \ "untracked" : "✭",
        \ "renamed"   : "➜",
        \ "unmerged"  : "═",
        \ "deleted"   : "✖",
        \ "dirty"     : "✗",
        \ "clean"     : "✔︎",
        \ 'ignored'   : '☒',
        \ "unknown"   : "?"
        \ }

"""""""""""NERDTree高亮
let g:NERDTreeSyntaxDisableDefaultExtensions = 1
let g:NERDTreeDisableExactMatchHighlight = 1
let g:NERDTreeDisablePatternMatchHighlight = 1
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

