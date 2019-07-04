let s:seperate_mode = get(g:, 'spaceline_seperate_mode', 0)
let s:seperate_style = get(g:, 'spaceline_seperate_style', 'arrow')
let s:homemoderight = ""
let s:filenameright = ""
let s:filesizeright = ""
let s:gitleft = ""
let s:gitright = ""
let s:lineinfoleft = ""
let s:EndSeperate = ""
let s:emptySeperate1 = ""

function! s:spacelineCustomSeperate()
        let s:homemoderight = get(g:, 'spaceline_homemode_right','')
        let s:filenameright = get(g:, 'spaceline_filename_left','')
        let s:filesizeright = get(g:, 'spaceline_filesize_right','')
        let s:gitleft = get(g:, 'spaceline_gitinfo_left','')
        let s:gitright = get(g:, 'spaceline_gitinfo_right','')
        let s:lineinfoleft = get(g:, 'spaceline_cocexts_right','')
        let s:lineformatright = get(g:, 'spaceline_lineformat_right', '')
        let s:EndSeperate = get(g:, 'spaceline_seperate_endseperate','')
        let s:emptySeperate1 = get(g:, 'spaceline_seperate_emptyseperate','')
endfunction
function! s:spacelineStyle(style)
    if a:style == 'slant'
        let s:homemoderight = ''
        let s:filenameright = ''
        let s:filesizeright = ''
        let s:gitleft = ''
        let s:gitright = ''
        let s:lineinfoleft = ''
        let s:lineformatright = ''
        let s:EndSeperate = ''
        let s:emptySeperate1 = ''
    elseif a:style == 'arrow'
        let s:homemoderight = ''
        let s:filenameright = ''
        let s:filesizeright = ''
        let s:gitleft = ''
        let s:gitright = ''
        let s:lineinfoleft = ''
        let s:lineformatright = ''
        let s:EndSeperate = ''
        let s:emptySeperate1 = ''
    elseif a:style == 'curve'
        let s:homemoderight = ''
        let s:filenameright = ''
        let s:filesizeright = ''
        let s:gitleft = ''
        let s:gitright = ''
        let s:lineinfoleft = ''
        let s:lineformatright = ''
        let s:EndSeperate = ''
        let s:emptySeperate1 = ''
    elseif a:style == 'none'
        let s:homemoderight = ''
        let s:filenameright = ''
        let s:filesizeright = ''
        let s:gitleft = ''
        let s:gitright = ''
        let s:lineinfoleft = ''
        let s:lineformatright = ''
        let s:EndSeperate = ''
        let s:emptySeperate1 = ''
    endif
endfunction

if s:seperate_style ==1
        call s:spacelineCustomSeperate()
  else
        call s:spacelineStyle(s:seperate_style)
endif

function! s:SlantActiveStatusLine()
    if &filetype ==? 'defx' ||&filetype==?'vista'
        let s:statusline=""
        let s:statusline.="%#HomeMode#%{spaceline#spaceline#VimacslineMode()}"
        let s:statusline.="%#HomeModeRight#"
        let s:statusline.=s:homemoderight
        let s:statusline.="\ "
        let s:statusline.="%="
        let s:statusline.="%#StatusLineinfo#%{spaceline#spaceline#VimacsLineinfo()}"
        let s:statusline.="%#EndSeperate#"
        let s:statusline.=s:EndSeperate
        return s:statusline
    endif
    let s:statusline=""
    let s:statusline.="%#HomeMode#%{spaceline#spaceline#VimacslineMode()}"
    let s:statusline.="%#HomeModeRight#"
    let s:statusline.=s:homemoderight
    let s:statusline.="\ "
    let s:statusline.="%#FileName#"
    let s:statusline.="%{spaceline#spaceline#VimacsFilenameActive()}"
    let s:statusline.="\ "
    if !empty(spaceline#spaceline#Filesize())
        let s:statusline.="%#FileNameRight#"
        let s:statusline.=s:filenameright
        let s:statusline.="\ "
        let s:statusline.="%#FileSize#"
        let s:statusline.="\ "
        let s:statusline.="%{spaceline#spaceline#Filesize()}"
        let s:statusline.="\ "
        let s:statusline.="%#FileSizeRight#"
        let s:statusline.=s:filesizeright
    endif
    if !empty(spaceline#spaceline#VimacsLineCocError())|| !empty(spaceline#spaceline#VimacsLineCocWarn())
        let s:statusline.="\ "
        let s:statusline.="%#HeartSymbol#"
        let s:statusline.="\ "
        let s:statusline.="%{spaceline#spaceline#HeartErrorSymbol()}"
        let s:statusline.="%#CocError#"
        let s:statusline.="%{spaceline#spaceline#VimacsLineCocError()}"
        let s:statusline.="\ "
        let s:statusline.="%#CocWarn#"
        let s:statusline.="%{spaceline#spaceline#VimacsLineCocWarn()}"
        let s:statusline.="\ "
    else
        let s:statusline.="\ "
        let s:statusline.="%#VimMode#"
        let s:statusline.="\["
        let s:statusline.="%{spaceline#spaceline#VimMode()}"
        let s:statusline.="\]"
    endif
    if !empty(get(g:,'coc_git_status',''))
        let s:statusline.="%#GitLeft#"
        let s:statusline.=s:gitleft
        let s:statusline.="\ "
        let s:statusline.="%#GitInfo#"
        let s:statusline.="\ "
        let s:statusline.="%{spaceline#spaceline#VimacsLineGit()}"
        let s:statusline.="\ "
        let s:statusline.="%#GitRight#"
        let s:statusline.=s:gitright
    endif
    if !empty(expand('%:t')) && empty(get(g:,'coc_git_status','')) && &filetype != 'defx'
        let s:statusline.="%#emptySeperate1#"
        let s:statusline.=s:emptySeperate1
    endif
    if empty(spaceline#spaceline#Filesize()) && empty(get(g:,'coc_git_status',''))
        let s:statusline.="%#emptySeperate1#"
        let s:statusline.=s:emptySeperate1
    endif
    let s:statusline.="%#CocBar#"
    let s:statusline.="\ "
    let s:statusline.="%{spaceline#spaceline#CocStatusBar()}"
    let s:statusline.="%="
    let s:statusline.="%#LineInfoLeft#"
    let s:statusline.=s:lineinfoleft
    let s:statusline.="\ "
    let s:statusline.="%#StatusEncod#"
    let s:statusline.="%{spaceline#spaceline#FileEncoding()}"
    let s:statusline.="\ "
    let s:statusline.="%#StatusFileFormat#%{spaceline#spaceline#VimacsLineFileformat()}"
    let s:statusline.="%#LineFormatRight#"
    let s:statusline.=s:lineformatright
    let s:statusline.="\ "
    let s:statusline.="%#StatusLineinfo#%{spaceline#spaceline#VimacsLineinfo()}"
    let s:statusline.="%#EndSeperate#"
    let s:statusline.=s:EndSeperate
    return s:statusline
endfunction

function! s:SlantInActiveStatusLine()
    let s:statusline=""
    let s:statusline.="%#HomeMode#%{spaceline#spaceline#VimacslineMode()}"
    let s:statusline.="%#HomeModeRight#"
    let s:statusline.=s:homemoderight
    let s:statusline.="\ "
    let s:statusline.="%#FileName#"
    let s:statusline.="%{spaceline#spaceline#VimacsFilenameActive()}"
    let s:statusline.="\ "
    let s:statusline.="%="
    let s:statusline.="%#StatusLineinfo#%{spaceline#spaceline#VimacsLineinfo()}"
    let s:statusline.="%#EndSeperate#"
    let s:statusline.=s:EndSeperate
    return s:statusline
endfunction

function! s:SlantColor()
    hi HomeMode ctermbg=214 ctermfg=black guibg=#fabd2f guifg=black
    hi HomeModeRight ctermbg=black ctermfg=214 guibg=black guifg=#fabd2f
    hi FileName ctermbg=black ctermfg=188 guibg=black guifg=#d7d7d7
    hi FileNameRight ctermbg=black ctermfg=261 guibg=black guifg=#5d4d7a
    hi Filesize ctermbg=261 ctermfg=188 guibg=#5d4d7a guifg=#d7d7d7
    hi FileSizeRight ctermbg=black ctermfg=261 guibg=black guifg=#5d4d7a
    hi HeartSymbol ctermbg=black ctermfg=130 guibg=black guifg=#af5f00
    hi CocError ctermbg=black ctermfg=124 guibg=black guifg=#cc241d
    hi CocWarn ctermbg=black ctermfg=32 guibg=black guifg=#0087d7
    hi GitLeft ctermbg=black ctermfg=261 guibg=black guifg=#5d4d7a
    hi GitInfo ctermbg=261 ctermfg=188 guibg=#5d4d7a guifg=#d7d7d7
    hi Gitright ctermbg=237 ctermfg=261 guibg=#3c3836 guifg=#5d4d7a
    hi CocBar ctermbg=237 ctermfg=225 guibg=#3c3836 guifg=#6272a4
    hi LineInfoLeft ctermbg=237 ctermfg=261 guibg=#3c3836 guifg=#5d4d7a
    hi StatusEncod ctermbg=261 ctermfg=188 guibg=#5d4d7a guifg=#d7d7d7
    hi StatusFileFormat ctermbg=261 ctermfg=188 guibg=#5d4d7a guifg=#d7d7d7
    hi LineFormatRight ctermbg=261 ctermfg=261 guibg=black guifg=#5d4d7a
    hi StatusLineinfo ctermbg=237 ctermfg=225 guibg=black guifg=#6272a4
    hi EndSeperate ctermbg=214 ctermfg=55 guibg=#fabd2f guifg=#5f00af
    hi VimMode ctermbg=black ctermfg=148 guibg=black guifg=#afd700
    hi emptySeperate1 ctermbg=237 ctermfg=black guibg=#3c3836 guifg=black
endfunction

function! s:ActiveStatusLine()
    if &filetype ==? 'defx' || &filetype==?'vista'
        let s:statusline=""
        let s:statusline.="%#HomeMode#%{spaceline#spaceline#VimacslineMode()}"
        let s:statusline.="%#HomeModeRight#"
        let s:statusline.=s:homemoderight
        let s:statusline.="%#FileName#"
        let s:statusline.="%{spaceline#spaceline#VimacsFilenameActive()}"
        let s:statusline.="\ "
        let s:statusline.="%="
        let s:statusline.="%#StatusLineinfo#%{spaceline#spaceline#VimacsLineinfo()}"
        let s:statusline.="%#EndSeperate#"
        let s:statusline.=s:EndSeperate
        return s:statusline
    endif
    let s:statusline=""
    let s:statusline.="%#HomeMode#%{spaceline#spaceline#VimacslineMode()}"
    let s:statusline.="%#HomeModeRight#"
    let s:statusline.=s:homemoderight
    let s:statusline.="%#FileName#"
    let s:statusline.="\ "
    let s:statusline.="%{spaceline#spaceline#VimacsFilenameActive()}"
    let s:statusline.="\ "
    if !empty(spaceline#spaceline#Filesize())
        let s:statusline.="%#FileNameRight#"
        let s:statusline.=s:filenameright
        let s:statusline.="%#FileSize#"
        let s:statusline.="\ "
        let s:statusline.="%{spaceline#spaceline#Filesize()}"
        let s:statusline.="\ "
        let s:statusline.="%#FileSizeRight#"
        let s:statusline.="\ "
        let s:statusline.=s:filesizeright
    endif

    if !empty(spaceline#spaceline#VimacsLineCocError())|| !empty(spaceline#spaceline#VimacsLineCocWarn())
        let s:statusline.="%#HeartSymbol#"
        let s:statusline.="\ "
        let s:statusline.="%{spaceline#spaceline#HeartErrorSymbol()}"
        let s:statusline.="%#CocError#"
        let s:statusline.="%{spaceline#spaceline#VimacsLineCocError()}"
        let s:statusline.="\ "
        let s:statusline.="%#CocWarn#"
        let s:statusline.="%{spaceline#spaceline#VimacsLineCocWarn()}"
        let s:statusline.="\ "
    else
        let s:statusline.="%#VimMode#"
        let s:statusline.="\ "
        let s:statusline.="\["
        let s:statusline.="%{spaceline#spaceline#VimMode()}"
        let s:statusline.="\]"
        let s:statusline.="\ "
    endif
    if !empty(get(g:,'coc_git_status',''))
        let s:statusline.="%#GitLeft#"
        let s:statusline.=s:gitleft
        let s:statusline.="%#GitInfo#"
        let s:statusline.="\ "
        let s:statusline.="%{spaceline#spaceline#VimacsLineGit()}"
        let s:statusline.="\ "
        let s:statusline.="%#GitRight#"
        let s:statusline.=s:gitright
    endif
    if !empty(expand('%:t')) && empty(get(g:,'coc_git_status','')) && &filetype != 'defx'
        let s:statusline.="%#emptySeperate1#"
        let s:statusline.=s:emptySeperate1
    endif
    if empty(spaceline#spaceline#Filesize()) && empty(get(g:,'coc_git_status',''))
        let s:statusline.="%#emptySeperate1#"
        let s:statusline.=s:emptySeperate1
    endif
    let s:statusline.="%#CocBar#"
    let s:statusline.="\ "
    let s:statusline.="%{spaceline#spaceline#CocStatusBar()}"
    let s:statusline.="%="
    let s:statusline.="%#LineInfoLeft#"
    let s:statusline.=s:lineinfoleft
    let s:statusline.="%#StatusEncod#"
    let s:statusline.="\ "
    let s:statusline.="%{spaceline#spaceline#FileEncoding()}"
    let s:statusline.="\ "
    let s:statusline.="%#StatusFileFormat#%{spaceline#spaceline#VimacsLineFileformat()}"
    let s:statusline.="%#LineFormatRight#"
    let s:statusline.=s:lineformatright
    let s:statusline.="%#StatusLineinfo#%{spaceline#spaceline#VimacsLineinfo()}"
    let s:statusline.="%#EndSeperate#"
    let s:statusline.=s:EndSeperate
    return s:statusline
endfunction
function! s:InActiveStatusLine()
    let s:statusline=""
    let s:statusline.="%#HomeMode#%{spaceline#spaceline#VimacslineMode()}"
    let s:statusline.="%#HomeModeRight#"
    let s:statusline.=s:homemoderight
    let s:statusline.="%#FileName#"
    let s:statusline.="%{spaceline#spaceline#VimacsFilenameActive()}"
    let s:statusline.="\ "
    let s:statusline.="%="
    let s:statusline.="%#StatusLineinfo#%{spaceline#spaceline#VimacsLineinfo()}"
    let s:statusline.="%#EndSeperate#"
    let s:statusline.=s:EndSeperate
    return s:statusline
endfunction

function! s:SpaceLineColor()
    hi HomeMode ctermbg=214 ctermfg=black guibg=#fabd2f guifg=black
    hi HomeModeRight ctermbg=214 ctermfg=black guibg=#fabd2f guifg=black
    hi FileName ctermbg=black ctermfg=188 guibg=black guifg=#d7d7d7
    hi FileNameRight ctermbg=261 ctermfg=black guibg=#5d4d7a guifg=black
    hi Filesize ctermbg=261 ctermfg=188 guibg=#5d4d7a guifg=#d7d7d7
    hi FileSizeRight ctermbg=261 ctermfg=black guibg=#5d4d7a guifg=black
    hi HeartSymbol ctermbg=black ctermfg=130 guibg=black guifg=#af5f00
    hi CocError ctermbg=black ctermfg=124 guibg=black guifg=#cc241d
    hi CocWarn ctermbg=black ctermfg=32 guibg=black guifg=#0087d7
    hi GitLeft ctermbg=261 ctermfg=black guibg=#5d4d7a guifg=black
    hi GitInfo ctermbg=261 ctermfg=188 guibg=#5d4d7a guifg=#d7d7d7
    hi Gitright ctermbg=261 ctermfg=237 guibg=#5d4d7a guifg=#3c3836
    hi CocBar ctermbg=237 ctermfg=225 guibg=#3c3836 guifg=#6272a4
    hi LineInfoLeft ctermbg=237 ctermfg=261 guibg=#3c3836 guifg=#5d4d7a
    hi StatusEncod ctermbg=261 ctermfg=188 guibg=#5d4d7a guifg=#d7d7d7
    hi StatusFileFormat ctermbg=261 ctermfg=188 guibg=#5d4d7a guifg=#d7d7d7
    hi LineFormatRight ctermbg=261 ctermfg=261 guibg=black guifg=#5d4d7a
    hi StatusLineinfo ctermbg=237 ctermfg=225 guibg=black guifg=#6272a4
    hi EndSeperate ctermbg=214 ctermfg=55 guibg=#fabd2f guifg=#5f00af
    hi VimMode ctermbg=black ctermfg=148 guibg=black guifg=#afd700
    hi emptySeperate1 ctermbg=237 ctermfg=black guibg=#3c3836 guifg=black
endfunction

function! s:SetStatusline()
    if s:seperate_mode ==1
        let &l:statusline=s:CustomActiveStatusLine()
        call s:SpaceLineColor()
        return
    endif
    if s:seperate_style == 'curve'
        let &l:statusline=s:ActiveStatusLine()
        call s:SpaceLineColor()
    elseif s:seperate_style == 'slant'
        let &l:statusline=s:SlantActiveStatusLine()
        call s:SlantColor()
    elseif s:seperate_style == 'arrow'
        let &l:statusline=s:ActiveStatusLine()
        call s:SpaceLineColor()
    elseif s:seperate_style == 'none'
        let &l:statusline=s:ActiveStatusLine()
        call s:SpaceLineColor()
    endif
endfunction

function! s:SetInActiveStatusLine()
    if s:seperate_mode ==1
        let &l:statusline=s:CustomInActiveStatusLine()
        call s:SpaceLineColor()
        return
    endif
    if s:seperate_style == 'curve'
        let &l:statusline=s:InActiveStatusLine()
        call s:SpaceLineColor()
    elseif s:seperate_style == 'slant'
        let &l:statusline=s:SlantInActiveStatusLine()
        call s:SlantColor()
    elseif s:seperate_style == 'arrow'
        let &l:statusline=s:InActiveStatusLine()
        call s:SpaceLineColor()
    elseif s:seperate_style == 'none'
        let &l:statusline=s:InActiveStatusLine()
        call s:SpaceLineColor()
    endif
endfunction

function! s:CustomActiveStatusLine()
    if &filetype ==? 'defx' || &filetype==?'vista'
        let s:statusline=""
        let s:statusline.="%#HomeMode#%{spaceline#spacline#VimacslineMode()}"
        let s:statusline.="%#HomeModeRight#"
        let s:statusline.=s:homemoderight
        let s:statusline.="%#FileName#"
        let s:statusline.="%{spaceline#spaceline#VimacsFilenameActive()}"
        let s:statusline.="\ "
        let s:statusline.="%="
        let s:statusline.="%#StatusLineinfo#%{spaceline#spaceline#VimacsLineinfo()}"
        let s:statusline.="%#EndSeperate#"
        let s:statusline.=s:EndSeperate
        return s:statusline
    endif
    let s:statusline=""
    let s:statusline.="%#HomeMode#%{spaceline#spaceline#VimacslineMode()}"
    let s:statusline.="%#HomeModeRight#"
    let s:statusline.=s:homemoderight
    let s:statusline.="%#FileName#"
    let s:statusline.="\ "
    let s:statusline.="%{spaceline#spaceline#VimacsFilenameActive()}"
    let s:statusline.="\ "
    if !empty(spaceline#spaceline#Filesize())
        let s:statusline.="%#FileNameRight#"
        let s:statusline.=s:filenameright
        let s:statusline.="%#FileSize#"
        let s:statusline.="\ "
        let s:statusline.="%{spaceline#spaceline#Filesize()}"
        let s:statusline.="\ "
        let s:statusline.="%#FileSizeRight#"
        let s:statusline.="\ "
        let s:statusline.=s:filesizeright
    endif

    if !empty(spaceline#spaceline#VimacsLineCocError())|| !empty(spaceline#spaceline#VimacsLineCocWarn())
        let s:statusline.="%#HeartSymbol#"
        let s:statusline.="\ "
        let s:statusline.="%{spaceline#spaceline#HeartErrorSymbol()}"
        let s:statusline.="%#CocError#"
        let s:statusline.="%{spaceline#spaceline#VimacsLineCocError()}"
        let s:statusline.="\ "
        let s:statusline.="%#CocWarn#"
        let s:statusline.="%{spaceline#spaceline#VimacsLineCocWarn()}"
        let s:statusline.="\ "
    else
        let s:statusline.="%#VimMode#"
        let s:statusline.="\ "
        let s:statusline.="\["
        let s:statusline.="%{spaceline#spaceline#VimMode()}"
        let s:statusline.="\]"
        let s:statusline.="\ "
    endif
    if !empty(get(g:,'coc_git_status',''))
        let s:statusline.="%#GitLeft#"
        let s:statusline.=s:gitleft
        let s:statusline.="%#GitInfo#"
        let s:statusline.="\ "
        let s:statusline.="%{spaceline#spaceline#VimacsLineGit()}"
        let s:statusline.="\ "
        let s:statusline.="%#GitRight#"
        let s:statusline.=s:gitright
    endif
    if !empty(expand('%:t')) && empty(get(g:,'coc_git_status','')) && &filetype != 'defx'
        let s:statusline.="%#emptySeperate1#"
        let s:statusline.=s:emptySeperate1
    endif
    if empty(spaceline#spaceline#Filesize()) && empty(get(g:,'coc_git_status',''))
        let s:statusline.="%#emptySeperate1#"
        let s:statusline.=s:emptySeperate1
    endif
    let s:statusline.="%#CocBar#"
    let s:statusline.="\ "
    let s:statusline.="%{spaceline#spaceline#CocStatusBar()}"
    let s:statusline.="%="
    let s:statusline.="%#LineInfoLeft#"
    let s:statusline.=s:lineinfoleft
    let s:statusline.="%#StatusEncod#"
    let s:statusline.="\ "
    let s:statusline.="%{spaceline#spaceline#FileEncoding()}"
    let s:statusline.="\ "
    let s:statusline.="%#StatusFileFormat#%{spaceline#spaceline#VimacsLineFileformat()}"
    let s:statusline.="%#LineFormatRight#"
    let s:statusline.=s:lineformatright
    let s:statusline.="%#StatusLineinfo#%{spaceline#spaceline#VimacsLineinfo()}"
    let s:statusline.="%#EndSeperate#"
    let s:statusline.=s:EndSeperate
    return s:statusline
endfunction
function! s:CustomInActiveStatusLine()
    let s:statusline=""
    let s:statusline.="%#HomeMode#%{spaceline#spaceline#VimacslineMode()}"
    let s:statusline.="%#HomeModeRight#"
    let s:statusline.=s:homemoderight
    let s:statusline.="%#FileName#"
    let s:statusline.="%{spaceline#spaceline#VimacsFilenameActive()}"
    let s:statusline.="\ "
    let s:statusline.="%="
    let s:statusline.="%#StatusLineinfo#%{spaceline#spaceline#VimacsLineinfo()}"
    let s:statusline.="%#EndSeperate#"
    let s:statusline.=s:EndSeperate
    return s:statusline
endfunction
augroup spaceline
	autocmd!
	autocmd FileType,WinEnter,BufWinEnter,BufReadPost  * call s:SetStatusline()
    autocmd WinLeave * call s:SetInActiveStatusLine()
    autocmd BufNewFile,ShellCmdPost,BufWritePost * call s:SetStatusline()
    autocmd FileChangedShellPost,ColorScheme * call s:SetStatusline()
    autocmd FileReadPre,ShellCmdPost,FileWritePost * call s:SetStatusline()
    autocmd User CocStatusChange,CocGitStatusChange call s:SetStatusline()
    autocmd  User CocDiagnosticChange call s:SetStatusline()
augroup END "}}}
