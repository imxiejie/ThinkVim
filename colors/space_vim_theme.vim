" Name:         Space-vim theme
" Description:  Light and dark theme inspired by spacemacs-theme
" Author:       Liu-Cheng Xu <xuliuchengxlc@gmail.com>
" Maintainer:   Liu-Cheng Xu <xuliuchengxlc@gmail.com>
" Website:      https://github.com/liuchengxu/space-vim-theme
" License:      Vim License (see `:help license`)
" Last Updated: Mon 25 Mar 2019 05:22:40 PM CST

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < 256)
  echoerr '[Space-vim theme] There are not enough colors.'
  finish
endif

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'space_vim_theme'

if &background ==# 'dark'
  let g:terminal_ansi_colors = [
        \ '#292b2e', '#d26487', '#35a8a5', '#b89f33', '#6981c5', '#a15ea7', '#288668', '#727272',
        \ '#34323e', '#f2241f', '#67b11d', '#b1951d', '#4f97d7', '#bc6ec5', '#2d9574', '#b2b2b2']
  if !has('gui_running') && get(g:, 'space_vim_transp_bg', 0)
    hi Normal ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi CursorLineNr ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi FoldColumn ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi SignColumn ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi VertSplit ctermfg=234 ctermbg=NONE guifg=#212026 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  else
    hi Normal ctermfg=249 ctermbg=235 guifg=#b2b2b2 guibg=#292b2e guisp=NONE cterm=NONE gui=NONE
    hi CursorLineNr ctermfg=170 ctermbg=234 guifg=#bc6ec5 guibg=#212026 guisp=NONE cterm=NONE gui=NONE
    hi FoldColumn ctermfg=170 ctermbg=234 guifg=#bc6ec5 guibg=#212026 guisp=NONE cterm=NONE gui=NONE
    hi SignColumn ctermfg=249 ctermbg=235 guifg=#b2b2b2 guibg=#292b2e guisp=NONE cterm=NONE gui=NONE
    hi VertSplit ctermfg=234 ctermbg=235 guifg=#212026 guibg=#292b2e guisp=NONE cterm=NONE gui=NONE
  endif
  hi ColorColumn ctermfg=NONE ctermbg=234 guifg=NONE guibg=#212026 guisp=NONE cterm=NONE gui=NONE
  hi Conceal ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Cursor ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi! link CursorColumn CursorLine
  hi CursorLine ctermfg=NONE ctermbg=234 guifg=NONE guibg=#212026 guisp=NONE cterm=NONE gui=NONE
  hi DiffAdd ctermfg=70 ctermbg=235 guifg=#67b11d guibg=#292b2e guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffChange ctermfg=173 ctermbg=235 guifg=#e18254 guibg=#292b2e guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffDelete ctermfg=196 ctermbg=235 guifg=#f2241f guibg=#292b2e guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffText ctermfg=136 ctermbg=235 guifg=#b1951d guibg=#292b2e guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Directory ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi EndOfBuffer ctermfg=235 ctermbg=NONE guifg=#292b2e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Error ctermfg=196 ctermbg=235 guifg=#f2241f guibg=#292b2e guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi ErrorMsg ctermfg=235 ctermbg=196 guifg=#292b2e guibg=#f2241f guisp=NONE cterm=NONE gui=NONE
  hi Folded ctermfg=133 ctermbg=234 guifg=#a45bad guibg=#212026 guisp=NONE cterm=NONE gui=NONE,italic
  hi IncSearch ctermfg=173 ctermbg=235 guifg=#e18254 guibg=#292b2e guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi LineNr ctermfg=239 ctermbg=NONE guifg=#44505c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi MatchParen ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE,bold,underline gui=NONE,bold,underline
  hi ModeMsg ctermfg=184 ctermbg=NONE guifg=#e5d11c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link MoreMsg ModeMsg
  hi NonText ctermfg=239 ctermbg=NONE guifg=#44505c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Pmenu ctermfg=103 ctermbg=236 guifg=#9a9aba guibg=#34323e guisp=NONE cterm=NONE gui=NONE
  hi PmenuSbar ctermfg=NONE ctermbg=234 guifg=NONE guibg=#212026 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSel ctermfg=NONE ctermbg=60 guifg=NONE guibg=#5e5079 guisp=NONE cterm=NONE gui=NONE
  hi PmenuThumb ctermfg=NONE ctermbg=60 guifg=NONE guibg=#5d4d7a guisp=NONE cterm=NONE gui=NONE
  hi Question ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi! link QuickFixLine Search
  hi! link qfLineNr Type
  hi Search ctermfg=70 ctermbg=235 guifg=#67b11d guibg=#292b2e guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi SpecialKey ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpellBad ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=#f2241f cterm=NONE,underline gui=NONE,italic,undercurl
  hi SpellCap ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=#4f97d7 cterm=NONE,underline gui=NONE,italic,undercurl
  hi SpellLocal ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=#2d9574 cterm=NONE,underline gui=NONE,italic,undercurl
  hi SpellRare ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=#bc6ec5 cterm=NONE,underline gui=NONE,italic,undercurl
  hi StatusLine ctermfg=249 ctermbg=60 guifg=#b2b2b2 guibg=#5d4d7a guisp=NONE cterm=NONE gui=NONE
  hi StatusLineNC ctermfg=60 ctermbg=236 guifg=#5d4d7a guibg=#34323e guisp=NONE cterm=NONE gui=NONE
  hi! link StatusLineTerm StatusLine
  hi! link StatusLineTermNC StatusLineNC
  hi TabLineFill ctermfg=60 ctermbg=234 guifg=#544a65 guibg=#212026 guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=70 ctermbg=234 guifg=#67b11d guibg=#212026 guisp=NONE cterm=NONE gui=NONE
  hi! link TabLine TabLineFill
  hi Title ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Visual ctermfg=NONE ctermbg=60 guifg=NONE guibg=#544a65 guisp=NONE cterm=NONE gui=NONE
  hi! link VisualNOS Visual
  hi WarningMsg ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=173 ctermbg=234 guifg=#e18254 guibg=#212026 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Boolean ctermfg=166 ctermbg=NONE guifg=#dc752f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Character ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Comment ctermfg=37 ctermbg=NONE guifg=#2aa1ae guibg=NONE guisp=NONE cterm=NONE,none gui=NONE,italic,none
  hi Conditional ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Constant ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Define ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Debug ctermfg=196 ctermbg=NONE guifg=#f54e3c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Delimiter ctermfg=73 ctermbg=NONE guifg=#74baac guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Error ctermfg=196 ctermbg=235 guifg=#f2241f guibg=#292b2e guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi Exception ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Float ctermfg=147 ctermbg=NONE guifg=#b7b7ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Function ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Identifier ctermfg=68 ctermbg=NONE guifg=#7590db guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Ignore ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Include ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Keyword ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Label ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Macro ctermfg=68 ctermbg=NONE guifg=#7590db guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Number ctermfg=176 ctermbg=NONE guifg=#e697e6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Operator ctermfg=74 ctermbg=NONE guifg=#58b0d9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi PreCondit ctermfg=133 ctermbg=NONE guifg=#a45bad guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi PreProc ctermfg=177 ctermbg=NONE guifg=#d698fe guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Repeat ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi SpecialChar ctermfg=80 ctermbg=NONE guifg=#28def0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialComment ctermfg=67 ctermbg=NONE guifg=#768294 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Statement ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StorageClass ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Special ctermfg=172 ctermbg=NONE guifg=#d79650 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi String ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Structure ctermfg=31 ctermbg=NONE guifg=#4495b4 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Tag ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Todo ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold,italic
  hi Type ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Typedef ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Underlined ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi! link lCursor Cursor
  hi CursorIM ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ToolbarLine ctermfg=NONE ctermbg=232 guifg=NONE guibg=#0a0814 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarButton ctermfg=252 ctermbg=232 guifg=#cdcdcd guibg=#0a0814 guisp=NONE cterm=NONE,bold gui=NONE,bold
  if get(g:, "space_vim_italic", 0)
    hi Comment    cterm=italic
    hi Folded     cterm=italic
    hi SpellBad   cterm=italic,underline
    hi SpellCap   cterm=italic,underline
    hi SpellLocal cterm=italic,underline
    hi SpellRare  cterm=italic,underline
    hi Todo       cterm=italic
  endif
  if get(g:, "space_vim_italicize_strings", 0)
    hi Special    cterm=italic gui=italic
    hi String     cterm=italic gui=italic
  endif
  hi! link iCursor Cursor
  hi! link vCursor Cursor
  hi NormalMode ctermfg=240 ctermbg=235 guifg=#5b5b5b guibg=#292b2e guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi InsertMode ctermfg=32 ctermbg=235 guifg=#4f97d7 guibg=#292b2e guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ReplaceMode ctermfg=29 ctermbg=235 guifg=#2d9574 guibg=#292b2e guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi VisualMode ctermfg=173 ctermbg=235 guifg=#e18254 guibg=#292b2e guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi CommandMode ctermfg=170 ctermbg=235 guifg=#bc6ec5 guibg=#292b2e guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Warnings ctermfg=173 ctermbg=235 guifg=#e18254 guibg=#292b2e guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  if has('nvim')
    let g:terminal_color_0  = '#292b2e'
    let g:terminal_color_8  = '#44505c'
    let g:terminal_color_1  = '#d26487'
    let g:terminal_color_9  = '#f2241f'
    let g:terminal_color_2  = '#35a8a5'
    let g:terminal_color_10 = '#67b11d'
    let g:terminal_color_3  = '#b89f33'
    let g:terminal_color_11 = '#b1951d'
    let g:terminal_color_4  = '#6981c5'
    let g:terminal_color_12 = '#4f97d7'
    let g:terminal_color_5  = '#a15ea7'
    let g:terminal_color_13 = '#bc6ec5'
    let g:terminal_color_6  = '#288668'
    let g:terminal_color_14 = '#2d9574'
    let g:terminal_color_7  = '#5b5b5b'
    let g:terminal_color_15 = '#b2b2b2'
    hi! link TermCursor Cursor
    hi TermCursorNC ctermfg=234 ctermbg=249 guifg=#212026 guibg=#b2b2b2 guisp=NONE cterm=NONE gui=NONE
  endif
  if !(get(g:, "space_vim_plugin_hi_groups", 1) || get(g:, "space_vim_filetype_hi_groups", 1))
    finish
  endif
  if get(g:, "space_vim_plugin_hi_groups", 1)
    hi ALEError ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#f2241f cterm=NONE,underline gui=NONE,undercurl
    hi ALEWarning ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#f2241f cterm=NONE,underline gui=NONE,undercurl
    hi ALEInfo ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#4f97d7 cterm=NONE,underline gui=NONE,undercurl
    hi ALEErrorSign ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi ALEWarningSign ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi ALEInfoSign ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi BufTabLineCurrent ctermfg=235 ctermbg=240 guifg=#292b2e guibg=#5b5b5b guisp=NONE cterm=NONE gui=NONE
    hi BufTabLineActive ctermfg=240 ctermbg=232 guifg=#5b5b5b guibg=#100a14 guisp=NONE cterm=NONE gui=NONE
    hi BufTabLineHidden ctermfg=236 ctermbg=234 guifg=#34323e guibg=#212026 guisp=NONE cterm=NONE gui=NONE
    hi BufTabLineFill ctermfg=235 ctermbg=235 guifg=#292b2e guibg=#292b2e guisp=NONE cterm=NONE gui=NONE
    hi CtrlPMatch ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi CtrlPNoEntries ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi CtrlPPrtBase ctermfg=232 ctermbg=NONE guifg=#100a14 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi CtrlPPrtCursor ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi CtrlPLinePre ctermfg=232 ctermbg=NONE guifg=#100a14 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi CtrlPMode1 ctermfg=32 ctermbg=232 guifg=#4f97d7 guibg=#100a14 guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi CtrlPMode2 ctermfg=235 ctermbg=32 guifg=#292b2e guibg=#4f97d7 guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi CtrlPStats ctermfg=240 ctermbg=232 guifg=#5b5b5b guibg=#100a14 guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi DirvishPathTail ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi DirvishArg ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link EasyMotionTarget Search
    hi! link EasyMotionShade Comment
    hi gitcommitSelectedFile ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi gitcommitDiscardedFile ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi GitGutterAdd ctermfg=70 ctermbg=235 guifg=#67b11d guibg=#292b2e guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi GitGutterChange ctermfg=173 ctermbg=235 guifg=#e18254 guibg=#292b2e guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi GitGutterDelete ctermfg=196 ctermbg=235 guifg=#f2241f guibg=#292b2e guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi GitGutterChangeDelete ctermfg=168 ctermbg=235 guifg=#ce537a guibg=#292b2e guisp=NONE cterm=NONE,bold gui=NONE,bold
    if get(g:, "indent_guides_auto_colors", 0)
      if get(g: "space_vim_invert_indent_guides", 0)
        hi IndentGuidesOdd ctermfg=235 ctermbg=232 guifg=#292b2e guibg=#100a14 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
        hi IndentGuidesEven ctermfg=235 ctermbg=234 guifg=#292b2e guibg=#212026 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
      else
        hi IndentGuidesOdd ctermfg=235 ctermbg=232 guifg=#292b2e guibg=#100a14 guisp=NONE cterm=NONE gui=NONE
        hi IndentGuidesEven ctermfg=235 ctermbg=234 guifg=#292b2e guibg=#212026 guisp=NONE cterm=NONE gui=NONE
      endif
    endif
    " IndentLine
    if !exists('g:indentLine_color_term')
      let g:indentLine_color_term = 232
    endif
    if !exists('g:indentLine_color_gui')
      let g:indentLine_color_gui = '#100a14'
    endif
    hi NERDTreeDir ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi NERDTreeDirSlash ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi NERDTreeOpenable ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi NERDTreeClosable ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi NERDTreeFile ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi NERDTreeExecFile ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi NERDTreeUp ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi NERDTreeCWD ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi NERDTreeHelp ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi NERDTreeToggleOn ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi NERDTreeToggleOff ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwDir ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwClassify ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwLink ctermfg=239 ctermbg=NONE guifg=#44505c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwSymLink ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwExe ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwComment ctermfg=239 ctermbg=NONE guifg=#44505c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwList ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwHelpCmd ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwCmdSep ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwVersion ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    " Rainbow Parentheses
    if !exists('g:rbpt_colorpairs')
      let g:rbpt_colorpairs = [['blue', '#6981c5'], ['magenta', '#a15ea7'],
            \ ['red', '#d26487'], ['173', '#ca754b']]
    endif

    let g:rainbow_guifgs = [ '#ca754b', '#d26487', '#a15ea7', '#6981c5' ]
    let g:rainbow_ctermfgs = [ '173', 'red', 'magenta', 'blue' ]

    if !exists('g:rainbow_conf')
      let g:rainbow_conf = {}
    endif
    if !has_key(g:rainbow_conf, 'guifgs')
      let g:rainbow_conf['guifgs'] = g:rainbow_guifgs
    endif
    if !has_key(g:rainbow_conf, 'ctermfgs')
      let g:rainbow_conf['ctermfgs'] = g:rainbow_ctermfgs
    endif

    let g:niji_dark_colours = g:rbpt_colorpairs
    let g:niji_light_colours = g:rbpt_colorpairs
    hi ShowMarksHLl ctermfg=32 ctermbg=235 guifg=#4f97d7 guibg=#292b2e guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi ShowMarksHLu ctermfg=32 ctermbg=235 guifg=#4f97d7 guibg=#292b2e guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi ShowMarksHLo ctermfg=32 ctermbg=235 guifg=#4f97d7 guibg=#292b2e guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi ShowMarksHLm ctermfg=32 ctermbg=235 guifg=#4f97d7 guibg=#292b2e guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi SignifySignAdd ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi SignifySignChange ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi SignifySignDelete ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi SignatureMarkText ctermfg=32 ctermbg=235 guifg=#4f97d7 guibg=#292b2e guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi SignatureMarkerText ctermfg=170 ctermbg=235 guifg=#bc6ec5 guibg=#292b2e guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi StartifyBracket ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi StartifyFile ctermfg=249 ctermbg=235 guifg=#b2b2b2 guibg=#292b2e guisp=NONE cterm=NONE gui=NONE
    hi StartifyNumber ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi StartifyPath ctermfg=68 ctermbg=NONE guifg=#7590db guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi StartifySlash ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi StartifySection ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi! link StartifySpecial Type
    hi StartifyHeader ctermfg=133 ctermbg=NONE guifg=#a45bad guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi StartifyFooter ctermfg=133 ctermbg=NONE guifg=#a45bad guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi SyntasticError ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#f2241f cterm=NONE,underline gui=NONE,undercurl
    hi SyntasticWarning ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#b1951d cterm=NONE,underline gui=NONE,undercurl
    hi SyntasticErrorSign ctermfg=196 ctermbg=235 guifg=#f2241f guibg=#292b2e guisp=NONE cterm=NONE gui=NONE
    hi SyntasticWarningSign ctermfg=136 ctermbg=235 guifg=#b1951d guibg=#292b2e guisp=NONE cterm=NONE gui=NONE
    hi multiple_cursors_cursor ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi multiple_cursors_visual ctermfg=NONE ctermbg=232 guifg=NONE guibg=#100a14 guisp=NONE cterm=NONE gui=NONE
    hi CurrentWord ctermfg=NONE ctermbg=60 guifg=NONE guibg=#544a65 guisp=NONE cterm=NONE,underline gui=NONE,underline
    hi CurrentWordTwins ctermfg=NONE ctermbg=60 guifg=NONE guibg=#544a65 guisp=NONE cterm=NONE gui=NONE
    hi! link WhichKey Function
    hi WhichKeySeperator ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link WhichKeyGroup Keyword
    hi! link WhichKeyDesc Identifier
    let g:vimshell_escape_colors = [
          \ '#34323e', '#f2241f', '#67b11d', '#b1951d',
          \ '#4f97d7', '#bc6ec5', '#2d9574', '#5b5b5b',
          \ '#292b2e', '#f2241f', '#67b11d', '#e18254',
          \ '#4f97d7', '#bc6ec5', '#2d9574', '#cdcdcd'
          \ ]
  endif
  if get(g:, "space_vim_filetype_hi_groups", 1)
    hi diffAdded ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi diffRemoved ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi diffChanged ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi diffFile ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi diffNewFile ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi diffLine ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi htmlTag ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi htmlEndTag ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi htmlTagName ctermfg=133 ctermbg=NONE guifg=#a45bad guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi htmlArg ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi htmlScriptTag ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi htmlTagN ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi htmlSpecialTagName ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi htmlLink ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
    hi htmlSpecialChar ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi htmlBold ctermfg=fg ctermbg=235 guifg=fg guibg=#292b2e guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi htmlBoldUnderline ctermfg=fg ctermbg=235 guifg=fg guibg=#292b2e guisp=NONE cterm=NONE,bold,underline gui=NONE,bold,underline
    hi htmlBoldItalic ctermfg=fg ctermbg=235 guifg=fg guibg=#292b2e guisp=NONE cterm=NONE,bold,italic gui=NONE,bold,italic
    hi htmlBoldUnderlineItalic ctermfg=fg ctermbg=235 guifg=fg guibg=#292b2e guisp=NONE cterm=NONE,bold,italic,underline gui=NONE,bold,italic,underline
    hi htmlUnderline ctermfg=fg ctermbg=235 guifg=fg guibg=#292b2e guisp=NONE cterm=NONE,underline gui=NONE,underline
    hi htmlUnderlineItalic ctermfg=fg ctermbg=235 guifg=fg guibg=#292b2e guisp=NONE cterm=NONE,italic,underline gui=NONE,italic,underline
    hi htmlItalic ctermfg=68 ctermbg=NONE guifg=#7590db guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
    hi xmlTag ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlEndTag ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlTagName ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlEqual ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi docbkKeyword ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi xmlDocTypeDecl ctermfg=239 ctermbg=NONE guifg=#44505c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlDocTypeKeyword ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlCdataStart ctermfg=239 ctermbg=NONE guifg=#44505c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlCdataCdata ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi dtdFunction ctermfg=239 ctermbg=NONE guifg=#44505c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi dtdTagName ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlAttrib ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlProcessingDelim ctermfg=239 ctermbg=NONE guifg=#44505c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi dtdParamEntityPunct ctermfg=239 ctermbg=NONE guifg=#44505c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi dtdParamEntityDPunct ctermfg=239 ctermbg=NONE guifg=#44505c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlAttribPunct ctermfg=239 ctermbg=NONE guifg=#44505c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlEntity ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlEntityPunct ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimCommentTitle ctermfg=68 ctermbg=NONE guifg=#7590db guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi vimNotation ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimBracket ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimMapModKey ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimCommand ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi vimLet ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimNorm ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link vimFuncSID Function
    hi! link vimFunction Function
    hi vimGroup ctermfg=68 ctermbg=NONE guifg=#7590db guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link vimHiGroup Type
    hi vimSetSep ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimSep ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimContinue ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureKeyword ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureCond ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureSpecial ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureDefine ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureFunc ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureRepeat ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureCharacter ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureStringEscape ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureException ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureRegexp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureRegexpEscape ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureRegexpCharClass ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi! link clojureRegexpMod clojureRegexpCharClass
    hi! link clojureRegexpQuantifier clojureRegexpCharClass
    hi clojureParen ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureAnonArg ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureVariable ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureMacro ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureMeta ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureDeref ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureQuote ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureUnquote ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cOperator ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cStructure ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi rustSelf ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi rustPanic ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi rustAssert ctermfg=68 ctermbg=NONE guifg=#7590db guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi! link pythonCoding Comment
    hi cssBraces ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssFunctionName ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssIdentifier ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssClassName ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssColor ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssSelectorOp ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssSelectorOp2 ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssImportant ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssVendor ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssTextProp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssAnimationProp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssUIProp ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssTransformProp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssTransitionProp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssPrintProp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssPositioningProp ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssBoxProp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssFontDescriptorProp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssFlexibleBoxProp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssBorderOutlineProp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssBackgroundProp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssMarginProp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssListProp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssTableProp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssFontProp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssPaddingProp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssDimensionProp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssRenderProp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssColorProp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssGeneratedContentProp ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaScriptBraces ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaScriptFunction ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaScriptIdentifier ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaScriptMember ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaScriptNumber ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaScriptNull ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaScriptParens ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptImport ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptExport ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptClassKeyword ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptClassExtends ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDefault ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptClassName ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptClassSuperName ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptGlobal ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptEndColons ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptFuncArg ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptGlobalMethod ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptNodeGlobal ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptBOMWindowProp ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptArrayMethod ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptArrayStaticMethod ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptCacheMethod ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDateMethod ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptMathStaticMethod ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptURLUtilsProp ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptBOMNavigatorProp ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDOMDocMethod ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDOMDocProp ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptBOMLocationMethod ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptBOMWindowMethod ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptStringMethod ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptVariable ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptIdentifier ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptClassSuper ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptFuncKeyword ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptAsyncFunc ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptClassStatic ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptOperator ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptForOperator ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptYield ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptExceptions ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptMessage ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptTemplateSB ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptTemplateSubstitution ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptLabel ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptObjectLabel ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptPropertyName ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptLogicSymbols ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptArrowFunc ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDocParamName ctermfg=240 ctermbg=NONE guifg=#5b5b5b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDocTags ctermfg=240 ctermbg=NONE guifg=#5b5b5b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDocNotation ctermfg=240 ctermbg=NONE guifg=#5b5b5b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDocParamType ctermfg=240 ctermbg=NONE guifg=#5b5b5b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDocNamedParamType ctermfg=240 ctermbg=NONE guifg=#5b5b5b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptBrackets ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDOMElemAttrs ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDOMEventMethod ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDOMNodeMethod ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDOMStorageMethod ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptHeadersMethod ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptAsyncFuncKeyword ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi javascriptAwaitFuncKeyword ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi! link jsClassKeyword Keyword
    hi! link jsExtendsKeyword Keyword
    hi jsExportDefault ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi jsTemplateBraces ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link jsGlobalNodeObjects Keyword
    hi! link jsGlobalObjects Keyword
    hi! link jsFunction Function
    hi jsFuncParens ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsParens ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsNull ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link jsUndefined ErrorMsg
    hi jsClassDefinition ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link jsObjectProp Identifier
    hi jsObjectKey ctermfg=74 ctermbg=NONE guifg=#58b0d9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsFunctionKey ctermfg=68 ctermbg=NONE guifg=#7590db guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsBracket ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsObjectColon ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsFuncArgs ctermfg=74 ctermbg=NONE guifg=#58b0d9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsFuncBraces ctermfg=68 ctermbg=NONE guifg=#7590db guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsVariableDef ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link jsObjectBraces Special
    hi jsObjectValue ctermfg=147 ctermbg=NONE guifg=#b7b7ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsClassBlock ctermfg=68 ctermbg=NONE guifg=#7590db guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsFutureKeys ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi jsFuncArgs ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsStorageClass ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsxRegion ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi typeScriptReserved ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link typeScriptLabel Label
    hi! link typeScriptFuncKeyword Function
    hi! link typeScriptIdentifier Identifier
    hi typeScriptBraces ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi typeScriptEndColons ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi typeScriptDOMObjects ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link typeScriptAjaxMethods Function
    hi typeScriptLogicSymbols ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link typeScriptDocSeeTag Comment
    hi! link typeScriptDocParam Comment
    hi! link typeScriptDocTags vimCommentTitle
    hi! link typeScriptGlobalObjects Keyword
    hi typeScriptParens ctermfg=68 ctermbg=NONE guifg=#7590db guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link typeScriptOpSymbols Operator
    hi! link typeScriptHtmlElemProperties Special
    hi typeScriptNull ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi typeScriptInterpolationDelimiter ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi purescriptModuleKeyword ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi purescriptModuleName ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi purescriptWhere ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi purescriptDelimiter ctermfg=240 ctermbg=NONE guifg=#5b5b5b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link purescriptType Type
    hi! link purescriptImportKeyword Keyword
    hi! link purescriptHidingKeyword Keyword
    hi! link purescriptAsKeyword Keyword
    hi! link purescriptStructure Structure
    hi! link purescriptOperator Operator
    hi! link purescriptTypeVar Type
    hi! link purescriptConstructor Function
    hi! link purescriptFunction Function
    hi! link purescriptConditional Conditional
    hi purescriptBacktick ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi coffeeExtendedOp ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi coffeeSpecialOp ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi coffeeCurly ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi coffeeParen ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi coffeeBracket ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi rubyStringDelimiter ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi rubyInterpolationDelimiter ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi objcTypeModifier ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi objcDirective ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi goDirective ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi goConstants ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link goDeclaration Keyword
    hi goDeclType ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi goBuiltins ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi luaIn ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi luaFunction ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi luaTable ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi moonSpecialOp ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi moonExtendedOp ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi moonFunction ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi moonObject ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaAnnotation ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaDocTags ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link javaCommentTitle vimCommentTitle
    hi javaParen ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaParen1 ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaParen2 ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaParen3 ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaParen4 ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaParen5 ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaOperator ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaVarArg ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link elixirDocString Comment
    hi elixirStringDelimiter ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi elixirInterpolationDelimiter ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi elixirModuleDeclaration ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaNameDefinition ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaCaseFollowing ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaCapitalWord ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaTypeExtension ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaKeyword ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi scalaKeywordModifier ctermfg=168 ctermbg=NONE guifg=#ce537a guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaSpecial ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaOperator ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaTypeDeclaration ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaTypeTypePostDeclaration ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaInstanceDeclaration ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaInterpolation ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownItalic ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
    hi markdownH1 ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi markdownH2 ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi markdownH3 ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi markdownH4 ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi markdownH5 ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownH6 ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link htmlH1 markdownH1
    hi! link htmlH2 markdownH2
    hi! link htmlH3 markdownH3
    hi! link htmlH4 markdownH4
    hi! link htmlH5 markdownH5
    hi! link htmlH6 markdownH6
    hi markdownCode ctermfg=133 ctermbg=NONE guifg=#a45bad guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link mkdCode markdownCode
    hi markdownCodeBlock ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownCodeDelimiter ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link mkdCodeDelimiter markdownCodeDelimiter
    hi markdownBlockquote ctermfg=239 ctermbg=NONE guifg=#44505c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownListMarker ctermfg=239 ctermbg=NONE guifg=#44505c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownOrderedListMarker ctermfg=239 ctermbg=NONE guifg=#44505c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownRule ctermfg=239 ctermbg=NONE guifg=#44505c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownHeadingRule ctermfg=239 ctermbg=NONE guifg=#44505c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownUrlDelimiter ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownLinkDelimiter ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownLinkTextDelimiter ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownHeadingDelimiter ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownUrl ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownUrlTitleDelimiter ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link markdownLinkText htmlLink
    hi! link markdownIdDeclaration markdownLinkText
    hi haskellType ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellIdentifier ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellSeparator ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellDelimiter ctermfg=240 ctermbg=NONE guifg=#5b5b5b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellOperators ctermfg=32 ctermbg=NONE guifg=#4f97d7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellBacktick ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellStatement ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellConditional ctermfg=173 ctermbg=NONE guifg=#e18254 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellLet ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellDefault ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellWhere ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellBottom ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellBlockKeywords ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellImportKeywords ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellDeclKeyword ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellDeriving ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellAssocType ctermfg=29 ctermbg=NONE guifg=#2d9574 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellNumber ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellPragma ctermfg=170 ctermbg=NONE guifg=#bc6ec5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellString ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellChar ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsonKeyword ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsonQuote ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsonBraces ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsonString ctermfg=249 ctermbg=NONE guifg=#b2b2b2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  endif
  finish
endif

let g:terminal_ansi_colors = [
      \ '#fbf8ef', '#d26487', '#35a8a5', '#b89f33', '#6981c5', '#a15ea7', '#288668', '#504259',
      \ '#a8a4ae', '#f2241f', '#67b11d', '#b1951d', '#3a81c3', '#6c3163', '#24775c', '#655370']
if !has('gui_running') && get(g:, 'space_vim_transp_bg', 0)
  hi Normal ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SignColumn ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi VertSplit ctermfg=255 ctermbg=NONE guifg=#efeae9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
else
  hi Normal ctermfg=60 ctermbg=231 guifg=#655370 guibg=#fbf8ef guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=89 ctermbg=255 guifg=#6c3163 guibg=#efeae9 guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=89 ctermbg=255 guifg=#6c3163 guibg=#efeae9 guisp=NONE cterm=NONE gui=NONE
  hi SignColumn ctermfg=60 ctermbg=231 guifg=#655370 guibg=#fbf8ef guisp=NONE cterm=NONE gui=NONE
  hi VertSplit ctermfg=255 ctermbg=231 guifg=#efeae9 guibg=#fbf8ef guisp=NONE cterm=NONE gui=NONE
endif
hi ColorColumn ctermfg=NONE ctermbg=255 guifg=NONE guibg=#efeae9 guisp=NONE cterm=NONE gui=NONE
hi Conceal ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
hi! link CursorColumn CursorLine
hi CursorLine ctermfg=NONE ctermbg=255 guifg=NONE guibg=#efeae9 guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=70 ctermbg=231 guifg=#67b11d guibg=#fbf8ef guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffChange ctermfg=166 ctermbg=231 guifg=#b46843 guibg=#fbf8ef guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffDelete ctermfg=196 ctermbg=231 guifg=#f2241f guibg=#fbf8ef guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffText ctermfg=136 ctermbg=231 guifg=#b1951d guibg=#fbf8ef guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Directory ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi EndOfBuffer ctermfg=231 ctermbg=NONE guifg=#fbf8ef guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Error ctermfg=196 ctermbg=231 guifg=#f2241f guibg=#fbf8ef guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
hi ErrorMsg ctermfg=231 ctermbg=196 guifg=#fbf8ef guibg=#f2241f guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=53 ctermbg=255 guifg=#4e3163 guibg=#efeae9 guisp=NONE cterm=NONE gui=NONE,italic
hi IncSearch ctermfg=166 ctermbg=231 guifg=#b46843 guibg=#fbf8ef guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
hi LineNr ctermfg=146 ctermbg=NONE guifg=#a8a8bf guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE,bold,underline gui=NONE,bold,underline
hi ModeMsg ctermfg=184 ctermbg=NONE guifg=#e5d11c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link MoreMsg ModeMsg
hi NonText ctermfg=146 ctermbg=NONE guifg=#a8a8bf guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=103 ctermbg=254 guifg=#8c799f guibg=#e2e0ea guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=NONE ctermbg=255 guifg=NONE guibg=#efeae9 guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=189 guifg=NONE guibg=#c8c6dd guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=NONE ctermbg=189 guifg=NONE guibg=#d3d3e7 guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi! link QuickFixLine Search
hi! link qfLineNr Type
hi Search ctermfg=70 ctermbg=231 guifg=#67b11d guibg=#fbf8ef guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
hi SpecialKey ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=#f2241f cterm=NONE,underline gui=NONE,italic,undercurl
hi SpellCap ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=#3a81c3 cterm=NONE,underline gui=NONE,italic,undercurl
hi SpellLocal ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=#24775c cterm=NONE,underline gui=NONE,italic,undercurl
hi SpellRare ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=#6c3163 cterm=NONE,underline gui=NONE,italic,undercurl
hi StatusLine ctermfg=60 ctermbg=189 guifg=#655370 guibg=#d3d3e7 guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=189 ctermbg=248 guifg=#d3d3e7 guibg=#a8a4ae guisp=NONE cterm=NONE gui=NONE
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi TabLineFill ctermfg=60 ctermbg=255 guifg=#544a65 guibg=#efeae9 guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=70 ctermbg=255 guifg=#67b11d guibg=#efeae9 guisp=NONE cterm=NONE gui=NONE
hi! link TabLine TabLineFill
hi Title ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Visual ctermfg=NONE ctermbg=60 guifg=NONE guibg=#544a65 guisp=NONE cterm=NONE gui=NONE
hi! link VisualNOS Visual
hi WarningMsg ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WildMenu ctermfg=166 ctermbg=255 guifg=#b46843 guibg=#efeae9 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Boolean ctermfg=166 ctermbg=NONE guifg=#dc752f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Character ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Comment ctermfg=37 ctermbg=NONE guifg=#2aa1ae guibg=NONE guisp=NONE cterm=NONE,none gui=NONE,italic,none
hi Conditional ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Constant ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Define ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Debug ctermfg=196 ctermbg=NONE guifg=#f54e3c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Delimiter ctermfg=73 ctermbg=NONE guifg=#74baac guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Error ctermfg=196 ctermbg=231 guifg=#f2241f guibg=#fbf8ef guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
hi Exception ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Float ctermfg=147 ctermbg=NONE guifg=#b7b7ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Function ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Identifier ctermfg=61 ctermbg=NONE guifg=#715ab1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Include ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Keyword ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Label ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Macro ctermfg=61 ctermbg=NONE guifg=#715ab1 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Number ctermfg=176 ctermbg=NONE guifg=#e697e6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Operator ctermfg=74 ctermbg=NONE guifg=#58b0d9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PreCondit ctermfg=53 ctermbg=NONE guifg=#4e3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PreProc ctermfg=97 ctermbg=NONE guifg=#86589e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Repeat ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi SpecialChar ctermfg=37 ctermbg=NONE guifg=#21b8c7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialComment ctermfg=67 ctermbg=NONE guifg=#768294 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Statement ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StorageClass ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Special ctermfg=172 ctermbg=NONE guifg=#d79650 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi String ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Structure ctermfg=31 ctermbg=NONE guifg=#4495b4 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Tag ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Todo ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold,italic
hi Type ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Typedef ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Underlined ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi! link lCursor Cursor
hi CursorIM ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ToolbarLine ctermfg=NONE ctermbg=252 guifg=NONE guibg=#d2ceda guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=103 ctermbg=252 guifg=#83758c guibg=#d2ceda guisp=NONE cterm=NONE,bold gui=NONE,bold
if get(g:, "space_vim_italic", 0)
  hi Comment    cterm=italic
  hi Folded     cterm=italic
  hi SpellBad   cterm=italic,underline
  hi SpellCap   cterm=italic,underline
  hi SpellLocal cterm=italic,underline
  hi SpellRare  cterm=italic,underline
  hi Todo       cterm=italic
endif
if get(g:, "space_vim_italicize_strings", 0)
  hi Special    cterm=italic gui=italic
  hi String     cterm=italic gui=italic
endif
hi! link iCursor Cursor
hi! link vCursor Cursor
hi NormalMode ctermfg=237 ctermbg=231 guifg=#463a4e guibg=#fbf8ef guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi InsertMode ctermfg=32 ctermbg=231 guifg=#3a81c3 guibg=#fbf8ef guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ReplaceMode ctermfg=29 ctermbg=231 guifg=#24775c guibg=#fbf8ef guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VisualMode ctermfg=166 ctermbg=231 guifg=#b46843 guibg=#fbf8ef guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi CommandMode ctermfg=89 ctermbg=231 guifg=#6c3163 guibg=#fbf8ef guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Warnings ctermfg=166 ctermbg=231 guifg=#b46843 guibg=#fbf8ef guisp=NONE cterm=NONE,reverse gui=NONE,reverse
if has('nvim')
  let g:terminal_color_0  = '#fbf8ef'
  let g:terminal_color_8  = '#a8a8bf'
  let g:terminal_color_1  = '#d26487'
  let g:terminal_color_9  = '#f2241f'
  let g:terminal_color_2  = '#35a8a5'
  let g:terminal_color_10 = '#67b11d'
  let g:terminal_color_3  = '#b89f33'
  let g:terminal_color_11 = '#b1951d'
  let g:terminal_color_4  = '#6981c5'
  let g:terminal_color_12 = '#3a81c3'
  let g:terminal_color_5  = '#a15ea7'
  let g:terminal_color_13 = '#6c3163'
  let g:terminal_color_6  = '#288668'
  let g:terminal_color_14 = '#24775c'
  let g:terminal_color_7  = '#463a4e'
  let g:terminal_color_15 = '#655370'
  hi! link TermCursor Cursor
  hi TermCursorNC ctermfg=255 ctermbg=60 guifg=#efeae9 guibg=#655370 guisp=NONE cterm=NONE gui=NONE
endif
if !(get(g:, "space_vim_plugin_hi_groups", 1) || get(g:, "space_vim_filetype_hi_groups", 1))
  finish
endif
if get(g:, "space_vim_plugin_hi_groups", 1)
  hi ALEError ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#f2241f cterm=NONE,underline gui=NONE,undercurl
  hi ALEWarning ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#f2241f cterm=NONE,underline gui=NONE,undercurl
  hi ALEInfo ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#3a81c3 cterm=NONE,underline gui=NONE,undercurl
  hi ALEErrorSign ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi ALEWarningSign ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi ALEInfoSign ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi BufTabLineCurrent ctermfg=231 ctermbg=237 guifg=#fbf8ef guibg=#463a4e guisp=NONE cterm=NONE gui=NONE
  hi BufTabLineActive ctermfg=237 ctermbg=254 guifg=#463a4e guibg=#e3dedd guisp=NONE cterm=NONE gui=NONE
  hi BufTabLineHidden ctermfg=248 ctermbg=255 guifg=#a8a4ae guibg=#efeae9 guisp=NONE cterm=NONE gui=NONE
  hi BufTabLineFill ctermfg=231 ctermbg=231 guifg=#fbf8ef guibg=#fbf8ef guisp=NONE cterm=NONE gui=NONE
  hi CtrlPMatch ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CtrlPNoEntries ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CtrlPPrtBase ctermfg=254 ctermbg=NONE guifg=#e3dedd guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CtrlPPrtCursor ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CtrlPLinePre ctermfg=254 ctermbg=NONE guifg=#e3dedd guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CtrlPMode1 ctermfg=32 ctermbg=254 guifg=#3a81c3 guibg=#e3dedd guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi CtrlPMode2 ctermfg=231 ctermbg=32 guifg=#fbf8ef guibg=#3a81c3 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi CtrlPStats ctermfg=237 ctermbg=254 guifg=#463a4e guibg=#e3dedd guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi DirvishPathTail ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DirvishArg ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link EasyMotionTarget Search
  hi! link EasyMotionShade Comment
  hi gitcommitSelectedFile ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi gitcommitDiscardedFile ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi GitGutterAdd ctermfg=70 ctermbg=231 guifg=#67b11d guibg=#fbf8ef guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi GitGutterChange ctermfg=166 ctermbg=231 guifg=#b46843 guibg=#fbf8ef guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi GitGutterDelete ctermfg=196 ctermbg=231 guifg=#f2241f guibg=#fbf8ef guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi GitGutterChangeDelete ctermfg=161 ctermbg=231 guifg=#ba2f59 guibg=#fbf8ef guisp=NONE cterm=NONE,bold gui=NONE,bold
  if get(g:, "indent_guides_auto_colors", 0)
    if get(g: "space_vim_invert_indent_guides", 0)
      hi IndentGuidesOdd ctermfg=231 ctermbg=254 guifg=#fbf8ef guibg=#e3dedd guisp=NONE cterm=NONE,reverse gui=NONE,reverse
      hi IndentGuidesEven ctermfg=231 ctermbg=255 guifg=#fbf8ef guibg=#efeae9 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    else
      hi IndentGuidesOdd ctermfg=231 ctermbg=254 guifg=#fbf8ef guibg=#e3dedd guisp=NONE cterm=NONE gui=NONE
      hi IndentGuidesEven ctermfg=231 ctermbg=255 guifg=#fbf8ef guibg=#efeae9 guisp=NONE cterm=NONE gui=NONE
    endif
  endif
  " IndentLine
  if !exists('g:indentLine_color_term')
    let g:indentLine_color_term = 254
  endif
  if !exists('g:indentLine_color_gui')
    let g:indentLine_color_gui = '#e3dedd'
  endif
  hi NERDTreeDir ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi NERDTreeDirSlash ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NERDTreeOpenable ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NERDTreeClosable ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NERDTreeFile ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NERDTreeExecFile ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NERDTreeUp ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NERDTreeCWD ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NERDTreeHelp ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NERDTreeToggleOn ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NERDTreeToggleOff ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwDir ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwClassify ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwLink ctermfg=146 ctermbg=NONE guifg=#a8a8bf guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwSymLink ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwExe ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwComment ctermfg=146 ctermbg=NONE guifg=#a8a8bf guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwList ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwHelpCmd ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwCmdSep ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwVersion ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  " Rainbow Parentheses
  if !exists('g:rbpt_colorpairs')
    let g:rbpt_colorpairs = [['blue', '#6981c5'], ['magenta', '#a15ea7'],
          \ ['red', '#d26487'], ['173', '#ca754b']]
  endif

  let g:rainbow_guifgs = [ '#ca754b', '#d26487', '#a15ea7', '#6981c5' ]
  let g:rainbow_ctermfgs = [ '173', 'red', 'magenta', 'blue' ]

  if !exists('g:rainbow_conf')
    let g:rainbow_conf = {}
  endif
  if !has_key(g:rainbow_conf, 'guifgs')
    let g:rainbow_conf['guifgs'] = g:rainbow_guifgs
  endif
  if !has_key(g:rainbow_conf, 'ctermfgs')
    let g:rainbow_conf['ctermfgs'] = g:rainbow_ctermfgs
  endif

  let g:niji_dark_colours = g:rbpt_colorpairs
  let g:niji_light_colours = g:rbpt_colorpairs
  hi ShowMarksHLl ctermfg=32 ctermbg=231 guifg=#3a81c3 guibg=#fbf8ef guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi ShowMarksHLu ctermfg=32 ctermbg=231 guifg=#3a81c3 guibg=#fbf8ef guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi ShowMarksHLo ctermfg=32 ctermbg=231 guifg=#3a81c3 guibg=#fbf8ef guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi ShowMarksHLm ctermfg=32 ctermbg=231 guifg=#3a81c3 guibg=#fbf8ef guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi SignifySignAdd ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SignifySignChange ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SignifySignDelete ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SignatureMarkText ctermfg=32 ctermbg=231 guifg=#3a81c3 guibg=#fbf8ef guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi SignatureMarkerText ctermfg=89 ctermbg=231 guifg=#6c3163 guibg=#fbf8ef guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi StartifyBracket ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StartifyFile ctermfg=60 ctermbg=231 guifg=#655370 guibg=#fbf8ef guisp=NONE cterm=NONE gui=NONE
  hi StartifyNumber ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StartifyPath ctermfg=61 ctermbg=NONE guifg=#715ab1 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi StartifySlash ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StartifySection ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi! link StartifySpecial Type
  hi StartifyHeader ctermfg=53 ctermbg=NONE guifg=#4e3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StartifyFooter ctermfg=53 ctermbg=NONE guifg=#4e3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SyntasticError ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#f2241f cterm=NONE,underline gui=NONE,undercurl
  hi SyntasticWarning ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#b1951d cterm=NONE,underline gui=NONE,undercurl
  hi SyntasticErrorSign ctermfg=196 ctermbg=231 guifg=#f2241f guibg=#fbf8ef guisp=NONE cterm=NONE gui=NONE
  hi SyntasticWarningSign ctermfg=136 ctermbg=231 guifg=#b1951d guibg=#fbf8ef guisp=NONE cterm=NONE gui=NONE
  hi multiple_cursors_cursor ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi multiple_cursors_visual ctermfg=NONE ctermbg=254 guifg=NONE guibg=#e3dedd guisp=NONE cterm=NONE gui=NONE
  hi CurrentWord ctermfg=NONE ctermbg=60 guifg=NONE guibg=#544a65 guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi CurrentWordTwins ctermfg=NONE ctermbg=60 guifg=NONE guibg=#544a65 guisp=NONE cterm=NONE gui=NONE
  hi! link WhichKey Function
  hi WhichKeySeperator ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link WhichKeyGroup Keyword
  hi! link WhichKeyDesc Identifier
  let g:vimshell_escape_colors = [
        \ '#a8a4ae', '#f2241f', '#67b11d', '#b1951d',
        \ '#3a81c3', '#6c3163', '#24775c', '#463a4e',
        \ '#fbf8ef', '#f2241f', '#67b11d', '#b46843',
        \ '#3a81c3', '#6c3163', '#24775c', '#83758c'
        \ ]
endif
if get(g:, "space_vim_filetype_hi_groups", 1)
  hi diffAdded ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi diffRemoved ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi diffChanged ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi diffFile ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi diffNewFile ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi diffLine ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi htmlTag ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi htmlEndTag ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi htmlTagName ctermfg=53 ctermbg=NONE guifg=#4e3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi htmlArg ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi htmlScriptTag ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi htmlTagN ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi htmlSpecialTagName ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi htmlLink ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi htmlSpecialChar ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi htmlBold ctermfg=fg ctermbg=231 guifg=fg guibg=#fbf8ef guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi htmlBoldUnderline ctermfg=fg ctermbg=231 guifg=fg guibg=#fbf8ef guisp=NONE cterm=NONE,bold,underline gui=NONE,bold,underline
  hi htmlBoldItalic ctermfg=fg ctermbg=231 guifg=fg guibg=#fbf8ef guisp=NONE cterm=NONE,bold,italic gui=NONE,bold,italic
  hi htmlBoldUnderlineItalic ctermfg=fg ctermbg=231 guifg=fg guibg=#fbf8ef guisp=NONE cterm=NONE,bold,italic,underline gui=NONE,bold,italic,underline
  hi htmlUnderline ctermfg=fg ctermbg=231 guifg=fg guibg=#fbf8ef guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi htmlUnderlineItalic ctermfg=fg ctermbg=231 guifg=fg guibg=#fbf8ef guisp=NONE cterm=NONE,italic,underline gui=NONE,italic,underline
  hi htmlItalic ctermfg=61 ctermbg=NONE guifg=#715ab1 guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
  hi xmlTag ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlEndTag ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlTagName ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlEqual ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi docbkKeyword ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi xmlDocTypeDecl ctermfg=146 ctermbg=NONE guifg=#a8a8bf guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlDocTypeKeyword ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlCdataStart ctermfg=146 ctermbg=NONE guifg=#a8a8bf guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlCdataCdata ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi dtdFunction ctermfg=146 ctermbg=NONE guifg=#a8a8bf guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi dtdTagName ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlAttrib ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlProcessingDelim ctermfg=146 ctermbg=NONE guifg=#a8a8bf guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi dtdParamEntityPunct ctermfg=146 ctermbg=NONE guifg=#a8a8bf guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi dtdParamEntityDPunct ctermfg=146 ctermbg=NONE guifg=#a8a8bf guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlAttribPunct ctermfg=146 ctermbg=NONE guifg=#a8a8bf guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlEntity ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlEntityPunct ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimCommentTitle ctermfg=61 ctermbg=NONE guifg=#715ab1 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi vimNotation ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimBracket ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimMapModKey ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimCommand ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi vimLet ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimNorm ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link vimFuncSID Function
  hi! link vimFunction Function
  hi vimGroup ctermfg=61 ctermbg=NONE guifg=#715ab1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link vimHiGroup Type
  hi vimSetSep ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimSep ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimContinue ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureKeyword ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureCond ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureSpecial ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureDefine ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureFunc ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureRepeat ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureCharacter ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureStringEscape ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureException ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureRegexp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureRegexpEscape ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureRegexpCharClass ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi! link clojureRegexpMod clojureRegexpCharClass
  hi! link clojureRegexpQuantifier clojureRegexpCharClass
  hi clojureParen ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureAnonArg ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureVariable ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureMacro ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureMeta ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureDeref ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureQuote ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureUnquote ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cOperator ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cStructure ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi rustSelf ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi rustPanic ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi rustAssert ctermfg=61 ctermbg=NONE guifg=#715ab1 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi! link pythonCoding Comment
  hi cssBraces ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssFunctionName ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssIdentifier ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssClassName ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssColor ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssSelectorOp ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssSelectorOp2 ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssImportant ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssVendor ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssTextProp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssAnimationProp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssUIProp ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssTransformProp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssTransitionProp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssPrintProp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssPositioningProp ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssBoxProp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssFontDescriptorProp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssFlexibleBoxProp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssBorderOutlineProp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssBackgroundProp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssMarginProp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssListProp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssTableProp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssFontProp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssPaddingProp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssDimensionProp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssRenderProp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssColorProp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssGeneratedContentProp ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaScriptBraces ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaScriptFunction ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaScriptIdentifier ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaScriptMember ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaScriptNumber ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaScriptNull ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaScriptParens ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptImport ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptExport ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptClassKeyword ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptClassExtends ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDefault ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptClassName ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptClassSuperName ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptGlobal ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptEndColons ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptFuncArg ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptGlobalMethod ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptNodeGlobal ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptBOMWindowProp ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptArrayMethod ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptArrayStaticMethod ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptCacheMethod ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDateMethod ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptMathStaticMethod ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptURLUtilsProp ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptBOMNavigatorProp ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDOMDocMethod ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDOMDocProp ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptBOMLocationMethod ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptBOMWindowMethod ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptStringMethod ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptVariable ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptIdentifier ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptClassSuper ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptFuncKeyword ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptAsyncFunc ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptClassStatic ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptOperator ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptForOperator ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptYield ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptExceptions ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptMessage ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptTemplateSB ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptTemplateSubstitution ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptLabel ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptObjectLabel ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptPropertyName ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptLogicSymbols ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptArrowFunc ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDocParamName ctermfg=237 ctermbg=NONE guifg=#463a4e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDocTags ctermfg=237 ctermbg=NONE guifg=#463a4e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDocNotation ctermfg=237 ctermbg=NONE guifg=#463a4e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDocParamType ctermfg=237 ctermbg=NONE guifg=#463a4e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDocNamedParamType ctermfg=237 ctermbg=NONE guifg=#463a4e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptBrackets ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDOMElemAttrs ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDOMEventMethod ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDOMNodeMethod ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDOMStorageMethod ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptHeadersMethod ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptAsyncFuncKeyword ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi javascriptAwaitFuncKeyword ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi! link jsClassKeyword Keyword
  hi! link jsExtendsKeyword Keyword
  hi jsExportDefault ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi jsTemplateBraces ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link jsGlobalNodeObjects Keyword
  hi! link jsGlobalObjects Keyword
  hi! link jsFunction Function
  hi jsFuncParens ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsParens ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsNull ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link jsUndefined ErrorMsg
  hi jsClassDefinition ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link jsObjectProp Identifier
  hi jsObjectKey ctermfg=74 ctermbg=NONE guifg=#58b0d9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsFunctionKey ctermfg=61 ctermbg=NONE guifg=#715ab1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsBracket ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsObjectColon ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsFuncArgs ctermfg=74 ctermbg=NONE guifg=#58b0d9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsFuncBraces ctermfg=61 ctermbg=NONE guifg=#715ab1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsVariableDef ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link jsObjectBraces Special
  hi jsObjectValue ctermfg=147 ctermbg=NONE guifg=#b7b7ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsClassBlock ctermfg=61 ctermbg=NONE guifg=#715ab1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsFutureKeys ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi jsFuncArgs ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsStorageClass ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsxRegion ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi typeScriptReserved ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link typeScriptLabel Label
  hi! link typeScriptFuncKeyword Function
  hi! link typeScriptIdentifier Identifier
  hi typeScriptBraces ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi typeScriptEndColons ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi typeScriptDOMObjects ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link typeScriptAjaxMethods Function
  hi typeScriptLogicSymbols ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link typeScriptDocSeeTag Comment
  hi! link typeScriptDocParam Comment
  hi! link typeScriptDocTags vimCommentTitle
  hi! link typeScriptGlobalObjects Keyword
  hi typeScriptParens ctermfg=61 ctermbg=NONE guifg=#715ab1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link typeScriptOpSymbols Operator
  hi! link typeScriptHtmlElemProperties Special
  hi typeScriptNull ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi typeScriptInterpolationDelimiter ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi purescriptModuleKeyword ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi purescriptModuleName ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi purescriptWhere ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi purescriptDelimiter ctermfg=237 ctermbg=NONE guifg=#463a4e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link purescriptType Type
  hi! link purescriptImportKeyword Keyword
  hi! link purescriptHidingKeyword Keyword
  hi! link purescriptAsKeyword Keyword
  hi! link purescriptStructure Structure
  hi! link purescriptOperator Operator
  hi! link purescriptTypeVar Type
  hi! link purescriptConstructor Function
  hi! link purescriptFunction Function
  hi! link purescriptConditional Conditional
  hi purescriptBacktick ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi coffeeExtendedOp ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi coffeeSpecialOp ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi coffeeCurly ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi coffeeParen ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi coffeeBracket ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi rubyStringDelimiter ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi rubyInterpolationDelimiter ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi objcTypeModifier ctermfg=196 ctermbg=NONE guifg=#f2241f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi objcDirective ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi goDirective ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi goConstants ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link goDeclaration Keyword
  hi goDeclType ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi goBuiltins ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi luaIn ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi luaFunction ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi luaTable ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi moonSpecialOp ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi moonExtendedOp ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi moonFunction ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi moonObject ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaAnnotation ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaDocTags ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link javaCommentTitle vimCommentTitle
  hi javaParen ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaParen1 ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaParen2 ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaParen3 ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaParen4 ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaParen5 ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaOperator ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaVarArg ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link elixirDocString Comment
  hi elixirStringDelimiter ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi elixirInterpolationDelimiter ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi elixirModuleDeclaration ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaNameDefinition ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaCaseFollowing ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaCapitalWord ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaTypeExtension ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaKeyword ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi scalaKeywordModifier ctermfg=161 ctermbg=NONE guifg=#ba2f59 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaSpecial ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaOperator ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaTypeDeclaration ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaTypeTypePostDeclaration ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaInstanceDeclaration ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaInterpolation ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownItalic ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
  hi markdownH1 ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi markdownH2 ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi markdownH3 ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi markdownH4 ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi markdownH5 ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownH6 ctermfg=136 ctermbg=NONE guifg=#b1951d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link htmlH1 markdownH1
  hi! link htmlH2 markdownH2
  hi! link htmlH3 markdownH3
  hi! link htmlH4 markdownH4
  hi! link htmlH5 markdownH5
  hi! link htmlH6 markdownH6
  hi markdownCode ctermfg=53 ctermbg=NONE guifg=#4e3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link mkdCode markdownCode
  hi markdownCodeBlock ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownCodeDelimiter ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link mkdCodeDelimiter markdownCodeDelimiter
  hi markdownBlockquote ctermfg=146 ctermbg=NONE guifg=#a8a8bf guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownListMarker ctermfg=146 ctermbg=NONE guifg=#a8a8bf guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownOrderedListMarker ctermfg=146 ctermbg=NONE guifg=#a8a8bf guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownRule ctermfg=146 ctermbg=NONE guifg=#a8a8bf guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownHeadingRule ctermfg=146 ctermbg=NONE guifg=#a8a8bf guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownUrlDelimiter ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownLinkDelimiter ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownLinkTextDelimiter ctermfg=60 ctermbg=NONE guifg=#504259 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownHeadingDelimiter ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownUrl ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownUrlTitleDelimiter ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link markdownLinkText htmlLink
  hi! link markdownIdDeclaration markdownLinkText
  hi haskellType ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellIdentifier ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellSeparator ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellDelimiter ctermfg=237 ctermbg=NONE guifg=#463a4e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellOperators ctermfg=32 ctermbg=NONE guifg=#3a81c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellBacktick ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellStatement ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellConditional ctermfg=166 ctermbg=NONE guifg=#b46843 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellLet ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellDefault ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellWhere ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellBottom ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellBlockKeywords ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellImportKeywords ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellDeclKeyword ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellDeriving ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellAssocType ctermfg=29 ctermbg=NONE guifg=#24775c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellNumber ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellPragma ctermfg=89 ctermbg=NONE guifg=#6c3163 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellString ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellChar ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsonKeyword ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsonQuote ctermfg=70 ctermbg=NONE guifg=#67b11d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsonBraces ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsonString ctermfg=60 ctermbg=NONE guifg=#655370 guibg=NONE guisp=NONE cterm=NONE gui=NONE
endif
hi StatusLineNC ctermfg=189 ctermbg=255 guifg=#d3d3e7 guibg=#efeae9 guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=NONE ctermbg=254 guifg=NONE guibg=#e3dedd guisp=NONE cterm=NONE gui=NONE
finish

" Color: neutralred        #d26487    ~
" Color: neutralgreen      #35a8a5    ~
" Color: neutralyellow     #b89f33    ~
" Color: neutralblue       #6981c5    ~
" Color: neutralpurple     #a15ea7    ~
" Color: neutralaqua       #288668    ~
" Color: neutralorange     #ca754b    ~
" Background: dark
" Color: bg0        #292b2e ~
" Color: bg1        #212026 ~
" Color: bg2        #100a14 ~
" Color: bg3        #0a0814 ~
" Color: bg4        #34323e ~
" Color: fg0        #cdcdcd ~
" Color: fg1        #b2b2b2 ~
" Color: fg2        #8e8e8e ~
" Color: fg3        #727272 ~
" Color: fg4        #5b5b5b ~
" Color: fg5        #9a9aba ~
" Color: fg6        #5e5079 ~
" Color: fg7        #666666 ~
" Color: grey       #44505c ~
" Color: grey1      #768294 ~
" Color: red        #f2241f ~
" Color: red1       #ce537a ~
" Color: red2       #f54e3c ~
" Color: green      #67b11d ~
" Color: green1     #2aa1ae ~
" Color: blue0      #58b0d9 ~
" Color: blue       #4f97d7 ~
" Color: blue1      #7590db ~
" Color: purple     #bc6ec5 ~
" Color: purple0    #d698fe ~
" Color: purple1    #a45bad ~
" Color: purple2    #5d4d7a ~
" Color: purple3    #544a65 ~
" Color: purple4    #34323e ~
" Color: aqua       #2d9574 ~
" Color: aqua1      #4495b4 ~
" Color: orange0    #d79650 ~
" Color: orange     #e18254 ~
" Color: yellow     #b1951d ~
" Color: yellow1    #e5d11c ~
" Color: cyan       #28def0 ~
" Color: mat        #86dc2f ~
" Color: meta       #9f8766 ~
" Color: highlight  #444155 ~
" Color: comp       #c56ec3 ~
" Color: cblk       #cbc1d5 ~
" Color: war        #dc752f ~
" Color: float      #b7b7ff ~
" Color: delimiter  #74baac ~
" Color: debug      #ffc8c8 ~
" Color: number     #e697e6 ~
"     Normal       fg1    none
"     CursorLineNr purple none
"     FoldColumn   purple none
"     SignColumn   fg1    none
"     VertSplit    bg1    none
"     Normal       fg1    bg0
"     CursorLineNr purple bg1
"     FoldColumn   purple bg1
"     SignColumn   fg1    bg0
"     VertSplit    bg1    bg0
" ColorColumn                      none     bg1
" Conceal                          blue     none
" Cursor                           orange   none    bold,reverse
" CursorColumn                  -> CursorLine
" CursorLine                       none     bg1
" DiffAdd                          green    bg0     reverse
" DiffChange                       orange   bg0     reverse
" DiffDelete                       red      bg0     reverse
" DiffText                         yellow   bg0     reverse
" Directory                        blue     none    bold
" EndOfBuffer                      bg0      none
" Error                            red      bg0     bold,reverse
" ErrorMsg                         bg0      red
" Folded                           purple1  bg1     g=italic
" IncSearch                        orange   bg0     bold,reverse
" LineNr                           grey     none
" MatchParen                       green    none    bold,underline
" ModeMsg                          yellow1  none
" MoreMsg                       -> ModeMsg
" NonText                          grey     none
" Pmenu                            fg5      purple4
" PmenuSbar                        none     bg1
" PmenuSel                         none     fg6
" PmenuThumb                       none     purple2
" Question                         orange   none    bold
" QuickFixLine                  -> Search
" qfLineNr                      -> Type
" Search                           green    bg0     bold,reverse
" SpecialKey                       purple   none
" SpellBad                         red      none    t=underline g=italic,undercurl s=red
" SpellCap                         blue     none    t=underline g=italic,undercurl s=blue
" SpellLocal                       aqua     none    t=underline g=italic,undercurl s=aqua
" SpellRare                        purple   none    t=underline g=italic,undercurl s=purple
" StatusLine                       fg1      purple2
" StatusLineNC                     purple2  bg4
" StatusLineTerm                -> StatusLine
" StatusLineTermNC              -> StatusLineNC
" TabLineFill                      purple3  bg1
" TabLineSel                       green    bg1
" TabLine                       -> TabLineFill
" Title                            green    none    bold
" Visual                           none     purple3
" VisualNOS                     -> Visual
" WarningMsg                       red      none
" WildMenu                         orange   bg1     bold
" Boolean                          war   none
" Character                        purple   none
" Comment                          green1   none    none g=italic
" Conditional                      blue     none    bold
" Constant                         orange   none
" Define                           aqua     none
" Debug                            red2     none
" Delimiter                        delimiter      none
" Error                            red      bg0     bold,reverse
" Exception                        red      none
" Float                            float    none
" Function                         purple   none    bold
" Identifier                       blue1    none
" Ignore                           fg       none
" Include                          yellow   none
" Keyword                          blue     none    bold
" Label                            red1     none
" Macro                            blue1    none    bold
" Number                           number   none
" Operator                         blue0    none
" PreCondit                        purple1  none
" PreProc                          purple0  none
" Repeat                           red1     none    bold
" SpecialChar                      cyan     none
" SpecialComment                   grey1    none
" Statement                        blue     none
" StorageClass                     yellow   none    bold
" Special                          orange0  none
" String                           aqua     none
" Structure                        aqua1    none    bold
" Tag                              orange   none
" Todo                             orange   none    t=bold g=bold,italic
" Type                             red1     none
" Typedef                          yellow   none
" Underlined                       blue     none    underline
" lCursor                       -> Cursor
" CursorIM                         none     none    reverse
" ToolbarLine                      none     bg3
" ToolbarButton                    fg0      bg3     bold
" iCursor                    -> Cursor
" vCursor                    -> Cursor
" NormalMode                    fg4    bg0     reverse
" InsertMode                    blue   bg0     reverse
" ReplaceMode                   aqua   bg0     reverse
" VisualMode                    orange bg0     reverse
" CommandMode                   purple bg0     reverse
" Warnings                      orange bg0     reverse
" TermCursor        -> Cursor
" TermCursorNC         bg1    fg1
" ALEError                         none   none    t=underline g=undercurl s=red
" ALEWarning                       none   none    t=underline g=undercurl s=red
" ALEInfo                          none   none    t=underline g=undercurl s=blue
" ALEErrorSign                     red    none
" ALEWarningSign                   yellow none
" ALEInfoSign                      blue   none
" BufTabLineCurrent                bg0    fg4
" BufTabLineActive                 fg4    bg2
" BufTabLineHidden                 bg4    bg1
" BufTabLineFill                   bg0    bg0
" CtrlPMatch                       yellow none
" CtrlPNoEntries                   red    none
" CtrlPPrtBase                     bg2    none
" CtrlPPrtCursor                   blue   none
" CtrlPLinePre                     bg2    none
" CtrlPMode1                       blue   bg2     bold
" CtrlPMode2                       bg0    blue    bold
" CtrlPStats                       fg4    bg2     bold
" DirvishPathTail                  aqua   none
" DirvishArg                       yellow none
" EasyMotionTarget              -> Search
" EasyMotionShade               -> Comment
" gitcommitSelectedFile            green  none
" gitcommitDiscardedFile           red    none
" GitGutterAdd                     green  bg0    bold
" GitGutterChange                  orange bg0    bold
" GitGutterDelete                  red    bg0    bold
" GitGutterChangeDelete            red1   bg0    bold
" IndentGuidesOdd  bg0 bg2 reverse
" IndentGuidesEven bg0 bg1 reverse
" IndentGuidesOdd  bg0 bg2
" IndentGuidesEven bg0 bg1
" NERDTreeDir                      blue   none bold
" NERDTreeDirSlash                 blue   none
" NERDTreeOpenable                 blue   none
" NERDTreeClosable                 blue   none
" NERDTreeFile                     fg1    none
" NERDTreeExecFile                 yellow none
" NERDTreeUp                       red1   none
" NERDTreeCWD                      purple none
" NERDTreeHelp                     fg1    none
" NERDTreeToggleOn                 green  none
" NERDTreeToggleOff                red    none
" netrwDir                         blue   none
" netrwClassify                    blue   none
" netrwLink                        grey   none
" netrwSymLink                     fg1    none
" netrwExe                         yellow none
" netrwComment                     grey   none
" netrwList                        blue   none
" netrwHelpCmd                     aqua   none
" netrwCmdSep                      fg3    none
" netrwVersion                     green  none
" ShowMarksHLl                     blue   bg0 bold
" ShowMarksHLu                     blue   bg0 bold
" ShowMarksHLo                     blue   bg0 bold
" ShowMarksHLm                     blue   bg0 bold
" SignifySignAdd                   green  none
" SignifySignChange                orange none
" SignifySignDelete                red    none
" SignatureMarkText                blue   bg0 bold
" SignatureMarkerText              purple bg0 bold
" StartifyBracket                  fg3    none
" StartifyFile                     fg1    bg0
" StartifyNumber                   blue   none
" StartifyPath                     blue1  none bold
" StartifySlash                    blue   none
" StartifySection                  blue   none bold
" StartifySpecial               -> Type
" StartifyHeader                   purple1 none
" StartifyFooter                   purple1 none
" SyntasticError                   none   none    t=underline g=undercurl s=red
" SyntasticWarning                 none   none    t=underline g=undercurl s=yellow
" SyntasticErrorSign               red    bg0
" SyntasticWarningSign             yellow bg0
" multiple_cursors_cursor          none   none    reverse
" multiple_cursors_visual          none   bg2
" CurrentWord                   none   purple3   underline
" CurrentWordTwins              none   purple3
" WhichKey                     -> Function
" WhichKeySeperator               green none
" WhichKeyGroup                -> Keyword
" WhichKeyDesc                 -> Identifier
" diffAdded                        green      none
" diffRemoved                      red        none
" diffChanged                      aqua       none
" diffFile                         orange     none
" diffNewFile                      yellow     none
" diffLine                         blue       none
" htmlTag                          blue       none
" htmlEndTag                       blue       none
" htmlTagName                      purple1    none
" htmlArg                          aqua       none
" htmlScriptTag                    purple     none
" htmlTagN                         fg1        none
" htmlSpecialTagName               aqua       none    bold
" htmlLink                         blue       none    underline
" htmlSpecialChar                  orange     none
" htmlBold                         fg         bg0     bold
" htmlBoldUnderline                fg         bg0     bold,underline
" htmlBoldItalic                   fg         bg0     bold,italic
" htmlBoldUnderlineItalic          fg         bg0     bold,underline,italic
" htmlUnderline                    fg         bg0     underline
" htmlUnderlineItalic              fg         bg0     underline,italic
" htmlItalic                       blue1      none    italic
" xmlTag                           blue       none
" xmlEndTag                        blue       none
" xmlTagName                       blue       none
" xmlEqual                         blue       none
" docbkKeyword                     aqua       none    bold
" xmlDocTypeDecl                   grey       none
" xmlDocTypeKeyword                purple     none
" xmlCdataStart                    grey       none
" xmlCdataCdata                    purple     none
" dtdFunction                      grey       none
" dtdTagName                       purple     none
" xmlAttrib                        aqua       none
" xmlProcessingDelim               grey       none
" dtdParamEntityPunct              grey       none
" dtdParamEntityDPunct             grey       none
" xmlAttribPunct                   grey       none
" xmlEntity                        orange     none
" xmlEntityPunct                   orange     none
" vimCommentTitle                  blue1      none    bold
" vimNotation                      orange     none
" vimBracket                       orange     none
" vimMapModKey                     orange     none
" vimCommand                       blue       none    bold
" vimLet                           blue       none
" vimNorm                          blue       none
" vimFuncSID                     -> Function
" vimFunction                    -> Function
" vimGroup                         blue1      none
" vimHiGroup                     -> Type
" vimSetSep                        fg3        none
" vimSep                           fg3        none
" vimContinue                      yellow     none
" clojureKeyword                   blue       none
" clojureCond                      orange     none
" clojureSpecial                   orange     none
" clojureDefine                    orange     none
" clojureFunc                      yellow     none
" clojureRepeat                    yellow     none
" clojureCharacter                 aqua       none
" clojureStringEscape              aqua       none
" clojureException                 red        none
" clojureRegexp                    aqua       none
" clojureRegexpEscape              aqua       none
" clojureRegexpCharClass           fg3        none   bold
" clojureRegexpMod              -> clojureRegexpCharClass
" clojureRegexpQuantifier       -> clojureRegexpCharClass
" clojureParen                     fg3        none
" clojureAnonArg                   yellow     none
" clojureVariable                  blue       none
" clojureMacro                     orange     none
" clojureMeta                      yellow     none
" clojureDeref                     yellow     none
" clojureQuote                     yellow     none
" clojureUnquote                   yellow     none
" cOperator                        purple     none
" cStructure                       orange     none
" rustSelf                         blue       none bold
" rustPanic                        red1       none bold
" rustAssert                       blue1      none bold
" pythonCoding                     -> Comment
" cssBraces                        blue   none
" cssFunctionName                  yellow none
" cssIdentifier                    orange none
" cssClassName                     green  none
" cssColor                         blue   none
" cssSelectorOp                    blue   none
" cssSelectorOp2                   blue   none
" cssImportant                     green  none
" cssVendor                        fg1    none
" cssTextProp                      aqua   none
" cssAnimationProp                 aqua   none
" cssUIProp                        yellow none
" cssTransformProp                 aqua   none
" cssTransitionProp                aqua   none
" cssPrintProp                     aqua   none
" cssPositioningProp               yellow none
" cssBoxProp                       aqua   none
" cssFontDescriptorProp            aqua   none
" cssFlexibleBoxProp               aqua   none
" cssBorderOutlineProp             aqua   none
" cssBackgroundProp                aqua   none
" cssMarginProp                    aqua   none
" cssListProp                      aqua   none
" cssTableProp                     aqua   none
" cssFontProp                      aqua   none
" cssPaddingProp                   aqua   none
" cssDimensionProp                 aqua   none
" cssRenderProp                    aqua   none
" cssColorProp                     aqua   none
" cssGeneratedContentProp          aqua   none
" javaScriptBraces                 fg1    none
" javaScriptFunction               aqua   none
" javaScriptIdentifier             red    none
" javaScriptMember                 blue   none
" javaScriptNumber                 purple none
" javaScriptNull                   purple none
" javaScriptParens                 fg3    none
" javascriptImport                 aqua   none
" javascriptExport                 aqua   none
" javascriptClassKeyword           aqua   none
" javascriptClassExtends           aqua   none
" javascriptDefault                aqua   none
" javascriptClassName              yellow none
" javascriptClassSuperName         yellow none
" javascriptGlobal                 yellow none
" javascriptEndColons              fg1    none
" javascriptFuncArg                fg1    none
" javascriptGlobalMethod           fg1    none
" javascriptNodeGlobal             fg1    none
" javascriptBOMWindowProp          fg1    none
" javascriptArrayMethod            fg1    none
" javascriptArrayStaticMethod      fg1    none
" javascriptCacheMethod            fg1    none
" javascriptDateMethod             fg1    none
" javascriptMathStaticMethod       fg1    none
" javascriptURLUtilsProp           fg1    none
" javascriptBOMNavigatorProp       fg1    none
" javascriptDOMDocMethod           fg1    none
" javascriptDOMDocProp             fg1    none
" javascriptBOMLocationMethod      fg1    none
" javascriptBOMWindowMethod        fg1    none
" javascriptStringMethod           fg1    none
" javascriptVariable               orange none
" javascriptIdentifier             orange none
" javascriptClassSuper             orange none
" javascriptFuncKeyword            aqua   none
" javascriptAsyncFunc              aqua   none
" javascriptClassStatic            orange none
" javascriptOperator               red1   none
" javascriptForOperator            red1   none
" javascriptYield                  red1   none
" javascriptExceptions             red1   none
" javascriptMessage                red1   none
" javascriptTemplateSB             aqua   none
" javascriptTemplateSubstitution   fg1    none
" javascriptLabel                  fg1    none
" javascriptObjectLabel            fg1    none
" javascriptPropertyName           fg1    none
" javascriptLogicSymbols           fg1    none
" javascriptArrowFunc              yellow none
" javascriptDocParamName           fg4    none
" javascriptDocTags                fg4    none
" javascriptDocNotation            fg4    none
" javascriptDocParamType           fg4    none
" javascriptDocNamedParamType      fg4    none
" javascriptBrackets               fg1    none
" javascriptDOMElemAttrs           fg1    none
" javascriptDOMEventMethod         fg1    none
" javascriptDOMNodeMethod          fg1    none
" javascriptDOMStorageMethod       fg1    none
" javascriptHeadersMethod          fg1    none
" javascriptAsyncFuncKeyword       red1   none bold
" javascriptAwaitFuncKeyword       red1   none bold
" jsClassKeyword                -> Keyword
" jsExtendsKeyword              -> Keyword
" jsExportDefault                  blue   none bold
" jsTemplateBraces                 aqua   none
" jsGlobalNodeObjects           -> Keyword
" jsGlobalObjects               -> Keyword
" jsFunction                    -> Function
" jsFuncParens                     orange    none
" jsParens                         red1    none
" jsNull                           purple none
" jsUndefined                   -> ErrorMsg
" jsClassDefinition                yellow none
" jsObjectProp                  -> Identifier
" jsObjectKey                      blue0 none
" jsFunctionKey                    blue1 none
" jsBracket                        red1 none
" jsObjectColon                    red1 none
" jsFuncArgs                       blue0 none
" jsFuncBraces                     blue1 none
" jsVariableDef                    fg1 none
" jsObjectBraces                -> Special
" jsObjectValue                    float none
" jsClassBlock                     blue1 none
" jsFutureKeys                     orange none bold
" jsFuncArgs                       blue none
" jsStorageClass                   blue none
" jsxRegion                        blue none
" typeScriptReserved               aqua   none
" typeScriptLabel               -> Label
" typeScriptFuncKeyword         -> Function
" typeScriptIdentifier          -> Identifier
" typeScriptBraces                 red1    none
" typeScriptEndColons              fg1    none
" typeScriptDOMObjects             fg1    none
" typeScriptAjaxMethods         -> Function
" typeScriptLogicSymbols           fg1    none
" typeScriptDocSeeTag           -> Comment
" typeScriptDocParam            -> Comment
" typeScriptDocTags             -> vimCommentTitle
" typeScriptGlobalObjects       -> Keyword
" typeScriptParens                 blue1  none
" typeScriptOpSymbols           -> Operator
" typeScriptHtmlElemProperties  -> Special
" typeScriptNull                   purple none bold
" typeScriptInterpolationDelimiter aqua   none
" purescriptModuleKeyword          aqua   none
" purescriptModuleName             red1   none bold
" purescriptWhere                  aqua   none
" purescriptDelimiter              fg4    none
" purescriptType                -> Type
" purescriptImportKeyword       -> Keyword
" purescriptHidingKeyword       -> Keyword
" purescriptAsKeyword           -> Keyword
" purescriptStructure           -> Structure
" purescriptOperator            -> Operator
" purescriptTypeVar             -> Type
" purescriptConstructor         -> Function
" purescriptFunction            -> Function
" purescriptConditional         -> Conditional
" purescriptBacktick               orange none
" coffeeExtendedOp                 fg3    none
" coffeeSpecialOp                  fg3    none
" coffeeCurly                      orange none
" coffeeParen                      fg3    none
" coffeeBracket                    orange none
" rubyStringDelimiter              green  none
" rubyInterpolationDelimiter       aqua   none
" objcTypeModifier                 red    none
" objcDirective                    blue   none
" goDirective                      aqua   none
" goConstants                      purple none
" goDeclaration                    -> Keyword
" goDeclType                       blue   none
" goBuiltins                       orange none
" luaIn                            red1   none
" luaFunction                      aqua   none
" luaTable                         orange none
" moonSpecialOp                    fg3    none
" moonExtendedOp                   fg3    none
" moonFunction                     fg3    none
" moonObject                       yellow none
" javaAnnotation                   blue   none
" javaDocTags                      aqua   none
" javaCommentTitle              -> vimCommentTitle
" javaParen                        fg3    none
" javaParen1                       fg3    none
" javaParen2                       fg3    none
" javaParen3                       fg3    none
" javaParen4                       fg3    none
" javaParen5                       fg3    none
" javaOperator                     orange none
" javaVarArg                       green  none
" elixirDocString               -> Comment
" elixirStringDelimiter            green  none
" elixirInterpolationDelimiter     aqua   none
" elixirModuleDeclaration          yellow none
" scalaNameDefinition              fg1    none
" scalaCaseFollowing               fg1    none
" scalaCapitalWord                 fg1    none
" scalaTypeExtension               fg1    none
" scalaKeyword                     red1   none    bold
" scalaKeywordModifier             red1   none
" scalaSpecial                     aqua   none
" scalaOperator                    fg1    none
" scalaTypeDeclaration             yellow none
" scalaTypeTypePostDeclaration     yellow none
" scalaInstanceDeclaration         fg1    none
" scalaInterpolation               aqua   none
" markdownItalic                   fg3    none    italic
" markdownH1                       blue   none    bold
" markdownH2                       aqua   none    bold
" markdownH3                       green  none    bold
" markdownH4                       yellow none    bold
" markdownH5                       yellow none
" markdownH6                       yellow none
" htmlH1                        -> markdownH1
" htmlH2                        -> markdownH2
" htmlH3                        -> markdownH3
" htmlH4                        -> markdownH4
" htmlH5                        -> markdownH5
" htmlH6                        -> markdownH6
" markdownCode                     purple1  none
" mkdCode                       -> markdownCode
" markdownCodeBlock                aqua     none
" markdownCodeDelimiter            orange   none
" mkdCodeDelimiter              -> markdownCodeDelimiter
" markdownBlockquote               grey   none
" markdownListMarker               grey   none
" markdownOrderedListMarker        grey   none
" markdownRule                     grey   none
" markdownHeadingRule              grey   none
" markdownUrlDelimiter             fg3    none
" markdownLinkDelimiter            fg3    none
" markdownLinkTextDelimiter        fg3    none
" markdownHeadingDelimiter         orange none
" markdownUrl                      purple none
" markdownUrlTitleDelimiter        green  none
" markdownLinkText              -> htmlLink
" markdownIdDeclaration         -> markdownLinkText
" haskellType                      fg1    none
" haskellIdentifier                fg1    none
" haskellSeparator                 fg1    none
" haskellDelimiter                 fg4    none
" haskellOperators                 blue   none
" haskellBacktick                  orange none
" haskellStatement                 orange none
" haskellConditional               orange none
" haskellLet                       aqua   none
" haskellDefault                   aqua   none
" haskellWhere                     aqua   none
" haskellBottom                    aqua   none
" haskellBlockKeywords             aqua   none
" haskellImportKeywords            aqua   none
" haskellDeclKeyword               aqua   none
" haskellDeriving                  aqua   none
" haskellAssocType                 aqua   none
" haskellNumber                    purple none
" haskellPragma                    purple none
" haskellString                    green  none
" haskellChar                      green  none
" jsonKeyword                      green  none
" jsonQuote                        green  none
" jsonBraces                       fg1    none
" jsonString                       fg1    none
" Background: light
" Color: bg0        #fbf8ef ~
" Color: bg1        #efeae9 ~
" Color: bg2        #e3dedd ~
" Color: bg3        #d2ceda ~
" Color: bg4        #a8a4ae ~
" Color: fg0        #83758c ~
" Color: fg1        #655370 ~
" Color: fg2        #5a4a64 ~
" Color: fg3        #504259 ~
" Color: fg4        #463a4e ~
" Color: fg5        #8c799f ~
" Color: fg6        #c8c6dd ~
" Color: grey       #a8a8bf ~
" Color: grey1      #768294 ~
" Color: red        #f2241f ~
" Color: red1       #ba2f59 ~
" Color: red2       #f54e3c ~
" Color: blue0      #58b0d9 ~
" Color: blue       #3a81c3 ~
" Color: blue1      #715ab1 ~
" Color: purple     #6c3163 ~
" Color: purple0    #86589e ~
" Color: purple1    #4e3163 ~
" Color: purple2    #d3d3e7 ~
" Color: purple3    #544a65 ~
" Color: purple4    #e2e0ea ~
" Color: green      #67b11d ~
" Color: green1     #2aa1ae ~
" Color: aqua       #24775c ~
" Color: aqua1      #4495b4 ~
" Color: orange0    #d79650 ~
" Color: orange     #b46843 ~
" Color: yellow     #b1951d ~
" Color: yellow1    #e5d11c ~
" Color: cyan       #21b8c7 ~
" Color: meta       #da8b55 ~
" Color: mat        #ba2f59 ~
" Color: highlight  #d3d3e7 ~
" Color: war        #dc752f ~
" Color: cblk       #655370 ~
" Color: comp       #6c4173 ~
" Color: number     #e697e6 ~
" Color: debug      #ffc8c8 ~
" Color: float      #b7b7ff ~
" Color: delimiter  #74baac ~
"     Normal       fg1    none
"     CursorLineNr purple none
"     FoldColumn   purple none
"     SignColumn   fg1    none
"     VertSplit    bg1    none
"     Normal       fg1    bg0
"     CursorLineNr purple bg1
"     FoldColumn   purple bg1
"     SignColumn   fg1    bg0
"     VertSplit    bg1    bg0
" ColorColumn                      none     bg1
" Conceal                          blue     none
" Cursor                           orange   none    bold,reverse
" CursorColumn                  -> CursorLine
" CursorLine                       none     bg1
" DiffAdd                          green    bg0     reverse
" DiffChange                       orange   bg0     reverse
" DiffDelete                       red      bg0     reverse
" DiffText                         yellow   bg0     reverse
" Directory                        blue     none    bold
" EndOfBuffer                      bg0      none
" Error                            red      bg0     bold,reverse
" ErrorMsg                         bg0      red
" Folded                           purple1  bg1     g=italic
" IncSearch                        orange   bg0     bold,reverse
" LineNr                           grey     none
" MatchParen                       green    none    bold,underline
" ModeMsg                          yellow1  none
" MoreMsg                       -> ModeMsg
" NonText                          grey     none
" Pmenu                            fg5      purple4
" PmenuSbar                        none     bg1
" PmenuSel                         none     fg6
" PmenuThumb                       none     purple2
" Question                         orange   none    bold
" QuickFixLine                  -> Search
" qfLineNr                      -> Type
" Search                           green    bg0     bold,reverse
" SpecialKey                       purple   none
" SpellBad                         red      none    t=underline g=italic,undercurl s=red
" SpellCap                         blue     none    t=underline g=italic,undercurl s=blue
" SpellLocal                       aqua     none    t=underline g=italic,undercurl s=aqua
" SpellRare                        purple   none    t=underline g=italic,undercurl s=purple
" StatusLine                       fg1      purple2
" StatusLineNC                     purple2  bg4
" StatusLineTerm                -> StatusLine
" StatusLineTermNC              -> StatusLineNC
" TabLineFill                      purple3  bg1
" TabLineSel                       green    bg1
" TabLine                       -> TabLineFill
" Title                            green    none    bold
" Visual                           none     purple3
" VisualNOS                     -> Visual
" WarningMsg                       red      none
" WildMenu                         orange   bg1     bold
" Boolean                          war   none
" Character                        purple   none
" Comment                          green1   none    none g=italic
" Conditional                      blue     none    bold
" Constant                         orange   none
" Define                           aqua     none
" Debug                            red2     none
" Delimiter                        delimiter      none
" Error                            red      bg0     bold,reverse
" Exception                        red      none
" Float                            float    none
" Function                         purple   none    bold
" Identifier                       blue1    none
" Ignore                           fg       none
" Include                          yellow   none
" Keyword                          blue     none    bold
" Label                            red1     none
" Macro                            blue1    none    bold
" Number                           number   none
" Operator                         blue0    none
" PreCondit                        purple1  none
" PreProc                          purple0  none
" Repeat                           red1     none    bold
" SpecialChar                      cyan     none
" SpecialComment                   grey1    none
" Statement                        blue     none
" StorageClass                     yellow   none    bold
" Special                          orange0  none
" String                           aqua     none
" Structure                        aqua1    none    bold
" Tag                              orange   none
" Todo                             orange   none    t=bold g=bold,italic
" Type                             red1     none
" Typedef                          yellow   none
" Underlined                       blue     none    underline
" lCursor                       -> Cursor
" CursorIM                         none     none    reverse
" ToolbarLine                      none     bg3
" ToolbarButton                    fg0      bg3     bold
" iCursor                    -> Cursor
" vCursor                    -> Cursor
" NormalMode                    fg4    bg0     reverse
" InsertMode                    blue   bg0     reverse
" ReplaceMode                   aqua   bg0     reverse
" VisualMode                    orange bg0     reverse
" CommandMode                   purple bg0     reverse
" Warnings                      orange bg0     reverse
" TermCursor        -> Cursor
" TermCursorNC         bg1    fg1
" ALEError                         none   none    t=underline g=undercurl s=red
" ALEWarning                       none   none    t=underline g=undercurl s=red
" ALEInfo                          none   none    t=underline g=undercurl s=blue
" ALEErrorSign                     red    none
" ALEWarningSign                   yellow none
" ALEInfoSign                      blue   none
" BufTabLineCurrent                bg0    fg4
" BufTabLineActive                 fg4    bg2
" BufTabLineHidden                 bg4    bg1
" BufTabLineFill                   bg0    bg0
" CtrlPMatch                       yellow none
" CtrlPNoEntries                   red    none
" CtrlPPrtBase                     bg2    none
" CtrlPPrtCursor                   blue   none
" CtrlPLinePre                     bg2    none
" CtrlPMode1                       blue   bg2     bold
" CtrlPMode2                       bg0    blue    bold
" CtrlPStats                       fg4    bg2     bold
" DirvishPathTail                  aqua   none
" DirvishArg                       yellow none
" EasyMotionTarget              -> Search
" EasyMotionShade               -> Comment
" gitcommitSelectedFile            green  none
" gitcommitDiscardedFile           red    none
" GitGutterAdd                     green  bg0    bold
" GitGutterChange                  orange bg0    bold
" GitGutterDelete                  red    bg0    bold
" GitGutterChangeDelete            red1   bg0    bold
" IndentGuidesOdd  bg0 bg2 reverse
" IndentGuidesEven bg0 bg1 reverse
" IndentGuidesOdd  bg0 bg2
" IndentGuidesEven bg0 bg1
" NERDTreeDir                      blue   none bold
" NERDTreeDirSlash                 blue   none
" NERDTreeOpenable                 blue   none
" NERDTreeClosable                 blue   none
" NERDTreeFile                     fg1    none
" NERDTreeExecFile                 yellow none
" NERDTreeUp                       red1   none
" NERDTreeCWD                      purple none
" NERDTreeHelp                     fg1    none
" NERDTreeToggleOn                 green  none
" NERDTreeToggleOff                red    none
" netrwDir                         blue   none
" netrwClassify                    blue   none
" netrwLink                        grey   none
" netrwSymLink                     fg1    none
" netrwExe                         yellow none
" netrwComment                     grey   none
" netrwList                        blue   none
" netrwHelpCmd                     aqua   none
" netrwCmdSep                      fg3    none
" netrwVersion                     green  none
" ShowMarksHLl                     blue   bg0 bold
" ShowMarksHLu                     blue   bg0 bold
" ShowMarksHLo                     blue   bg0 bold
" ShowMarksHLm                     blue   bg0 bold
" SignifySignAdd                   green  none
" SignifySignChange                orange none
" SignifySignDelete                red    none
" SignatureMarkText                blue   bg0 bold
" SignatureMarkerText              purple bg0 bold
" StartifyBracket                  fg3    none
" StartifyFile                     fg1    bg0
" StartifyNumber                   blue   none
" StartifyPath                     blue1  none bold
" StartifySlash                    blue   none
" StartifySection                  blue   none bold
" StartifySpecial               -> Type
" StartifyHeader                   purple1 none
" StartifyFooter                   purple1 none
" SyntasticError                   none   none    t=underline g=undercurl s=red
" SyntasticWarning                 none   none    t=underline g=undercurl s=yellow
" SyntasticErrorSign               red    bg0
" SyntasticWarningSign             yellow bg0
" multiple_cursors_cursor          none   none    reverse
" multiple_cursors_visual          none   bg2
" CurrentWord                   none   purple3   underline
" CurrentWordTwins              none   purple3
" WhichKey                     -> Function
" WhichKeySeperator               green none
" WhichKeyGroup                -> Keyword
" WhichKeyDesc                 -> Identifier
" diffAdded                        green      none
" diffRemoved                      red        none
" diffChanged                      aqua       none
" diffFile                         orange     none
" diffNewFile                      yellow     none
" diffLine                         blue       none
" htmlTag                          blue       none
" htmlEndTag                       blue       none
" htmlTagName                      purple1    none
" htmlArg                          aqua       none
" htmlScriptTag                    purple     none
" htmlTagN                         fg1        none
" htmlSpecialTagName               aqua       none    bold
" htmlLink                         blue       none    underline
" htmlSpecialChar                  orange     none
" htmlBold                         fg         bg0     bold
" htmlBoldUnderline                fg         bg0     bold,underline
" htmlBoldItalic                   fg         bg0     bold,italic
" htmlBoldUnderlineItalic          fg         bg0     bold,underline,italic
" htmlUnderline                    fg         bg0     underline
" htmlUnderlineItalic              fg         bg0     underline,italic
" htmlItalic                       blue1      none    italic
" xmlTag                           blue       none
" xmlEndTag                        blue       none
" xmlTagName                       blue       none
" xmlEqual                         blue       none
" docbkKeyword                     aqua       none    bold
" xmlDocTypeDecl                   grey       none
" xmlDocTypeKeyword                purple     none
" xmlCdataStart                    grey       none
" xmlCdataCdata                    purple     none
" dtdFunction                      grey       none
" dtdTagName                       purple     none
" xmlAttrib                        aqua       none
" xmlProcessingDelim               grey       none
" dtdParamEntityPunct              grey       none
" dtdParamEntityDPunct             grey       none
" xmlAttribPunct                   grey       none
" xmlEntity                        orange     none
" xmlEntityPunct                   orange     none
" vimCommentTitle                  blue1      none    bold
" vimNotation                      orange     none
" vimBracket                       orange     none
" vimMapModKey                     orange     none
" vimCommand                       blue       none    bold
" vimLet                           blue       none
" vimNorm                          blue       none
" vimFuncSID                     -> Function
" vimFunction                    -> Function
" vimGroup                         blue1      none
" vimHiGroup                     -> Type
" vimSetSep                        fg3        none
" vimSep                           fg3        none
" vimContinue                      yellow     none
" clojureKeyword                   blue       none
" clojureCond                      orange     none
" clojureSpecial                   orange     none
" clojureDefine                    orange     none
" clojureFunc                      yellow     none
" clojureRepeat                    yellow     none
" clojureCharacter                 aqua       none
" clojureStringEscape              aqua       none
" clojureException                 red        none
" clojureRegexp                    aqua       none
" clojureRegexpEscape              aqua       none
" clojureRegexpCharClass           fg3        none   bold
" clojureRegexpMod              -> clojureRegexpCharClass
" clojureRegexpQuantifier       -> clojureRegexpCharClass
" clojureParen                     fg3        none
" clojureAnonArg                   yellow     none
" clojureVariable                  blue       none
" clojureMacro                     orange     none
" clojureMeta                      yellow     none
" clojureDeref                     yellow     none
" clojureQuote                     yellow     none
" clojureUnquote                   yellow     none
" cOperator                        purple     none
" cStructure                       orange     none
" rustSelf                         blue       none bold
" rustPanic                        red1       none bold
" rustAssert                       blue1      none bold
" pythonCoding                     -> Comment
" cssBraces                        blue   none
" cssFunctionName                  yellow none
" cssIdentifier                    orange none
" cssClassName                     green  none
" cssColor                         blue   none
" cssSelectorOp                    blue   none
" cssSelectorOp2                   blue   none
" cssImportant                     green  none
" cssVendor                        fg1    none
" cssTextProp                      aqua   none
" cssAnimationProp                 aqua   none
" cssUIProp                        yellow none
" cssTransformProp                 aqua   none
" cssTransitionProp                aqua   none
" cssPrintProp                     aqua   none
" cssPositioningProp               yellow none
" cssBoxProp                       aqua   none
" cssFontDescriptorProp            aqua   none
" cssFlexibleBoxProp               aqua   none
" cssBorderOutlineProp             aqua   none
" cssBackgroundProp                aqua   none
" cssMarginProp                    aqua   none
" cssListProp                      aqua   none
" cssTableProp                     aqua   none
" cssFontProp                      aqua   none
" cssPaddingProp                   aqua   none
" cssDimensionProp                 aqua   none
" cssRenderProp                    aqua   none
" cssColorProp                     aqua   none
" cssGeneratedContentProp          aqua   none
" javaScriptBraces                 fg1    none
" javaScriptFunction               aqua   none
" javaScriptIdentifier             red    none
" javaScriptMember                 blue   none
" javaScriptNumber                 purple none
" javaScriptNull                   purple none
" javaScriptParens                 fg3    none
" javascriptImport                 aqua   none
" javascriptExport                 aqua   none
" javascriptClassKeyword           aqua   none
" javascriptClassExtends           aqua   none
" javascriptDefault                aqua   none
" javascriptClassName              yellow none
" javascriptClassSuperName         yellow none
" javascriptGlobal                 yellow none
" javascriptEndColons              fg1    none
" javascriptFuncArg                fg1    none
" javascriptGlobalMethod           fg1    none
" javascriptNodeGlobal             fg1    none
" javascriptBOMWindowProp          fg1    none
" javascriptArrayMethod            fg1    none
" javascriptArrayStaticMethod      fg1    none
" javascriptCacheMethod            fg1    none
" javascriptDateMethod             fg1    none
" javascriptMathStaticMethod       fg1    none
" javascriptURLUtilsProp           fg1    none
" javascriptBOMNavigatorProp       fg1    none
" javascriptDOMDocMethod           fg1    none
" javascriptDOMDocProp             fg1    none
" javascriptBOMLocationMethod      fg1    none
" javascriptBOMWindowMethod        fg1    none
" javascriptStringMethod           fg1    none
" javascriptVariable               orange none
" javascriptIdentifier             orange none
" javascriptClassSuper             orange none
" javascriptFuncKeyword            aqua   none
" javascriptAsyncFunc              aqua   none
" javascriptClassStatic            orange none
" javascriptOperator               red1   none
" javascriptForOperator            red1   none
" javascriptYield                  red1   none
" javascriptExceptions             red1   none
" javascriptMessage                red1   none
" javascriptTemplateSB             aqua   none
" javascriptTemplateSubstitution   fg1    none
" javascriptLabel                  fg1    none
" javascriptObjectLabel            fg1    none
" javascriptPropertyName           fg1    none
" javascriptLogicSymbols           fg1    none
" javascriptArrowFunc              yellow none
" javascriptDocParamName           fg4    none
" javascriptDocTags                fg4    none
" javascriptDocNotation            fg4    none
" javascriptDocParamType           fg4    none
" javascriptDocNamedParamType      fg4    none
" javascriptBrackets               fg1    none
" javascriptDOMElemAttrs           fg1    none
" javascriptDOMEventMethod         fg1    none
" javascriptDOMNodeMethod          fg1    none
" javascriptDOMStorageMethod       fg1    none
" javascriptHeadersMethod          fg1    none
" javascriptAsyncFuncKeyword       red1   none bold
" javascriptAwaitFuncKeyword       red1   none bold
" jsClassKeyword                -> Keyword
" jsExtendsKeyword              -> Keyword
" jsExportDefault                  blue   none bold
" jsTemplateBraces                 aqua   none
" jsGlobalNodeObjects           -> Keyword
" jsGlobalObjects               -> Keyword
" jsFunction                    -> Function
" jsFuncParens                     orange    none
" jsParens                         red1    none
" jsNull                           purple none
" jsUndefined                   -> ErrorMsg
" jsClassDefinition                yellow none
" jsObjectProp                  -> Identifier
" jsObjectKey                      blue0 none
" jsFunctionKey                    blue1 none
" jsBracket                        red1 none
" jsObjectColon                    red1 none
" jsFuncArgs                       blue0 none
" jsFuncBraces                     blue1 none
" jsVariableDef                    fg1 none
" jsObjectBraces                -> Special
" jsObjectValue                    float none
" jsClassBlock                     blue1 none
" jsFutureKeys                     orange none bold
" jsFuncArgs                       blue none
" jsStorageClass                   blue none
" jsxRegion                        blue none
" typeScriptReserved               aqua   none
" typeScriptLabel               -> Label
" typeScriptFuncKeyword         -> Function
" typeScriptIdentifier          -> Identifier
" typeScriptBraces                 red1    none
" typeScriptEndColons              fg1    none
" typeScriptDOMObjects             fg1    none
" typeScriptAjaxMethods         -> Function
" typeScriptLogicSymbols           fg1    none
" typeScriptDocSeeTag           -> Comment
" typeScriptDocParam            -> Comment
" typeScriptDocTags             -> vimCommentTitle
" typeScriptGlobalObjects       -> Keyword
" typeScriptParens                 blue1  none
" typeScriptOpSymbols           -> Operator
" typeScriptHtmlElemProperties  -> Special
" typeScriptNull                   purple none bold
" typeScriptInterpolationDelimiter aqua   none
" purescriptModuleKeyword          aqua   none
" purescriptModuleName             red1   none bold
" purescriptWhere                  aqua   none
" purescriptDelimiter              fg4    none
" purescriptType                -> Type
" purescriptImportKeyword       -> Keyword
" purescriptHidingKeyword       -> Keyword
" purescriptAsKeyword           -> Keyword
" purescriptStructure           -> Structure
" purescriptOperator            -> Operator
" purescriptTypeVar             -> Type
" purescriptConstructor         -> Function
" purescriptFunction            -> Function
" purescriptConditional         -> Conditional
" purescriptBacktick               orange none
" coffeeExtendedOp                 fg3    none
" coffeeSpecialOp                  fg3    none
" coffeeCurly                      orange none
" coffeeParen                      fg3    none
" coffeeBracket                    orange none
" rubyStringDelimiter              green  none
" rubyInterpolationDelimiter       aqua   none
" objcTypeModifier                 red    none
" objcDirective                    blue   none
" goDirective                      aqua   none
" goConstants                      purple none
" goDeclaration                    -> Keyword
" goDeclType                       blue   none
" goBuiltins                       orange none
" luaIn                            red1   none
" luaFunction                      aqua   none
" luaTable                         orange none
" moonSpecialOp                    fg3    none
" moonExtendedOp                   fg3    none
" moonFunction                     fg3    none
" moonObject                       yellow none
" javaAnnotation                   blue   none
" javaDocTags                      aqua   none
" javaCommentTitle              -> vimCommentTitle
" javaParen                        fg3    none
" javaParen1                       fg3    none
" javaParen2                       fg3    none
" javaParen3                       fg3    none
" javaParen4                       fg3    none
" javaParen5                       fg3    none
" javaOperator                     orange none
" javaVarArg                       green  none
" elixirDocString               -> Comment
" elixirStringDelimiter            green  none
" elixirInterpolationDelimiter     aqua   none
" elixirModuleDeclaration          yellow none
" scalaNameDefinition              fg1    none
" scalaCaseFollowing               fg1    none
" scalaCapitalWord                 fg1    none
" scalaTypeExtension               fg1    none
" scalaKeyword                     red1   none    bold
" scalaKeywordModifier             red1   none
" scalaSpecial                     aqua   none
" scalaOperator                    fg1    none
" scalaTypeDeclaration             yellow none
" scalaTypeTypePostDeclaration     yellow none
" scalaInstanceDeclaration         fg1    none
" scalaInterpolation               aqua   none
" markdownItalic                   fg3    none    italic
" markdownH1                       blue   none    bold
" markdownH2                       aqua   none    bold
" markdownH3                       green  none    bold
" markdownH4                       yellow none    bold
" markdownH5                       yellow none
" markdownH6                       yellow none
" htmlH1                        -> markdownH1
" htmlH2                        -> markdownH2
" htmlH3                        -> markdownH3
" htmlH4                        -> markdownH4
" htmlH5                        -> markdownH5
" htmlH6                        -> markdownH6
" markdownCode                     purple1  none
" mkdCode                       -> markdownCode
" markdownCodeBlock                aqua     none
" markdownCodeDelimiter            orange   none
" mkdCodeDelimiter              -> markdownCodeDelimiter
" markdownBlockquote               grey   none
" markdownListMarker               grey   none
" markdownOrderedListMarker        grey   none
" markdownRule                     grey   none
" markdownHeadingRule              grey   none
" markdownUrlDelimiter             fg3    none
" markdownLinkDelimiter            fg3    none
" markdownLinkTextDelimiter        fg3    none
" markdownHeadingDelimiter         orange none
" markdownUrl                      purple none
" markdownUrlTitleDelimiter        green  none
" markdownLinkText              -> htmlLink
" markdownIdDeclaration         -> markdownLinkText
" haskellType                      fg1    none
" haskellIdentifier                fg1    none
" haskellSeparator                 fg1    none
" haskellDelimiter                 fg4    none
" haskellOperators                 blue   none
" haskellBacktick                  orange none
" haskellStatement                 orange none
" haskellConditional               orange none
" haskellLet                       aqua   none
" haskellDefault                   aqua   none
" haskellWhere                     aqua   none
" haskellBottom                    aqua   none
" haskellBlockKeywords             aqua   none
" haskellImportKeywords            aqua   none
" haskellDeclKeyword               aqua   none
" haskellDeriving                  aqua   none
" haskellAssocType                 aqua   none
" haskellNumber                    purple none
" haskellPragma                    purple none
" haskellString                    green  none
" haskellChar                      green  none
" jsonKeyword                      green  none
" jsonQuote                        green  none
" jsonBraces                       fg1    none
" jsonString                       fg1    none
" StatusLineNC       purple2  bg1
" Visual             none     bg2
