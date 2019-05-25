" vim:foldmethod=marker:foldlevel=0
" s:attr(group, attr, ...)             | get group attribute {{{
function! s:attr(group, attr, ...) abort
  call assert_inrange(0, 1, a:0)
  if a:0 > 0
    let a = synIDattr(synIDtrans(hlID(a:group)), a:attr, a:1)
  else
    let a = synIDattr(synIDtrans(hlID(a:group)), a:attr)
  endif
  return empty(a) || a ==# '-1' ? 'NONE' :  a
endfunction
" }}}
" s:hi(g, gf, gb, ctf, ctb)            | highlighting helper {{{
function! s:hi(group, guifg, guibg, ctermfg, ctermbg) abort
  exec printf('hi %s guifg=%s guibg=%s ctermfg=%s ctermbg=%s',
       \      a:group, a:guifg, a:guibg, a:ctermfg, a:ctermbg)
endfunction
" }}}
" s:fg(group, mode)                    | get foreground of highlighting group {{{
function! s:fg(group, mode) abort
  return s:attr(a:group, s:attr(a:group, 'reverse', a:mode) ? 'bg' : 'fg', a:mode)
endfunction
" }}}
" s:bg(group, mode)                    | get background of highlighting group {{{
function! s:bg(group, mode) abort
  return s:attr(a:group, s:attr(a:group, 'reverse', a:mode) ? 'fg' : 'bg', a:mode)
endfunction
" }}}
" s:color_distance(hexcode1, hexcode2) | calculate color distance {{{
function! s:color_distance(hexcode1, hexcode2) abort
  call assert_match('^\v#\x{6}$', a:hexcode1)
  call assert_match('^\v#\x{6}$', a:hexcode2)
  let dr = str2nr(a:hexcode1[1:2], 16) - str2nr(a:hexcode2[1:2], 16)
  let dg = str2nr(a:hexcode1[3:4], 16) - str2nr(a:hexcode2[3:4], 16)
  let db = str2nr(a:hexcode1[5:6], 16) - str2nr(a:hexcode2[5:6], 16)
  return dr*dr + dg*dg + db*db
endfunction
" }}}
" s:farthest_color(hexcode, hexcodes)  | return index of farthest color {{{
function! s:farthest_color(hexcode, hexcodes) abort
  let c = -1
  let i = 0
  let d = 0
  for hc in a:hexcodes
    let cd = s:color_distance(a:hexcode, hc)
    if cd > d
      let c = i
      let d = cd
    endif
    let i += 1
  endfor
  return c
endfunction
" }}}
" Diagnostic's highlighting {{{
function! init_func#coc_highlight() abort
  hi! link CocHighlightText Search
  hi! link CocErrorLine SignColumn
  hi! link CocWarningLine SignColumn
  hi! link CocInfoLine SignColumn
  hi! link CocHintLine SignColumn
  if exists('g:loaded_lightline')
    let c = g:lightline#palette().normal.error[0]
    let i = s:farthest_color(s:bg('CocErrorLine', 'gui'), c[:1])
    call s:hi('CocErrorSign', c[0+i], s:bg('CocErrorLine', 'gui')
         \                  , c[2+i], s:bg('CocErrorLine', 'cterm'))
    let c = g:lightline#palette().normal.warning[0]
    let i = s:farthest_color(s:bg('CocWarningLine', 'gui'), c[:1])
    call s:hi('CocWarningSign', c[0+i], s:bg('CocWarningLine', 'gui')
         \                    , c[2+i], s:bg('CocWarningLine', 'cterm'))
    let c = g:lightline#palette().tabline.tabsel[0]
    let i = s:farthest_color(s:bg('CocInfoLine', 'gui'), c[:1])
    call s:hi('CocInfoSign', c[0+i], s:bg('CocInfoLine', 'gui')
         \                 , c[2+i], s:bg('CocInfoLine', 'cterm'))
    call s:hi('CocHintSign', g:lightline#palette().tabline.tabsel[0][0]
         \                 , s:bg('CocHintLine', 'gui')
         \                 , g:lightline#palette().tabline.tabsel[0][2]
         \                 , s:bg('CocHintLine', 'cterm'))
  else
    call s:hi('CocErrorSign'   , 'lightred'  , s:bg('CocErrorLine'   , 'gui')
         \                     , 'lightred'  , s:bg('CocErrorLine'   , 'cterm'))
    call s:hi('CocWarningSign' , 'yellow'    , s:bg('CocWarningLine' , 'gui')
         \                     , 'yellow'    , s:bg('CocWarningLine' , 'cterm'))
    call s:hi('CocInfoSign'    , 'lightblue' , s:bg('CocInfoLine'    , 'gui')
         \                     , 'lightblue' , s:bg('CocInfoLine'    , 'cterm'))
    call s:hi('CocHintSign'    , 'cyan'      , s:bg('CocHintLine'    , 'gui')
         \                     , 'cyan'      , s:bg('CocHintLine'    , 'cterm'))
  endif
endfunction
" }}}
" Lightline {{{
" LightlineCocErrors() {{{
function! init_func#LightlineCocErrors() abort
  return s:lightline_coc_diagnostic('error', 'error')
endfunction
" }}}
" LightlineCocWarnings() {{{
function! init_func#LightlineCocWarnings() abort
  return s:lightline_coc_diagnostic('warning', 'warning')
endfunction
" }}}
" LightlineCocInfos() {{{
function! init_func#LightlineCocInfos() abort
  return s:lightline_coc_diagnostic('information', 'info')
endfunction
" }}}
" LightlineCocHints() {{{
function! init_func#LightlineCocHints() abort
  return s:lightline_coc_diagnostic('hints', 'hint')
endfunction
" }}}
" LightlineCocFixes() {{{
function! init_func#LightlineCocFixes() abort
  let b:coc_line_fixes = get(get(b:, 'coc_quickfixes', {}), line('.'), 0)
  return b:coc_line_fixes > 0 ? printf('%d ', b:coc_line_fixes) : ''
endfunction
" }}}
" LightlineMode() {{{
function! init_func#LightlineMode() abort
  return s:lightline_is_lean() || s:lightline_is_plain() ? toupper(&ft) : lightline#mode()
endfunction
" }}}
" LightlineGit() {{{
function! init_func#LightlineGit() abort
  " if s:lightline_is_lean() || s:lightline_is_plain() || !exists('*fugitive#head')
  "   return ''
  " endif
  " try
  "   let b = fugitive#head()
  " catch
  "   return ''
  " endtry
  " return b !=# '' ? '' . (winwidth(0) < 80 ? '' : ' ' . b) : ''
  return get(g:, 'coc_git_status', '')
endfunction
" }}}
" LightlineFilepath() {{{
function! init_func#LightlineFilepath() abort
  if s:lightline_is_lean()
    return ''
  endif
  if s:lightline_is_plain() || winwidth(0) < 80
    return s:lightline_readonly()
  endif
  if exists('+shellslash')
    let saved_shellslash = &shellslash
    set shellslash
  endif
  let path_string = substitute(expand('%:h'), fnamemodify(expand('~'),''), '~', '')
  if !empty(path_string) && winwidth(0) / len(path_string) < 5
    let path_string = substitute(path_string, '\v([^/])[^/]*%(/@=|$)', '\1', 'g')
  endif
  if exists('+shellslash')
    let &shellslash = saved_shellslash
  endif
  let ro = s:lightline_readonly()
  return empty(ro) ? path_string :  ro . ' ' . path_string
endfunction
" }}}
" LightlineFilenameActive() {{{
function! init_func#LightlineFilenameActive() abort
  if s:lightline_is_lean()
    return ''
  endif
  if &bt ==? 'terminal'
    return has('nvim') ? b:term_title . ' (' . b:terminal_job_pid . ')' : ''
  endif
  if empty(expand('%:t'))
    return '[No Name]'
  endif

  let mo = s:lightline_modified()
  return empty(mo) ? expand('%:t') : expand('%:t') . ' ' . mo
endfunction
" }}}
" LightlineFilenameInactive() {{{
function! init_func#LightlineFilenameInactive() abort
  return s:lightline_is_lean() ? toupper(&ft) : init_func#LightlineFilenameActive()
endfunction
" }}}
" LightlineLineinfo() {{{
function! init_func#LightlineLineinfo() abort
  return &ft ==? 'help'             ? ''  :
  \      &ft ==? 'vim-plug'         ? '⚉ ' :
  \      &ft ==? 'defx'             ? '🖿 ' :
  \      &ft =~? '\v^mundo(diff)?$' ? '⮌ ' :
  \      s:lightline_is_lean() || s:lightline_is_plain() ? ' '  :
  \      printf('%d:%d ☰ %d%%', line('.'), col('.'), 100*line('.')/line('$'))
endfunction
" }}}
" LightlineFileinfo() {{{
function! init_func#LightlineFileinfo() abort
  if s:lightline_is_lean() || s:lightline_is_plain() || winwidth(0) < 80
    return ''
  endif
  return printf('%s[%s]', empty(&fenc) ? &enc : &fenc, &ff)
endfunction
" }}}
" LightlineFiletype() {{{
function! init_func#LightlineFiletype() abort
  if empty(&ft) || s:lightline_is_lean() || s:lightline_is_plain()
    return ''
  endif
  return &ft
endfunction
" }}}
" Util {{{
" s:lightline_is_lean() {{{
function! s:lightline_is_lean() abort
  return &ft =~? '\v^vim-plug|defx|mundo(diff)?$'
endfunction
" }}}
" s:lightline_is_plain() {{{
function! s:lightline_is_plain() abort
  return &bt ==? 'terminal' || &ft =~? '\v^help$'
endfunction
" }}}
" s:lightline_modified() {{{
function! s:lightline_modified() abort
  return s:lightline_is_lean() || s:lightline_is_plain() ?  ''  :
  \      &modified                                       ?  '+' :
  \      &modifiable                                     ?  ''  : '-'
endfunction
" }}}
" s:lightline_readonly() {{{
function! s:lightline_readonly() abort
  return (s:lightline_is_lean() || s:lightline_is_plain()) && &ft !=? 'help' ? '' : &readonly ? '' : ''
endfunction
" }}}
" s:lightline_coc_diagnostic(kind, sign) {{{
function! s:lightline_coc_diagnostic(kind, sign) abort
  if !get(g:, 'coc_enabled', 0)
    return ''
  endif
  let c = get(b:, 'coc_diagnostic_info', 0)
  if empty(c) || get(c, a:kind, 0) == 0
    return ''
  endif

  let l:signs = { 'error': 'E', 'warning': 'W', 'info': 'I', 'hint': 'H' }
  let s = l:signs[a:sign]

  return printf('%d %s', c[a:kind], s)
endfunction
" }}}
" }}}
" GitGutterHighLight() {{{
function! init_func#GitGutterHighLight() abort
  call s:hi('GitGutterAdd',
\        s:fg('GitGutterAdd', 'gui'),            s:bg('SignColumn', 'gui'),
\        s:fg('GitGutterAdd', 'cterm'),          s:bg('SignColumn', 'cterm'))
  call s:hi('GitGutterChange',
\        s:fg('GitGutterChange', 'gui'),         s:bg('SignColumn', 'gui'),
\        s:fg('GitGutterChange', 'cterm'),       s:bg('SignColumn', 'cterm'))
  call s:hi('GitGutterDelete',
\        s:fg('GitGutterDelete', 'gui'),         s:bg('SignColumn', 'gui'),
\        s:fg('GitGutterDelete', 'cterm'),       s:bg('SignColumn', 'cterm'))
  call s:hi('GitGutterChangeDelete',
\        s:fg('GitGutterChangeDelete', 'gui'),   s:bg('SignColumn', 'gui'),
\        s:fg('GitGutterChangeDelete', 'cterm'), s:bg('SignColumn', 'cterm'))
endfunction
