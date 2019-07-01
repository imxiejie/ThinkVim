" stausline
function! s:vimacsline_is_lean() abort
  return &filetype =~? '\v^defx|mundo(diff)?$'
endfunction

function! s:vimacsline_is_plain() abort
  return &buftype ==? 'terminal' || &filetype =~? '\v^help|denite|defx|vista_kind|vista|tagbar$'
endfunction


function! VimacsLineinfo() abort
    return &filetype ==? 'help'             ? ''  :
  \      &filetype ==? 'defx'             ? ' ' :
  \      &filetype ==? 'denite'           ? ' ' :
  \      &filetype ==? 'tagbar'           ? ' ' :
  \      &filetype ==? 'vista_kind'       ? ' ' :
  \      &filetype =~? '\v^mundo(diff)?$' ? ' ' :
  \      s:vimacsline_is_lean() || s:vimacsline_is_plain() ? ' '  :
  \      printf('☰ %d:%d %d%%', line('.'), col('.'), 100*line('.')/line('$'))
endfunction

function! Filesize()abort
  if empty(expand('%:t'))
    return ''
  endif
  if &filetype ==? 'defx'
      return ''
  endif
    return "ﴬ".Fsize(@%)
endfunction

function! Fsize(f) abort
    let l:size = getfsize(expand(a:f))
  if l:size == 0 || l:size == -1 || l:size == -2
    return ''
  endif
  if l:size < 1024
    let size = l:size.' bytes'
  elseif l:size < 1024*1024
    let size = printf('%.1f', l:size/1024.0).'k'
  elseif l:size < 1024*1024*1024
    let size = printf('%.1f', l:size/1024.0/1024.0) . 'm'
  else
    let size = printf('%.1f', l:size/1024.0/1024.0/1024.0) . 'g'
  endif
  return " ".size
endfunction

function! VimacslineMode() abort
    return s:vimacsline_is_lean() || s:vimacsline_is_plain() ? toupper(&filetype) : Vimacslinemode()
endfunction

function! Vimacslinemode()
  let nr = s:get_buffer_number()
  let nmap = [ '⓿ ',  '❶ ',  '➋ ',  '❸ ', '❹ ','❺ ',  '❻ ',  '❼ ',  '❽ ',  '❾ ','➓ ','⓫ ','⓬ ','⓭ ','⓮ ','⓯ ','⓰ ','⓱ ','⓲ ','⓳ ','⓴ ']
  if nr == 0
    return ''
  endif
  let l:number = nr
  let l:result = ''
  for i in range(1, strlen(l:number))
    let l:result = get(nmap, l:number % 10, l:number % 10) . l:result
    let l:number = l:number / 10
  endfor
  return join(['ﮭ',l:result])
endfunction
function! s:get_buffer_number()
  let i = 0
  for nr in filter(range(1, bufnr('$')), 'bufexists(v:val) && buflisted(v:val)')
    let i += 1
    if nr == bufnr('')
      return i
    endif
  endfor
  return ''
endfunction

function! VimacsFilenameActive() abort
  if s:vimacsline_is_lean()
    return ''
  endif
  if &buftype ==? 'terminal'
    return has('nvim') ? b:term_title . ' (' . b:terminal_job_pid . ')' : ''
  endif
  if &filetype ==? 'tagbar'
    return get(g:lightline, 'fname', '')
  endif
  if &filetype ==? 'vista_kind'
    return get(g:lightline, 'VISTA', '')
  endif
  if &filetype ==? 'vista'
    return get(g:lightline, 'VISTA', '')
  endif
  if empty(expand('%:t'))
    return '[No Name]'
  endif

  let mo = s:vimacsline_modified()
  return empty(mo) ? VimacsLineFname() : VimacsLineFname() . ' ' . mo
endfunction


function! s:vimacsline_modified() abort
  return s:vimacsline_is_lean() || s:vimacsline_is_plain() ?  ''  :
  \      &modified                                       ?  '' :
  \      &modifiable                                     ?  ''  : '-'
endfunction

function! VimacsLineReadonly()
  if &filetype == "help"
    return ""
  elseif &readonly
    return ""
  else
    return ""
  endif
endfunction

function! VimacsLineGit()abort
    if &filetype ==? 'defx'
       return ""
    endif
    let gitbranch=get(g:, 'coc_git_status', '')
    let gitcount=get(b:, 'coc_git_status', '')
    let gitinfo = []
    if empty(gitbranch)
	    let gitbranch=""
        return ""
    endif
    if empty(gitcount)
	    let gitcount=""
    endif
    call add(gitinfo,gitbranch)
    call add(gitinfo,gitcount)
    return trim(join(gitinfo,''))
endfunction

function! CocStatusBar() abort
    let status=get(g:, 'coc_status', '')
    if empty(status)
        return ""
    endif
    let regstatus=substitute(status,"TSC","Ⓣ ","")
    let statusbar= split(regstatus)
    if &filetype ==? "go"
        let gobar ="Ⓖ "
        call add(statusbar,gobar)
    endif
    "return join(statusbar," ")
    let s = join(statusbar," ")
    if empty(s)
        return ""
    endif
    if &filetype ==? 'defx'
        return ""
    endif
    if &filetype ==? 'vista'
        return ""
    endif
     return join(['❖',s])
endfunction

function! VimacsLineCocError()
  let error_sign = get(g:, 'coc_status_error_sign', has('mac') ? '❌ ' : 'E')
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info)
    return ''
  endif
  let errmsgs = []
  if get(info, 'error', 0)
    call add(errmsgs, error_sign . info['error'])
  endif
  return join(errmsgs, ' ')
endfunction

function! VimacsLineCocWarn() abort
  let warning_sign = get(g:, 'coc_status_warning_sign')
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info)
    return ''
  endif
  let warnmsgs = []
  if get(info, 'warning', 0)
    call add(warnmsgs, warning_sign . info['warning'])
  endif
 return join(warnmsgs, ' ')
endfunction
function! VimacslineCocFixes() abort
  let b:coc_line_fixes = get(get(b:, 'coc_quickfixes', {}), line('.'), 0)
  return b:coc_line_fixes > 0 ? printf('%d ', b:coc_line_fixes) : ''
endfunction
" Diagnostic's feedback {{{
function! CocUpdateQuickFixes(error, actions) abort
  let coc_quickfixes = {}
  try
    for action in a:actions
      if action.kind ==? 'quickfix'
        for change in action.edit.documentChanges
          for edit in change.edits
            let start_line = edit.range.start.line + 1
            let end_line = edit.range.end.line + 1
            let coc_quickfixes[start_line] = get(coc_quickfixes, start_line, 0) + 1
            if start_line != end_line
              let coc_quickfixes[end_line] = get(coc_quickfixes, end_line, 0) + 1
            endif
          endfor
        endfor
      endif
    endfor
  catch
  endtry
  if coc_quickfixes != get(b:, 'coc_quickfixes', {})
    let b:coc_quickfixes = coc_quickfixes
    call lightline#update()
  endif
endfunction

function! VimacsLineFname()
  let icon = (strlen(&filetype) ? ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft')
  let filename = VimacsLineFilename()
  let ret = [filename,icon]
  if filename == ''
    return ''
  endif
  return join([icon,filename],' ')
endfunction
function! VimacsLineFilename()
  return ('' != VimacsLineReadonly() ? VimacsLineReadonly() . ' ' : '') .
        \ ('' != expand('%:t') ? expand('%:t') : '')
endfunction
function! FileEncoding()
    if &filetype==?'defx'
        return ""
    endif
     let l:encod = (&fenc!=#""?&fenc:&enc)
     return "".' '.l:encod
endfunction

function! VimacsLineFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! VimacsLineFileformat()
    if &filetype==? 'defx'
        return ""
    endif
  return winwidth(0) > 70 ? (WebDevIconsGetFileFormatSymbol().' '.&fileformat . ' ' ) : ''
endfunction

function! HeartErrorSymbol()
  let l:cocdiaginfo = get(b:, 'coc_diagnostic_info', {})
  if empty(l:cocdiaginfo)
    return ''
  endif
  return " "
endfunction

set laststatus=2
set statusline=
set statusline+=%#Seperate#
set statusline+=\
set statusline+=%2*
set statusline+=%{VimacslineMode()}
set statusline+=\ 
set statusline+=%3*
set statusline+=%{VimacsFilenameActive()}
set statusline+=\ 
set statusline+=%4*
set statusline+=\ 
set statusline+=%{Filesize()}
set statusline+=\ 
set statusline+=%5*
set statusline+=%{HeartErrorSymbol()}
set statusline+=%6*
set statusline+=%{VimacsLineCocError()}
set statusline+=\ 
set statusline+=%7*
set statusline+=%{VimacsLineCocWarn()}
set statusline+=\ 
set statusline+=%{VimacslineCocFixes()}
set statusline+=\ 
set statusline+=%8*
set statusline+=%{VimacsLineGit()}
set statusline+=\ 
set statusline+=%9*
set statusline+=%{CocStatusBar()}
set statusline+=%=
set statusline+=%#StatusEncod#%{FileEncoding()}
set statusline+=\ 
set statusline+=%#StatusFileFormat#%{VimacsLineFileformat()}
set statusline+=\ 
set statusline+=%#StatusLineinfo#%{VimacsLineinfo()}
set statusline+=%#EndSeperate#
set statusline+=\

hi Seperate ctermbg=237 ctermfg=265 guibg=#3c3836 guifg=#bd93f9
hi User2 ctermbg=237 ctermfg=172 guibg=#3c3836 guifg=#d78700
hi User3 ctermbg=237 ctermfg=188 guibg=#3c3836 guifg=#d7d7d7
hi User4 ctermbg=237 ctermfg=142 guibg=#3c3836 guifg=#b8bb26
hi User5 ctermbg=237 ctermfg=130 guibg=#3c3836 guifg=#af5f00
hi User6 ctermbg=237 ctermfg=124 guibg=#3c3836 guifg=#cc241d
hi User7 ctermbg=237 ctermfg=166 guibg=#3c3836 guifg=#d75f00
hi User8 ctermbg=237 ctermfg=167 guibg=#3c3836 guifg=#d75f5f
hi User9 ctermbg=237 ctermfg=96 guibg=#3c3836 guifg=#875f87
hi StatusEncod ctermbg=237 ctermfg=225 guibg=#3c3836 guifg=#6272a4
hi StatusFileFormat ctermbg=237 ctermfg=225 guibg=#3c3836 guifg=#6272a4
hi StatusLineinfo ctermbg=237 ctermfg=225 guibg=#3c3836 guifg=#6272a4
hi EndSeperate ctermbg=237 ctermfg=265 guibg=#3c3836 guifg=#bd93f9

augroup Stautsline
  autocmd!
  autocmd VimEnter,WinEnter,BufEnter * call VimacsLineGit()
  autocmd User CocStatusChange  * call HeartErrorSymbol()
  autocmd  User CocDiagnosticChange
    \   call VimacsLineCocWarn()
    \|  call VimacsLineCocError()
    \|  call HeartErrorSymbol()
    \|  call CocActionAsync('quickfixes', function('CocUpdateQuickFixes'))
augroup END


