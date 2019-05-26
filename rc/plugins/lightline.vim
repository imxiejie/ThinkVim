let g:lightline = {
      \ 'colorscheme': 'gruvbox9',
      \ 'active': {
      \   'left': [ ['homemode'],
      \             ['gitinfo'],['filename'],['cocstatus']],
      \   'right':[
      \             ['lineinfo'], ['fileformat'],['fileencoding'],['cocerror'],['cocwarn'],['cocfix']],
      \ },
      \ 'inactive': {
      \   'left': [['homemode'], ['filename']],
      \   'right':[['lineinfo']],
      \ },
      \ 'tabline': {
      \   'left': [['buffers']],
      \   'right': [['thinkvim']],
      \ },
      \ 'component': {
      \   'thinkvim': 'ﴔ ',
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers',
      \   'cocerror': 'LightLineCocError',
      \   'cocwarn' : 'LightLineCocWarn',
      \ },
      \ 'component_function': {
      \   'homemode': 'LightlineMode',
      \   'gitinfo': 'LightLineGit',
      \   'cocstatus': 'LightLineCocStatus',
      \   'cocfix': 'LightlineCocFixes',
      \   'readonly': 'LightLineReadonly',
      \   'modified': 'LightLineModified',
      \   'lineinfo': 'LightlineLineinfo',
      \   'filename': 'LightLineFname',
      \   'filetype': 'LightLineFiletype',
      \   'fileformat': 'LightLineFileformat',
      \ },
      \ 'component_type': {'buffers': 'tabsel'},
      \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2"},
      \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3"}
      \ }
function! s:lightline_is_lean() abort
  return &filetype =~? '\v^vim-plug|defx|mundo(diff)?$'
endfunction

function! s:lightline_is_plain() abort
  return &buftype ==? 'terminal' || &filetype =~? '\v^help|denite|tagbar$'
endfunction


function! LightlineLineinfo() abort
  return &filetype ==? 'help'             ? ''  :
  \      &filetype ==? 'defx'             ? ' ' :
  \      &filetype ==? 'denite'           ? ' ' :
  \      &filetype ==? 'tagbar'           ? ' ' :
  \      &filetype =~? '\v^mundo(diff)?$' ? ' ' :
  \      s:lightline_is_lean() || s:lightline_is_plain() ? ' '  :
  \      printf('%d:%d ☰ %d%%', line('.'), col('.'), 100*line('.')/line('$'))
endfunction

function! LightlineMode() abort
  return s:lightline_is_lean() || s:lightline_is_plain() ? toupper(&ft) : Lightlinemode()
endfunction

function! Lightlinemode()
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
  return join(['❐',l:result])
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

function! LightLineModified()
  if &filetype == "help"
    return ""
  elseif &modified
    return "+"
  elseif &modifiable
    return ""
  else
    return ""
  endif
endfunction

function! LightLineReadonly()
  if &filetype == "help"
    return ""
  elseif &readonly
    return ""
  else
    return ""
  endif
endfunction

function! LightLineGit()
    let gitbranch=get(g:, 'coc_git_status', '')
    let gitcount=get(b:, 'coc_git_status', '')
    let gitinfo = []
    if empty(gitbranch)
	    let gitbranch=""
    endif
    if empty(gitcount)
	    let gitcount=""
    endif
    call add(gitinfo,gitbranch)
    call add(gitinfo,gitcount)
    return trim(join(gitinfo,''))
endfunction

function! LightLineCocStatus() abort
    let status=get(g:, 'coc_status', '')
    if empty(status)
        return ""
    endif
    return trim(status)
endfunction

function! LightLineCocError()
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

function! LightLineCocWarn() abort
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

function! LightlineCocFixes() abort
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

autocmd  User CocDiagnosticChange
\   call lightline#update()
\|  call CocActionAsync('quickfixes', function('CocUpdateQuickFixes'))

function! s:coc_fix_on_cursor_moved() abort
  let current_line = line('.')
  if current_line != get(b:, 'last_line', 0)
    let b:last_line = current_line
    if has_key(get(b:, 'coc_quickfixes', {}), current_line)
      call lightline#update()
    else
      if get(b:, 'coc_line_fixes', 0) > 0
        call lightline#update()
      endif
    endif
  endif
endfunction

autocmd  CursorMoved * call s:coc_fix_on_cursor_moved()

"function! LightLineGitGutter()
  "if ! exists('*GitGutterGetHunkSummary')
        "\ || ! get(g:, 'gitgutter_enabled', 0)
        "\ || winwidth('.') <= 90
    "return ''
  "endif
  "let symbols = ['+','~','-']
  "let hunks = GitGutterGetHunkSummary()
  "let ret = []
  "for i in [0, 1, 2]
    "if hunks[i] > 0
      "call add(ret, symbols[i] . hunks[i])
    "endif
  "endfor
  "return join(ret, ' ')
"endfunction

function! LightLineFname()
  let icon = (strlen(&filetype) ? ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft')
  let filename = LightLineFilename()
  let ret = [filename,icon]
  if filename == ''
    return ''
  endif
  return join([filename, icon],'')
endfunction

function! LightLineFilename()
  return ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
        \ ('' != expand('%:t') ? expand('%:t') : '') .
        \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
endfunction

function! LightLineFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! LightLineFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

let g:lightline#bufferline#show_number  = 2
let g:lightline#bufferline#shorten_path = 1
let g:lightline#bufferline#enable_devicons = 1
let g:lightline#bufferline#filename_modifier = ':t'
let g:lightline#bufferline#unnamed      = '[No Name]'
let g:lightline#bufferline#number_map = {
      \ 0: '⓿ ', 1: '❶ ', 2: '❷ ', 3: '❸ ', 4: '❹ ',
      \ 5: '❺ ', 6: '❻ ', 7: '❼ ', 8: '❽ ', 9: '❾ '}

nmap <Leader>1 <Plug>lightline#bufferline#go(1)
nmap <Leader>2 <Plug>lightline#bufferline#go(2)
nmap <Leader>3 <Plug>lightline#bufferline#go(3)
nmap <Leader>4 <Plug>lightline#bufferline#go(4)
nmap <Leader>5 <Plug>lightline#bufferline#go(5)
nmap <Leader>6 <Plug>lightline#bufferline#go(6)
nmap <Leader>7 <Plug>lightline#bufferline#go(7)
nmap <Leader>8 <Plug>lightline#bufferline#go(8)
nmap <Leader>9 <Plug>lightline#bufferline#go(9)
nmap <Leader>0 <Plug>lightline#bufferline#go(10)
