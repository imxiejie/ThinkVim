let g:which_key_map =  {}
let g:which_key_map = {
      \ 'name' : '+ThinkVim root ' ,
      \ '1' : 'select window-1'      ,
      \ '2' : 'select window-2'      ,
      \ '3' : 'select window-3'      ,
      \ '4' : 'select window-4'      ,
      \ '5' : 'select window-5'      ,
      \ '6' : 'select window-6'      ,
      \ '7' : 'select window-7'      ,
      \ '8' : 'select window-8'      ,
      \ '9' : 'select window-9'      ,
      \ '0' : 'select window-10'      ,
      \ 'a' : {
            \ 'name' : '+coc-code-action',
            \ 'c' : 'code action',
            \ },
      \ 'e' : 'open file explorer' ,
      \ '-' : 'choose window by {prompt char}' ,
      \ 'd' : 'search cursor word on Dash.app' ,
      \ 'G' : 'distraction free writing' ,
      \ 'f' : {
            \ 'name' : '+search {files cursorword word outline}',
            \ 'b' : 'buffer list',
            \ 'f' : 'find file',
            \ 'r' : 'search {word}',
            \ 'c' : 'change colorscheme',
            \ 'w' : 'search cursorword',
            \ 'v' : 'search outline',
            \ },
      \ 'm' : 'open mundotree' ,
      \ 'w' : 'save file',
      \ 's' : 'open startify screen',
      \ 'p' : 'edit pluginsconfig {filename}',
      \ 'c'    : {
              \ 'name' : '+coc list' ,
              \ 'a'    : 'coc CodeActionSelected',
              \ 'd'    : 'coc Diagnostics',
              \ 'c'    : 'coc Commands',
              \ 'e'    : 'coc Extensions',
              \ 'j'    : 'coc Next',
              \ 'k'    : 'coc Prev',
              \ 'o'    : 'coc OutLine',
              \ 'r'    : 'coc Resume',
              \ 'n'    : 'coc Rename',
              \ 's'    : 'coc Isymbols',
              \ 'g'    : 'coc Gitstatus',
              \ 'f'    : 'coc Format',
              \ },
      \ 'q' : {
            \ 'name' : '+coc-quickfix',
            \ 'f' : 'coc fixcurrent',
            \ },
      \ 't' : {
            \ 'name' : '+tab-operate',
            \ 'n' : 'new tab',
            \ 'e' : 'edit tab',
            \ 'm' : 'move tab',
            \ },
      \ 'g' : {
            \ 'name' : '+golang-toolkit',
            \ 'i'    : 'go impl',
            \ 'd'    : 'go describe',
            \ 'c'    : 'go callees',
            \ 'C'    : 'go callers',
            \ 's'    : 'go callstack',
            \ },
      \ }
let g:which_key_map[' '] = {
      \ 'name' : '+easymotion-jumpto-word ' ,
      \ 'b' : ['<plug>(easymotion-b)' , 'beginning of word backward'],
      \ 'f' : ['<plug>(easymotion-f)' , 'find {char} to the left'],
      \ 'w' : ['<plug>(easymotion-w)' , 'beginning of word forward'],
      \ }

let g:which_key_localmap ={
      \ 'name' : '+LocalLeaderKey'  ,
      \ 't'    : 'open tagbar show outlien',
      \ 'v'    : 'open vista show outline',
      \ 'r'    : 'quick run',
      \ 'm'    : 'toolkit Menu',
      \ 'd'    : {
                \'name':'+todo-app',
                \ 'a' : 'todo add',
                \},
      \ 'g'  :{
                \'name':'+ git-operate',
                \ 'a'    : 'Gadd',
                \ 'd'    : 'Gdiff',
                \ 'c'    : 'Gcommit',
                \ 'b'    : 'Gblame',
                \ 'B'    : 'Gbrowse',
                \ 'S'    : 'Gstatus',
                \ 'p'    : 'Gpush',
                \ 'l'    : 'GitLogAll',
                \ 'h'    : 'GitBranch',
                \}
      \ }

let g:which_key_rsbgmap = {
      \ 'name' : '+RightSquarebrackets',
      \ 'a'    : 'ale nextwarp',
      \ 'c'    : 'coc nextdiagnostics',
      \ 'b'    : 'next buffer',
      \ 'g'    : 'coc gitnextchunk',
      \ ']'    : 'jump prefunction-golang',
      \ }

let g:which_key_lsbgmap = {
      \ 'name' : '+LeftSquarebrackets',
      \ 'a'    : 'ale prewarp',
      \ 'c'    : 'coc prediagnostics',
      \ 'b'    : 'pre buffer',
      \ 'g'    : 'coc gitprevchunk',
      \ '['    : 'jump nextfunction-golang',
      \ }
