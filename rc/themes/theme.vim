" Theme

" Enable 256 color terminal
set t_Co=256

" Enable true color
if has('termguicolors')
	set termguicolors
endif

set background=dark
let g:gruvbox_filetype_hi_groups = 1
let g:gruvbox_plugin_hi_groups = 1
let g:gruvbox_transp_bg = 1
"colorscheme hybrid_reverse
"colorscheme space_vim_theme
"colorscheme PaperColor
colorscheme gruvbox9_hard
"colorscheme gruvbox
"colorscheme dracula
"colorscheme  solarized8_flat


hi Whitespace ctermfg=96 guifg=#725972 guibg=NONE ctermbg=NONE

"Plugin:Neomake
"hi NeomakeVirtualtextError ctermfg=124 guifg=#af0000 guibg=NONE ctermbg=NONE

"coc highlightstext color
hi default CocHighlightText  guibg=#725972 ctermbg=96

"hi Normal guibg=NONE ctermbg=NONE
"hi LineNr ctermbg=NONE guibg=NONE


"Hide tilde
"hi EndOfBuffer ctermfg=none ctermbg=NONE guifg=#6f6f6f  guibg=NONE guisp=NONE cterm=NONE gui=NONE

"Pmenu Colors
" ---------------------------------------------------------
"hi PMenu guifg=#875fd7 guibg=#262626 guisp=#262626 gui=NONE ctermfg=98 ctermbg=235 cterm=NONE
"hi PMenuSel guifg=#d0d0d0 guibg=#875fd7 guisp=#875fd7 gui=NONE ctermfg=252 ctermbg=98 cterm=NONE
hi PMenuSel ctermfg=252 ctermbg=106 guifg=#d0d0d0 guibg=#859900 guisp=#859900 cterm=NONE gui=NONE
"hi PMenuSbar guifg=#e2e4e5 guibg=#262626 guisp=#262626 gui=NONE ctermfg=254 ctermbg=235 cterm=NONE
"hi PMenuThumb guifg=#875fd7 guibg=#875fd7 guisp=#875fd7 gui=NONE ctermfg=98 ctermbg=98 cterm=NONE
"hi Normal guibg=NONE ctermbg=NONE
"hi LineNr ctermbg=NONE guibg=NONE

highlight Defx_filename_3_Modified  ctermfg=1  guifg=#D370A3
highlight Defx_filename_3_Staged    ctermfg=10 guifg=#A3D572
highlight Defx_filename_3_Ignored   ctermfg=8  guifg=#404660
highlight def link Defx_filename_3_Untracked Comment
highlight def link Defx_filename_3_Unknown Comment
highlight def link Defx_filename_3_Renamed Title
highlight def link Defx_filename_3_Unmerged Label
" highlight Defx_git_Deleted   ctermfg=13 guifg=#b294bb

map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
