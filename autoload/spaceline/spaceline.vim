let s:symbol = get(g:, 'spaceline_line_symbol', 0)
function! spaceline#spaceline#VimacsLineGit()
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

function! s:vimacsline_is_lean() abort
  return &filetype =~? '\v^defx|mundo(diff)?$'
endfunction

function! s:vimacsline_is_plain() abort
  return &buftype ==? 'terminal' || &filetype =~? '\v^help|denite|defx|vista_kind|vista|tagbar$'
endfunction

function! spaceline#spaceline#VimacsLineinfo() abort
    if s:symbol ==1
            return &filetype ==? 'help'             ? ''  :
        \      &filetype ==? 'defx'             ? ' ' :
        \      &filetype ==? 'denite'           ? ' ' :
        \      &filetype ==? 'tagbar'           ? ' ' :
        \      &filetype ==? 'vista_kind'       ? ' ' :
        \      &filetype =~? '\v^mundo(diff)?$' ? ' ' :
        \      s:vimacsline_is_lean() || s:vimacsline_is_plain() ? ' '  :
        \      printf(' %d:%d %d%%', line('.'), col('.'), 100*line('.')/line('$'))
    endif
    return &filetype ==? 'help'             ? ''  :
  \      &filetype ==? 'defx'             ? ' ' :
  \      &filetype ==? 'denite'           ? ' ' :
  \      &filetype ==? 'tagbar'           ? ' ' :
  \      &filetype ==? 'vista_kind'       ? ' ' :
  \      &filetype =~? '\v^mundo(diff)?$' ? ' ' :
  \      s:vimacsline_is_lean() || s:vimacsline_is_plain() ? ' '  :
  \      printf('☰ %d:%d %d%%', line('.'), col('.'), 100*line('.')/line('$'))
endfunction

function! spaceline#spaceline#Filesize()abort
  if empty(expand('%:t'))
    return ''
  endif
  if &filetype ==? 'defx'
      return ''
  endif
  if s:symbol == 1
    return Fsize(@%)
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

function! spaceline#spaceline#VimacslineMode() abort
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
  if s:symbol == 1
  return l:result
  endif
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

function! spaceline#spaceline#VimacsFilenameActive() abort
  if s:vimacsline_is_lean()
    return ''
  endif
  if &buftype ==? 'terminal'
    return has('nvim') ? b:term_title . ' (' . b:terminal_job_pid . ')' : ''
  endif
  if &filetype ==? 'tagbar'
    return ''
  endif
  if &filetype ==? 'vista'
    return ''
  endif
  if &filetype ==? 'defx'
      return ''
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


function! spaceline#spaceline#CocStatusBar() abort
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

function! spaceline#spaceline#VimacsLineCocError()
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

function! spaceline#spaceline#VimacsLineCocWarn() abort
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

function! VimacsLineFname()
  let icon = (strlen(&filetype) ? ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft')
  if s:symbol == 1
      let icon= ''
  endif
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
function! spaceline#spaceline#FileEncoding()
    if &filetype==?'defx'
        return ""
    endif
     let l:encod = (&fenc!=#""?&fenc:&enc)
     if s:symbol == 1
     return ' '.l:encod
     endif
     return "".' '.l:encod
endfunction

function! spaceline#spaceline#VimacsLineFiletype()
    if &filetype==? 'defx'
        return ""
    endif
    if s:symbol == 1
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' : 'no ft') : ''
    endif
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! spaceline#spaceline#VimacsLineFileformat()
    if &filetype==? 'defx'
        return ""
    endif
    if s:symbol == 1
  return winwidth(0) > 70 ? (' '.&fileformat . ' ' ) : ''
    endif
  return winwidth(0) > 70 ? (WebDevIconsGetFileFormatSymbol().' '.&fileformat . ' ' ) : ''
endfunction

function! spaceline#spaceline#HeartErrorSymbol()
  let l:cocdiaginfo = get(b:, 'coc_diagnostic_info', {})
  if empty(l:cocdiaginfo)
    return ''
  endif
  return " "
endfunction

function! spaceline#spaceline#VimMode()
  let l:mode=mode()
  if l:mode==#"n"
    return "N"
  elseif l:mode==?"v"
    return "V"
  elseif l:mode==#"i"
    return "I"
  elseif l:mode==#"R"
    return "R"
  elseif l:mode==?"s"
    return "S"
  elseif l:mode==#"t"
    return "T"
  elseif l:mode==#"c"
    return "C"
  elseif l:mode==#"!"
    return "SE"
  endif
endfunction
function! spaceline#spaceline#SpaceHL(group,slc,  fg, ...)
    " Arguments: group, guifg, guibg, gui, guisp
    let histring = 'hi ' . a:group . ' '
    if strlen(a:fg)
        if a:fg == 'fg'
            let histring .= 'guifg=fg ctermfg=fg '
        else
            let c = get(a:slc, a:fg)
            let histring .= 'guifg=#' . c[0] . ' ctermfg=' . c[1] . ' '
        endif
    endif
    if a:0 >= 1 && strlen(a:1)
        if a:1 == 'bg'
            let histring .= 'guibg=bg ctermbg=bg '
        else
            let c = get(a:slc, a:1)
            let histring .= 'guibg=#' . c[0] . ' ctermbg=' . c[1] . ' '
        endif
    endif
    if a:0 >= 2 && strlen(a:2)
        let histring .= 'gui=' . a:2 . ' cterm=' . a:2 . ' '
    endif

    if a:0 >= 3 && strlen(a:3)
        let c = get(s:slc, a:3)
        let histring .= 'guisp=#' . c[0] . ' '
    endif
    " echom histring
    execute histring
endfunction
