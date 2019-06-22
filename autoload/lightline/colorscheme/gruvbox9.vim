" =============================================================================
" Author: taigacute
" Theme : Gruvbox9
" =============================================================================

" Common colors
let s:red     = [ '#cc241d', 124 ]
let s:red1     = [ '#9d0006', 88 ]
let s:green   = [ '#98971a', 106 ]
let s:yellow  = [ '#d79921', 172 ]
let s:light_yellow  = [ '#d79921', 214 ]
let s:blue = [ '#458588', 66 ]
let s:blue1 = [ '#0087d7', 32 ]
let s:purple   = [ '#b16286', 132 ]
let s:purple1 = [ '#875faf', 97]
let s:aqua   = [ '#689d6a', 72 ]
let s:orange   = [ '#d65d0e', 166 ]
let s:gray = [ '#a89984', 246 ]
let s:bg = [ '#282828', 235 ]
let s:bg0 = [ '#282828', 235 ]
let s:bg0_h = ['#1d2021',234]
let s:bg1 = [ '#3c3836', 237 ]
let s:bg2 = [ '#504945', 239 ]
let s:bg3 = [ '#665c54', 241 ]
let s:bg_icon = ['#444444',238]
let s:bg4 = [ '#7c6f64', 243 ]
let s:fg0 = [ '#fbf1c7', 229 ]
let s:fg1 = [ '#ebdbb2', 223 ]
let s:fg2 = [ '#d5c4a1', 250 ]
let s:fg3 = [ '#bdae93', 248 ]
let s:fg4 = [ '#a89984', 246 ]



let s:p = {'normal':{}, 'inactive':{}, 'insert':{}, 'replace':{}, 'visual':{}, 'tabline':{}, 'terminal':{}}
  let s:p.normal.left = [ [ s:bg0, s:green, 'bold' ], [ s:fg4, s:bg3] ,[s:fg3,s:bg4],[s:fg3,s:bg3]]
  let s:p.normal.right = [ [ s:bg0, s:green ], [ s:bg0, s:fg4 ],[ s:bg0, s:bg4 ] ,[s:red,s:bg1],[s:blue1,s:bg1],[s:orange,s:bg1]]
  let s:p.normal.middle = [ [ s:fg4, s:bg1 ] ]
  let s:p.inactive.right = [ [ s:bg4, s:bg1 ], [ s:bg4, s:bg1 ] ]
  let s:p.inactive.left =  [ [ s:bg4, s:bg1 ], [ s:bg4, s:bg1 ] ]
  let s:p.inactive.middle = [ [ s:bg4, s:bg1 ] ]
  let s:p.insert.left = [ [ s:bg0, s:blue, 'bold'], [ s:fg4, s:bg3],[ s:fg3, s:bg4] ,[s:fg3,s:bg3]]
  let s:p.insert.right = [ [ s:bg0, s:blue ], [ s:bg0, s:fg4 ],[ s:bg0, s:bg4 ] ,[s:red,s:bg1],[s:blue1,s:bg1],[s:orange,s:bg1]]
  let s:p.insert.middle = [ [ s:fg4, s:bg1 ] ]
  let s:p.terminal.left = [ [ s:bg0, s:green, 'bold' ], [ s:fg1, s:bg2 ] ]
  let s:p.terminal.right = [ [ s:bg0, s:green ], [ s:fg1, s:bg2 ] ]
  let s:p.terminal.middle = [ [ s:fg4, s:bg2 ] ]
  let s:p.replace.left = [ [ s:bg0, s:aqua, 'bold' ], [ s:fg1, s:bg0 ] ,[ s:fg3, s:bg4] ,[s:fg3,s:bg3]]
  let s:p.replace.right = [ [ s:bg0, s:aqua ], [ s:bg0, s:fg4 ],[ s:bg0, s:bg4 ] ,[s:red,s:bg1],[s:blue1,s:bg1],[s:orange,s:bg1]]
  let s:p.replace.middle = [ [ s:fg4, s:bg1 ] ]
  let s:p.visual.left = [ [ s:bg0, s:orange, 'bold' ], [ s:fg1, s:bg0 ],[s:fg3,s:bg4],[s:fg3,s:bg3]]
  let s:p.visual.right = [ [ s:bg0, s:orange ], [ s:bg0, s:fg4 ],[ s:bg0, s:bg4 ] ,[s:red,s:bg1],[s:blue1,s:bg1],[s:orange,s:bg1]]

  let s:p.visual.middle = [ [ s:fg4, s:bg1 ] ]
  let s:p.tabline.left = [ [ s:fg4, s:bg1 ] ]
  let s:p.tabline.tabsel = [ [ s:bg0, s:green ] ]
  let s:p.tabline.middle = [ [ s:bg0, s:bg0 ] ]
  let s:p.tabline.right = [ [ s:bg0, s:orange ] ]
  let s:p.normal.error = [ [ s:bg0, s:orange ] ]
  let s:p.normal.warning = [ [ s:bg2, s:yellow ] ]

let g:lightline#colorscheme#gruvbox9#palette = lightline#colorscheme#flatten(s:p)
