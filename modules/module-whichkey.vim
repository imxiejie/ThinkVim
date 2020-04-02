let g:which_key_map =  {}
let g:which_key_localmap =  {
  \ 'name' : 'LocalLeader'
  \ }
let g:which_key_map = {
      \ 'name' : 'Leader' ,
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
      \ 'b' : {
            \ 'name' : '+buffer',
            \ 'b' : 'buffer list',
            \ 'B' : 'All buffer list',
            \ 'c' : 'keep current buffer',
            \ 'o' : 'keep input buffer',
            \ },
      \ 'd' : {
            \ 'name' : '+plugin manage',
            \ 'u' : 'update all plugins',
            \ 'r' : 'reache runtime path',
            \ 'l' : 'plugins update log',
            \ },
      \ 'e' : 'open file explorer' ,
      \ '-' : 'choose window by {prompt char}' ,
      \ ',' : 'Run coc command' ,
      \ 'g' : {
            \ 'name' : '+version control',
            \ 'a' : 'git add',
            \ 'd' : 'git diff split',
            \ 'c' : 'git commit',
            \ 'b' : 'git blame',
            \ 'f' : 'git fetch',
            \ 'g' : 'Magit Status',
            \ 'p' : 'Magit Push',
            \ 's' : 'git status',
            \ 'S' : 'show git status on fzf',
            \ 'l' : 'show git log',
            \ },
      \ 'G' : 'distraction free writing' ,
      \ 'F' : 'find current file' ,
      \ 'f' : {
            \ 'name' : '+find [files cursorword word outline]',
            \ 'a' : 'find a word in project',
            \ 'f' : 'find file in directory',
            \ 'c' : 'change colorscheme',
            \ 'C' : 'find Changes',
            \ 'o' : 'find old files',
            \ 'm' : 'find mru files',
            \ 'w' : 'find current word in project',
            \ 'p' : 'find in a project',
            \ 'P' : 'find in a git project',
            \ 'z' : 'find word in all project files',
            \ },
      \ 'i' : 'Show symbols list' ,
      \ 'o' : {
            \ 'name' : '+open [terminal startify]',
            \ 't' : 'open a temrinal',
            \ 's' : 'open stratify',
            \ },
      \ 'm' : 'open mundotree' ,
      \ 'j' : 'open coc-explorer',
      \ 's' : 'save file',
      \ 'r' : 'quick run',
      \ 'x' : 'coc cursors operate',
      \ 'c'    : {
              \ 'name' : '+code' ,
              \ 'a'    : 'Lsp CodeActionSelected',
              \ 'd'    : 'Lsp Show Diagnostics',
              \ 'e'    : 'coc Extensions',
              \ 'i'    : 'Lsp Find implementation',
              \ 'r'    : 'Lsp Rename',
              \ 'f'    : 'Lsp Format',
              \ 'j'    : 'coc Next',
              \ 'k'    : 'coc Prev',
              \ 's'    : 'Lsp Show Isymbols',
              \ },
      \ 'q' : {
            \ 'name' : '+coc quickfix',
            \ 'f' : 'coc fixcurrent',
            \ },
      \ 'w'    : {
              \ 'name' : '+window' ,
              \ 's'    : 'horizontally split',
              \ 'v'    : 'vertical split',
              \ 'h'    : 'jump left window',
              \ 'j'    : 'jump bottom window',
              \ 'k'    : 'jump top window',
              \ 'l'    : 'jump right window',
              \ 'H'    : 'move window to left',
              \ 'J'    : 'move window to bottom',
              \ 'K'    : 'move window to top',
              \ 'L'    : 'move window to right',
              \ 'x'    : 'swap window',
              \ 'c'    : 'close window',
              \ 'o'    : 'close other window',
              \ 'R'    : 'spin window',
              \ },
      \ }

" let g:which_key_map[' '] = {
"      \ 'name' : '+easymotion jumpto word ' ,
"      \ 'b' : ['<plug>(easymotion-b)' , 'beginning of word backward'],
"      \ 'f' : ['<plug>(easymotion-f)' , 'find {char} to the left'],
"      \ 'w' : ['<plug>(easymotion-w)' , 'beginning of word forward'],
"      \ }

let g:which_key_localmap.g ={
      \ 'name' : '+golang-toolkit',
      \ 'i'    : 'go impl',
      \ 'd'    : 'go describe',
      \ 'c'    : 'go callees',
      \ 'C'    : 'go callers',
      \ 's'    : 'go callstack',
      \ }


let s:current_colorscheme = get(g:,"colors_name","")
if  s:current_colorscheme == "base16-default-dark"
    highlight WhichKeySeperator guibg=NONE ctermbg=NONE guifg=#a1b56c ctermfg=02
endif
