let g:which_key_map =  {}
let g:which_key_map = {
      \ 'name' : 'ThinkVimRoot ' ,
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
      \ 'a' : {
            \ 'name' : '+CocCodeAction',
            \ 'c' : 'CodeAction',
            \ },
      \ 'e' : 'Defx' ,
      \ '-' : 'ChooseWin' ,
      \ 'd' : 'Dash' ,
      \ 'G' : 'Goyo' ,
      \ 'f' : {
            \ 'name' : '+FzfCommand',
            \ 'b'    : 'Bufferlist',
            \ 'f' : 'FindFile',
            \ 'r' : 'RgSearch',
            \ 'c' : 'ColorChange',
            \ 'w' : 'SearchExpendWord',
            \ },
      \ 'm' : 'OpenMundo' ,
      \ 'w' : 'Save',
      \ 's' : 'Startify',
      \ 'SPC' : {
            \ 'name' : '+Easymotion',
            \ 'w' : 'Easymotion-w',
            \ 'b' : 'Easymotion-b',
            \ 'f' : 'Easymotion-f',
            \ },
      \ 'c'    : {
              \ 'name' : '+CocList' ,
              \ 'a'    : 'CocCodeActionSelected',
              \ 'd'    : 'CocDiagnostics',
              \ 'c'    : 'CocCommands',
              \ 'e'    : 'CocExtensions',
              \ 'j'    : 'CocNext',
              \ 'k'    : 'CocPrev',
              \ 'o'    : 'CocOutLine',
              \ 'r'    : 'CocResume',
              \ 'n'    : 'CocRename',
              \ 's'    : 'CocIsymbols',
              \ 'g'    : 'CocGitstatus',
              \ 'f'    : 'CocFormat',
              \ },
      \ 'q' : {
            \ 'name' : '+CocQuickFix',
            \ 'f' : 'CocFixCurrent',
            \ },
      \ 'g' : {
            \ 'name' : '+Vim-Go',
            \ 'r'    : 'GoRename',
            \ 'o ': {
                \ 'name':'+GoTool',
                \ 'i'   :'GoInfo',
                \ 'd'   :'GoDoc',
                \ 'r'   :'GoRun',
                \ 'b'   :'GoBuild',
                \ 't'   :'GoTest',
                \ 'c'   :'GoCoverage',
                \ 'v'   :'GoDef',
                \ },
            \ },
      \ }

let g:which_key_localmap ={
      \ 'name' : '+LocalLeaderKey'  ,
      \ 't'    : 'Tagbar',
      \ 'v'    : 'Vista',
      \ 'r'    : 'QuickRun',
      \ 'm'    : 'DeniteMenu',
      \ 'd'    : {
                \'name':'+Todo',
                \ 'a' : 'TodoAdd',
                \},
      \ 'g'  :{
                \'name':'+ GitOperation',
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
      \ 'a'    : 'AleNextWarp',
      \ 'c'    : 'CocDiagnosticsNext',
      \ 'b'    : 'NextBuffer',
      \ 'g'    : 'CocGitNextChunk',
      \ ']'    : 'Vim-goPrefunction',
      \ }

let g:which_key_lsbgmap = {
      \ 'name' : '+LeftSquarebrackets',
      \ 'a'    : 'AlePreWarp',
      \ 'c'    : 'CocDiagnosticsPre',
      \ 'b'    : 'PreBuffer',
      \ 'g'    : 'CocGitPrevChunk',
      \ '['    : 'Vim-goNextfunction',
      \ }
