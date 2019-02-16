let g:which_key_map =  {}
let g:which_key_map = {
      \ 'name' : '+Leaderkey' ,
      \ '1' : 'Buffer-1'      ,
      \ '2' : 'Buffer-2'      ,
      \ '3' : 'Buffer-3'      ,
      \ '4' : 'Buffer-4'      ,
      \ '5' : 'Buffer-5'      ,
      \ '6' : 'Buffer-6'      ,
      \ '7' : 'Buffer-7'      ,
      \ '8' : 'Buffer-8'      ,
      \ '9' : 'Buffer-9'      ,
      \ '0' : 'Buffer-10'      ,
      \ 'e' : 'Open-nerdtree' ,
      \ 'f' : 'Nerdtreefind' ,
      \ 'a' : 'Open-ag' ,
      \ 'aw': 'Ag-word' ,
      \ 'n' : 'Cancelhighlight',
      \ 's' : 'ALEToggle',
      \ 'd' : 'ALEDetail',
      \ 'w' : 'Save',
      \ 'h' : 'Tabpre',
      \ 'l' : 'Tabnext',
      \ ',' : {
            \ 'name' : '+Easymotion',
            \ 'w' : 'Easymotion-w',
            \ 'b' : 'Easymotion-b',
            \ 'f' : 'Easymotion-f',
            \ },
      \ 'c' : {
            \ 'name' : '+NerdCommenter',
            \ },
      \ 'b' : {
            \ 'name' : '+Buffer',
            \ 'n'    : 'NextBuffer',
            \ 'p'    : 'PreBuffer',
            \ },
      \ 'g' : {
            \ 'name' : '+vim-go',
            \ 'r'    : 'GoRename',
            \ 'o ': {
                \ 'name':'+GoTool',
                \ 'i'   :'GoInfo',
                \ 'd'   :'GoDoc',
                \ 'r'   :'GoRun',
                \ 'b'   :'GoBuild',
                \ 't'   :'GoTest',
                \ 'c'   :'GoCoverage',
                \ },
             \ 'd':{
                \ 'name':'GoTool',
                \ 'v': 'GodefVertical',
                \ },
            \ },
      \ }

let g:which_key_localmap ={
      \ 'name' : '+LocalLeaderKey'  ,
      \ 'b'    : 'DeniteBuferr'     ,
      \ 'c'    : {
              \ 'name' : '+CocList' ,
              \ 'a'    : 'CocDiagnostics',
              \ 'c'    : 'CocCommands',
              \ 'e'    : 'CocExtensions',
              \ 'j'    : 'CocNext',
              \ 'k'    : 'CocPrev',
              \ 'o'    : 'CocOutLine',
              \ 'r'    : 'CocResume',
              \ 's'    : 'CocIsymbols',
              \ },
      \ 'g'    : 'Open-Tagbar',
      \ 'l'    : 'DeniteLine',
      \ 'o'    : 'DeniteFileOld',
      \ 'r'    : 'DeniteFileMru',
      \ 's'    : 'DeniteCode',
      \ 'w'    : 'DeniteCursorWorld',
      \ }

let g:which_key_rsbgmap = {
      \ 'name' : '+RightSquarebrackets',
      \ 'a'    : 'AleNextWarp',
      \ 'c'    : 'CocDiagnosticsNext',
      \ }

let g:which_key_lsbgmap = {
      \ 'name' : '+LeftSquarebrackets',
      \ 'a'    : 'AlePreWarp',
      \ 'c'    : 'CocDiagnosticsPre',
      \ }
