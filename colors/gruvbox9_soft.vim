" Name:         Gruvbox 9 Soft
" Description:  Retro groove color scheme originally designed by morhetz
" Author:       morhetz <morhetz@gmail.com>
" Maintainer:   taigacute 
" Website:      https://github.com/taigacute/vim-gruvbox9/
" License:      Vim License (see `:help license`)
" Last Updated: Tue May 28 11:41:40 2019

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < 256)
  echoerr '[Gruvbox 9 Soft] There are not enough colors.'
  finish
endif

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'gruvbox9_soft'

if &background ==# 'dark'
  let g:terminal_ansi_colors = [
        \ '#32302f', '#cc241d', '#98971a', '#d79921', '#458588', '#b16286', '#689d6a', '#bdae93',
        \ '#7c6f64', '#fb4934', '#b8bb26', '#fabd2f', '#83a598', '#d3869b', '#8ec07c', '#ebdbb2']
  if !has('gui_running') && get(g:, 'gruvbox_transp_bg', 0)
    hi Normal ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi CursorLineNr ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi FoldColumn ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi SignColumn ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi VertSplit ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  else
    hi Normal ctermfg=187 ctermbg=236 guifg=#ebdbb2 guibg=#32302f guisp=NONE cterm=NONE gui=NONE
    hi CursorLineNr ctermfg=214 ctermbg=237 guifg=#fabd2f guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
    hi FoldColumn ctermfg=102 ctermbg=237 guifg=#928374 guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
    hi SignColumn ctermfg=187 ctermbg=237 guifg=#ebdbb2 guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
    hi VertSplit ctermfg=59 ctermbg=236 guifg=#665c54 guibg=#32302f guisp=NONE cterm=NONE gui=NONE
  endif
  hi ColorColumn ctermfg=NONE ctermbg=237 guifg=NONE guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
  hi Conceal ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Cursor ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi! link CursorColumn CursorLine
  hi CursorLine ctermfg=NONE ctermbg=237 guifg=NONE guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
  hi DiffAdd ctermfg=142 ctermbg=236 guifg=#b8bb26 guibg=#32302f guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffChange ctermfg=107 ctermbg=236 guifg=#8ec07c guibg=#32302f guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffDelete ctermfg=203 ctermbg=236 guifg=#fb4934 guibg=#32302f guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffText ctermfg=214 ctermbg=236 guifg=#fabd2f guibg=#32302f guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Directory ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi EndOfBuffer ctermfg=236 ctermbg=NONE guifg=#32302f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Error ctermfg=203 ctermbg=236 guifg=#fb4934 guibg=#32302f guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi ErrorMsg ctermfg=236 ctermbg=203 guifg=#32302f guibg=#fb4934 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Folded ctermfg=102 ctermbg=237 guifg=#928374 guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE,italic
  hi IncSearch ctermfg=208 ctermbg=236 guifg=#fe8019 guibg=#32302f guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi LineNr ctermfg=243 ctermbg=NONE guifg=#7c6f64 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi MatchParen ctermfg=NONE ctermbg=59 guifg=NONE guibg=#665c54 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi ModeMsg ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi MoreMsg ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi NonText ctermfg=239 ctermbg=NONE guifg=#504945 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Pmenu ctermfg=187 ctermbg=239 guifg=#ebdbb2 guibg=#504945 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSbar ctermfg=NONE ctermbg=239 guifg=NONE guibg=#504945 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSel ctermfg=239 ctermbg=109 guifg=#504945 guibg=#83a598 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi PmenuThumb ctermfg=NONE ctermbg=243 guifg=NONE guibg=#7c6f64 guisp=NONE cterm=NONE gui=NONE
  hi Question ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi! link QuickFixLine Search
  hi Search ctermfg=214 ctermbg=236 guifg=#fabd2f guibg=#32302f guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SpecialKey ctermfg=239 ctermbg=NONE guifg=#504945 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpellBad ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=#fb4934 cterm=NONE,underline gui=NONE,italic,undercurl
  hi SpellCap ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=#83a598 cterm=NONE,underline gui=NONE,italic,undercurl
  hi SpellLocal ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=#8ec07c cterm=NONE,underline gui=NONE,italic,undercurl
  hi SpellRare ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=#d3869b cterm=NONE,underline gui=NONE,italic,undercurl
  hi StatusLine ctermfg=239 ctermbg=187 guifg=#504945 guibg=#ebdbb2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLineNC ctermfg=237 ctermbg=137 guifg=#3c3836 guibg=#a89984 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi! link StatusLineTerm StatusLine
  hi! link StatusLineTermNC StatusLineNC
  hi! link TabLine TabLineFill
  hi TabLineFill ctermfg=243 ctermbg=237 guifg=#7c6f64 guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=142 ctermbg=237 guifg=#b8bb26 guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
  hi Title ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Visual ctermfg=NONE ctermbg=59 guifg=NONE guibg=#665c54 guisp=NONE cterm=NONE gui=NONE
  hi! link VisualNOS Visual
  hi WarningMsg ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi WildMenu ctermfg=109 ctermbg=239 guifg=#83a598 guibg=#504945 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Boolean ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Character ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Comment ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
  hi Conditional ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Constant ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Define ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Debug ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Delimiter ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Error ctermfg=203 ctermbg=236 guifg=#fb4934 guibg=#32302f guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi Exception ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Float ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Function ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Identifier ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Ignore ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Include ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Keyword ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Label ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Macro ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Number ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Operator Normal
  hi PreCondit ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi PreProc ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Repeat ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialChar ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialComment ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Statement ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StorageClass ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Special ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi String ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Structure ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Tag Special
  hi Todo ctermfg=fg ctermbg=236 guifg=fg guibg=#32302f guisp=NONE cterm=NONE,bold gui=NONE,bold,italic
  hi Type ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Typedef ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Underlined ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi! link lCursor Cursor
  hi CursorIM ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ToolbarLine ctermfg=NONE ctermbg=59 guifg=NONE guibg=#665c54 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarButton ctermfg=230 ctermbg=59 guifg=#fdf4c1 guibg=#665c54 guisp=NONE cterm=NONE,bold gui=NONE,bold
  if get(g:, "gruvbox_italic", 0)
    hi Comment cterm=italic
    hi Folded cterm=italic
    hi SpellBad cterm=italic,underline
    hi SpellCap cterm=italic,underline
    hi SpellLocal cterm=italic,underline
    hi SpellRare cterm=italic,underline
    hi Todo cterm=italic
  endif
  if get(g:, "gruvbox_italicize_strings", 0)
    hi Special cterm=italic gui=italic
    hi String cterm=italic gui=italic
  endif
  hi! link iCursor Cursor
  hi! link vCursor Cursor
  hi NormalMode ctermfg=137 ctermbg=236 guifg=#a89984 guibg=#32302f guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi InsertMode ctermfg=109 ctermbg=236 guifg=#83a598 guibg=#32302f guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ReplaceMode ctermfg=107 ctermbg=236 guifg=#8ec07c guibg=#32302f guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi VisualMode ctermfg=208 ctermbg=236 guifg=#fe8019 guibg=#32302f guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi CommandMode ctermfg=175 ctermbg=236 guifg=#d3869b guibg=#32302f guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Warnings ctermfg=208 ctermbg=236 guifg=#fe8019 guibg=#32302f guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  if has('nvim')
    let g:terminal_color_0  = '#32302f'
    let g:terminal_color_8  = '#928374'
    let g:terminal_color_1  = '#cc241d'
    let g:terminal_color_9  = '#fb4934'
    let g:terminal_color_2  = '#98971a'
    let g:terminal_color_10 = '#b8bb26'
    let g:terminal_color_3  = '#d79921'
    let g:terminal_color_11 = '#fabd2f'
    let g:terminal_color_4  = '#458588'
    let g:terminal_color_12 = '#83a598'
    let g:terminal_color_5  = '#b16286'
    let g:terminal_color_13 = '#d3869b'
    let g:terminal_color_6  = '#689d6a'
    let g:terminal_color_14 = '#8ec07c'
    let g:terminal_color_7  = '#a89984'
    let g:terminal_color_15 = '#ebdbb2'
    hi! link TermCursor Cursor
    hi TermCursorNC ctermfg=237 ctermbg=187 guifg=#3c3836 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  endif
  if !(get(g:, "gruvbox_plugin_hi_groups", 0) || get(g:, "gruvbox_filetype_hi_groups", 0))
    finish
  endif
  if get(g:, "gruvbox_plugin_hi_groups", 0)
    hi ALEError ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#fb4934 cterm=NONE,underline gui=NONE,undercurl
    hi ALEWarning ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#fb4934 cterm=NONE,underline gui=NONE,undercurl
    hi ALEInfo ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#83a598 cterm=NONE,underline gui=NONE,undercurl
    hi ALEErrorSign ctermfg=203 ctermbg=237 guifg=#fb4934 guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
    hi ALEWarningSign ctermfg=214 ctermbg=237 guifg=#fabd2f guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
    hi ALEInfoSign ctermfg=109 ctermbg=237 guifg=#83a598 guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
    hi BufTabLineCurrent ctermfg=236 ctermbg=137 guifg=#32302f guibg=#a89984 guisp=NONE cterm=NONE gui=NONE
    hi BufTabLineActive ctermfg=137 ctermbg=239 guifg=#a89984 guibg=#504945 guisp=NONE cterm=NONE gui=NONE
    hi BufTabLineHidden ctermfg=243 ctermbg=237 guifg=#7c6f64 guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
    hi BufTabLineFill ctermfg=236 ctermbg=236 guifg=#32302f guibg=#32302f guisp=NONE cterm=NONE gui=NONE
    hi CtrlPMatch ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi CtrlPNoEntries ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi CtrlPPrtBase ctermfg=239 ctermbg=NONE guifg=#504945 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi CtrlPPrtCursor ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi CtrlPLinePre ctermfg=239 ctermbg=NONE guifg=#504945 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi CtrlPMode1 ctermfg=109 ctermbg=239 guifg=#83a598 guibg=#504945 guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi CtrlPMode2 ctermfg=236 ctermbg=109 guifg=#32302f guibg=#83a598 guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi CtrlPStats ctermfg=137 ctermbg=239 guifg=#a89984 guibg=#504945 guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi DirvishPathTail ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi DirvishArg ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link EasyMotionTarget Search
    hi! link EasyMotionShade Comment
    hi gitcommitSelectedFile ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi gitcommitDiscardedFile ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi GitGutterAdd ctermfg=142 ctermbg=237 guifg=#b8bb26 guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
    hi GitGutterChange ctermfg=107 ctermbg=237 guifg=#8ec07c guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
    hi GitGutterDelete ctermfg=203 ctermbg=237 guifg=#fb4934 guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
    hi GitGutterChangeDelete ctermfg=107 ctermbg=237 guifg=#8ec07c guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
    if get(g:, "indent_guides_auto_colors", 0)
      if get(g: "gruvbox_invert_indent_guides", 0)
        hi IndentGuidesOdd ctermfg=236 ctermbg=239 guifg=#32302f guibg=#504945 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
        hi IndentGuidesEven ctermfg=236 ctermbg=237 guifg=#32302f guibg=#3c3836 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
      else
        hi IndentGuidesOdd ctermfg=236 ctermbg=239 guifg=#32302f guibg=#504945 guisp=NONE cterm=NONE gui=NONE
        hi IndentGuidesEven ctermfg=236 ctermbg=237 guifg=#32302f guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
      endif
    endif
    " IndentLine
    if !exists('g:indentLine_color_term')
      let g:indentLine_color_term = 239
    endif
    if !exists('g:indentLine_color_gui')
      let g:indentLine_color_gui = '#504945'
    endif
    hi NERDTreeDir ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi NERDTreeDirSlash ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi NERDTreeOpenable ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi NERDTreeClosable ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi NERDTreeFile ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi NERDTreeExecFile ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi NERDTreeUp ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi NERDTreeCWD ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi NERDTreeHelp ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi NERDTreeToggleOn ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi NERDTreeToggleOff ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwDir ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwClassify ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwLink ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwSymLink ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwExe ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwComment ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwList ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwHelpCmd ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwCmdSep ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwVersion ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    " Rainbow Parentheses
    if !exists('g:rbpt_colorpairs')
      let g:rbpt_colorpairs = [['blue', '#458588'], ['magenta', '#b16286'],
            \ ['red', '#cc241d'], ['166', '#d65d0e']]
    endif

    let g:rainbow_guifgs = [ '#d65d0e', '#cc241d', '#b16286', '#458588' ]
    let g:rainbow_ctermfgs = [ '166', 'red', 'magenta', 'blue' ]

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
    hi ShowMarksHLl ctermfg=109 ctermbg=237 guifg=#83a598 guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
    hi ShowMarksHLu ctermfg=109 ctermbg=237 guifg=#83a598 guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
    hi ShowMarksHLo ctermfg=109 ctermbg=237 guifg=#83a598 guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
    hi ShowMarksHLm ctermfg=109 ctermbg=237 guifg=#83a598 guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
    hi SignifySignAdd ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi SignifySignChange ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi SignifySignDelete ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi SignatureMarkText ctermfg=109 ctermbg=237 guifg=#83a598 guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
    hi SignatureMarkerText ctermfg=175 ctermbg=237 guifg=#d3869b guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
    hi StartifyBracket ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi StartifyFile ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi StartifyNumber ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi StartifyPath ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi StartifySlash ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi StartifySection ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi StartifySpecial ctermfg=239 ctermbg=NONE guifg=#504945 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi StartifyHeader ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi StartifyFooter ctermfg=239 ctermbg=NONE guifg=#504945 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi SyntasticError ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#fb4934 cterm=NONE,underline gui=NONE,undercurl
    hi SyntasticWarning ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#fabd2f cterm=NONE,underline gui=NONE,undercurl
    hi SyntasticErrorSign ctermfg=203 ctermbg=237 guifg=#fb4934 guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
    hi SyntasticWarningSign ctermfg=214 ctermbg=237 guifg=#fabd2f guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
    hi multiple_cursors_cursor ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi multiple_cursors_visual ctermfg=NONE ctermbg=239 guifg=NONE guibg=#504945 guisp=NONE cterm=NONE gui=NONE
    let g:vimshell_escape_colors = [
          \ '#7c6f64', '#fb4934', '#b8bb26', '#fabd2f',
          \ '#83a598', '#d3869b', '#8ec07c', '#a89984',
          \ '#32302f', '#fb4934', '#b8bb26', '#fe8019',
          \ '#83a598', '#d3869b', '#8ec07c', '#fdf4c1'
          \ ]
  endif
  if get(g:, "gruvbox_filetype_hi_groups", 0)
    hi diffAdded ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi diffRemoved ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi diffChanged ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi diffFile ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi diffNewFile ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi diffLine ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi htmlTag ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi htmlEndTag ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi htmlTagName ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi htmlArg ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi htmlScriptTag ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi htmlTagN ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi htmlSpecialTagName ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi htmlLink ctermfg=137 ctermbg=NONE guifg=#a89984 guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
    hi htmlSpecialChar ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi htmlBold ctermfg=fg ctermbg=236 guifg=fg guibg=#32302f guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi htmlBoldUnderline ctermfg=fg ctermbg=236 guifg=fg guibg=#32302f guisp=NONE cterm=NONE,bold,underline gui=NONE,bold,underline
    hi htmlBoldItalic ctermfg=fg ctermbg=236 guifg=fg guibg=#32302f guisp=NONE cterm=NONE,bold,italic gui=NONE,bold,italic
    hi htmlBoldUnderlineItalic ctermfg=fg ctermbg=236 guifg=fg guibg=#32302f guisp=NONE cterm=NONE,bold,italic,underline gui=NONE,bold,italic,underline
    hi htmlUnderline ctermfg=fg ctermbg=236 guifg=fg guibg=#32302f guisp=NONE cterm=NONE,underline gui=NONE,underline
    hi htmlUnderlineItalic ctermfg=fg ctermbg=236 guifg=fg guibg=#32302f guisp=NONE cterm=NONE,italic,underline gui=NONE,italic,underline
    hi htmlItalic ctermfg=fg ctermbg=236 guifg=fg guibg=#32302f guisp=NONE cterm=NONE,italic gui=NONE,italic
    hi xmlTag ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlEndTag ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlTagName ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlEqual ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi docbkKeyword ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi xmlDocTypeDecl ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlDocTypeKeyword ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlCdataStart ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlCdataCdata ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi dtdFunction ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi dtdTagName ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlAttrib ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlProcessingDelim ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi dtdParamEntityPunct ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi dtdParamEntityDPunct ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlAttribPunct ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlEntity ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlEntityPunct ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimCommentTitle ctermfg=137 ctermbg=NONE guifg=#a89984 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi vimNotation ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimBracket ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimMapModKey ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimFuncSID ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimSetSep ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimSep ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimContinue ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureKeyword ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureCond ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureSpecial ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureDefine ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureFunc ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureRepeat ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureCharacter ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureStringEscape ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureException ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureRegexp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureRegexpEscape ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureRegexpCharClass ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi! link clojureRegexpMod clojureRegexpCharClass
    hi! link clojureRegexpQuantifier clojureRegexpCharClass
    hi clojureParen ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureAnonArg ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureVariable ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureMacro ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureMeta ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureDeref ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureQuote ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureUnquote ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cOperator ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cStructure ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pythonBuiltin ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pythonBuiltinObj ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pythonBuiltinFunc ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pythonFunction ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pythonDecorator ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pythonInclude ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pythonImport ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pythonRun ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pythonCoding ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pythonOperator ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pythonException ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pythonExceptions ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pythonBoolean ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pythonDot ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pythonConditional ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pythonRepeat ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pythonDottedName ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi cssBraces ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssFunctionName ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssIdentifier ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssClassName ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssColor ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssSelectorOp ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssSelectorOp2 ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssImportant ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssVendor ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssTextProp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssAnimationProp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssUIProp ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssTransformProp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssTransitionProp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssPrintProp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssPositioningProp ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssBoxProp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssFontDescriptorProp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssFlexibleBoxProp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssBorderOutlineProp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssBackgroundProp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssMarginProp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssListProp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssTableProp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssFontProp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssPaddingProp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssDimensionProp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssRenderProp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssColorProp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssGeneratedContentProp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaScriptBraces ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaScriptFunction ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaScriptIdentifier ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaScriptMember ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaScriptNumber ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaScriptNull ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaScriptParens ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptImport ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptExport ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptClassKeyword ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptClassExtends ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDefault ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptClassName ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptClassSuperName ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptGlobal ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptEndColons ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptFuncArg ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptGlobalMethod ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptNodeGlobal ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptBOMWindowProp ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptArrayMethod ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptArrayStaticMethod ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptCacheMethod ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDateMethod ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptMathStaticMethod ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptURLUtilsProp ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptBOMNavigatorProp ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDOMDocMethod ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDOMDocProp ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptBOMLocationMethod ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptBOMWindowMethod ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptStringMethod ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptVariable ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptIdentifier ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptClassSuper ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptFuncKeyword ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptAsyncFunc ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptClassStatic ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptOperator ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptForOperator ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptYield ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptExceptions ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptMessage ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptTemplateSB ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptTemplateSubstitution ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptLabel ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptObjectLabel ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptPropertyName ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptLogicSymbols ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptArrowFunc ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDocParamName ctermfg=137 ctermbg=NONE guifg=#a89984 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDocTags ctermfg=137 ctermbg=NONE guifg=#a89984 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDocNotation ctermfg=137 ctermbg=NONE guifg=#a89984 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDocParamType ctermfg=137 ctermbg=NONE guifg=#a89984 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDocNamedParamType ctermfg=137 ctermbg=NONE guifg=#a89984 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptBrackets ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDOMElemAttrs ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDOMEventMethod ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDOMNodeMethod ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDOMStorageMethod ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptHeadersMethod ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptAsyncFuncKeyword ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptAwaitFuncKeyword ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsImport ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsExport ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsFrom ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsThis ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsParen ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsOperator ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsSpreadOperator ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsSpreadExpression ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsClassKeyword ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsClassProperty ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsExtendsKeyword ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsExportDefault ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi jsTemplateBraces ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsGlobalNodeObjects ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsGlobalObjects ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsFunction ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsFuncParens ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsFuncBlock ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsParens ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsNull ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsUndefined ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsClassDefinition ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsFunctionKey ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsBracket ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsObjectColon ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsObjectProp ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsFuncBraces ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsVariableDef ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsObjectValue ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsDestructuringBlock ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsParenIfElse ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsClassBlock ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsFutureKeys ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi jsStorageClass ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsModuleKeyword ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsObjectShorthandProp ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsxRegion ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsxTagName ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsxComponentName ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsxEndComponentName ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsxEscapeJsAttributes ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsxEscapeJsContent ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsxAttrib ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsxAttributeBraces ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsxEqual ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsxString ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsxCloseTag ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsxEndTag ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsxEndString ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsxCloseString ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsxIfOperator ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsxElseOperator ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsxDot ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsxNamespace ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsxPunct ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi typeScriptReserved ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi typeScriptLabel ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi typeScriptFuncKeyword ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi typeScriptIdentifier ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi typeScriptBraces ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi typeScriptEndColons ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi typeScriptDOMObjects ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi typeScriptAjaxMethods ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi typeScriptLogicSymbols ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link typeScriptDocSeeTag Comment
    hi! link typeScriptDocParam Comment
    hi! link typeScriptDocTags vimCommentTitle
    hi typeScriptGlobalObjects ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi typeScriptParens ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi typeScriptOpSymbols ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi typeScriptHtmlElemProperties ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi typeScriptNull ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi typeScriptInterpolationDelimiter ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi purescriptModuleKeyword ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi purescriptModuleName ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi purescriptWhere ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi purescriptDelimiter ctermfg=137 ctermbg=NONE guifg=#a89984 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi purescriptType ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi purescriptImportKeyword ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi purescriptHidingKeyword ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi purescriptAsKeyword ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi purescriptStructure ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi purescriptOperator ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi purescriptTypeVar ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi purescriptConstructor ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi purescriptFunction ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi purescriptConditional ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi purescriptBacktick ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi coffeeExtendedOp ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi coffeeSpecialOp ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi coffeeCurly ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi coffeeParen ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi coffeeBracket ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi rubyStringDelimiter ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi rubyInterpolationDelimiter ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi objcTypeModifier ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi objcDirective ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi goDirective ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi goConstants ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi goDeclaration ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi goDeclType ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi goBuiltins ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi luaIn ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi luaFunction ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi luaTable ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi moonSpecialOp ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi moonExtendedOp ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi moonFunction ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi moonObject ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaAnnotation ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaDocTags ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link javaCommentTitle vimCommentTitle
    hi javaParen ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaParen1 ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaParen2 ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaParen3 ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaParen4 ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaParen5 ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaOperator ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaVarArg ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link elixirDocString Comment
    hi elixirStringDelimiter ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi elixirInterpolationDelimiter ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi elixirModuleDeclaration ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaNameDefinition ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaCaseFollowing ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaCapitalWord ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaTypeExtension ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaKeyword ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaKeywordModifier ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaSpecial ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaOperator ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaTypeDeclaration ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaTypeTypePostDeclaration ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaInstanceDeclaration ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaInterpolation ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownItalic ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
    hi markdownH1 ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi markdownH2 ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi markdownH3 ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi markdownH4 ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi markdownH5 ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownH6 ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownCode ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownCodeBlock ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownCodeDelimiter ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownBlockquote ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownListMarker ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownOrderedListMarker ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownRule ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownHeadingRule ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownUrlDelimiter ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownLinkDelimiter ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownLinkTextDelimiter ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownHeadingDelimiter ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownUrl ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownUrlTitleDelimiter ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownLinkText ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
    hi! link markdownIdDeclaration markdownLinkText
    hi haskellType ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellIdentifier ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellSeparator ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellDelimiter ctermfg=137 ctermbg=NONE guifg=#a89984 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellOperators ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellBacktick ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellStatement ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellConditional ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellLet ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellDefault ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellWhere ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellBottom ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellBlockKeywords ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellImportKeywords ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellDeclKeyword ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellDeriving ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellAssocType ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellNumber ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellPragma ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellString ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellChar ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsonKeyword ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsonQuote ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsonBraces ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsonString ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  endif
  finish
endif

let g:terminal_ansi_colors = [
      \ '#f2e5bc', '#cc241d', '#98971a', '#d79921', '#458588', '#b16286', '#689d6a', '#665c54',
      \ '#a89984', '#9d0006', '#79740e', '#b57614', '#076678', '#8f3f71', '#427b58', '#3c3836']
if !has('gui_running') && get(g:, 'gruvbox_transp_bg', 0)
  hi Normal ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SignColumn ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi VertSplit ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
else
  hi Normal ctermfg=237 ctermbg=187 guifg=#3c3836 guibg=#f2e5bc guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=172 ctermbg=251 guifg=#b57614 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=102 ctermbg=251 guifg=#928374 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  hi SignColumn ctermfg=237 ctermbg=251 guifg=#3c3836 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  hi VertSplit ctermfg=144 ctermbg=187 guifg=#bdae93 guibg=#f2e5bc guisp=NONE cterm=NONE gui=NONE
endif
hi ColorColumn ctermfg=NONE ctermbg=251 guifg=NONE guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
hi Conceal ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi! link CursorColumn CursorLine
hi CursorLine ctermfg=NONE ctermbg=251 guifg=NONE guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=100 ctermbg=187 guifg=#79740e guibg=#f2e5bc guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffChange ctermfg=29 ctermbg=187 guifg=#427b58 guibg=#f2e5bc guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffDelete ctermfg=124 ctermbg=187 guifg=#9d0006 guibg=#f2e5bc guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffText ctermfg=172 ctermbg=187 guifg=#b57614 guibg=#f2e5bc guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Directory ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi EndOfBuffer ctermfg=187 ctermbg=NONE guifg=#f2e5bc guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Error ctermfg=124 ctermbg=187 guifg=#9d0006 guibg=#f2e5bc guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
hi ErrorMsg ctermfg=187 ctermbg=124 guifg=#f2e5bc guibg=#9d0006 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Folded ctermfg=102 ctermbg=251 guifg=#928374 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE,italic
hi IncSearch ctermfg=124 ctermbg=187 guifg=#af3a03 guibg=#f2e5bc guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi LineNr ctermfg=137 ctermbg=NONE guifg=#a89984 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=NONE ctermbg=144 guifg=NONE guibg=#bdae93 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi ModeMsg ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi MoreMsg ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi NonText ctermfg=180 ctermbg=NONE guifg=#d5c4a1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=237 ctermbg=180 guifg=#3c3836 guibg=#d5c4a1 guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=NONE ctermbg=180 guifg=NONE guibg=#d5c4a1 guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=180 ctermbg=23 guifg=#d5c4a1 guibg=#076678 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi PmenuThumb ctermfg=NONE ctermbg=137 guifg=NONE guibg=#a89984 guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi! link QuickFixLine Search
hi Search ctermfg=172 ctermbg=187 guifg=#b57614 guibg=#f2e5bc guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SpecialKey ctermfg=180 ctermbg=NONE guifg=#d5c4a1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=#9d0006 cterm=NONE,underline gui=NONE,italic,undercurl
hi SpellCap ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=#076678 cterm=NONE,underline gui=NONE,italic,undercurl
hi SpellLocal ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=#427b58 cterm=NONE,underline gui=NONE,italic,undercurl
hi SpellRare ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=#8f3f71 cterm=NONE,underline gui=NONE,italic,undercurl
hi StatusLine ctermfg=180 ctermbg=237 guifg=#d5c4a1 guibg=#3c3836 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StatusLineNC ctermfg=251 ctermbg=243 guifg=#ebdbb2 guibg=#7c6f64 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link TabLine TabLineFill
hi TabLineFill ctermfg=137 ctermbg=251 guifg=#a89984 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=100 ctermbg=251 guifg=#79740e guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Visual ctermfg=NONE ctermbg=144 guifg=NONE guibg=#bdae93 guisp=NONE cterm=NONE gui=NONE
hi! link VisualNOS Visual
hi WarningMsg ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi WildMenu ctermfg=23 ctermbg=180 guifg=#076678 guibg=#d5c4a1 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Boolean ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Character ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Comment ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
hi Conditional ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Constant ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Define ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Debug ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Delimiter ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Error ctermfg=124 ctermbg=187 guifg=#9d0006 guibg=#f2e5bc guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
hi Exception ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Float ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Function ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Identifier ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Include ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Keyword ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Label ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Macro ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Number ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Operator Normal
hi PreCondit ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PreProc ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Repeat ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialChar ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialComment ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Statement ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StorageClass ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Special ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi String ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Structure ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Tag Special
hi Todo ctermfg=fg ctermbg=187 guifg=fg guibg=#f2e5bc guisp=NONE cterm=NONE,bold gui=NONE,bold,italic
hi Type ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Typedef ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Underlined ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi! link lCursor Cursor
hi CursorIM ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ToolbarLine ctermfg=NONE ctermbg=144 guifg=NONE guibg=#bdae93 guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=235 ctermbg=144 guifg=#282828 guibg=#bdae93 guisp=NONE cterm=NONE,bold gui=NONE,bold
if get(g:, "gruvbox_italic", 0)
  hi Comment cterm=italic
  hi Folded cterm=italic
  hi SpellBad cterm=italic,underline
  hi SpellCap cterm=italic,underline
  hi SpellLocal cterm=italic,underline
  hi SpellRare cterm=italic,underline
  hi Todo cterm=italic
endif
if get(g:, "gruvbox_italicize_strings", 0)
  hi Special cterm=italic gui=italic
  hi String cterm=italic gui=italic
endif
hi! link iCursor Cursor
hi! link vCursor Cursor
hi NormalMode ctermfg=243 ctermbg=187 guifg=#7c6f64 guibg=#f2e5bc guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi InsertMode ctermfg=23 ctermbg=187 guifg=#076678 guibg=#f2e5bc guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ReplaceMode ctermfg=29 ctermbg=187 guifg=#427b58 guibg=#f2e5bc guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VisualMode ctermfg=124 ctermbg=187 guifg=#af3a03 guibg=#f2e5bc guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi CommandMode ctermfg=126 ctermbg=187 guifg=#8f3f71 guibg=#f2e5bc guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Warnings ctermfg=124 ctermbg=187 guifg=#af3a03 guibg=#f2e5bc guisp=NONE cterm=NONE,reverse gui=NONE,reverse
if has('nvim')
  let g:terminal_color_0  = '#f2e5bc'
  let g:terminal_color_8  = '#928374'
  let g:terminal_color_1  = '#cc241d'
  let g:terminal_color_9  = '#9d0006'
  let g:terminal_color_2  = '#98971a'
  let g:terminal_color_10 = '#79740e'
  let g:terminal_color_3  = '#d79921'
  let g:terminal_color_11 = '#b57614'
  let g:terminal_color_4  = '#458588'
  let g:terminal_color_12 = '#076678'
  let g:terminal_color_5  = '#b16286'
  let g:terminal_color_13 = '#8f3f71'
  let g:terminal_color_6  = '#689d6a'
  let g:terminal_color_14 = '#427b58'
  let g:terminal_color_7  = '#7c6f64'
  let g:terminal_color_15 = '#3c3836'
  hi! link TermCursor Cursor
  hi TermCursorNC ctermfg=251 ctermbg=237 guifg=#ebdbb2 guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
endif
if !(get(g:, "gruvbox_plugin_hi_groups", 0) || get(g:, "gruvbox_filetype_hi_groups", 0))
  finish
endif
if get(g:, "gruvbox_plugin_hi_groups", 0)
  hi ALEError ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#9d0006 cterm=NONE,underline gui=NONE,undercurl
  hi ALEWarning ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#9d0006 cterm=NONE,underline gui=NONE,undercurl
  hi ALEInfo ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#076678 cterm=NONE,underline gui=NONE,undercurl
  hi ALEErrorSign ctermfg=124 ctermbg=251 guifg=#9d0006 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  hi ALEWarningSign ctermfg=172 ctermbg=251 guifg=#b57614 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  hi ALEInfoSign ctermfg=23 ctermbg=251 guifg=#076678 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  hi BufTabLineCurrent ctermfg=187 ctermbg=243 guifg=#f2e5bc guibg=#7c6f64 guisp=NONE cterm=NONE gui=NONE
  hi BufTabLineActive ctermfg=243 ctermbg=180 guifg=#7c6f64 guibg=#d5c4a1 guisp=NONE cterm=NONE gui=NONE
  hi BufTabLineHidden ctermfg=137 ctermbg=251 guifg=#a89984 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  hi BufTabLineFill ctermfg=187 ctermbg=187 guifg=#f2e5bc guibg=#f2e5bc guisp=NONE cterm=NONE gui=NONE
  hi CtrlPMatch ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CtrlPNoEntries ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CtrlPPrtBase ctermfg=180 ctermbg=NONE guifg=#d5c4a1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CtrlPPrtCursor ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CtrlPLinePre ctermfg=180 ctermbg=NONE guifg=#d5c4a1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CtrlPMode1 ctermfg=23 ctermbg=180 guifg=#076678 guibg=#d5c4a1 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi CtrlPMode2 ctermfg=187 ctermbg=23 guifg=#f2e5bc guibg=#076678 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi CtrlPStats ctermfg=243 ctermbg=180 guifg=#7c6f64 guibg=#d5c4a1 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi DirvishPathTail ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DirvishArg ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link EasyMotionTarget Search
  hi! link EasyMotionShade Comment
  hi gitcommitSelectedFile ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi gitcommitDiscardedFile ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi GitGutterAdd ctermfg=100 ctermbg=251 guifg=#79740e guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  hi GitGutterChange ctermfg=29 ctermbg=251 guifg=#427b58 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  hi GitGutterDelete ctermfg=124 ctermbg=251 guifg=#9d0006 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  hi GitGutterChangeDelete ctermfg=29 ctermbg=251 guifg=#427b58 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  if get(g:, "indent_guides_auto_colors", 0)
    if get(g: "gruvbox_invert_indent_guides", 0)
      hi IndentGuidesOdd ctermfg=187 ctermbg=180 guifg=#f2e5bc guibg=#d5c4a1 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
      hi IndentGuidesEven ctermfg=187 ctermbg=251 guifg=#f2e5bc guibg=#ebdbb2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    else
      hi IndentGuidesOdd ctermfg=187 ctermbg=180 guifg=#f2e5bc guibg=#d5c4a1 guisp=NONE cterm=NONE gui=NONE
      hi IndentGuidesEven ctermfg=187 ctermbg=251 guifg=#f2e5bc guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
    endif
  endif
  " IndentLine
  if !exists('g:indentLine_color_term')
    let g:indentLine_color_term = 180
  endif
  if !exists('g:indentLine_color_gui')
    let g:indentLine_color_gui = '#d5c4a1'
  endif
  hi NERDTreeDir ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NERDTreeDirSlash ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NERDTreeOpenable ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NERDTreeClosable ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NERDTreeFile ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NERDTreeExecFile ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NERDTreeUp ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NERDTreeCWD ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NERDTreeHelp ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NERDTreeToggleOn ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NERDTreeToggleOff ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwDir ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwClassify ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwLink ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwSymLink ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwExe ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwComment ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwList ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwHelpCmd ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwCmdSep ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwVersion ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  " Rainbow Parentheses
  if !exists('g:rbpt_colorpairs')
    let g:rbpt_colorpairs = [['blue', '#458588'], ['magenta', '#b16286'],
          \ ['red', '#cc241d'], ['166', '#d65d0e']]
  endif

  let g:rainbow_guifgs = [ '#d65d0e', '#cc241d', '#b16286', '#458588' ]
  let g:rainbow_ctermfgs = [ '166', 'red', 'magenta', 'blue' ]

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
  hi ShowMarksHLl ctermfg=23 ctermbg=251 guifg=#076678 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  hi ShowMarksHLu ctermfg=23 ctermbg=251 guifg=#076678 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  hi ShowMarksHLo ctermfg=23 ctermbg=251 guifg=#076678 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  hi ShowMarksHLm ctermfg=23 ctermbg=251 guifg=#076678 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  hi SignifySignAdd ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SignifySignChange ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SignifySignDelete ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SignatureMarkText ctermfg=23 ctermbg=251 guifg=#076678 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  hi SignatureMarkerText ctermfg=126 ctermbg=251 guifg=#8f3f71 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  hi StartifyBracket ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StartifyFile ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StartifyNumber ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StartifyPath ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StartifySlash ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StartifySection ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StartifySpecial ctermfg=180 ctermbg=NONE guifg=#d5c4a1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StartifyHeader ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StartifyFooter ctermfg=180 ctermbg=NONE guifg=#d5c4a1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SyntasticError ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#9d0006 cterm=NONE,underline gui=NONE,undercurl
  hi SyntasticWarning ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#b57614 cterm=NONE,underline gui=NONE,undercurl
  hi SyntasticErrorSign ctermfg=124 ctermbg=251 guifg=#9d0006 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  hi SyntasticWarningSign ctermfg=172 ctermbg=251 guifg=#b57614 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  hi multiple_cursors_cursor ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi multiple_cursors_visual ctermfg=NONE ctermbg=180 guifg=NONE guibg=#d5c4a1 guisp=NONE cterm=NONE gui=NONE
  let g:vimshell_escape_colors = [
        \ '#a89984', '#9d0006', '#79740e', '#b57614',
        \ '#076678', '#8f3f71', '#427b58', '#7c6f64',
        \ '#f2e5bc', '#9d0006', '#79740e', '#af3a03',
        \ '#076678', '#8f3f71', '#427b58', '#282828'
        \ ]
endif
if get(g:, "gruvbox_filetype_hi_groups", 0)
  hi diffAdded ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi diffRemoved ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi diffChanged ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi diffFile ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi diffNewFile ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi diffLine ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi htmlTag ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi htmlEndTag ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi htmlTagName ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi htmlArg ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi htmlScriptTag ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi htmlTagN ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi htmlSpecialTagName ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi htmlLink ctermfg=243 ctermbg=NONE guifg=#7c6f64 guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi htmlSpecialChar ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi htmlBold ctermfg=fg ctermbg=187 guifg=fg guibg=#f2e5bc guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi htmlBoldUnderline ctermfg=fg ctermbg=187 guifg=fg guibg=#f2e5bc guisp=NONE cterm=NONE,bold,underline gui=NONE,bold,underline
  hi htmlBoldItalic ctermfg=fg ctermbg=187 guifg=fg guibg=#f2e5bc guisp=NONE cterm=NONE,bold,italic gui=NONE,bold,italic
  hi htmlBoldUnderlineItalic ctermfg=fg ctermbg=187 guifg=fg guibg=#f2e5bc guisp=NONE cterm=NONE,bold,italic,underline gui=NONE,bold,italic,underline
  hi htmlUnderline ctermfg=fg ctermbg=187 guifg=fg guibg=#f2e5bc guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi htmlUnderlineItalic ctermfg=fg ctermbg=187 guifg=fg guibg=#f2e5bc guisp=NONE cterm=NONE,italic,underline gui=NONE,italic,underline
  hi htmlItalic ctermfg=fg ctermbg=187 guifg=fg guibg=#f2e5bc guisp=NONE cterm=NONE,italic gui=NONE,italic
  hi xmlTag ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlEndTag ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlTagName ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlEqual ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi docbkKeyword ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi xmlDocTypeDecl ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlDocTypeKeyword ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlCdataStart ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlCdataCdata ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi dtdFunction ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi dtdTagName ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlAttrib ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlProcessingDelim ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi dtdParamEntityPunct ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi dtdParamEntityDPunct ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlAttribPunct ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlEntity ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlEntityPunct ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimCommentTitle ctermfg=243 ctermbg=NONE guifg=#7c6f64 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi vimNotation ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimBracket ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimMapModKey ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimFuncSID ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimSetSep ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimSep ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimContinue ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureKeyword ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureCond ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureSpecial ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureDefine ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureFunc ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureRepeat ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureCharacter ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureStringEscape ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureException ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureRegexp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureRegexpEscape ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureRegexpCharClass ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi! link clojureRegexpMod clojureRegexpCharClass
  hi! link clojureRegexpQuantifier clojureRegexpCharClass
  hi clojureParen ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureAnonArg ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureVariable ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureMacro ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureMeta ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureDeref ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureQuote ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureUnquote ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cOperator ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cStructure ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pythonBuiltin ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pythonBuiltinObj ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pythonBuiltinFunc ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pythonFunction ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pythonDecorator ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pythonInclude ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pythonImport ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pythonRun ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pythonCoding ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pythonOperator ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pythonException ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pythonExceptions ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pythonBoolean ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pythonDot ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pythonConditional ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pythonRepeat ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pythonDottedName ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi cssBraces ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssFunctionName ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssIdentifier ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssClassName ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssColor ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssSelectorOp ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssSelectorOp2 ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssImportant ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssVendor ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssTextProp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssAnimationProp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssUIProp ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssTransformProp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssTransitionProp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssPrintProp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssPositioningProp ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssBoxProp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssFontDescriptorProp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssFlexibleBoxProp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssBorderOutlineProp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssBackgroundProp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssMarginProp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssListProp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssTableProp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssFontProp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssPaddingProp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssDimensionProp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssRenderProp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssColorProp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssGeneratedContentProp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaScriptBraces ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaScriptFunction ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaScriptIdentifier ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaScriptMember ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaScriptNumber ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaScriptNull ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaScriptParens ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptImport ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptExport ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptClassKeyword ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptClassExtends ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDefault ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptClassName ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptClassSuperName ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptGlobal ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptEndColons ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptFuncArg ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptGlobalMethod ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptNodeGlobal ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptBOMWindowProp ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptArrayMethod ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptArrayStaticMethod ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptCacheMethod ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDateMethod ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptMathStaticMethod ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptURLUtilsProp ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptBOMNavigatorProp ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDOMDocMethod ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDOMDocProp ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptBOMLocationMethod ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptBOMWindowMethod ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptStringMethod ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptVariable ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptIdentifier ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptClassSuper ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptFuncKeyword ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptAsyncFunc ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptClassStatic ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptOperator ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptForOperator ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptYield ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptExceptions ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptMessage ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptTemplateSB ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptTemplateSubstitution ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptLabel ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptObjectLabel ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptPropertyName ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptLogicSymbols ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptArrowFunc ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDocParamName ctermfg=243 ctermbg=NONE guifg=#7c6f64 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDocTags ctermfg=243 ctermbg=NONE guifg=#7c6f64 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDocNotation ctermfg=243 ctermbg=NONE guifg=#7c6f64 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDocParamType ctermfg=243 ctermbg=NONE guifg=#7c6f64 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDocNamedParamType ctermfg=243 ctermbg=NONE guifg=#7c6f64 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptBrackets ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDOMElemAttrs ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDOMEventMethod ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDOMNodeMethod ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDOMStorageMethod ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptHeadersMethod ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptAsyncFuncKeyword ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptAwaitFuncKeyword ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsImport ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsExport ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsFrom ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsThis ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsParen ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsOperator ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsSpreadOperator ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsSpreadExpression ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsClassKeyword ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsClassProperty ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsExtendsKeyword ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsExportDefault ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi jsTemplateBraces ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsGlobalNodeObjects ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsGlobalObjects ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsFunction ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsFuncParens ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsFuncBlock ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsParens ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsNull ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsUndefined ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsClassDefinition ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsFunctionKey ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsBracket ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsObjectColon ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsObjectProp ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsFuncBraces ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsVariableDef ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsObjectValue ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsDestructuringBlock ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsParenIfElse ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsClassBlock ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsFutureKeys ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi jsStorageClass ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsModuleKeyword ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsObjectShorthandProp ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsxRegion ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsxTagName ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsxComponentName ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsxEndComponentName ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsxEscapeJsAttributes ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsxEscapeJsContent ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsxAttrib ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsxAttributeBraces ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsxEqual ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsxString ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsxCloseTag ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsxEndTag ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsxEndString ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsxCloseString ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsxIfOperator ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsxElseOperator ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsxDot ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsxNamespace ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsxPunct ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi typeScriptReserved ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi typeScriptLabel ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi typeScriptFuncKeyword ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi typeScriptIdentifier ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi typeScriptBraces ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi typeScriptEndColons ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi typeScriptDOMObjects ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi typeScriptAjaxMethods ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi typeScriptLogicSymbols ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link typeScriptDocSeeTag Comment
  hi! link typeScriptDocParam Comment
  hi! link typeScriptDocTags vimCommentTitle
  hi typeScriptGlobalObjects ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi typeScriptParens ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi typeScriptOpSymbols ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi typeScriptHtmlElemProperties ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi typeScriptNull ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi typeScriptInterpolationDelimiter ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi purescriptModuleKeyword ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi purescriptModuleName ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi purescriptWhere ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi purescriptDelimiter ctermfg=243 ctermbg=NONE guifg=#7c6f64 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi purescriptType ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi purescriptImportKeyword ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi purescriptHidingKeyword ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi purescriptAsKeyword ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi purescriptStructure ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi purescriptOperator ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi purescriptTypeVar ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi purescriptConstructor ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi purescriptFunction ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi purescriptConditional ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi purescriptBacktick ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi coffeeExtendedOp ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi coffeeSpecialOp ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi coffeeCurly ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi coffeeParen ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi coffeeBracket ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi rubyStringDelimiter ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi rubyInterpolationDelimiter ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi objcTypeModifier ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi objcDirective ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi goDirective ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi goConstants ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi goDeclaration ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi goDeclType ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi goBuiltins ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi luaIn ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi luaFunction ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi luaTable ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi moonSpecialOp ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi moonExtendedOp ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi moonFunction ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi moonObject ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaAnnotation ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaDocTags ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link javaCommentTitle vimCommentTitle
  hi javaParen ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaParen1 ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaParen2 ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaParen3 ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaParen4 ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaParen5 ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaOperator ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaVarArg ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link elixirDocString Comment
  hi elixirStringDelimiter ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi elixirInterpolationDelimiter ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi elixirModuleDeclaration ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaNameDefinition ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaCaseFollowing ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaCapitalWord ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaTypeExtension ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaKeyword ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaKeywordModifier ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaSpecial ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaOperator ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaTypeDeclaration ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaTypeTypePostDeclaration ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaInstanceDeclaration ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaInterpolation ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownItalic ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
  hi markdownH1 ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi markdownH2 ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi markdownH3 ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi markdownH4 ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi markdownH5 ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownH6 ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownCode ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownCodeBlock ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownCodeDelimiter ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownBlockquote ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownListMarker ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownOrderedListMarker ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownRule ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownHeadingRule ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownUrlDelimiter ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownLinkDelimiter ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownLinkTextDelimiter ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownHeadingDelimiter ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownUrl ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownUrlTitleDelimiter ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownLinkText ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi! link markdownIdDeclaration markdownLinkText
  hi haskellType ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellIdentifier ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellSeparator ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellDelimiter ctermfg=243 ctermbg=NONE guifg=#7c6f64 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellOperators ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellBacktick ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellStatement ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellConditional ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellLet ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellDefault ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellWhere ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellBottom ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellBlockKeywords ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellImportKeywords ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellDeclKeyword ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellDeriving ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellAssocType ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellNumber ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellPragma ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellString ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellChar ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsonKeyword ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsonQuote ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsonBraces ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsonString ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
endif
finish

" Color: neutralred        rgb(204,  36,  29)    ~
" Color: neutralgreen      rgb(152, 151,  26)    ~
" Color: neutralyellow     rgb(215, 153,  33)    ~
" Color: neutralblue       rgb( 69, 133, 136)    ~
" Color: neutralpurple     rgb(177,  98, 134)    ~
" Color: neutralaqua       rgb(104, 157, 106)    ~
" Color: neutralorange     rgb(214,  93,  14)    ~
" Background: dark
" Color: bg0 rgb(50,48,47) ~
" Color: bg1             rgb(60,  56,  54)     ~
" Color: bg2             rgb(80,  73,  69)     ~
" Color: bg3             rgb(102, 92,  84)     ~
" Color: bg4             rgb(124, 111, 100)    ~
" Color: fg0             rgb(253, 244, 193)    ~
" Color: fg1             rgb(235, 219, 178)    ~
" Color: fg2             rgb(213, 196, 161)    ~
" Color: fg3             rgb(189, 174, 147)    ~
" Color: fg4             rgb(168, 153, 132)    ~
" Color: grey            rgb(146, 131, 116)    ~
" Color: red             rgb(251, 73,  52)     203
" Color: green           rgb(184, 187, 38)     ~
" Color: yellow          rgb(250, 189, 47)     ~
" Color: blue            rgb(131, 165, 152)    ~
" Color: purple          rgb(211, 134, 155)    ~
" Color: aqua            rgb(142, 192, 124)    ~
" Color: orange          rgb(254, 128, 25)     ~
"     Normal       fg1    none
"     CursorLineNr yellow none
"     FoldColumn   grey   none
"     SignColumn   fg1    none
"     VertSplit    bg3    none
"     Normal       fg1    bg0
"     CursorLineNr yellow bg1
"     FoldColumn   grey   bg1
"     SignColumn   fg1    bg1
"     VertSplit    bg3    bg0
" ColorColumn                      none   bg1
" Conceal                          blue   none
" Cursor                           none   none    reverse
" CursorColumn                  -> CursorLine
" CursorLine                       none   bg1
" DiffAdd                          green  bg0     reverse
" DiffChange                       aqua   bg0     reverse
" DiffDelete                       red    bg0     reverse
" DiffText                         yellow bg0     reverse
" Directory                        green  none    bold
" EndOfBuffer                      bg0    none
" Error                            red    bg0     bold,reverse
" ErrorMsg                         bg0    red     bold
" Folded                           grey   bg1     g=italic
" IncSearch                        orange bg0     reverse
" LineNr                           bg4    none
" MatchParen                       none   bg3     bold
" ModeMsg                          yellow none    bold
" MoreMsg                          yellow none    bold
" NonText                          bg2    none
" Pmenu                            fg1    bg2
" PmenuSbar                        none   bg2
" PmenuSel                         bg2    blue    bold
" PmenuThumb                       none   bg4
" Question                         orange none    bold
" QuickFixLine                  -> Search
" Search                           yellow bg0     reverse
" SpecialKey                       bg2    none
" SpellBad                         red    none    t=underline g=italic,undercurl s=red
" SpellCap                         blue   none    t=underline g=italic,undercurl s=blue
" SpellLocal                       aqua   none    t=underline g=italic,undercurl s=aqua
" SpellRare                        purple none    t=underline g=italic,undercurl s=purple
" StatusLine                       bg2    fg1     reverse
" StatusLineNC                     bg1    fg4     reverse
" StatusLineTerm                -> StatusLine
" StatusLineTermNC              -> StatusLineNC
" TabLine                       -> TabLineFill
" TabLineFill                      bg4    bg1
" TabLineSel                       green  bg1
" Title                            green  none    bold
" Visual                           none   bg3
" VisualNOS                     -> Visual
" WarningMsg                       red    none    bold
" WildMenu                         blue   bg2     bold
" Boolean                          purple none
" Character                        purple none
" Comment                          grey   none    g=italic
" Conditional                      red    none
" Constant                         purple none
" Define                           aqua   none
" Debug                            red    none
" Delimiter                        orange none
" Error                            red    bg0     bold,reverse
" Exception                        red    none
" Float                            purple none
" Function                         green  none    bold
" Identifier                       blue   none
" Ignore                           fg     none
" Include                          aqua   none
" Keyword                          red    none
" Label                            red    none
" Macro                            aqua   none
" Number                           purple none
" Operator                      -> Normal
" PreCondit                        aqua   none
" PreProc                          aqua   none
" Repeat                           red    none
" SpecialChar                      red    none
" SpecialComment                   red    none
" Statement                        red    none
" StorageClass                     orange none
" Special                          orange none
" String                           green  none
" Structure                        aqua   none
" Tag                           -> Special
" Todo                             fg     bg0     t=bold g=bold,italic
" Type                             yellow none
" Typedef                          yellow none
" Underlined                       blue   none    underline
" lCursor                       -> Cursor
" CursorIM                         none   none    reverse
" ToolbarLine          none              bg3
" ToolbarButton        fg0               bg3               bold
" iCursor                       -> Cursor
" vCursor                       -> Cursor
" NormalMode                       fg4    bg0     reverse
" InsertMode                       blue   bg0     reverse
" ReplaceMode                      aqua   bg0     reverse
" VisualMode                       orange bg0     reverse
" CommandMode                      purple bg0     reverse
" Warnings                         orange bg0     reverse
" TermCursor        -> Cursor
" TermCursorNC         bg1            fg1
" ALEError                         none   none    t=underline g=undercurl s=red
" ALEWarning                       none   none    t=underline g=undercurl s=red
" ALEInfo                          none   none    t=underline g=undercurl s=blue
" ALEErrorSign                     red    bg1
" ALEWarningSign                   yellow bg1
" ALEInfoSign                      blue   bg1
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
" GitGutterAdd                     green  bg1
" GitGutterChange                  aqua   bg1
" GitGutterDelete                  red    bg1
" GitGutterChangeDelete            aqua   bg1
" IndentGuidesOdd  bg0 bg2 reverse
" IndentGuidesEven bg0 bg1 reverse
" IndentGuidesOdd  bg0 bg2
" IndentGuidesEven bg0 bg1
" NERDTreeDir                      aqua   none
" NERDTreeDirSlash                 aqua   none
" NERDTreeOpenable                 orange none
" NERDTreeClosable                 orange none
" NERDTreeFile                     fg1    none
" NERDTreeExecFile                 yellow none
" NERDTreeUp                       grey   none
" NERDTreeCWD                      green  none
" NERDTreeHelp                     fg1    none
" NERDTreeToggleOn                 green  none
" NERDTreeToggleOff                red    none
" netrwDir                         aqua   none
" netrwClassify                    aqua   none
" netrwLink                        grey   none
" netrwSymLink                     fg1    none
" netrwExe                         yellow none
" netrwComment                     grey   none
" netrwList                        blue   none
" netrwHelpCmd                     aqua   none
" netrwCmdSep                      fg3    none
" netrwVersion                     green  none
" ShowMarksHLl                     blue   bg1
" ShowMarksHLu                     blue   bg1
" ShowMarksHLo                     blue   bg1
" ShowMarksHLm                     blue   bg1
" SignifySignAdd                   green  none
" SignifySignChange                aqua   none
" SignifySignDelete                red    none
" SignatureMarkText                blue   bg1
" SignatureMarkerText              purple bg1
" StartifyBracket                  fg3    none
" StartifyFile                     fg1    none
" StartifyNumber                   blue   none
" StartifyPath                     grey   none
" StartifySlash                    grey   none
" StartifySection                  yellow none
" StartifySpecial                  bg2    none
" StartifyHeader                   yellow none
" StartifyFooter                   bg2    none
" SyntasticError                   none   none    t=underline g=undercurl s=red
" SyntasticWarning                 none   none    t=underline g=undercurl s=yellow
" SyntasticErrorSign               red    bg1
" SyntasticWarningSign             yellow bg1
" multiple_cursors_cursor          none   none    reverse
" multiple_cursors_visual          none   bg2
" diffAdded                        green  none
" diffRemoved                      red    none
" diffChanged                      aqua   none
" diffFile                         orange none
" diffNewFile                      yellow none
" diffLine                         blue   none
" htmlTag                          blue   none
" htmlEndTag                       blue   none
" htmlTagName                      aqua   none    bold
" htmlArg                          aqua   none
" htmlScriptTag                    purple none
" htmlTagN                         fg1    none
" htmlSpecialTagName               aqua   none    bold
" htmlLink                         fg4    none    underline
" htmlSpecialChar                  orange none
" htmlBold                         fg     bg0     bold
" htmlBoldUnderline                fg     bg0     bold,underline
" htmlBoldItalic                   fg     bg0     bold,italic
" htmlBoldUnderlineItalic          fg     bg0     bold,underline,italic
" htmlUnderline                    fg     bg0     underline
" htmlUnderlineItalic              fg     bg0     underline,italic
" htmlItalic                       fg     bg0     italic
" xmlTag                           blue   none
" xmlEndTag                        blue   none
" xmlTagName                       blue   none
" xmlEqual                         blue   none
" docbkKeyword                     aqua   none    bold
" xmlDocTypeDecl                   grey   none
" xmlDocTypeKeyword                purple none
" xmlCdataStart                    grey   none
" xmlCdataCdata                    purple none
" dtdFunction                      grey   none
" dtdTagName                       purple none
" xmlAttrib                        aqua   none
" xmlProcessingDelim               grey   none
" dtdParamEntityPunct              grey   none
" dtdParamEntityDPunct             grey   none
" xmlAttribPunct                   grey   none
" xmlEntity                        orange none
" xmlEntityPunct                   orange none
" vimCommentTitle                  fg4    none    bold
" vimNotation                      orange none
" vimBracket                       orange none
" vimMapModKey                     orange none
" vimFuncSID                       fg3    none
" vimSetSep                        fg3    none
" vimSep                           fg3    none
" vimContinue                      fg3    none
" clojureKeyword                   blue   none
" clojureCond                      orange none
" clojureSpecial                   orange none
" clojureDefine                    orange none
" clojureFunc                      yellow none
" clojureRepeat                    yellow none
" clojureCharacter                 aqua   none
" clojureStringEscape              aqua   none
" clojureException                 red    none
" clojureRegexp                    aqua   none
" clojureRegexpEscape              aqua   none
" clojureRegexpCharClass           fg3    none    bold
" clojureRegexpMod              -> clojureRegexpCharClass
" clojureRegexpQuantifier       -> clojureRegexpCharClass
" clojureParen                     fg3    none
" clojureAnonArg                   yellow none
" clojureVariable                  blue   none
" clojureMacro                     orange none
" clojureMeta                      yellow none
" clojureDeref                     yellow none
" clojureQuote                     yellow none
" clojureUnquote                   yellow none
" cOperator                        purple none
" cStructure                       orange none
" pythonBuiltin                    orange none
" pythonBuiltinObj                 orange none
" pythonBuiltinFunc                orange none
" pythonFunction                   aqua   none
" pythonDecorator                  red    none
" pythonInclude                    blue   none
" pythonImport                     blue   none
" pythonRun                        blue   none
" pythonCoding                     blue   none
" pythonOperator                   red    none
" pythonException                  red    none
" pythonExceptions                 purple none
" pythonBoolean                    purple none
" pythonDot                        fg3    none
" pythonConditional                red    none
" pythonRepeat                     red    none
" pythonDottedName                 green  none    bold
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
" javascriptOperator               red    none
" javascriptForOperator            red    none
" javascriptYield                  red    none
" javascriptExceptions             red    none
" javascriptMessage                red    none
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
" javascriptAsyncFuncKeyword       red    none
" javascriptAwaitFuncKeyword       red    none
" jsImport                         red  none
" jsExport                         red  none
" jsFrom                           red  none
" jsThis                           purple none
" jsParen                          blue none
" jsOperator                       aqua none
" jsSpreadOperator                 green none
" jsSpreadExpression               blue  none
" jsClassKeyword                   red   none 
" jsClassProperty                  green none
" jsExtendsKeyword                 red   none          
" jsExportDefault                  orange none bold
" jsTemplateBraces                 aqua   none
" jsGlobalNodeObjects              fg1   none
" jsGlobalObjects                  fg1   none
" jsFunction                       green  none
" jsFuncParens                     purple none
" jsFuncBlock                      blue  none
" jsParens                         fg3    none
" jsNull                           purple none
" jsUndefined                      purple none 
" jsClassDefinition                yellow none
" jsFunctionKey                    green none
" jsBracket                        red none
" jsObjectColon                    red none
" jsObjectProp                     blue none
" jsFuncBraces                     green none
" jsVariableDef                    yellow none
" jsObjectValue                    blue none
" jsDestructuringBlock             yellow none
" jsParenIfElse                    blue none
" jsClassBlock                     blue none
" jsFutureKeys                     orange none bold
" jsStorageClass                   orange none
" jsModuleKeyword                  blue none
" jsObjectShorthandProp            blue none
" jsxRegion                        blue none
" jsxTagName                       blue   none
" jsxComponentName                 yellow none
" jsxEndComponentName              yellow none
" jsxEscapeJsAttributes            blue none 
" jsxEscapeJsContent               blue none
" jsxAttrib                        yellow none
" jsxAttributeBraces               fg1    none
" jsxEqual                         aqua   none
" jsxString                        green  none
" jsxCloseTag                      blue   none
" jsxEndTag                        blue   none
" jsxEndString                     blue   none
" jsxCloseString                   blue   none
" jsxIfOperator                    aqua   none
" jsxElseOperator                  aqua   none
" jsxDot                           fg1    none 
" jsxNamespace                     blue   none
" jsxPunct                         aqua   none
" typeScriptReserved               aqua   none
" typeScriptLabel                  aqua   none
" typeScriptFuncKeyword            aqua   none
" typeScriptIdentifier             orange none
" typeScriptBraces                 fg1    none
" typeScriptEndColons              fg1    none
" typeScriptDOMObjects             fg1    none
" typeScriptAjaxMethods            fg1    none
" typeScriptLogicSymbols           fg1    none
" typeScriptDocSeeTag           -> Comment
" typeScriptDocParam            -> Comment
" typeScriptDocTags             -> vimCommentTitle
" typeScriptGlobalObjects          fg1    none
" typeScriptParens                 fg3    none
" typeScriptOpSymbols              fg3    none
" typeScriptHtmlElemProperties     fg1    none
" typeScriptNull                   purple none
" typeScriptInterpolationDelimiter aqua   none
" purescriptModuleKeyword          aqua   none
" purescriptModuleName             fg1    none
" purescriptWhere                  aqua   none
" purescriptDelimiter              fg4    none
" purescriptType                   fg1    none
" purescriptImportKeyword          aqua   none
" purescriptHidingKeyword          aqua   none
" purescriptAsKeyword              aqua   none
" purescriptStructure              aqua   none
" purescriptOperator               blue   none
" purescriptTypeVar                fg1    none
" purescriptConstructor            fg1    none
" purescriptFunction               fg1    none
" purescriptConditional            orange none
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
" goDeclaration                    red    none
" goDeclType                       blue   none
" goBuiltins                       orange none
" luaIn                            red    none
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
" scalaKeyword                     red    none
" scalaKeywordModifier             red    none
" scalaSpecial                     aqua   none
" scalaOperator                    fg1    none
" scalaTypeDeclaration             yellow none
" scalaTypeTypePostDeclaration     yellow none
" scalaInstanceDeclaration         fg1    none
" scalaInterpolation               aqua   none
" markdownItalic                   fg3    none    italic
" markdownH1                       green  none    bold
" markdownH2                       green  none    bold
" markdownH3                       yellow none    bold
" markdownH4                       yellow none    bold
" markdownH5                       yellow none
" markdownH6                       yellow none
" markdownCode                     aqua   none
" markdownCodeBlock                aqua   none
" markdownCodeDelimiter            aqua   none
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
" markdownLinkText                 grey   none    underline
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
" Color: bg0 rgb(242,229,188)    ~
" Color: bg1 rgb(235, 219, 178) 251
" Color: bg2 rgb(213, 196, 161) 180
" Color: bg3               rgb(189, 174, 147)    ~
" Color: bg4               rgb(168, 153, 132)    ~
" Color: fg0               rgb( 40,  40,  40)    ~
" Color: fg1               rgb( 60,  56,  54)    ~
" Color: fg2               rgb( 80,  56,  54)    ~
" Color: fg3               rgb(102,  92,  84)    ~
" Color: fg4               rgb(124, 111, 100)    ~
" Color: grey              rgb(146, 131, 116)    ~
" Color: red               rgb(157,   0,   6)    ~
" Color: green             rgb(121, 116,  14)    ~
" Color: yellow            rgb(181, 118,  20)    ~
" Color: blue              rgb(  7, 102, 120)    ~
" Color: purple            rgb(143,  63, 113)    ~
" Color: aqua              rgb( 66, 123,  88)    ~
" Color: orange            rgb(175,  58,   3)    ~
"     Normal       fg1    none
"     CursorLineNr yellow none
"     FoldColumn   grey   none
"     SignColumn   fg1    none
"     VertSplit    bg3    none
"     Normal       fg1    bg0
"     CursorLineNr yellow bg1
"     FoldColumn   grey   bg1
"     SignColumn   fg1    bg1
"     VertSplit    bg3    bg0
" ColorColumn                      none   bg1
" Conceal                          blue   none
" Cursor                           none   none    reverse
" CursorColumn                  -> CursorLine
" CursorLine                       none   bg1
" DiffAdd                          green  bg0     reverse
" DiffChange                       aqua   bg0     reverse
" DiffDelete                       red    bg0     reverse
" DiffText                         yellow bg0     reverse
" Directory                        green  none    bold
" EndOfBuffer                      bg0    none
" Error                            red    bg0     bold,reverse
" ErrorMsg                         bg0    red     bold
" Folded                           grey   bg1     g=italic
" IncSearch                        orange bg0     reverse
" LineNr                           bg4    none
" MatchParen                       none   bg3     bold
" ModeMsg                          yellow none    bold
" MoreMsg                          yellow none    bold
" NonText                          bg2    none
" Pmenu                            fg1    bg2
" PmenuSbar                        none   bg2
" PmenuSel                         bg2    blue    bold
" PmenuThumb                       none   bg4
" Question                         orange none    bold
" QuickFixLine                  -> Search
" Search                           yellow bg0     reverse
" SpecialKey                       bg2    none
" SpellBad                         red    none    t=underline g=italic,undercurl s=red
" SpellCap                         blue   none    t=underline g=italic,undercurl s=blue
" SpellLocal                       aqua   none    t=underline g=italic,undercurl s=aqua
" SpellRare                        purple none    t=underline g=italic,undercurl s=purple
" StatusLine                       bg2    fg1     reverse
" StatusLineNC                     bg1    fg4     reverse
" StatusLineTerm                -> StatusLine
" StatusLineTermNC              -> StatusLineNC
" TabLine                       -> TabLineFill
" TabLineFill                      bg4    bg1
" TabLineSel                       green  bg1
" Title                            green  none    bold
" Visual                           none   bg3
" VisualNOS                     -> Visual
" WarningMsg                       red    none    bold
" WildMenu                         blue   bg2     bold
" Boolean                          purple none
" Character                        purple none
" Comment                          grey   none    g=italic
" Conditional                      red    none
" Constant                         purple none
" Define                           aqua   none
" Debug                            red    none
" Delimiter                        orange none
" Error                            red    bg0     bold,reverse
" Exception                        red    none
" Float                            purple none
" Function                         green  none    bold
" Identifier                       blue   none
" Ignore                           fg     none
" Include                          aqua   none
" Keyword                          red    none
" Label                            red    none
" Macro                            aqua   none
" Number                           purple none
" Operator                      -> Normal
" PreCondit                        aqua   none
" PreProc                          aqua   none
" Repeat                           red    none
" SpecialChar                      red    none
" SpecialComment                   red    none
" Statement                        red    none
" StorageClass                     orange none
" Special                          orange none
" String                           green  none
" Structure                        aqua   none
" Tag                           -> Special
" Todo                             fg     bg0     t=bold g=bold,italic
" Type                             yellow none
" Typedef                          yellow none
" Underlined                       blue   none    underline
" lCursor                       -> Cursor
" CursorIM                         none   none    reverse
" ToolbarLine          none              bg3
" ToolbarButton        fg0               bg3               bold
" iCursor                       -> Cursor
" vCursor                       -> Cursor
" NormalMode                       fg4    bg0     reverse
" InsertMode                       blue   bg0     reverse
" ReplaceMode                      aqua   bg0     reverse
" VisualMode                       orange bg0     reverse
" CommandMode                      purple bg0     reverse
" Warnings                         orange bg0     reverse
" TermCursor        -> Cursor
" TermCursorNC         bg1            fg1
" ALEError                         none   none    t=underline g=undercurl s=red
" ALEWarning                       none   none    t=underline g=undercurl s=red
" ALEInfo                          none   none    t=underline g=undercurl s=blue
" ALEErrorSign                     red    bg1
" ALEWarningSign                   yellow bg1
" ALEInfoSign                      blue   bg1
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
" GitGutterAdd                     green  bg1
" GitGutterChange                  aqua   bg1
" GitGutterDelete                  red    bg1
" GitGutterChangeDelete            aqua   bg1
" IndentGuidesOdd  bg0 bg2 reverse
" IndentGuidesEven bg0 bg1 reverse
" IndentGuidesOdd  bg0 bg2
" IndentGuidesEven bg0 bg1
" NERDTreeDir                      aqua   none
" NERDTreeDirSlash                 aqua   none
" NERDTreeOpenable                 orange none
" NERDTreeClosable                 orange none
" NERDTreeFile                     fg1    none
" NERDTreeExecFile                 yellow none
" NERDTreeUp                       grey   none
" NERDTreeCWD                      green  none
" NERDTreeHelp                     fg1    none
" NERDTreeToggleOn                 green  none
" NERDTreeToggleOff                red    none
" netrwDir                         aqua   none
" netrwClassify                    aqua   none
" netrwLink                        grey   none
" netrwSymLink                     fg1    none
" netrwExe                         yellow none
" netrwComment                     grey   none
" netrwList                        blue   none
" netrwHelpCmd                     aqua   none
" netrwCmdSep                      fg3    none
" netrwVersion                     green  none
" ShowMarksHLl                     blue   bg1
" ShowMarksHLu                     blue   bg1
" ShowMarksHLo                     blue   bg1
" ShowMarksHLm                     blue   bg1
" SignifySignAdd                   green  none
" SignifySignChange                aqua   none
" SignifySignDelete                red    none
" SignatureMarkText                blue   bg1
" SignatureMarkerText              purple bg1
" StartifyBracket                  fg3    none
" StartifyFile                     fg1    none
" StartifyNumber                   blue   none
" StartifyPath                     grey   none
" StartifySlash                    grey   none
" StartifySection                  yellow none
" StartifySpecial                  bg2    none
" StartifyHeader                   yellow none
" StartifyFooter                   bg2    none
" SyntasticError                   none   none    t=underline g=undercurl s=red
" SyntasticWarning                 none   none    t=underline g=undercurl s=yellow
" SyntasticErrorSign               red    bg1
" SyntasticWarningSign             yellow bg1
" multiple_cursors_cursor          none   none    reverse
" multiple_cursors_visual          none   bg2
" diffAdded                        green  none
" diffRemoved                      red    none
" diffChanged                      aqua   none
" diffFile                         orange none
" diffNewFile                      yellow none
" diffLine                         blue   none
" htmlTag                          blue   none
" htmlEndTag                       blue   none
" htmlTagName                      aqua   none    bold
" htmlArg                          aqua   none
" htmlScriptTag                    purple none
" htmlTagN                         fg1    none
" htmlSpecialTagName               aqua   none    bold
" htmlLink                         fg4    none    underline
" htmlSpecialChar                  orange none
" htmlBold                         fg     bg0     bold
" htmlBoldUnderline                fg     bg0     bold,underline
" htmlBoldItalic                   fg     bg0     bold,italic
" htmlBoldUnderlineItalic          fg     bg0     bold,underline,italic
" htmlUnderline                    fg     bg0     underline
" htmlUnderlineItalic              fg     bg0     underline,italic
" htmlItalic                       fg     bg0     italic
" xmlTag                           blue   none
" xmlEndTag                        blue   none
" xmlTagName                       blue   none
" xmlEqual                         blue   none
" docbkKeyword                     aqua   none    bold
" xmlDocTypeDecl                   grey   none
" xmlDocTypeKeyword                purple none
" xmlCdataStart                    grey   none
" xmlCdataCdata                    purple none
" dtdFunction                      grey   none
" dtdTagName                       purple none
" xmlAttrib                        aqua   none
" xmlProcessingDelim               grey   none
" dtdParamEntityPunct              grey   none
" dtdParamEntityDPunct             grey   none
" xmlAttribPunct                   grey   none
" xmlEntity                        orange none
" xmlEntityPunct                   orange none
" vimCommentTitle                  fg4    none    bold
" vimNotation                      orange none
" vimBracket                       orange none
" vimMapModKey                     orange none
" vimFuncSID                       fg3    none
" vimSetSep                        fg3    none
" vimSep                           fg3    none
" vimContinue                      fg3    none
" clojureKeyword                   blue   none
" clojureCond                      orange none
" clojureSpecial                   orange none
" clojureDefine                    orange none
" clojureFunc                      yellow none
" clojureRepeat                    yellow none
" clojureCharacter                 aqua   none
" clojureStringEscape              aqua   none
" clojureException                 red    none
" clojureRegexp                    aqua   none
" clojureRegexpEscape              aqua   none
" clojureRegexpCharClass           fg3    none    bold
" clojureRegexpMod              -> clojureRegexpCharClass
" clojureRegexpQuantifier       -> clojureRegexpCharClass
" clojureParen                     fg3    none
" clojureAnonArg                   yellow none
" clojureVariable                  blue   none
" clojureMacro                     orange none
" clojureMeta                      yellow none
" clojureDeref                     yellow none
" clojureQuote                     yellow none
" clojureUnquote                   yellow none
" cOperator                        purple none
" cStructure                       orange none
" pythonBuiltin                    orange none
" pythonBuiltinObj                 orange none
" pythonBuiltinFunc                orange none
" pythonFunction                   aqua   none
" pythonDecorator                  red    none
" pythonInclude                    blue   none
" pythonImport                     blue   none
" pythonRun                        blue   none
" pythonCoding                     blue   none
" pythonOperator                   red    none
" pythonException                  red    none
" pythonExceptions                 purple none
" pythonBoolean                    purple none
" pythonDot                        fg3    none
" pythonConditional                red    none
" pythonRepeat                     red    none
" pythonDottedName                 green  none    bold
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
" javascriptOperator               red    none
" javascriptForOperator            red    none
" javascriptYield                  red    none
" javascriptExceptions             red    none
" javascriptMessage                red    none
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
" javascriptAsyncFuncKeyword       red    none
" javascriptAwaitFuncKeyword       red    none
" jsImport                         red  none
" jsExport                         red  none
" jsFrom                           red  none
" jsThis                           purple none
" jsParen                          blue none
" jsOperator                       aqua none
" jsSpreadOperator                 green none
" jsSpreadExpression               blue  none
" jsClassKeyword                   red   none 
" jsClassProperty                  green none
" jsExtendsKeyword                 red   none          
" jsExportDefault                  orange none bold
" jsTemplateBraces                 aqua   none
" jsGlobalNodeObjects              fg1   none
" jsGlobalObjects                  fg1   none
" jsFunction                       green  none
" jsFuncParens                     purple none
" jsFuncBlock                      blue  none
" jsParens                         fg3    none
" jsNull                           purple none
" jsUndefined                      purple none 
" jsClassDefinition                yellow none
" jsFunctionKey                    green none
" jsBracket                        red none
" jsObjectColon                    red none
" jsObjectProp                     blue none
" jsFuncBraces                     green none
" jsVariableDef                    yellow none
" jsObjectValue                    blue none
" jsDestructuringBlock             yellow none
" jsParenIfElse                    blue none
" jsClassBlock                     blue none
" jsFutureKeys                     orange none bold
" jsStorageClass                   orange none
" jsModuleKeyword                  blue none
" jsObjectShorthandProp            blue none
" jsxRegion                        blue none
" jsxTagName                       blue   none
" jsxComponentName                 yellow none
" jsxEndComponentName              yellow none
" jsxEscapeJsAttributes            blue none 
" jsxEscapeJsContent               blue none
" jsxAttrib                        yellow none
" jsxAttributeBraces               fg1    none
" jsxEqual                         aqua   none
" jsxString                        green  none
" jsxCloseTag                      blue   none
" jsxEndTag                        blue   none
" jsxEndString                     blue   none
" jsxCloseString                   blue   none
" jsxIfOperator                    aqua   none
" jsxElseOperator                  aqua   none
" jsxDot                           fg1    none 
" jsxNamespace                     blue   none
" jsxPunct                         aqua   none
" typeScriptReserved               aqua   none
" typeScriptLabel                  aqua   none
" typeScriptFuncKeyword            aqua   none
" typeScriptIdentifier             orange none
" typeScriptBraces                 fg1    none
" typeScriptEndColons              fg1    none
" typeScriptDOMObjects             fg1    none
" typeScriptAjaxMethods            fg1    none
" typeScriptLogicSymbols           fg1    none
" typeScriptDocSeeTag           -> Comment
" typeScriptDocParam            -> Comment
" typeScriptDocTags             -> vimCommentTitle
" typeScriptGlobalObjects          fg1    none
" typeScriptParens                 fg3    none
" typeScriptOpSymbols              fg3    none
" typeScriptHtmlElemProperties     fg1    none
" typeScriptNull                   purple none
" typeScriptInterpolationDelimiter aqua   none
" purescriptModuleKeyword          aqua   none
" purescriptModuleName             fg1    none
" purescriptWhere                  aqua   none
" purescriptDelimiter              fg4    none
" purescriptType                   fg1    none
" purescriptImportKeyword          aqua   none
" purescriptHidingKeyword          aqua   none
" purescriptAsKeyword              aqua   none
" purescriptStructure              aqua   none
" purescriptOperator               blue   none
" purescriptTypeVar                fg1    none
" purescriptConstructor            fg1    none
" purescriptFunction               fg1    none
" purescriptConditional            orange none
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
" goDeclaration                    red    none
" goDeclType                       blue   none
" goBuiltins                       orange none
" luaIn                            red    none
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
" scalaKeyword                     red    none
" scalaKeywordModifier             red    none
" scalaSpecial                     aqua   none
" scalaOperator                    fg1    none
" scalaTypeDeclaration             yellow none
" scalaTypeTypePostDeclaration     yellow none
" scalaInstanceDeclaration         fg1    none
" scalaInterpolation               aqua   none
" markdownItalic                   fg3    none    italic
" markdownH1                       green  none    bold
" markdownH2                       green  none    bold
" markdownH3                       yellow none    bold
" markdownH4                       yellow none    bold
" markdownH5                       yellow none
" markdownH6                       yellow none
" markdownCode                     aqua   none
" markdownCodeBlock                aqua   none
" markdownCodeDelimiter            aqua   none
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
" markdownLinkText                 grey   none    underline
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
