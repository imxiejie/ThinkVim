" Theme

" Enable 256 color terminal
set t_Co=256

" Enable true color
if has('termguicolors')
	set termguicolors
endif

set background=dark
"colorscheme hybrid_reverse
"colorscheme space_vim_theme
"colorscheme PaperColor
colorscheme gruvbox8_hard
"colorscheme gruvbox
"colorscheme dracula
"colorscheme  solarized8_flat


hi Whitespace ctermfg=96 guifg=#725972 guibg=NONE ctermbg=NONE

"Plugin:Neomake
"hi NeomakeVirtualtextError ctermfg=124 guifg=#af0000 guibg=NONE ctermbg=NONE

"coc highlightstext color
hi default CocHighlightText  guibg=#725972 ctermbg=96


"Hide tilde
"hi EndOfBuffer ctermfg=234 ctermbg=NONE guifg=#1c1c1c guibg=NONE guisp=NONE cterm=NONE gui=NONE

"Pmenu Colors
" ---------------------------------------------------------
"hi PMenu guifg=#875fd7 guibg=#262626 guisp=#262626 gui=NONE ctermfg=98 ctermbg=235 cterm=NONE
"hi PMenuSel guifg=#d0d0d0 guibg=#875fd7 guisp=#875fd7 gui=NONE ctermfg=252 ctermbg=98 cterm=NONE
hi PMenuSel ctermfg=252 ctermbg=106 guifg=#d0d0d0 guibg=#859900 guisp=#859900 cterm=NONE gui=NONE
"hi PMenuSbar guifg=#e2e4e5 guibg=#262626 guisp=#262626 gui=NONE ctermfg=254 ctermbg=235 cterm=NONE
"hi PMenuThumb guifg=#875fd7 guibg=#875fd7 guisp=#875fd7 gui=NONE ctermfg=98 ctermbg=98 cterm=NONE
"hi Normal guibg=NONE ctermbg=NONE
"hi LineNr ctermbg=NONE guibg=NONE


